import threading
import serial
import DebugWindow
import Datapool


class TXThread(threading.Thread):
    def __init__(self, ser: serial.Serial, debugWindow: DebugWindow):
        threading.Thread.__init__(self)
        self.ser = ser
        self.debugWindow = debugWindow
        self.is_running = True
        self.failures = 0

    def run(self):
        # input for debug command
        while(self.is_running):
            try:
                q = self.debugWindow.get_command_queue()
                if not q.empty():
                    command_list = q.get()
                    readback_correct = False
                    while (not readback_correct):
                        for command in command_list:
                            self.ser.write(command)
                            print(f"sended command: {command.hex()}")
                        # readback test
                        readback_data = self.ser.read(5)
                        print(f"Readback: {readback_data.hex()}")
                        if len(command_list) == 5:
                            if readback_data[0:1] == command_list[0] and readback_data[1:2] == command_list[1] and readback_data[2:3] == command_list[2] and readback_data[3:4] == command_list[3] and readback_data[4:5] == command_list[4]:
                                readback_correct = True
                        elif len(command_list) == 3:
                            if readback_data[0:1] == command_list[0] and readback_data[3:4] == command_list[1] and readback_data[4:5] == command_list[2]:
                                readback_correct = True
                        else:
                            if readback_data[0:1] == command_list[0]:
                                readback_correct = True
                        # increase failures
                        if not readback_correct:
                            self.failures += 1
                    # send ack command
                    self.ser.write(b'\x0e')

                    print("Waiting for response...")
                    self.rx_no_loop(self.ser, self.debugWindow)
                    print("Response received")
            except KeyboardInterrupt:
                break
    
    def  stop_thread(self):
        self.is_running = False

    def process_command(self, rx_data: bytes, byte_counter, command_instruction: bytes, debugWindow: DebugWindow, ser: serial.Serial):
        rx_data_datapool = debugWindow.get_rx_datapool()
        # memory read pre fetch
        if byte_counter == 0 and (rx_data == b'\x32' or rx_data == b'\x35' or rx_data == b'\x36' or rx_data == b'\x37'):
            data = ser.read(2)
            addr = ser.read(2)
            addr = int.from_bytes(addr, byteorder='big')
            if rx_data == b'\x32':
                rx_data_datapool.set_iram_data(addr, data)
            elif rx_data == b'\x35':
                rx_data_datapool.set_vram_data(addr, data)
            elif rx_data == b'\x36':
                rx_data_datapool.set_gram_data(addr, data)
            elif rx_data == b'\x37':
                rx_data_datapool.set_mmi_data(addr, data)
            return (0, b'\x00')
        else:
            # normal command processing
            if byte_counter == 0:
                command_instruction = rx_data
                if command_instruction == b'\x0f':
                    self.failures += 1
                    print(f"Failures: {self.failures}")
                try:
                    rx_data_datapool.get_data(command_instruction, "data_1_high")
                except KeyError:
                    debugWindow.update_table(rx_data_datapool)
                    return (0, b'\x00')
            elif byte_counter == 1:
                rx_data_datapool.set_data(command_instruction, data_1_high=rx_data)
            elif byte_counter == 2:
                rx_data_datapool.set_data(command_instruction, data_1_low=rx_data)
                try:
                    rx_data_datapool.get_data(command_instruction, "data_2_high")
                except KeyError:
                    debugWindow.update_table(rx_data_datapool)
                    return (0, b'\x00')
            elif byte_counter == 3:
                rx_data_datapool.set_data(command_instruction, data_2_high=rx_data)
            elif byte_counter == 4:
                rx_data_datapool.set_data(command_instruction, data_2_low=rx_data)
                debugWindow.update_table(rx_data_datapool)
                return (0, command_instruction)
            
            return (byte_counter + 1, command_instruction)

    def rx_no_loop(self, ser: serial.Serial, debugWindow: DebugWindow):
        rx_data = 0
        byte_counter = 0
        command_instruction: bytes = 0
        ser.timeout = 10

        # fetch instruction
        rx_data = ser.read()
        print(f"Received: {format(ord(rx_data), '02x')}")
        (byte_counter, command_instruction) = self.process_command(rx_data, byte_counter, command_instruction, debugWindow, ser)
        if not (byte_counter == 0):
            rx_data = ser.read()
            print(f"Received: {format(ord(rx_data), '02x')}")
            (byte_counter, command_instruction) = self.process_command(rx_data, byte_counter, command_instruction, debugWindow, ser)
            rx_data = ser.read()
            print(f"Received: {format(ord(rx_data), '02x')}")
            (byte_counter, command_instruction) = self.process_command(rx_data, byte_counter, command_instruction, debugWindow, ser)
        
        if not (byte_counter == 0):
            rx_data = ser.read()
            print(f"Received: {format(ord(rx_data), '02x')}")
            (byte_counter, command_instruction) = self.process_command(rx_data, byte_counter, command_instruction, debugWindow, ser)
            rx_data = ser.read()
            print(f"Received: {format(ord(rx_data), '02x')}")
            (byte_counter, command_instruction) = self.process_command(rx_data, byte_counter, command_instruction, debugWindow, ser)