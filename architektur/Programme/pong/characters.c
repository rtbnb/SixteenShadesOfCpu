

function uint16_t getCharacterPixel(uint16_t character, uin16_t pixelX, uint16_t pixelY) {
    return characters[character][pixelY * charWidth + pixelX];
};