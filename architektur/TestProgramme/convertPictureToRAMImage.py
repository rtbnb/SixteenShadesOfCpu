from PIL import Image
import numpy as np

def encode_image(image):
    
    arr = np.array(image)
   
    encoded_pixels = []
    for row in arr:
        for pixel in row:
            r, g, b = pixel
            r_hex = format(r, '02x')
            g_hex = format(g, '02x')
            b_hex = format(b, '02x')
            encoded_pixel = f"0{r_hex[0]}{g_hex[0]}{b_hex[0]}"
            encoded_pixels.append(encoded_pixel)
    
    encoded_data = "\n".join(encoded_pixels)
    
    return encoded_data

image_path = 'Cyberpunk.png'
image = Image.open(image_path)

with open("cyberpunk_compiled.txt", "w") as f:
    f.write("v2.0 raw\n")
    f.write(encode_image(image))
