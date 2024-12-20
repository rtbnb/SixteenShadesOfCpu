# ----------------------------------------------------------------------------------
# Name: Nico Tunkowski
# Design Name: ShadeCpu
# Module Name: DatapoolebugWindow.py
# Project Name: ShadeCpu-1
# Target Devices: Host PC with Python 3
# Repository: https://github.com/rtbnb/SixteenShadesOfCpu
# ----------------------------------------------------------------------------------

from PySide6 import QtWidgets
import sys
from Datapool import Datapool
from queue import Queue


class DebugWindow(QtWidgets.QWidget):
    def __init__(self, datapool: Datapool):
        super().__init__()
        self.data = datapool.get_dict()
        self.datapool = datapool
        self.command_queue = Queue()
        self.initUI()

    def initUI(self):
        self.setWindowTitle('Debug Window')
        self.layout = QtWidgets.QGridLayout(self)

        self.table = QtWidgets.QTableWidget(self)
        self.table.setColumnCount(4)
        self.table.setColumnWidth(2, 150)
        self.table.setHorizontalHeaderLabels(['Key', 'Name', 'Binary', 'Hex'])
        self.layout.addWidget(self.table, 0, 0, len(self.data) + 3, 3)

        self.populate_table()

        # request commands combo box
        request_select_box = QtWidgets.QComboBox()
        request_select_box.addItem("pipeline_stalled", [b"\x10"])
        request_select_box.addItem("pipeline_instruction_forwarding_config", [b"\x11"])
        request_select_box.addItem("pipeline_current_instruction", [b"\x12"])
        request_select_box.addItem("pipeline_operand_1", [b"\x13"])
        request_select_box.addItem("pipeline_operand_2", [b"\x14"])
        request_select_box.addItem("pipeline_jmp", [b"\x16"])
        request_select_box.addItem("pipeline_write_data_sel_out", [b"\x1B"])
        request_select_box.addItem("pipeline_ram_src_read_write_bankid_out", [b"\x1C"])
        request_select_box.addItem("pc_din", [b"\x20"])
        request_select_box.addItem("pc_dout", [b"\x21"])
        request_select_box.addItem("alu_din1", [b"\x40"])
        request_select_box.addItem("alu_din2", [b"\x41"])
        request_select_box.addItem("alu_out", [b"\x42"])
        request_select_box.addItem("alu_flags", [b"\x43"])
        request_select_box.addItem("alu_op", [b"\x44"])
        request_select_box.addItem("regfile_addr_reg1", [b"\x50"])
        request_select_box.addItem("regfile_addr_reg2", [b"\x51"])
        request_select_box.addItem("regfile_addr_write_reg", [b"\x52"])
        request_select_box.addItem("regfile_write_enable", [b"\x53"])
        request_select_box.addItem("regfile_overwrite_flag", [b"\x54"])
        request_select_box.addItem("regfile_write_data", [b"\x55"])
        request_select_box.addItem("regfile_reg1_data", [b"\x56"])
        request_select_box.addItem("regfile_reg2_data", [b"\x57"])
        request_select_box.addItem("regfile_overwrite_flag", [b"\x59"])

        self.layout.addWidget(request_select_box, 0, 5, 1, 1)
        request_button = QtWidgets.QPushButton(text="Request")
        self.layout.addWidget(request_button, 0, 6, 1, 1)
        request_button.clicked.connect(lambda: self.command_button_pushed(request_select_box.currentData()[0]))

        button_request_all = QtWidgets.QPushButton(text="Request all Data")
        button_request_all.clicked.connect(lambda: self.command_list_button_pushed([b"\x10", b"\x11", b"\x12", b"\x13", b"\x14", b"\x16", b"\x1B", b"\x1C", b"\x20", b"\x21", b"\x40", b"\x41", b"\x42", b"\x43", b"\x44", b"\x50", b"\x51", b"\x52", b"\x53", b"\x54", b"\x55", b"\x56", b"\x57", b"\x59"]))
        self.layout.addWidget(button_request_all, 1, 6, 1, 1)

        # iram write
        textfield_memory_data = QtWidgets.QLineEdit()
        textfield_memory_addr = QtWidgets.QLineEdit()
        iram_write_button = QtWidgets.QPushButton(text="Write to IRAM")
        iram_write_button.clicked.connect(lambda: self.button_pushed_write_iram(textfield_memory_data, textfield_memory_addr))
        #self.layout.addWidget(textfield_memory_data, len(self.data) + 1, 0, 1, 1)
        #self.layout.addWidget(textfield_memory_addr, len(self.data) + 1, 1, 1, 1)
        #self.layout.addWidget(iram_write_button, len(self.data) + 1, 2, 1, 1)

        # gram write
        gram_textfield_memory_data = QtWidgets.QLineEdit()
        gram_textfield_memory_addr = QtWidgets.QLineEdit()
        gram_write_button = QtWidgets.QPushButton(text="Write to GRAM")
        gram_write_button.clicked.connect(lambda: self.button_pushed_write_gram(textfield_memory_data, textfield_memory_addr))
        #self.layout.addWidget(gram_textfield_memory_data, len(self.data) + 2, 0, 1, 1)
        #self.layout.addWidget(gram_textfield_memory_addr, len(self.data) + 2, 1, 1, 1)
        #self.layout.addWidget(gram_write_button, len(self.data) + 2, 2, 1, 1)

        # memmory
        fetch_memory_start_addr_textbox = QtWidgets.QLineEdit()
        fetch_memory_start_addr_textbox.setSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        fetch_memory_start_addr_label = QtWidgets.QLabel("Start Address (HEX)")
        self.layout.addWidget(fetch_memory_start_addr_label, len(self.data) - 1, 5, 1, 1)
        self.layout.addWidget(fetch_memory_start_addr_textbox, len(self.data), 5, 1, 1)        
        fetch_memory_end_addr_textbox = QtWidgets.QLineEdit()
        fetch_memory_end_addr_textbox.setSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        fetch_memory_end_addr_label = QtWidgets.QLabel("End Address (HEX)")
        self.layout.addWidget(fetch_memory_end_addr_label, len(self.data) - 1, 6, 1, 1)
        self.layout.addWidget(fetch_memory_end_addr_textbox, len(self.data), 6, 1, 1)
        write_memory_data_to_file_button = QtWidgets.QPushButton(text="Write Memory Data to File")
        write_memory_data_to_file_button.clicked.connect(lambda: self.write_memory_data_to_file())
        self.layout.addWidget(write_memory_data_to_file_button, len(self.data) - 2, 6, 1, 1)
        # iram bin file
        iram_bin_file_button = QtWidgets.QPushButton(text="Select IRAM bin file")
        iram_bin_file_button.clicked.connect(lambda: self.button_select_bin_file(b"\x31"))
        self.layout.addWidget(iram_bin_file_button, len(self.data) + 1, 5, 1, 1)

        fetch_iram_button = QtWidgets.QPushButton(text="Fetch IRAM")
        fetch_iram_button.clicked.connect(lambda: self.fetch_memory(b"\x32", int(fetch_memory_start_addr_textbox.text(), 16), int(fetch_memory_end_addr_textbox.text(), 16)))
        self.layout.addWidget(fetch_iram_button, len(self.data) + 1, 6, 1, 1)

        # gram bin file
        gram_bin_file_button = QtWidgets.QPushButton(text="Select GRAM bin file")
        gram_bin_file_button.clicked.connect(lambda: self.button_select_bin_file(b"\x30"))
        self.layout.addWidget(gram_bin_file_button, len(self.data) + 2, 5, 1, 1)

        fetch_gram_button = QtWidgets.QPushButton(text="Fetch GRAM")
        fetch_gram_button.clicked.connect(lambda: self.fetch_memory(b"\x36", int(fetch_memory_start_addr_textbox.text(), 16), int(fetch_memory_end_addr_textbox.text(), 16)))
        self.layout.addWidget(fetch_gram_button, len(self.data) + 2, 6, 1, 1)

        # vram bin file
        vram_bin_file_button = QtWidgets.QPushButton(text="Select VRAM bin file")
        vram_bin_file_button.clicked.connect(lambda: self.button_select_bin_file(b"\x33"))
        self.layout.addWidget(vram_bin_file_button, len(self.data) + 3, 5, 1, 1)

        fetch_vram_button = QtWidgets.QPushButton(text="Fetch VRAM")
        fetch_vram_button.clicked.connect(lambda: self.fetch_memory(b"\x35", int(fetch_memory_start_addr_textbox.text(), 16), int(fetch_memory_end_addr_textbox.text(), 16)))
        self.layout.addWidget(fetch_vram_button, len(self.data) + 3, 6, 1, 1)

        # manual command input window
        command_input_line_edit = QtWidgets.QLineEdit()
        command_input_send_button = QtWidgets.QPushButton(text="Send Command")
        command_input_send_button.clicked.connect(lambda: self.send_command_manuel(command_input_line_edit))
        self.layout.addWidget(command_input_line_edit, len(self.data) + 3, 0, 1, 2)
        self.layout.addWidget(command_input_send_button, len(self.data) + 3, 2, 1, 1)

        # clock buttons
        clock_resume_button = QtWidgets.QPushButton(text="Resume Clock")
        clock_resume_button.clicked.connect(lambda: self.command_button_pushed(b"\x02"))
        clock_hold_button = QtWidgets.QPushButton(text="Hold Clock")
        clock_hold_button.clicked.connect(lambda: self.command_button_pushed(b"\x00"))
        clock_one_cylce_button = QtWidgets.QPushButton(text="Step One Clock")
        clock_one_cylce_button.clicked.connect(lambda: self.command_button_pushed(b"\x01"))
        clock_n_cycle_button = QtWidgets.QPushButton(text="Step N Clocks")
        clock_n_cycle_text_box = QtWidgets.QLineEdit()
        clock_n_cycle_text_box.setSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        clock_n_cycle_text_box.setInputMask("nnnnn")

        clock_n_cycle_button.clicked.connect(lambda: self.clock_n_cycles(clock_n_cycle_text_box.text()))
        self.layout.addWidget(clock_resume_button, 2, 6, 1, 1)
        self.layout.addWidget(clock_hold_button, 3, 6, 1, 1)
        self.layout.addWidget(clock_one_cylce_button, 4, 6, 1, 1)
        self.layout.addWidget(clock_n_cycle_text_box, 5, 5, 1, 1)
        self.layout.addWidget(clock_n_cycle_button, 5, 6, 1, 1)

    def clock_n_cycles(self, n: str):
        command_list = [b"\x01"]
        if n.isnumeric() == False:
            return
        for i in range(int(n)):
            self.add_command_to_queue(command_list)
        
    
    def send_command_manuel(self, command_input_line_edit:QtWidgets.QLineEdit):
        command = command_input_line_edit.text()
        if len(command) == 0:
            return
        command_bytes = bytes.fromhex(command)
        command_list = []
        for i in range(len(command_bytes)):
            command_list.append(command_bytes[i:i+1])
        self.add_command_to_queue(command_list)

    def button_pushed_write_iram(self, textfield_memory_data, textfield_memory_addr):
        data = bytes.fromhex(textfield_memory_data.text())
        addr = bytes.fromhex(textfield_memory_addr.text())
        self.add_command_to_queue([b"\x31", addr, data])
    
    def button_pushed_write_gram(self, textfield_memory_data, textfield_memory_addr):
        data = bytes.fromhex(textfield_memory_data.text())
        addr = bytes.fromhex(textfield_memory_addr.text())
        self.add_command_to_queue([b"\x30", addr, data])

    def button_select_bin_file(self, command: bytes):
        max_addr = 0xFFFF
        fileName = QtWidgets.QFileDialog.getOpenFileName(self,
        self.tr("Open Image"), "", self.tr("Bin Files (*.bin)"))
        with open(fileName[0], 'rb') as f:
            data = f.read()
            #print(data)
            addr_counter = 0
            for i in range(0, len(data), 2):
                addr_bytes = addr_counter.to_bytes(2, 'big')
                #print("Bytes: ")
                #print(type(addr_bytes))
                #print(type(addr_bytes[0:1]))
                #print([b"\x31", addr_bytes[0], addr_bytes[1], data[i], data[i+1]])
                #print("End Bytes")
                self.add_command_to_queue([command, addr_bytes[0:1], addr_bytes[1:2], data[i:i+1], data[i+1:i+2]])
                addr_counter += 1
                if addr_counter > max_addr:
                    break
        print(fileName)
    
    def fetch_memory(self, fetch_command: bytes, address_start, address_end):
        for i in range(address_start, address_end + 1):
            addr_bytes = i.to_bytes(2, 'big')
            self.add_command_to_queue([fetch_command, addr_bytes[0:1], addr_bytes[1:2]])
    
    def write_memory_data_to_file(self):
        with open("iram.mem", 'wb') as f:
            for data in self.data[b'\x32']['memory']:
                f.write(data)
        with open("gram.mem", 'wb') as f:
            for data in self.data[b'\x36']['memory']:
                f.write(data)
        with open("vram.mem", 'wb') as f:
            for data in self.data[b'\x35']['memory']:
                f.write(data)
        with open("mmio.mem", 'wb') as f:
            for data in self.data[b'\x37']['memory']:
                f.write(data)

    def get_command_queue(self):
        return self.command_queue

    def add_command_to_queue(self, command_list: list):
        self.command_queue.put(command_list)

    def populate_table(self):
        self.table.setRowCount(len(self.data))
        for row, (key, value) in enumerate(self.data.items()):
            if 'data_1_high' in value and 'data_1_low' in value:
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
        for command in command_list:
            self.add_command_to_queue([command])

    def  get_rx_datapool(self) -> Datapool:
        return self.datapool
    
    def request_memory(self, memory_type: str, address_start, address_end):
        command = b""
        if memory_type == "iram":
            command = b"\x31"
        elif memory_type == "gram":
            command = b"\x30"
        elif memory_type == "vram":
            command = b"\x33"
        else:
            print("Invalid memory type")
            return
        for addr in range(address_start, address_end):
            addr_bytes = addr.to_bytes(2, 'big')
            self.add_command_to_queue([command, addr_bytes[0:1], addr_bytes[1:2]])

def print_queue(debugWindow: DebugWindow):
    while(1):
        q = debugWindow.get_command_queue()
        if not q.empty():
            command_list = q.get()
            for c in command_list:
                #print(type(c))
                print(f"sended command: {c.hex()}")

    def command_list_button_pushed(self, command_list):
        self.add_command_to_queue(command_list)

print_enb = 1
def print_queue(debugWindow: DebugWindow):
    while(print_enb):
        q = debugWindow.get_command_queue()
        if not q.empty():
            command_list = q.get()
            for c in command_list:
                print(f"sended command: {c.hex()}")

if __name__ == '__main__':
    from Datapool import Datapool  # Import the data from main.py
    import threading

    app = QtWidgets.QApplication([])
    widget = DebugWindow(Datapool())
    widget.resize(1000, 600)
    widget.show()

    read_t = threading.Thread(target=print_queue, args=[widget])
    read_t.start()
    app.exec()
    print_enb = 0
    read_t.join()