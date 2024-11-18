import re
import fileCompiler

opening_characters = {"{": "}", "(": ")", "[": "]"}
closing_characters = {"}": "{", ")": "(", "]": "["}
def stripCodeSection(file_content):
    commands = []
    current_command = []
    current_word = ""
    depth_stack = []
    has_depth = False
    in_comment = False
    line = 0
    for i in range(0, len(file_content)):
        current_char = file_content[i]
        if in_comment:
            if current_char == "\n":
                in_comment = False
            continue
        if current_char in opening_characters:
            depth_stack.append(current_char)
            has_depth = True
            if  len(depth_stack) == 1:
                if current_word != "":
                    current_command.append(current_word)
                    current_word = ""
                current_command.append(current_char)
            else:
                current_word += current_char
        elif current_char in closing_characters:
            if depth_stack[-1] == closing_characters[current_char]:
                depth_stack.pop()
                if len(depth_stack) == 0:
                    if current_word != "":
                        current_command.append(current_word)
                        current_word = ""
                    current_command.append(current_char)
                else:
                    current_word += current_char
            else:
                raise Exception("Error while analyzing: {}!\nOpening and closing brackets do not match in line {}".format(file_content, line))
        elif len(depth_stack) > 0:
            if current_char == "\n":
                line += 1
            current_word += current_char
        else:
            if current_char == "\n":
                line += 1
                if current_word != "":
                    current_command.append(current_word)
                    current_word = ""
            elif current_char == " " or current_char == "\t":
                if current_word != "":
                    current_command.append(current_word)
                    current_word = ""
            elif current_char == ";":
                if current_word != "":
                    current_command.append(current_word)
                    current_word = ""
                commands.append(current_command)
                current_command = []
            elif current_char == "\\":
                in_comment = True
                if current_word != "":
                    current_command.append(current_word)
                    current_word = ""
            else:
                current_word += current_char

    if current_word != "":
        current_command.append(current_word)
    if current_command != []:
        commands.append(current_command)

    #if current_word != "" or len(current_command) > 0:
    #    raise Exception("Error while analyzing: {}!\nFile not complete!\nStack is: {}\n|{}|\n{}".format(file_content, depth_stack, current_word, current_command))

    return commands


def stripArrayAssigner(assigner):
    elements = []
    current_element = ""
    depth_stack = 0
    for i in range(len(assigner)):
        current_char = assigner[i]
        if depth_stack == 0:
            if current_char == "{":
                if current_element != "":
                    raise Exception("Opening bracket \{ not allowed!. \nDid you miss a comma in {}".format(assigner))
                depth_stack += 1
            elif current_char == "}":
                raise Exception("Found closing bracket \} without opening bracket in {}".format(assigner))
            elif current_char == " " or current_char == "\t" or current_char == "\n":
                pass
            elif current_char == ",":
                if current_element == "":
                    raise Exception("Empty element found... Not allowed: {}".format(assigner))
                elements.append(current_element)
                current_element = ""
            else:
                current_element += current_char
        else:
            if current_char == "{":
                depth_stack += 1
                current_element += current_char
            elif current_char == "}":
                depth_stack -= 1
                if depth_stack == 0:
                    current_element = stripArrayAssigner(current_element)
                else:
                    current_element += current_char
            else:
                current_element += current_char
    if depth_stack != 0:
        raise Exception("Opening and closing brackets did not match in: {}".format(assigner))
    if current_element != "":
        elements.append(current_element)

    return elements


base10_number_regex = r"([+\-]?[0-9]+)"
base16_number_regex = r"(0x[0-9abcdef]+)"
base2_number_regex = r"(0b[01]+)"

def _parse_literal_integer(ordered_literal, known_constants):
    if type(ordered_literal) != list:
        if type(ordered_literal) != str:
            raise Exception("Type of {} ({}) is not valid!".format(ordered_literal, type(ordered_literal)))

        if re.fullmatch(base10_number_regex, ordered_literal):
            return int(ordered_literal)
        elif re.fullmatch(base16_number_regex, ordered_literal):
            return int(ordered_literal, 16)
        elif re.fullmatch(base2_number_regex, ordered_literal):
            return int(ordered_literal, 2)
        elif ordered_literal in known_constants:
            return known_constants[ordered_literal]
        else:
            raise Exception("Literal {} is not known!".format(ordered_literal))

    if len(ordered_literal) == 1:
        return _parse_literal_integer(ordered_literal[0], known_constants)
    elif len(ordered_literal) == 3:
        op1 = _parse_literal_integer(ordered_literal[0], known_constants)
        op2 = _parse_literal_integer(ordered_literal[2], known_constants)
        operator = ordered_literal[1]
        match operator:
            case "+":
                return op1 + op2
            case "-":
                return op1 - op2
            case "*":
                return op1 * op2
            case "/":
                return op1 // op2
            case "<<":
                return op1 << op2
            case ">>":
                return op1 >> op2
        raise Exception("Operator {} is not a known operator!".format(operator))

def parse_literal_integer(literalString:str, knownConstants):
    order = calculate_calculation_order(literalString)
    return _parse_literal_integer(order, knownConstants)

