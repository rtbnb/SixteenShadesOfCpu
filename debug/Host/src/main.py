# ----------------------------------------------------------------------------------
# Name: Nico Tunkowski
# Design Name: ShadeCpu
# Module Name: main.py
# Project Name: ShadeCpu-1
# Target Devices: Host PC with Python 3
# Repository: https://github.com/rtbnb/SixteenShadesOfCpu
# ----------------------------------------------------------------------------------
import serial
import Datapool

from PySide6 import QtCore, QtWidgets, QtGui
from DebugWindow import DebugWindow
from TXThread import TXThread

def main():
    rx_data_datapool: Datapool.Datapool = Datapool.Datapool()
    fpga_serial = serial.Serial('COM4', 115200)
    #fpga_serial.open()
    print(fpga_serial.get_settings())

    app = QtWidgets.QApplication([])
    widget = DebugWindow(rx_data_datapool)
    widget.resize(900, 600)
    widget.show()

    #listening_thread = threading.Thread(target=rx, args=[fpga_serial, widget])
    #listening_thread.start()
    #tx_thread = threading.Thread(target=tx, args=[fpga_serial, widget])
    #tx_thread.start()
    tx_thread = TXThread(fpga_serial, widget)
    tx_thread.start()
    app.exec()

    
    
    fpga_serial.close()
    tx_thread.stop_thread()
    tx_thread.join()
    #listening_thread.join()
    #tx_thread.join()

if __name__ == '__main__':
    main()