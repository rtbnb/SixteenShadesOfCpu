

const uint16_t SCREEN_WIDTH = 200;
const uint16_t SCREEN_HEIGHT = 150;

const uint16_t PEDAL_WIDTH = 4;
const uint16_t PEDAL_HEIGHT = 22;

uint16_t p1x = 4;
uint16_t p1y = 64;

uint16_t p2x = 192;
uint16_t p2y = 64;

uint16_t bx = 100;
uint16_t by = 75;

uint16_t vx = 1;
uint16_t vy = 1;


const uint16_t charWidth = 5;
const uint16_t charHeight = 10;
\// TODO: Add other numbers
const uint16_t[10][charWidth*charHeight] characters = {
    {
        0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
        0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
        0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
        0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
        0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
        0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
        0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
        0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
        0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
        0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff
    }
};


function void clearScreen(){

    $BI = 1;

    uint16_t color = 0;

    for(uint16_t yIndex = 0; yIndex < SCREEN_HEIGHT * SCREEN_WIDTH; yIndex += SCREEN_WIDTH){
        for(uint16_t x = 0; x < SCREEN_WIDTH; x += 1){
            $(yIndex + x) = color;
        };
    };

    $BI = 0;
};

function void drawCharacter(uint16_t character, uint16_t x, uint16_t y){

    uint16_t pixelPos = y * SCREEN_WIDTH + x;

    uint16_t[] characterArray = characters[character];

    for(uint16_t yIndex = 0; yIndex < charHeight * charWidth; yIndex += 1) {
        pixelPos += SCREEN_WIDTH;
        for(uint16_t xi = 0; xi < charWidth; xi += 1) {
            $BI = 0;
            uint16_t color = characterArray[yIndex + xi];
            $BI = 1;
            $(pixelPos + xi) = color;
        };
    };

    $BI = 0;

};

function void drawPedal(uint16_t x, uint16_t y){

    $BI = 1;

    uint16_t color = 0x0fff;

    uint16_t pixelIndex = y * SCREEN_WIDTH + x;

    for(uint16_t yIndex = 0; yIndex < PEDAL_HEIGHT * PEDAL_WIDTH; y += PEDAL_WIDTH){
        for(uint16_t x = 0; x < PEDAL_WIDTH; x += 1){
            $(pixelIndex + yIndex + x) = color;
        };
    };

    $BI = 0;
};

function void main(){
    while (true) {}
};