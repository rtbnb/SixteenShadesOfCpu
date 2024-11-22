from PySide6 import QtCore, QtWidgets, QtGui
import sys
from Datapool import Datapool
from queue import Queue


class DebugWindow(QtWidgets.QWidget):
    def __init__(self, data: Datapool, command_queue: Queue):
        super().__init__()
        self.data = data.get_dict()
        self.command_queue = command_queue
        self.initUI()

    def initUI(self):
        self.setWindowTitle('Debug Window')
        self.layout = QtWidgets.QGridLayout(self)

        self.table = QtWidgets.QTableWidget(self)
        self.table.setColumnCount(4)
        self.table.setColumnWidth(2, 150)
        self.table.setHorizontalHeaderLabels(['Key', 'Name', 'Binary', 'Hex'])
        self.layout.addWidget(self.table, 0, 0, len(self.data) + 1, 1)

        self.populate_table()

        self.CommandSendButtonList = []

        button_10 = QtWidgets.QPushButton(text="Request pipeline_stalled")
        button_10.clicked.connect(lambda: self.command_button_pushed(b"\x10"))
        self.CommandSendButtonList.append(button_10)

        button_11 = QtWidgets.QPushButton(text="Request pipeline_instruction_forwarding_config")
        button_11.clicked.connect(lambda: self.command_button_pushed(b"\x11"))
        self.CommandSendButtonList.append(button_11)

        button_12 = QtWidgets.QPushButton(text="Request pipeline_current_instruction")
        button_12.clicked.connect(lambda: self.command_button_pushed(b"\x12"))
        self.CommandSendButtonList.append(button_12)

        button_13 = QtWidgets.QPushButton(text="Request pipeline_operand_1")
        button_13.clicked.connect(lambda: self.command_button_pushed(b"\x13"))
        self.CommandSendButtonList.append(button_13)

        button_14 = QtWidgets.QPushButton(text="Request pipeline_operand_2")
        button_14.clicked.connect(lambda: self.command_button_pushed(b"\x14"))
        self.CommandSendButtonList.append(button_14)

        button_15 = QtWidgets.QPushButton(text="Request pipeline_memory_addr_reg")
        button_15.clicked.connect(lambda: self.command_button_pushed(b"\x15"))
        self.CommandSendButtonList.append(button_15)

        button_16 = QtWidgets.QPushButton(text="Request pipeline_jmp")
        button_16.clicked.connect(lambda: self.command_button_pushed(b"\x16"))
        self.CommandSendButtonList.append(button_16)

        button_20 = QtWidgets.QPushButton(text="Request pc_din")
        button_20.clicked.connect(lambda: self.command_button_pushed(b"\x20"))
        self.CommandSendButtonList.append(button_20)

        button_21 = QtWidgets.QPushButton(text="Request pc_dout")
        button_21.clicked.connect(lambda: self.command_button_pushed(b"\x21"))
        self.CommandSendButtonList.append(button_21)

        button_22 = QtWidgets.QPushButton(text="Request pc_current_addr")
        button_22.clicked.connect(lambda: self.command_button_pushed(b"\x22"))
        self.CommandSendButtonList.append(button_22)

        button_30 = QtWidgets.QPushButton(text="Request Idle")
        button_30.clicked.connect(lambda: self.command_button_pushed(b"\x30"))
        self.CommandSendButtonList.append(button_30)

        button_31 = QtWidgets.QPushButton(text="Request Idle")
        button_31.clicked.connect(lambda: self.command_button_pushed(b"\x31"))
        self.CommandSendButtonList.append(button_31)

        button_40 = QtWidgets.QPushButton(text="Request alu_din1")
        button_40.clicked.connect(lambda: self.command_button_pushed(b"\x40"))
        self.CommandSendButtonList.append(button_40)

        button_41 = QtWidgets.QPushButton(text="Request alu_din2")
        button_41.clicked.connect(lambda: self.command_button_pushed(b"\x41"))
        self.CommandSendButtonList.append(button_41)

        button_42 = QtWidgets.QPushButton(text="Request alu_out")
        button_42.clicked.connect(lambda: self.command_button_pushed(b"\x42"))
        self.CommandSendButtonList.append(button_42)

        button_43 = QtWidgets.QPushButton(text="Request alu_flags")
        button_43.clicked.connect(lambda: self.command_button_pushed(b"\x43"))
        self.CommandSendButtonList.append(button_43)

        button_44 = QtWidgets.QPushButton(text="Request alu_op")
        button_44.clicked.connect(lambda: self.command_button_pushed(b"\x44"))
        self.CommandSendButtonList.append(button_44)

        button_50 = QtWidgets.QPushButton(text="Request regfile_addr_reg1")
        button_50.clicked.connect(lambda: self.command_button_pushed(b"\x50"))
        self.CommandSendButtonList.append(button_50)

        button_51 = QtWidgets.QPushButton(text="Request regfile_addr_reg2")
        button_51.clicked.connect(lambda: self.command_button_pushed(b"\x51"))
        self.CommandSendButtonList.append(button_51)

        button_52 = QtWidgets.QPushButton(text="Request regfile_addr_write_reg")
        button_52.clicked.connect(lambda: self.command_button_pushed(b"\x52"))
        self.CommandSendButtonList.append(button_52)

        button_53 = QtWidgets.QPushButton(text="Request regfile_write_enable")
        button_53.clicked.connect(lambda: self.command_button_pushed(b"\x53"))
        self.CommandSendButtonList.append(button_53)

        button_54 = QtWidgets.QPushButton(text="Request regfile_overwrite_flag")
        button_54.clicked.connect(lambda: self.command_button_pushed(b"\x54"))
        self.CommandSendButtonList.append(button_54)

        button_55 = QtWidgets.QPushButton(text="Request regfile_write_data")
        button_55.clicked.connect(lambda: self.command_button_pushed(b"\x55"))
        self.CommandSendButtonList.append(button_55)

        button_56 = QtWidgets.QPushButton(text="Request regfile_reg1_data")
        button_56.clicked.connect(lambda: self.command_button_pushed(b"\x56"))
        self.CommandSendButtonList.append(button_56)

        button_57 = QtWidgets.QPushButton(text="Request regfile_reg2_data")
        button_57.clicked.connect(lambda: self.command_button_pushed(b"\x57"))
        self.CommandSendButtonList.append(button_57)

        button_58 = QtWidgets.QPushButton(text="Request regfile_regma_data")
        button_58.clicked.connect(lambda: self.command_button_pushed(b"\x58"))
        self.CommandSendButtonList.append(button_58)

        button_59 = QtWidgets.QPushButton(text="Request regfile_overwrite_flag")
        button_59.clicked.connect(lambda: self.command_button_pushed(b"\x59"))
        self.CommandSendButtonList.append(button_59)


        i = 1
        for button in self.CommandSendButtonList:
            self.layout.addWidget(button, i, 1, 1, 1)
            i += 1
        
        # general commands
        button_request_all = QtWidgets.QPushButton(text="Request all Data")
        button_request_all.clicked.connect(lambda: self.command_list_button_pushed([b"\x10", b"\x11", b"\x12", b"\x13", b"\x14", b"\x15", b"\x16", b"\x20", b"\x21", b"\x22", b"\x30", b"\x31", b"\x40", b"\x41", b"\x42", b"\x43", b"\x44", b"\x50", b"\x51", b"\x52", b"\x53", b"\x54", b"\x55", b"\x56", b"\x57", b"\x58", b"\x59"]))
        self.layout.addWidget(button_request_all, 1, 2, 1, 1)

    def get_command_queue(self):
        return self.command_queue

    def add_command_to_queue(self, command):
        self.command_queue.put(command)

    def populate_table(self):
        self.table.setRowCount(len(self.data))
        for row, (key, value) in enumerate(self.data.items()):
            self.table.setItem(row, 0, QtWidgets.QTableWidgetItem("".join(hex(ord(key)))))
            self.table.setItem(row, 1, QtWidgets.QTableWidgetItem(value['Name']))
            data_1_high = value['data_1_high']
            data_1_low = value['data_1_low']
            data_bin = format(ord(data_1_high), '08b') + format(ord(data_1_low), '08b')
            self.table.setItem(row, 2, QtWidgets.QTableWidgetItem(data_bin))
            data_hex = "x" + format(ord(data_1_high), '02x') + " x" + format(ord(data_1_low), '02x')
            self.table.setItem(row, 3, QtWidgets.QTableWidgetItem(data_hex))
    
    def update_table(self, datapool: Datapool):
        self.data = datapool.get_dict()
        self.populate_table()
    
    # uart commands
    def command_button_pushed(self, command):
        command_list = [command]
        self.add_command_to_queue(command_list)

    def command_list_button_pushed(self, command_list):
        self.add_command_to_queue(command_list)

def print_queue(debugWindow: DebugWindow):
    while(1):
        q = debugWindow.get_command_queue()
        if not q.empty():
            command_list = q.get()
            for c in command_list:
                print(f"sended command: {c.hex()}")

if __name__ == '__main__':
    from main import rx_data_datapool  # Import the data from main.py
    import threading
    
    app = QtWidgets.QApplication([])
    widget = DebugWindow(rx_data_datapool, Queue())
    widget.resize(800, 600)
    widget.show()
    
    read_t = threading.Thread(target=print_queue, args=[widget])
    read_t.start()    
    app.exec()

    read_t.join()