
%define ALU_ADD 0
%define ALU_SUB 1
%define ALU_SHL 2
%define ALU_SHR 3
%define ALU_MUL 4
%define ALU_FADD 5
%define ALU_FSUB 6
%define ALU_FMUL 7
%define ALU_NOP 8
%define ALU_AND 9
%define ALU_OR 10
%define ALU_XOR 11
%define ALU_NEG 12
%define ALU_NAND 13
%define ALU_NOR 14
%define ALU_XNOR 15

%define JC_Carry 0
%define JC_Zero 1
%define JC_Smaller 2
%define JC_Bigger 3
%define JC_Overflow 4
%define JC_Bool 5
%define JC_NotZero 6
%define JC_Unconditional 7

%define GRAM_Bank 0
%define VRAM_Bank 1
%define MMIO_Bank 2

;MMIOs:
%define MMIO_Player1_UpButton 0
%define MMIO_Player1_DownButton 1
%define MMIO_Player2_UpButton 2
%define MMIO_Player2_DownButton 3


%define SCREEN_WIDTH 200
%define SCREEN_HEIGHT 150

%define PEDAL_WIDTH 4
%define PEDAL_HEIGHT 22

%define PEDAL_1_X 4
%define PEDAL_2_X 192

%define CHAR_WIDTH 5
%define CHAR_HEIGHT 10
%define CHAR_BYTE_SIZE 50

%define CHARACTERS_BEGIN 0x8000
%define CHARACTERS_BEGIN_LSB 0x00
%define CHARACTERS_BEGIN_MSB 0x80
_vram[CHARACTERS_BEGIN]:
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

_gram:
    p1y: 64,
    p1v: 0,
    p1scoreLSD: 0,
    p1scoreMSD: 0,
    p2y: 64,
    p2v: 0,
    p2scoreLSD: 0,
    p2scoreMSD: 0,
    bx: 10,
    by: 75,
    bvx: 1,
    bvy: 1,
    paused: 1

_code
.clear_vga
    ; Algorithm: index = SCREEN_WIDTH * SCREEN_HEIGHT; while(index != 0) {index--; vram[index] = 0;}
    IML $BI, VRAM_Bank
    ; black
    IML $t2, 0x00
    IMH $t2, 0x00
    ; for index -= 1
    IML $t4, 1
    IMH $t4, 0
    IML $t5, SCREEN_WIDTH
    IMH $t5, 0
    IML $t6, SCREEN_HEIGHT
    IMH $t6, 0
    ALU ALU_MUL, $t5, $t6
    ALU ALU_SUB, $AO, $t4
    WRMr $t2, $AO, 0
    JC JC_NotZero, -2
    JA render_after_clear

; Arguments: Character: $t0, CX: $t1, CY: $t2, Ruecksprung: $t3
.draw_character

    IML $BI, VRAM_Bank


    ; CB + c * 50 -> $t0
    IML $t4, CHAR_BYTE_SIZE
    IMH $t4, 0
    ALU ALU_MUL, $t4, $t0
    IML $t4, CHARACTERS_BEGIN_LSB
    IMH $t4, CHARACTERS_BEGIN_MSB
    ALU ALU_ADD, $AO, $t4
    CR $t0, $AO

    ; CY * SCREEN_WIDTH + CX -> $t1
    IML $t4, SCREEN_WIDTH
    IML $t4, 0
    ALU ALU_MUL, $t2, $t4
    ALU ALU_ADD, $t1, $AO
    CR $t1, $AO

    IML $t2, CHAR_WIDTH
    IML $t2, 0

    IML $t7, 1
    IMH $t7, 0 

    IML $t8, 0
    IMH $t8, 0

    ; x
    IML $t5, CHAR_WIDTH
    IMh $t5, 0
    ; y
    IML $t6, CHAR_HEIGHT
    IMh $t6, 0

    ALU ALU_SUB, $t6, $t7
    CR $t6, $AO
    ALU ALU_SUB, $t5, $t7
    CR $t5, $AO
    ALU ALU_MUL, $t6, $t2
    ALU ALU_ADD, $AO, $t5
    ALU ALU_ADD, $AO, $t0
    RDMr $t9, $AO
    ALU ALU_MUL, $t6, $t4
    ALU ALU_ADD, $AO, $t5
    ALU ALU_ADD, $AO, $t1
    WRMr $t9, $AO







    JR $t3


.render
    JA clear_vga
.render_after_clear
    IML $MA, 0
    IMH $MA, 0
    RDMi $t0, p1scoreLSD
    

.render_after_draw_character

    JA main_after_render

.main
    JA render
.main_after_render



uint16_t p1x = 4;
uint16_t p1y = 64;

uint16_t p2x = 192;
uint16_t p2y = 64;

uint16_t bx = 100;
uint16_t by = 75;

uint16_t vx = 1;
uint16_t vy = 1;


