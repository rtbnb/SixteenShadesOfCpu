
from enum import Enum

class ArgumentType(Enum):
    REGISTER = 0,
    NUMBER = 1

registers = ["t0", "t1", "t2", "t3", "t4", "t5", "t6", "t7", "t8", "t9", "MA", "BI", "S1", "S2", "AO", "FL"]

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
                return current_binary | ((int(argument, 16 if "0x" in argument else 2 if "0b" in argument else 10) & ((1 << (self._argument_length_bits)) - 1)) << self._argument_begin_bit)
            

asm_file = "architektur/Programme/pong/pong.asm"
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
    "JC": [8, [Argument(0, ArgumentType.NUMBER, 9, 3), Argument(1, ArgumentType.NUMBER, 0, 9)]],
    "JR": [9, [Argument(0, ArgumentType.REGISTER, 8, 4)]],
    "JA": [10, [Argument(0, ArgumentType.NUMBER, 0, 12)]],
    "CR": [14, [Argument(0, ArgumentType.REGISTER, 8, 4), Argument(1, ArgumentType.REGISTER, 4, 4)]],
    #"EXT": [15, [Argument(0, ArgumentType.NUMBER, 8, 4), Argument(1, ArgumentType.REGISTER, 4, 4), Argument(2, ArgumentType.REGISTER, 0, 4)]]
}

def replace_defines(lines, defines=[]):
    not_define_lines = []
    for line in lines:
        if line.split(" ")[0] == '%define':
            defines.append((line.split(" ")[1], " ".join(line.split(" ")[2:])))
        else:
            not_define_lines.append(line)
    defined = []
    define_used = False
    for line in not_define_lines:
        s = line
        for define in defines:
            s = s.replace(define[0], define[1])
        defined.append(s)
        if s != line:
            define_used = True
    
    return replace_defines(defined, defines) if define_used else defined
    
def strip_file(lines: list[str]):
    stripped_lines = []
    for line in lines:
        l = line.split(";")[0].strip()
        if l != "":
            stripped_lines.append(l)
    return stripped_lines

def parse_int(raw:str) -> int:
    if "0x" in raw:
        data = int(raw, 16)
    elif "0b" in raw:
        data = int(raw, 2)
    else:
        data = int(raw, 10)
    return data

def parse_data_region(raw_data: str, region_begin: int, save_path: str) -> None:
    split_data = raw_data.split(",")
    int_data = [parse_int(data.strip()) for data in split_data]
    byted_data = []
    for d in int_data:
        byted_data.extend([(d >> 8) & 0xff, d & 0xff])
    with open(save_path, "wb") as f:
        f.write(bytes(region_begin * 2))
        f.write(bytes(byted_data))

if __name__ == "__main__":
    file_content = ""
    with open(asm_file, "r") as file:
        file_content = file.read().split("\n")
    output_str = "v2.0 raw\n"
    
    file_content = strip_file(file_content)

    file_content = replace_defines(file_content)
    print("\n".join(file_content))

    regions = []
    for l in range(len(file_content)):
        line = file_content[l]
        if line[0] == "_":
            if line[-1] != ":":
                raise Exception("Region Assignment {} is missing ':'".format(line))
            regions.append([line[1:-1], l+1])
            if len(regions) > 1:
                regions[-2].append(l)
    
    regions[-1].append(len(regions))

    known_variables = {}

    for region in regions:
        region_type = region[0].split("[")[0]
        if region_type == "vram":
            region_begin = 0
            if "[" in region[0]:
                begin_str = region[0].split("[")[1].split("]")[0]
                region_begin = parse_int(begin_str)
            region_save_path = asm_file_name + "_" + region_type + ".bin"
            parse_data_region("".join(file_content[region[1]:region[2]]), region_begin, region_save_path)
        elif region_type == "gram":
            raw_variables = file_content[region[1]:region[2]]
            variable_initial_values = []
            for r in range(len(raw_variables)):
                raw_variable = raw_variables[r]
                name = raw_variable.split(":")[0].strip()
                initial_value = raw_variable.split(":")[1].strip()
                known_variables[name] = r
                variable_initial_values.append(initial_value)
            region_save_path = asm_file_name + "_" + region_type + ".bin"            
            parse_data_region(",".join(variable_initial_values), 0, region_save_path)
    
    print(known_variables)


    exit()
    
    for line in file_content:
        if line == "":
            continue
        instr_name = line.split(" ")[0]
        if not instr_name in instructions:
            raise Exception(f"{line} is not a valid ASM instruction: {instr_name} is no valid instruction!")
        coded_line = (instructions[instr_name][0] & 0xf) << 12
        for arg in instructions[instr_name][1]:
            coded_line = arg.write_to_binary(coded_line, line)
        output_str += format(coded_line, "04x") + "\n"
    
    with open(asm_file[:-3]+"txt", "w") as file:
        file.write(output_str)