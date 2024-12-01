

input = [i for i in range(1<<12)]

output = "./Debug.coe"

if __name__ == "__main__":
    base = "memory_initialization_radix=10;\nmemory_initialization_vector=\n"
    with open(output, "w") as f:
        f.write(base)
        f.write(",\n".join([str(i) for i in input]))
        f.write(";")