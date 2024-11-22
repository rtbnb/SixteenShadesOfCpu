import serial
import threading
import Datapool
from queue import Queue

from PySide6 import QtCore, QtWidgets, QtGui
import sys
from DebugWindow import DebugWindow


rx_data_datapool: Datapool.Datapool = Datapool.Datapool()


def process_command(rx_data: bytes, byte_counter, command_instruction: bytes, debugWindow: DebugWindow):
    if byte_counter == 0:
        command_instruction = rx_data
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



def rx(ser: serial.Serial, debugWindow: DebugWindow):
    rx_data = 0
    byte_counter = 0
    command_instruction: bytes = 0
    while (ser.is_open):
        rx_data = ser.read()
        (byte_counter, command_instruction) = process_command(rx_data, byte_counter, command_instruction, debugWindow)

def rx_non_blocking(ser: serial.Serial, debugWindow: DebugWindow):
    rx_Data = 0
    byte_counter = 0
    command_instruction: bytes = 0
    while ser.in_waiting > 0:
        rx_data = ser.read()
        (byte_counter, command_instruction) = process_command(rx_data, byte_counter, command_instruction, debugWindow)

def tx(ser: serial.Serial, debugWindow: DebugWindow):
    # input for debug command
    while(1):
        try:
            q = debugWindow.get_command_queue()
            if not q.empty():
                command_list = q.get()
                for command in command_list:
                    ser.write(command)
                    print(f"sended command: {command.hex()}")
                print("Waiting for response...")
                rx_non_blocking(ser, debugWindow)
                print("Response received")
        except KeyboardInterrupt:
            break

def main():
    fpga_serial = serial.Serial('COM4', 921600)
    #fpga_serial.open()

    app = QtWidgets.QApplication([])
    widget = DebugWindow(rx_data_datapool)
    widget.resize(800, 600)
    widget.show()

    #listening_thread = threading.Thread(target=rx, args=[fpga_serial, widget])
    #listening_thread.start()
    tx_thread = threading.Thread(target=tx, args=[fpga_serial, widget])
    tx_thread.start()
    app.exec()

    
    
    fpga_serial.close()
    #listening_thread.join()
    tx_thread.join()

if __name__ == '__main__':
    main()