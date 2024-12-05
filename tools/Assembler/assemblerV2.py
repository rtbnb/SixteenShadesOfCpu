# ----------------------------------------------------------------------------------
# Name: Lukas Reil
# Design Name: ShadeCpu
# Module Name: assenmblerV2.py
# Project Name: ShadeCpu-1
# Target Devices: Host PC with Python 3
# Repository: https://github.com/rtbnb/SixteenShadesOfCpu
# ----------------------------------------------------------------------------------

from enum import Enum
import re

class ArgumentType(Enum):
    REGISTER = 0,
    NUMBER = 1

registers = ["t0", "t1", "t2", "t3", "t4", "t5", "t6", "t7", "t8", "t9", "S0", "BI", "SP", "S2", "AO", "FL"]

class Argument():
    def __init__(self, argument_index_asm, argument_type, argument_begin_bit, argument_length_bits):
        self._argument_index_asm = argument_index_asm
        self._argument_type = argument_type
        self._argument_begin_bit = argument_begin_bit
        self._argument_length_bits = argument_length_bits
        
    def write_to_binary(self, current_binary, asm_instruction):
        arguments_str = "".join(asm_instruction.split(" ")[1:])
        try:
            argument = arguments_str.split(",")[self._argument_index_asm]
        except IndexError:
            raise Exception(f"Error in Instruction: {asm_instruction}\nExpected a {self._argument_index_asm+1}. argument. Only {self._argument_index_asm} where found!")
        match self._argument_type:
            case ArgumentType.REGISTER:
                if argument[0] != "$":
                    raise Exception(f"Error in Instruction: {asm_instruction}\nArgument {self._argument_index_asm} was expected to be of type REGISTER, but '{argument}' is not valid register notation (Missing $)!")
                reg_index = -1
                reg_name = argument[1:]
                for i in range(len(registers)):
                    if reg_name == registers[i]:
                        reg_index = i
                        break
                if reg_index == -1:
                    raise Exception(f"Error in Instruction: {asm_instruction}\nRegister {reg_name} is not an existing register!")
                return current_binary | ((reg_index & ((1 << (self._argument_length_bits)) - 1)) << self._argument_begin_bit)
            case ArgumentType.NUMBER:
                num = parse_int(argument)
                return current_binary | ((num & ((1 << (self._argument_length_bits)) - 1)) << self._argument_begin_bit)

#asm_file = "architektur/TestProgramme/MMIOTest.asm"
#asm_file = "architektur/Programme/pong/pong.asm"
asm_file = "architektur/Programme/demonstration/demonstration.asm"
asm_file_name = ".".join(asm_file.split(".")[0:-1])

instructions = {
    #      OP-Code Arguments
    "NOP": [0, []],
    "ALU": [1, [Argument(0, ArgumentType.NUMBER, 8, 4), Argument(1, ArgumentType.REGISTER, 4, 4), Argument(2, ArgumentType.REGISTER, 0, 4)]],
    "RDMi": [2, [Argument(0, ArgumentType.REGISTER, 8, 4), Argument(1, ArgumentType.NUMBER, 0, 8)]],
    "WRMi": [3, [Argument(0, ArgumentType.REGISTER, 8, 4), Argument(1, ArgumentType.NUMBER, 0, 8)]],
    "IML": [4, [Argument(0, ArgumentType.REGISTER, 8, 4), Argument(1, ArgumentType.NUMBER, 0, 8)]],
    "IMH": [5, [Argument(0, ArgumentType.REGISTER, 8, 4), Argument(1, ArgumentType.NUMBER, 0, 8)]],
    "RDMr": [6, [Argument(0, ArgumentType.REGISTER, 8, 4), Argument(1, ArgumentType.REGISTER, 4, 4)]],
    "WRMr": [7, [Argument(0, ArgumentType.REGISTER, 8, 4), Argument(1, ArgumentType.REGISTER, 4, 4)]],
    "JC": [8, [Argument(0, ArgumentType.NUMBER, 7, 5), Argument(1, ArgumentType.NUMBER, 0, 7)]],
    "JR": [9, [Argument(0, ArgumentType.REGISTER, 8, 4)]],
    "JA": [10, [Argument(0, ArgumentType.NUMBER, 0, 12)]],
    "CR": [14, [Argument(0, ArgumentType.REGISTER, 8, 4), Argument(1, ArgumentType.REGISTER, 4, 4)]],
    "GPU": [15, [Argument(0, ArgumentType.NUMBER, 8, 4), Argument(1, ArgumentType.REGISTER, 4, 4), Argument(2, ArgumentType.REGISTER, 0, 4)]]
}

def replace_defines(lines, defines=[]):
    not_define_lines = []
    for line in lines:
        if line.split(" ")[0] == '%define':
            define_str = line.split(" ")[1]
            define_re = re.compile(f"(?<=[[,\s]){define_str}(?=(([[\],\s]|$)))")
            defines.append((define_re, " ".join(line.split(" ")[2:]), define_str))
        else:
            not_define_lines.append(line)
    defined = []
    define_used = False
    print(defines)
    for line in not_define_lines:
        s = line
        for define in defines:
            s = re.sub(define[0], define[1], s)
            #s = s.replace(define[0], define[1])
        defined.append(s)
        if s != line:
            define_used = True
    print(defined)
    return replace_defines(defined, defines) if define_used else defined
    
def strip_file(lines: list[str]):
    stripped_lines = []
    for line in lines:
        l = line.split(";")[0].strip()
        if l != "":
            stripped_lines.append(l)
    return stripped_lines

