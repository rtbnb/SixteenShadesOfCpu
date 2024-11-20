from PySide6 import QtCore, QtWidgets, QtGui
import sys
from Datapool import Datapool


class DebugWindow(QtWidgets.QWidget):
    def __init__(self, data: Datapool):
        super().__init__()
        self.data = data.get_dict()
        self.initUI()

    def initUI(self):
        self.setWindowTitle('Debug Window')
        self.layout = QtWidgets.QVBoxLayout(self)

        self.table = QtWidgets.QTableWidget(self)
        self.table.setColumnCount(4)
        self.table.setColumnWidth(2, 150)
        self.table.setHorizontalHeaderLabels(['Key', 'Name', 'Binary', 'Hex'])
        self.layout.addWidget(self.table)

        self.populate_table()

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

if __name__ == '__main__':
    from main import rx_data_datapool  # Import the data from main.py
    app = QtWidgets.QApplication([])
    widget = DebugWindow(rx_data_datapool)
    widget.resize(800, 600)
    widget.show()
    sys.exit(app.exec_())