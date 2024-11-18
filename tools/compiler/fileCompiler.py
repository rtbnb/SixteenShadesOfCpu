from __future__ import annotations

from enum import Enum, EnumMeta, StrEnum

import lexer

registers = ["t0", "t1", "t2", "t3", "t4", "t5", "t6", "t7", "t8", "t9", "MA", "BI", "S1", "S2", "AO", "FL"]

class MetaEnum(EnumMeta):
    def __contains__(cls, item):
        try:
            cls(item)
        except ValueError:
            return False
        return True    


class BaseEnum(Enum, metaclass=MetaEnum):
    pass


class DataTypeEnum(str, BaseEnum):
    void = "void"
    uint16_t = "uint16_t"


class DataType():
    def __init__(self, data_type_enum: DataTypeEnum, array_lengths:list[int] = []):
        self._data_type_enum = data_type_enum
        self._array_lengths = array_lengths

    def mnemonic_length(self):
        return 1 + len(self._array_lengths) * 3

    def array_depth(self):
        return len(self._array_lengths)

    def array_lengths(self):
        return self._array_lengths

    def __str__(self):
        return "{}{}".format(self._data_type_enum, ("[" + "][".join(self._array_lengths) + "]") if len(self._array_lengths) > 0 else "")

    def parse_from_mnemonics(mnemonics, known_constants):


        type_name = mnemonics[0]

        if not type_name in DataTypeEnum:
            raise Exception("Data type {} is not valid!".format(type_name))

        array_lengths = []
        while mnemonics[1 + len(array_lengths) * 3] == "[":
            if mnemonics[1 + len(array_lengths) * 3 + 2] != "]":
                raise Exception("Missing closing brackets for array identifier in command: {}".format(mnemonics))
            array_length = lexer.parse_literal_integer(mnemonics[1 + len(array_lengths) * 3 + 1], known_constants)
            if array_length == 0:
                raise Exception("Literal {} evaluates to 0! 0 is not a valid array length!".format(mnemonics[1 + len(array_lengths) * 3 + 1]))
            array_lengths.append(array_length)

        return DataType(DataTypeEnum(type_name), array_lengths)


    def equals(self, other: DataType):
        return self._data_type_enum == other._data_type_enum and self._array_depth == other._array_depth

class FunctionSignature():
    def __init__(self, name:str, return_type: DataType, arguments: list[DataType]):
        self._return_type = return_type
        self._arguments = arguments
        self._name = name

    def does_function_match_for_linking(self, other: FunctionSignature, must_natch_return = False):
        if self._name != other._name:
            return False
        if must_natch_return:
            if not self._return_type.equals(other._return_type):
                return False
        if len(other._arguments) != len(self._arguments):
            return False
        for i in range(len(other._arguments)):
            if not self._arguments[i].equals(other._arguments[i]):
                return False
        return True

    def __str__(self):
        return "{} {}({})".format(str(self._return_type), self._name, ", ".join([str(a) for a in self._arguments]))

class CompiledCode():
    def __init__(self, required_memory_gram: int, compiled_assembly_code:list[str]):
        self._required_memory_gram = required_memory_gram
        self._compiled_assembly_code = compiled_assembly_code

class CompiledFunction():
    def __init__(self, signature:FunctionSignature, compiled_code: CompiledCode):
        self._signature = signature
        self._compiled_code = compiled_code


# TODO: Add global and local variables to register write
def decode_register_write(code_mnemonic:list[str], known_constants) -> CompiledCode:
    if code_mnemonic[0][0] != "$":
        raise Exception("{} is not a valid register write!".format(code_mnemonic))
    if not code_mnemonic[0][1:] in registers:
        raise Exception("{} is not a valid register!".format(code_mnemonic[0][1:]))

    if code_mnemonic[1] != "=":
        raise Exception("Missing '=' for register write operationin {}!".format(code_mnemonic))

    value = lexer.parse_literal_integer(code_mnemonic[2], known_constants)
    lower_byte = value & 0xff
    higher_byte = (value >> 8) & 0xff
    return CompiledCode(0, ["IML {}, {}".format(code_mnemonic[0], lower_byte), "IMH {}, {}".format(code_mnemonic[0], higher_byte)])


def parse_code(code_mnemonics:list[list[str]], known_functions, known_globals, known_constants, known_locals) -> CompiledCode:

    for command in code_mnemonics:
        


def parse_function(function_command:list[str], known_functions, known_globals, known_constants) -> CompiledFunction:
    #print(function_command)
    if function_command[0] != "function":
        raise Exception("{} is not a valid function signatur (missing 'function')!".format(function_command))

    return_type = DataType.parse_from_mnemonics(function_command[1:], known_constants)

    function_name = function_command[2]
    if function_name in known_functions or function_name in known_globals or function_name in known_constants:
        raise Exception("Function name '{}' is already taken".format(function_name))

    if function_command[3] != "(":
        raise Exception("Missing opening brackets for function: {}".format(function_command))

    arguments = []
    taken_mnemonics = 0

    if function_command[4] != ")":
        _arguments = function_command[4].split(",")
        for argument in _arguments:
            stripped = lexer.stripCodeSection(argument)[0]
            argument_type = DataType.parse_from_mnemonics(stripped, known_constants)
            taken_mnemonics = argument_type.mnemonic_length()
            argument_name = stripped[taken_mnemonics]
            taken_mnemonics += 1
            if taken_mnemonics < len(stripped):
                raise Exception("Error in function signature: {}".format(function_command))
            arguments.append((argument_type, argument_name))

    signature = FunctionSignature(function_name, return_type, [e[0] for e in arguments])
    print(signature)

    opening_curly = 5 + (1 if len(arguments) > 0 else 0)
    if function_command[opening_curly] != "{" or function_command[opening_curly + 2] != "}":
        raise Exception("Function signature {} is not valid. Missing right opening and closing curly brackets!".format(function_command))
    code = lexer.stripCodeSection(function_command[opening_curly+1])
    print(code)
    compiled = parse_code(code, known_constants, known_globals, known_constants, {})

    return CompiledFunction(signature, compiled)