def parse_int(raw:str) -> int:
    if not ("[" in raw and "]" in raw):
        if "0x" in raw:
            data = int(raw, 16)
        elif "0b" in raw:
            data = int(raw, 2)
        else:
            data = int(raw, 10)
        return data
    else:
        data = parse_int(raw.split("[")[0])
        index = raw.split("[")[1].split("]")[0]
        return (data >> (parse_int(index) * 8)) & 0xff

def parse_data_region(raw_data: str) -> None:
    split_data = raw_data.split(",")
    int_data = [parse_int(data.strip()) for data in split_data]
    byted_data = []
    for d in int_data:
        byted_data.extend([(d >> 8) & 0xff, d & 0xff])


def replace_variables(code_region:list[str], known_variables:dict) -> list[str]:
    replaced = []
    for line in code_region:
        s = line
        for variable_name in known_variables:
            s = re.sub(known_variables[variable_name][0], str(known_variables[variable_name][1]), s)
            #s = s.replace(variable_name, str(known_variables[variable_name]))
        replaced.append(s)

    return replaced

def replace_jump_regions(code_region: list[str]) -> list[str]:
    labels = {}
    new_code_region = []
    for line in code_region:
        if line[0] == ".":
            label_str = line[1:]
            label_re = re.compile(f"(?<=[,\s]){label_str}(?=(([[,\s]|$)))")
            labels[line[1:]] = (label_re, len(new_code_region))
        else:
            new_code_region.append(line)

    new_new_code_region = []

    for line in new_code_region:
        s = line
        for label in labels:
            s = re.sub(labels[label][0], str(labels[label][1]), s)
        new_new_code_region.append(s)

    return new_new_code_region

def data2bin(data_image, file_name) -> None:
    byte_data = []
    for data in data_image:
        if type(data) == str:
            data = parse_int(data)
        byte_data.append((data >> 8) & 0xff)
        byte_data.append(data & 0xff)

    with open(file_name, "wb") as f:
        f.write(bytes(byte_data))

if __name__ == "__main__":
    file_content = ""
    with open(asm_file, "r") as file:
        file_content = file.read().split("\n")
    output_str = "v2.0 raw\n"
    
    file_content = strip_file(file_content)

    file_content = replace_defines(file_content)
    print("\n".join(file_content))

    region_bounds = []
    for l in range(len(file_content)):
        line = file_content[l]
        if line[0] == "_":
            if line[-1] != ":":
                raise Exception("Region Assignment {} is missing ':'".format(line))
            region_bounds.append([line[1:-1], l+1])
            if len(region_bounds) > 1:
                region_bounds[-2].append(l)

    region_bounds[-1].append(len(file_content))

    regions = region_bounds


    known_variables = {}

    #gram_values = [0] * 2048

    code_region = []
    gram_image = []

    for region in regions:
        region_type = region[0].split("[")[0]
        if region_type == "gram_data":
            region_begin = 0
            if "[" in region[0]:
                begin_str = region[0].split("[")[1].split("]")[0]

                region_begin = parse_int(begin_str)
            region_data ="".join(file_content[region[1]:region[2]])
            region_data = re.sub("\s", "", region_data)
            region_data = region_data.split(",")
            while region_begin >= len(gram_image):
                gram_image.append(0)
            for i in range(len(region_data)):
                index = i + region_begin
                while index >= len(gram_image):
                    gram_image.append(0)
                gram_image[i + region_begin] = parse_int(region_data[i])
            #region_save_path = asm_file_name + "_" + region_type + ".bin"
            #parse_data_region(, region_begin, region_save_path)
        elif region_type == "gram_variables":
            raw_variables = file_content[region[1]:region[2]]
            variable_initial_values = []
            for r in range(len(raw_variables)):
                raw_variable = raw_variables[r]
                name = raw_variable.split(":")[0].strip()
                initial_value = raw_variable.split(":")[1].strip()
                name_re = re.compile(f"(?<=[,\s]){name}(?=(([[,\s]|$)))")
                known_variables[name] = (name_re, r)
                while r >= len(gram_image):
                    gram_image.append(0)
                gram_image[r] = initial_value
                #gram_image.insert(r, initial_value)
            region_save_path = asm_file_name + "_" + region_type + ".bin"
            #parse_data_region(",".join(variable_initial_values), 0, region_save_path)
        elif region_type == "code":
            code_region.extend(file_content[region[1]:region[2]])

    print(known_variables)
    print(gram_image)

    data2bin(gram_image, asm_file_name + "_gram.bin")

    code_region = replace_variables(code_region, known_variables)

    print(code_region)

    code_region = replace_jump_regions(code_region)

    print(code_region)

    output_bin = []

    for line in code_region:
        if line == "":
            continue
        instr_name = line.split(" ")[0]
        if not instr_name in instructions:
            raise Exception(f"{line} is not a valid ASM instruction: {instr_name} is no valid instruction!")
        coded_line = (instructions[instr_name][0] & 0xf) << 12
        for arg in instructions[instr_name][1]:
            coded_line = arg.write_to_binary(coded_line, line)
        output_str += format(coded_line, "04x") + "\n"
        output_bin.append((coded_line >> 8) & 0xff)
        output_bin.append((coded_line) & 0xff)
    
    with open(asm_file[:-3]+"txt", "w") as file:
        file.write(output_str)

    with open(asm_file_name + "_code.bin", "wb") as file:
        file.write(bytes(output_bin))