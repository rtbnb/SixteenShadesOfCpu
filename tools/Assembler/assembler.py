# ----------------------------------------------------------------------------------
# Name: Lukas Reil
# Design Name: ShadeCpu
# Module Name: assenmbler.py
# Project Name: ShadeCpu-1
# Target Devices: Host PC with Python 3
# Repository: https://github.com/rtbnb/SixteenShadesOfCpu
# ----------------------------------------------------------------------------------

from enum import Enum

class ArgumentType(Enum):
    REGISTER = 0,
    NUMBER = 1

registers = ["t0", "t1", "t2", "t3", "t4", "t5", "t6", "t7", "t8", "t9", "MA", "S0", "S1", "S2", "AO", "FL"]

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
                return current_binary | ((int(argument) & ((1 << (self._argument_length_bits)) - 1)) << self._argument_begin_bit)
            

asm_file = "architektur/TestProgramme/TestProgram4.asm"

instructions = {
    #      OP-Code Arguments
    "NOP": [0, []],
    "ALU": [1, [Argument(0, ArgumentType.NUMBER, 8, 4), Argument(1, ArgumentType.REGISTER, 4, 4), Argument(2, ArgumentType.REGISTER, 0, 4)]],
    "RDMi": [2, [Argument(0, ArgumentType.REGISTER, 8, 4), Argument(1, ArgumentType.NUMBER, 0, 8)]],
    "WRMi": [3, [Argument(0, ArgumentType.REGISTER, 8, 4), Argument(1, ArgumentType.NUMBER, 0, 8)]],
    "IML": [4, [Argument(0, ArgumentType.REGISTER, 8, 4), Argument(1, ArgumentType.NUMBER, 0, 8)]],
    "IMH": [5, [Argument(0, ArgumentType.REGISTER, 8, 4), Argument(1, ArgumentType.NUMBER, 0, 8)]],
    "RDMr": [6, [Argument(0, ArgumentType.REGISTER, 8, 4), Argument(1, ArgumentType.REGISTER, 4, 4), Argument(2, ArgumentType.NUMBER, 0, 1)]],
    "WRMr": [7, [Argument(0, ArgumentType.REGISTER, 8, 4), Argument(1, ArgumentType.REGISTER, 4, 4), Argument(2, ArgumentType.NUMBER, 0, 1)]],
    "JC": [8, [Argument(0, ArgumentType.NUMBER, 10, 2), Argument(1, ArgumentType.NUMBER, 0, 10)]],
    "JR": [9, [Argument(0, ArgumentType.NUMBER, 0, 12)]],
    "JA": [10, [Argument(0, ArgumentType.NUMBER, 0, 12)]],
    "CR": [14, [Argument(0, ArgumentType.REGISTER, 8, 4), Argument(1, ArgumentType.REGISTER, 0, 4)]],
    "EXT": [15, [Argument(0, ArgumentType.NUMBER, 8, 4), Argument(1, ArgumentType.REGISTER, 4, 4), Argument(2, ArgumentType.REGISTER, 0, 4)]]
}

if __name__ == "__main__":
    file_content = ""
    with open(asm_file, "r") as file:
        file_content = file.read().split("\n")
    output_str = "v2.0 raw\n"
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