import serial

with serial.Serial() as ser:
    ser.baudrate = 9600
    ser.port = 'COM4'
    ser.open()
    if ser.is_open:
        print(ser.write(b'\xaa'))
        print(ser.read())