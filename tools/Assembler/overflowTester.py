# ----------------------------------------------------------------------------------
# Name: Lukas Reil
# Design Name: ShadeCpu
# Module Name: overflowTester.py
# Project Name: ShadeCpu-1
# Target Devices: Host PC with Python 3
# Repository: https://github.com/rtbnb/SixteenShadesOfCpu
# ----------------------------------------------------------------------------------

def determine_overflow_circuit(a, b, y, s):
    a2 = (a >> 3) & 1
    b2 = (b >> 3) & 1
    y2 = (y >> 3) & 1
    #print(a2, b2, y2, a >> 2, b >> 2, y >> 2)
    return ((a2 ^ b2 ^ s) == 0) and (a2 != y2)

if __name__ == "__main__":
    for a in range(-8, 7+1):
        for b in range(-8, 7+1):
            sum = a + b
            overflow = sum < -8 or sum > 7
            gpt_overflow = determine_overflow_circuit(a, b, sum, 0)
            print(f"{a}+{b}={sum} => Overflow: {overflow} Circuit: {gpt_overflow} {'-----------------------' if overflow != gpt_overflow else ''}")
    for a in range(-8, 7+1):
        for b in range(-8, 7+1):
            sum = a - b
            overflow = sum < -8 or sum > 7
            gpt_overflow = determine_overflow_circuit(a, b, sum, 1)
            print(f"{a}-{b}={sum} => Overflow: {overflow} Circuit: {gpt_overflow} {'-----------------------' if overflow != gpt_overflow else ''}")