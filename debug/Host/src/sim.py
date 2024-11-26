

def bytes_to_bits_binary(byte_data):
    bits_data = ""
    for i in range(len(byte_data)):
        bits_data += "{:08b}".format(int(byte_data[i].hex(), 16))
        #print(bits_data)
    return bits_data

def write_one_byte(f, i):
    f.write("# start\n")
    f.write("RX_UART_IN <= '0';\n")
    f.write("wait for 1100 ns;\n")
    for j in range(8):
        f.write(f"RX_UART_IN <= '{data_binary[i]}';\n")
        f.write("wait for 1100 ns;\n")
        i += 1
    f.write("RX_UART_IN <= '1';\n")
    f.write("wait for 1100 ns;\n")
    return i

#data = [b"\x10", b'\x11']
#data_binary = bytes_to_bits_binary(data)
with open("data.bin", 'rb') as f:
    data = []
    while 1:
        read_data = f.read(1)
        #print(read_data)
        if read_data == b'':
            break
        data.append(read_data)
    #print(data)
    data_binary = bytes_to_bits_binary(data)
    #print(bytes_to_bits_binary(data))

i = 0
addr = 0
#print(f'Addr: {addr:016b}')
#print(len(data_binary))
instruction_bits = bytes_to_bits_binary([b'\x31'])
with open("sim.txt", 'w') as f:
    command_count = int(len(data) / 2)
    #print(len(data))
    #print(data_binary)
    for _ in range(command_count):
        # instruction
        f.write("-- start\n")
        f.write("RX_UART_IN <= '0';\n")
        f.write("wait for 1100 ns;\n")
        for j in range(8):
            f.write(f"RX_UART_IN <= '{instruction_bits[7 - j]}';\n")
            f.write("wait for 1100 ns;\n")
        f.write("RX_UART_IN <= '1';\n")
        f.write("wait for 1100 ns;\n")

        # addr
        addr_bits = f'{addr:016b}'
        addr_bits_high = addr_bits[:8]
        addr_bits_low = addr_bits[8:]
        for k in range(2):
            f.write("-- start addr\n")
            f.write("RX_UART_IN <= '0';\n")
            f.write("wait for 1100 ns;\n")
            for j in range(8):
                if k == 0:
                    f.write(f"RX_UART_IN <= '{addr_bits_high[7 - j]}';\n")
                else:
                    f.write(f"RX_UART_IN <= '{addr_bits_low[7 - j]}';\n")
                #f.write(f"RX_UART_IN <= '{addr_bits[k *(7 - j)]}';\n")
                f.write("wait for 1100 ns;\n")
            f.write("RX_UART_IN <= '1';\n")
            f.write("wait for 1100 ns;\n")
        addr += 1

        # data
        for k in range(2):
            f.write("-- start data\n")
            f.write("RX_UART_IN <= '0';\n")
            f.write("wait for 1100 ns;\n")
            write_data = []
            for j in range(8):
                write_data.append(data_binary[i])
                i += 1
            for j in range(8):
                #print(i)
                f.write(f"RX_UART_IN <= '{write_data[7 - j]}';\n")
                f.write("wait for 1100 ns;\n")
            f.write("RX_UART_IN <= '1';\n")
            f.write("wait for 1100 ns;\n")
        f.write("wait for 60000ns;\n")
        f.write("-- next instruction\n")
        f.write("\n")
    
    # start clk
    # instruction
    instruction_bits = bytes_to_bits_binary([b'\x02'])
    f.write("-- start\n")
    f.write("RX_UART_IN <= '0';\n")
    f.write("wait for 1100 ns;\n")
    for j in range(8):
        f.write(f"RX_UART_IN <= '{instruction_bits[7 - j]}';\n")
        f.write("wait for 1100 ns;\n")
    f.write("RX_UART_IN <= '1';\n")
    f.write("wait for 1100 ns;\n")