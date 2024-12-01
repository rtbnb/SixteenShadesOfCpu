import cv2

img = cv2.imread('pong_font.png')
#print(img.shape)
#print(img)
pixel_bytes = b""


def get_pixel_char(x_offset, y_offset):
    char_bytes = b""
    for rely in range(10):
        for relx in range(5):
            pixel = img[y_offset + rely][x_offset + relx]
            pixel_bytes_array = pixel.tobytes()
            char_bytes += b"\x00"
            char_bytes += pixel_bytes_array
    return char_bytes

for y in range(0, 6 * 12, 12):
    for x in range(0, 6 * 7, 7):
        #print("x: " + str(x) + " y: " + str(y))
        pixel_bytes += get_pixel_char(x, y)

#print(pixel_bytes)
with open("font.bin", 'wb') as f:
    f.write(pixel_bytes)