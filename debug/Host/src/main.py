import serial
import threading


def process_command(rx_data):
    print(f"rx: {rx_data}")


def rx(ser: serial.Serial):
    rx_data = 0
    while (ser.is_open):
        rx_data = ser.read()
        process_command(" ".join(hex(n) for n in rx_data))


def main():
    fpga_serial = serial.Serial('COM9', 921600)
    #fpga_serial.open()
    listening_thread = threading.Thread(target=rx, args=[fpga_serial])
    listening_thread.start()

    # input for debug command
    while(1):
        try:
            command = input()
            print(f"command is: {command} int: {int(command, base=16)}")

            byte_command = bytes([int(command, base=16)])
            print("command: ".join(hex(n) for n in byte_command))
            fpga_serial.write(byte_command)
        except KeyboardInterrupt:
            break
    
    fpga_serial.close()
    listening_thread.join()

if __name__ == '__main__':
    main()