def _parse_literal_array(stripped_array, array_lengths, known_constants):
    if len(array_lengths) == 0:
        if len(stripped_array) == 0:
            return 0
        return parse_literal_integer(stripped_array, known_constants)
    ret = []
    for i in range(array_lengths[0]):
        if i >= len(stripped_array):
            ret.append(_parse_literal_array([], array_lengths[1:], known_constants))
        else:
            ret.append(_parse_literal_array(stripped_array[i], array_lengths[1:], known_constants))

    return ret

def parse_literal_array(literalString:str, arrayLengths, knownConstants):
    stripped = stripArrayAssigner(literalString)
    return _parse_literal_array(stripped, arrayLengths, knownConstants)



#atomic_regex = r"((?<=([(+\-*/)]))|^)(([a-zA-Z_][a-zA-Z_0-9]*)|([+\-]?[0-9]+)|(0x[0-9abcdef]+)|(0b[01]+))(?=([+\-*/)]|$))"

def _calculate_calculation_order(expression_arr:list[str], order_precedence:list[list[str]]):
    if len(expression_arr) == 3:
        return expression_arr
    elif len(expression_arr) == 1:
        return expression_arr
    elif len(expression_arr) < 3:
        raise Exception("Somewhere an error occured while parsing expression!")


    new_expression_arr = []
    while "(" in expression_arr or ")" in expression_arr:
        bracket_begin = 0
        found_opening = False
        bracket_depth = 0
        for i in range(len(expression_arr)):
            current_mnemonic = expression_arr[i]
            if found_opening:
                if current_mnemonic == "(":
                    bracket_depth += 1
                elif current_mnemonic == ")":
                    bracket_depth -= 1
                    if bracket_depth == 0:
                        new_expression_arr = expression_arr[0:bracket_begin]
                        new_expression_arr.append(_calculate_calculation_order(expression_arr[bracket_begin+1:i], order_precedence))
                        new_expression_arr.extend(expression_arr[i+1:len(expression_arr)])
                        expression_arr = new_expression_arr
                        found_opening = False
                        break
            else:
                if current_mnemonic == "(":
                    found_opening = True
                    bracket_begin = i
                    bracket_depth += 1
                elif current_mnemonic == ")":
                    raise Exception("Opening and closing brackets do not match in {} (to many closing brackets)".format(''.join(expression_arr)))
        if found_opening:
            raise Exception("Opening and closing brackets do not match in {} (to many opening brackets)".format(''.join(expression_arr)))

    for ops in order_precedence:
        is_in = False
        for op in ops:
            is_in = is_in or (op in expression_arr)

        while is_in:
            is_in = False
            for op in ops:
                is_in = is_in or (op in expression_arr)
            for i in range(len(expression_arr)):
                current_mnemonic = expression_arr[i]
                if current_mnemonic in ops:
                    new_expression_arr = expression_arr[0:i-1]
                    new_expression_arr.append(expression_arr[i-1:i+2])
                    new_expression_arr.extend(expression_arr[i+2:len(expression_arr)])
                    expression_arr = new_expression_arr
                    break

    return expression_arr

atomic_regex = r"(([a-zA-Z_][a-zA-Z_0-9]*)|(0x[0-9abcdef]+)|(0b[01]+)|([+\-]?[0-9]+))"
def calculate_calculation_order(expression, order_precedence=[["*", "/"], ["+", "-"], ["<<", ">>"]]):

    expression = re.sub(r'\s+', '', expression)

    re_operators = [re.compile(re.escape("(")), re.compile(re.escape(")"))]
    for ops in order_precedence:
        for op in ops:
            re_operators.append(re.compile(re.escape(op)))



    mnemonics = []
    c = 0
    while c < len(expression):
        current_char = expression[c]

        found_operator = False

        for o in re_operators:
            m = re.match(o, expression[c:])
            if m:
                if m.start() == 0:
                    found_operator = True
                    mnemonics.append(expression[c:][m.start():m.end()])
                    c += m.end()
                    break

        if not found_operator:
            m = re.match(atomic_regex, expression[c:])
            if m:
                if m.start() == 0:
                    mnemonics.append(expression[c:][m.start():m.end()])
                    c += m.end()
                    continue
        else:
            continue
        raise Exception("Error in expression: {}".format(expression))
    order = _calculate_calculation_order(mnemonics, order_precedence)

    return order


def is_identifier_valid(identifier: str) -> bool:
    invalid_identifiers = ["const", "function", "for", "while"]
    if identifier in invalid_identifiers:
        return False
    if identifier in fileCompiler.DataTypeEnum:
        return False
    return re.match(r"^[a-zA-Z_][a-zA-Z_0-9]*$", identifier) != None


if __name__ == "__main__":
    print(calculate_calculation_order("((avc + c * b) * b + c) + (a * b) * cd + ab"))
    print("---------------------------")
    print(calculate_calculation_order("((a + c * b) * b << c) + (a * b) * c"))
    print("---------------------------")
    print(calculate_calculation_order("10"))
    print("---------------------------")
    print(calculate_calculation_order("10+2"))