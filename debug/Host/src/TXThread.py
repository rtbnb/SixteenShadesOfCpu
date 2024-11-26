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

    def run(self):
        # input for debug command
        while(self.is_running):
            try:
                q = self.debugWindow.get_command_queue()
                if not q.empty():
                    command_list = q.get()
                    for command in command_list:
                        self.ser.write(command)
                        print(f"sended command: {command.hex()}")
                    print("Waiting for response...")
                    self.rx_no_loop(self.ser, self.debugWindow)
                    print("Response received")
            except KeyboardInterrupt:
                break
    
    def  stop_thread(self):
        self.is_running = False

    def process_command(self, rx_data: bytes, byte_counter, command_instruction: bytes, debugWindow: DebugWindow):
        rx_data_datapool = debugWindow.get_rx_datapool()
        if byte_counter == 0:
            command_instruction = rx_data
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
        (byte_counter, command_instruction) = self.process_command(rx_data, byte_counter, command_instruction, debugWindow)
        if not (byte_counter == 0):
            rx_data = ser.read()
            print(f"Received: {format(ord(rx_data), '02x')}")
            (byte_counter, command_instruction) = self.process_command(rx_data, byte_counter, command_instruction, debugWindow)
            rx_data = ser.read()
            print(f"Received: {format(ord(rx_data), '02x')}")
            (byte_counter, command_instruction) = self.process_command(rx_data, byte_counter, command_instruction, debugWindow)
        
        if not (byte_counter == 0):
            rx_data = ser.read()
            print(f"Received: {format(ord(rx_data), '02x')}")
            (byte_counter, command_instruction) = self.process_command(rx_data, byte_counter, command_instruction, debugWindow)
            rx_data = ser.read()
            print(f"Received: {format(ord(rx_data), '02x')}")
            (byte_counter, command_instruction) = self.process_command(rx_data, byte_counter, command_instruction, debugWindow)

