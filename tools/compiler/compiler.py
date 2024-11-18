import lexer
import fileCompiler

file_to_compile = "./architektur/Programme/pong/main.c"


known_constants = {"true": 1, "false": 0}
known_globals = {}
known_functions = {}

def parse_global_or_constant(variable_command, allowed_variables):

    data_type = fileCompiler.DataType.parse_from_mnemonics(variable_command, known_constants)

    taken_mnemonics = data_type.mnemonic_length()

    identifier_name = variable_command[taken_mnemonics]

    value_str = variable_command[taken_mnemonics + 2]

    if not lexer.is_identifier_valid(identifier_name):
        raise Exception("Identifier {} is not a valid constant name in command {}!".format(identifier_name, variable_command))

    if identifier_name in known_constants or identifier_name in known_globals or identifier_name in known_functions:
        raise Exception("Identifier {} is already taken!".format(identifier_name))

    value = None

    if data_type.array_depth() == 0:
        value = lexer.parse_literal_integer(value_str, allowed_variables)
    else:
        value = lexer.parse_literal_array(variable_command[taken_mnemonics + 3], data_type.array_lengths(), allowed_variables)

    return (identifier_name, value)


if __name__ == "__main__":
    with open(file_to_compile, "r") as f:
        stripped = lexer.stripCodeSection(f.read())

        print("----------------------------------------------------------")

        for command in stripped:
            #print(command)
            if command[0] == "const":
                result = parse_global_or_constant(command[1:], known_constants)
                known_constants[result[0]] = result[1]
            elif command[0] in fileCompiler.DataTypeEnum:
                allowed = dict(known_constants)
                allowed.update(known_globals)
                result = parse_global_or_constant(command, allowed)
                known_globals[result[0]] = result[1]
            elif command[0] == "function":
                fileCompiler.parse_function(command, known_functions, known_globals, known_constants)
            else:
                raise Exception("Error in command: {}!\nNot a valid command!".format(command))

        print(known_constants)
        print(known_globals)

