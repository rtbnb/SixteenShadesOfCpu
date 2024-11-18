import serial
c = 0
with serial.Serial() as ser:
    ser.baudrate = 921600
    ser.port = 'COM9'
    ser.open()
    if ser.is_open:
        print(ser.write(b'\x00'))
        print(ser.write(b'\x00'))
        print(ser.write(b'\x00'))
        print(ser.read())
        print(ser.read())
        print(ser.read())
        print(ser.read())
        print(ser.read())

        print(ser.write(b'\x01'))
        print(ser.write(b'\x00'))
        print(ser.write(b'\x00'))
        print(ser.read())
        print(ser.read())
        print(ser.read())
        print(ser.read())
        print(ser.read())

        print(ser.write(b'\x02'))
        print(ser.write(b'\x00'))
        print(ser.write(b'\x00'))
        print(ser.read())
        print(ser.read())
        print(ser.read())
        print(ser.read())
        print(ser.read())