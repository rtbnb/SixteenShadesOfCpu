
src = "TestProgram3.txt"

if __name__ == "__main__":
    
    with open(src, "r") as file:
        lines = file.read().split("\n")
        
    begin = 1 if lines[0] == "v2.0 raw" else 0
    
    out_lines = []
    
    for i in range(begin, len(lines)):
        out_lines.append(f"X\"{lines[i]}\" WHEN X\"{format(i-begin, '04x')}\"")
    
    print(",\n".join(out_lines))