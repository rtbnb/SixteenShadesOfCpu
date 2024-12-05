# ----------------------------------------------------------------------------------
# Name: Lukas Reil
# Design Name: ShadeCpu
# Module Name: hex2irom.py
# Project Name: ShadeCpu-1
# Target Devices: Host PC with Python 3
# Repository: https://github.com/rtbnb/SixteenShadesOfCpu
# ----------------------------------------------------------------------------------

src = "ClearVGA_Test.txt"

if __name__ == "__main__":
    
    with open(src, "r") as file:
        lines = file.read().split("\n")
        
    begin = 1 if lines[0] == "v2.0 raw" else 0
    
    out_lines = []
    
    for i in range(begin, len(lines)):
        out_lines.append(f"X\"{lines[i]}\" WHEN X\"{format(i-begin, '04x')}\"")
    
    print(",\n".join(out_lines))