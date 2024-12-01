
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

%define JC_Carry            0b00000
%define JC_NotCarry         0b10000
%define JC_Zero             0b00001
%define JC_NotZero          0b10001
%define JC_Smaller          0b00010
%define JC_NotSmaller       0b10010
%define JC_Bigger           0b00011
%define JC_NotBigger        0b10011
%define JC_Overflow         0b00100
%define JC_NotOverflow      0b10100
%define JC_RhoPin           0b01000
%define JC_NotRhoPin        0b11000
%define JC_GPUDone          0b01001
%define JC_NotGPUDone       0b11001
%define JC_Unconditional    0b00111

%define GRAM_Bank 0
%define MMIO_Bank 1

;MMIOs:
%define MMIO_Player1_UpButton 0x8018
%define MMIO_Player1_DownButton 0x801a
%define MMIO_Player2_UpButton 0x8019
%define MMIO_Player2_DownButton 0x801b

;Timer 0 Prescaler Register: 0x000e
%define MMIO_Timer0_Prescaler_Register 249
%define MMIO_Timer0_Prescaler_Register_Addr 0x000e
;Timer 0 Max Prescaler Register: 0x000f
%define MMIO_Timer0_Max_Count 1666
%define MMIO_Timer0_Max_Count_Addr 0x000f
;Timer 0 Config Register: 0x000d
%define MMIO_Timer0_Conifg 0b0000001000110111
%define MMIO_Timer0_Conifg_Addr 0x000d
;Timer 0 Rho Reset Register: 0x0012
%define MMIO_Timer0_RhoReset_Addr 0x0012


%define SCORE_Y 10
%define SCORE_1_MSD_X 40
%define SCORE_1_LSD_X 50
%define SCORE_2_MSD_X 140
%define SCORE_2_LSD_X 150

%define SCREEN_WIDTH 200
%define SCREEN_HEIGHT 150

%define PEDAL_WIDTH 4
%define PEDAL_HEIGHT 22

%define BALL_SIZE 3

%define PEDAL_1_X 4
%define PEDAL_2_X 192

%define CHAR_WIDTH 5
%define CHAR_HEIGHT 10
%define CHAR_BYTE_SIZE 50

%define CHARACTERS_BEGIN_VRAM 0x0400
%define CHARACTERS_BEGIN_LSB 0x00
%define CHARACTERS_BEGIN_MSB 0x04

_gram_data[CHARACTERS_BEGIN_VRAM]:
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
	
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
	
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
	
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
	
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
	
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
	
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
	
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
	
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
	
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0fff, 0x0fff, 0x0fff, 0x0fff, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0fff

_gram_variables:
    p1y: 64
    p1v: 0
    p1scoreLSD: 0
    p1scoreMSD: 0
    p2y: 64
    p2v: 0
    p2scoreLSD: 0
    p2scoreMSD: 0
    bx: 100
    by: 75
    bvx: 1
    bvy: 1
    player1_up_button : MMIO_Player1_UpButton
    player1_down_button : MMIO_Player1_DownButton
    player2_up_button : MMIO_Player2_UpButton
    player2_down_button : MMIO_Player2_DownButton
    paused: 1

_code:

    IML $BI, MMIO_Bank

    ; Configure Timer 0 Prescaler
    IML $t0, MMIO_Timer0_Prescaler_Register_Addr[0]
    IMH $t0, MMIO_Timer0_Prescaler_Register_Addr[1]
    IML $t1, MMIO_Timer0_Prescaler_Register[0]
    IMH $t1, MMIO_Timer0_Prescaler_Register[1]
    WRMr $t1, $t0

    ; Configure Timer 0 Max Count
    IML $t0, MMIO_Timer0_Max_Count_Addr[0]
    IMH $t0, MMIO_Timer0_Max_Count_Addr[1]
    IML $t1, MMIO_Timer0_Max_Count[0]
    IMH $t1, MMIO_Timer0_Max_Count[1]
    WRMr $t1, $t0

    ; Configure Timer 0 Config
    IML $t0, MMIO_Timer0_Conifg_Addr[0]
    IMH $t0, MMIO_Timer0_Conifg_Addr[1]
    IML $t1, MMIO_Timer0_Conifg[0]
    IMH $t1, MMIO_Timer0_Conifg[1]
    WRMr $t1, $t0



    GPU 3, $t1, $t1


    JA main

.clear_vga
    ; Algorithm: index = SCREEN_WIDTH * SCREEN_HEIGHT; while(index != 0) {index--; vram[index] = 0;}
    ;IML $BI, VRAM_Bank
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
    GPU 0, $AO, $t2
    JC JC_NotZero, -2
    JA render_after_clear

; Arguments: Character: $t0, CX: $t1, CY: $t2, Ruecksprung: $t3
.draw_character
    IML $BI, GRAM_Bank


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
    IMH $t4, 0
    ALU ALU_MUL, $t2, $t4
    ALU ALU_ADD, $t1, $AO
    CR $t1, $AO

    IML $t2, CHAR_WIDTH
    IMH $t2, 0

    IML $t7, 1
    IMH $t7, 0

    IML $t8, 0
    IMH $t8, 0

    ; y
    IML $t6, CHAR_HEIGHT
    IMH $t6, 0

    ; x
    IML $t5, CHAR_WIDTH
    IMH $t5, 0
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
    GPU 0, $AO, $t9
    ALU ALU_ADD, $t5, $t8
	JC JC_NotZero, -11
    ALU ALU_ADD, $t6, $t8
	JC JC_NotZero, -17


    JR $t3


.draw_ball

    IML $BI, GRAM_Bank
    IML $t2, SCREEN_WIDTH
    IMH $t2, 0
	RDMi $t0, bx
	RDMi $t1, by
    ;IML $BI, VRAM_Bank
    IML $t3, BALL_SIZE
    IMH $t3, 0
    IML $t6, 1
    IMH $t6, 0
    IML $t7, 0
    IMH $t7, 0
    ; white
    IML $t8, 0xff
    IMH $t8, 0x0f
    ;y
    CR $t5, $t3
    ;x
    CR $t4, $t3
    ALU ALU_SUB, $t5, $t6
    CR $t5, $AO
    ALU ALU_SUB, $t4, $t6
    CR $t4, $AO
    ALU ALU_ADD, $t1, $t5
    ALU ALU_MUL, $AO, $t2
    ALU ALU_ADD, $AO, $t0
    ALU ALU_ADD, $AO, $t4
    GPU 0, $AO, $t8
    ALU ALU_ADD, $t4, $t7
    JC JC_NotZero, -8
    ALU ALU_ADD, $t5, $t7
    JC JC_NotZero, -13

	JA render_after_draw_ball

.draw_pedal1

    IML $BI, GRAM_Bank
    IML $t2, SCREEN_WIDTH
    IMH $t2, 0
    IML $t0, PEDAL_1_X
    IMH $t0, 0
	RDMi $t1, p1y
    ;IML $BI, VRAM_Bank
    IML $t3, PEDAL_HEIGHT
    IMH $t3, 0

    IML $t6, 1
    IMH $t6, 0
    IML $t7, 0
    IMH $t7, 0
    ; white
    IML $t8, 0xff
    IMH $t8, 0x0f
    ;y
    CR $t5, $t3
    ;x
    IML $t3, PEDAL_WIDTH
    IMH $t3, 0
    CR $t4, $t3
    ALU ALU_SUB, $t5, $t6
    CR $t5, $AO
    ALU ALU_SUB, $t4, $t6
    CR $t4, $AO
    ALU ALU_ADD, $t1, $t5
    ALU ALU_MUL, $AO, $t2
    ALU ALU_ADD, $AO, $t0
    ALU ALU_ADD, $AO, $t4
    GPU 0, $AO, $t8
    ALU ALU_ADD, $t4, $t7
    JC JC_NotZero, -8
    ALU ALU_ADD, $t5, $t7
    JC JC_NotZero, -13
    JA render_after_draw_pedal1
.draw_pedal2

    IML $BI, GRAM_Bank
    IML $t2, SCREEN_WIDTH
    IMH $t2, 0
    IML $t0, PEDAL_2_X
    IMH $t0, 0
	RDMi $t1, p2y
    ;IML $BI, VRAM_Bank
    IML $t3, PEDAL_HEIGHT
    IMH $t3, 0

    IML $t6, 1
    IMH $t6, 0
    IML $t7, 0
    IMH $t7, 0
    ; white
    IML $t8, 0xff
    IMH $t8, 0x0f
    ;y
    CR $t5, $t3
    ;x
    IML $t3, PEDAL_WIDTH
    IMH $t3, 0
    CR $t4, $t3
    ALU ALU_SUB, $t5, $t6
    CR $t5, $AO
    ALU ALU_SUB, $t4, $t6
    CR $t4, $AO
    ALU ALU_ADD, $t1, $t5
    ALU ALU_MUL, $AO, $t2
    ALU ALU_ADD, $AO, $t0
    ALU ALU_ADD, $AO, $t4
    GPU 0, $AO, $t8
    ALU ALU_ADD, $t4, $t7
    JC JC_NotZero, -8
    ALU ALU_ADD, $t5, $t7
    JC JC_NotZero, -13
    JA render_after_draw_pedal2

.render
    JA clear_vga
.render_after_clear
    IML $BI, GRAM_Bank
    RDMi $t0, p1scoreLSD
	IML $t2, SCORE_Y
	IMH $t2, 0
    IML $t1, SCORE_1_LSD_X
	IMH $t1, 0
	IML $t3, render_after_score1lsd[0]
	IMH $t3, render_after_score1lsd[1]
	JA draw_character
.render_after_score1lsd
    IML $BI, GRAM_Bank
	IML $t2, SCORE_Y
	IMH $t2, 0
    IML $t1, SCORE_2_LSD_X
	IMH $t1, 0
    RDMi $t0, p2scoreLSD
	IML $t3, render_after_score2lsd[0]
	IMH $t3, render_after_score2lsd[1]
	JA draw_character
.render_after_score2lsd
    IML $BI, GRAM_Bank
	IML $t1, 0
	IMH $t1, 0
    RDMi $t0, p1scoreMSD
	ALU ALU_ADD, $t0, $t1
	JC JC_Zero, +8
	IML $t2, SCORE_Y
	IMH $t2, 0
    IML $t1, SCORE_1_MSD_X
	IMH $t1, 0
	IML $t3, render_after_score1msd[0]
	IMH $t3, render_after_score1msd[1]
	JA draw_character
.render_after_score1msd
    IML $BI, GRAM_Bank
	IML $t1, 0
	IMH $t1, 0
    RDMi $t0, p2scoreMSD
	ALU ALU_ADD, $t0, $t1
	JC JC_Zero, +8
	IML $t2, SCORE_Y
	IMH $t2, 0
    IML $t1, SCORE_2_MSD_X
	IMH $t1, 0
	IML $t3, render_after_score2msd[0]
	IMH $t3, render_after_score2msd[1]
	JA draw_character
.render_after_score2msd
	JA draw_ball
.render_after_draw_ball
    JA draw_pedal1
.render_after_draw_pedal1
    JA draw_pedal2
.render_after_draw_pedal2
    JA main_after_render

.main
    JA render
.main_after_render
    IML $t0, 0
    IMH $t0, 0
    IML $BI, MMIO_Bank
    IML $t9, MMIO_Player1_UpButton[0]
    IMH $t9, MMIO_Player1_UpButton[1]
    RDMr $t1, $t9
    IML $t9, MMIO_Player1_DownButton[0]
    IMH $t9, MMIO_Player1_DownButton[1]
    RDMr $t2, $t9
    IML $t9, MMIO_Player2_UpButton[0]
    IMH $t9, MMIO_Player2_UpButton[1]
    RDMr $t3, $t9
    IML $t9, MMIO_Player2_DownButton[0]
    IMH $t9, MMIO_Player2_DownButton[1]
    RDMr $t4, $t9
    IML $BI, GRAM_Bank
    IML $t5, 2
    IMH $t5, 0

    WRMi $t0, p1v
    WRMi $t0, p2v
    ALU ALU_ADD, $t2, $t0
    JC JC_NotZero, +2
    WRMi $t5, p1v
    ALU ALU_ADD, $t4, $t0
    JC JC_NotZero, +2
    WRMi $t5, p2v
    IML $t5, -2
    IMH $t5, 0xff
    ALU ALU_ADD, $t1, $t0
    JC JC_NotZero, +2
    WRMi $t5, p1v
    ALU ALU_ADD, $t3, $t0
    JC JC_NotZero, +2
    WRMi $t5, p2v


    IML $t5, 2
    IMH $t5, 0

    
    RDMi $t1, p1v
    RDMi $t2, p1y
    ALU ALU_ADD, $t1, $t2
    WRMi $AO, p1y
    JC JC_Smaller, +2
    JA main_after_p1y_0
    WRMi $t0, p1y
    JA main_after_p1y
.main_after_p1y_0
    CR $t2, $AO
    IML $t3, SCREEN_HEIGHT
    IMH $t3, 0
    IML $t4, PEDAL_HEIGHT
    IMH $t4, 0
    ALU ALU_SUB, $t3, $t4
    CR $t5, $AO
    ALU ALU_SUB, $AO, $t2
    JC JC_Smaller, +2
    JA main_after_p1y
    WRMi $t5, p1y
.main_after_p1y
    
    RDMi $t1, p2v
    RDMi $t2, p2y
    ALU ALU_ADD, $t1, $t2
    WRMi $AO, p2y
    JC JC_Smaller, +2
    JA main_after_p2y_0
    WRMi $t0, p2y
    JA main_after_p2y
.main_after_p2y_0
    CR $t2, $AO
    IML $t3, SCREEN_HEIGHT
    IMH $t3, 0
    IML $t4, PEDAL_HEIGHT
    IMH $t4, 0
    ALU ALU_SUB, $t3, $t4
    CR $t5, $AO
    ALU ALU_SUB, $AO, $t2
    JC JC_Smaller, +2
    JA main_after_p2y
    WRMi $t5, p2y
.main_after_p2y

    IML $BI, GRAM_Bank
    IML $t0, 0
    IMH $t0, 0
    ; -1
    IML $t9, 0xff
    IMH $t9, 0xff
    IML $t8, BALL_SIZE[0]
    IMH $t8, BALL_SIZE[1]
    IML $t7, SCREEN_HEIGHT[0]
    IMH $t7, SCREEN_HEIGHT[1]
    RDMi $t1, bx
    RDMi $t2, by
    RDMi $t3, bvx
    RDMi $t4, bvy
    ALU ALU_ADD, $t2, $t4
    WRMi $AO, by
    JC JC_Bigger, +4
    ALU ALU_MUL, $t4, $t9
    WRMi $AO, bvy
    JA main_after_bvy
    ALU ALU_ADD, $AO, $t8
    ALU ALU_SUB, $AO, $t7
    JC JC_Smaller, +3
    ALU ALU_MUL, $t4, $t9
    WRMi $AO, bvy
.main_after_bvy

    ALU ALU_ADD, $t1, $t3
    JC JC_Bigger, +2
    JA main_player1_lose
    WRMi $AO, bx
    JA main_after_player1_lose
.main_player1_lose
    RDMi $t6, p2scoreLSD
    IML $t2, 1
    IMH $t2, 0
    ALU ALU_ADD, $t2, $t6
    CR $t6, $AO
    IML $t2, 10
    IMH $t2, 0
    ALU ALU_SUB, $t6, $t2
    JC JC_NotZero, +8 ;Jump to WRMi $t6, p2scoreLSD
    IML $t6, 0
    IMH $t6, 0
    RDMi $t5, p2scoreMSD
    IML $t2, 1
    IMH $t2, 0
    ALU ALU_ADD, $t5, $t2
    WRMi $AO, p2scoreMSD
    WRMi $t6, p2scoreLSD
    IML $t2, 75
    IMH $t2, 0
    WRMi $t2, by
    IML $t2, 100
    IMH $t2, 0
    WRMi $t2, bx
    JA main_after_ball_x
.main_after_player1_lose
    IML $t2, PEDAL_1_X[0]
    IMH $t2, PEDAL_1_X[1]
    IML $t9, PEDAL_WIDTH[0]
    IMH $t9, PEDAL_WIDTH[1]
    ALU ALU_ADD, $t1, $t3
    ALU ALU_SUB, $AO, $t2
    ALU ALU_SUB, $AO, $t9
    JC JC_Bigger, +2
    JA main_player1_x
    JA main_after_player1_x
.main_player1_x
    JC JC_Zero, +2
    JA main_after_ball_x

    RDMi $t2, by
    RDMi $t9, p1y
    IML $t8, PEDAL_HEIGHT[0]
    IMH $t8, PEDAL_HEIGHT[1]
    ALU ALU_ADD, $t9, $t8
    ALU ALU_SUB, $AO, $t2
    JC JC_Bigger, +2
    JA main_after_ball_x
    IML $t8, BALL_SIZE[0]
    IMH $t8, BALL_SIZE[1]
    ALU ALU_ADD, $t2, $t8
    ALU ALU_SUB, $AO, $t9
    JC JC_Bigger, +2
    JA main_after_ball_x
    IML $t2, 0xff
    IMH $t2, 0xff
    ALU ALU_MUL, $t3, $t2
    WRMi $AO, bvx
    JA main_after_ball_x
.main_after_player1_x

    IML $t9, BALL_SIZE[0]
    IMH $t9, BALL_SIZE[1]
    IML $t8, SCREEN_WIDTH[0]
    IMH $t8, SCREEN_WIDTH[1]

    ALU ALU_ADD, $t1, $t3
    ALU ALU_ADD, $AO, $t9
    ALU ALU_SUB, $AO, $t8
    JC JC_Bigger, +2
    JA main_after_player2_lose
.main_player2_lose
    RDMi $t6, p1scoreLSD
    IML $t2, 1
    IMH $t2, 0
    ALU ALU_ADD, $t2, $t6
    CR $t6, $AO
    IML $t2, 10
    IMH $t2, 0
    ALU ALU_SUB, $t6, $t2
    JC JC_NotZero, +8 ;Jump to WRMi $t6, p1scoreLSD
    IML $t6, 0
    IMH $t6, 0
    RDMi $t5, p1scoreMSD
    IML $t2, 1
    IMH $t2, 0
    ALU ALU_ADD, $t5, $t2
    WRMi $AO, p1scoreMSD
    WRMi $t6, p1scoreLSD
    IML $t2, 75
    IMH $t2, 0
    WRMi $t2, by
    IML $t2, 100
    IMH $t2, 0
    WRMi $t2, bx
.main_after_player2_lose
    IML $t2, PEDAL_2_X[0]
    IMH $t2, PEDAL_2_X[1]
    IML $t9, BALL_SIZE[0]
    IMH $t9, BALL_SIZE[1]
    ALU ALU_ADD, $t1, $t3
    ALU ALU_ADD, $AO, $t9
    ALU ALU_SUB, $AO, $t2
    JC JC_Smaller, +2
    JA main_player2_x
    JA main_after_player2_x
.main_player2_x
    JC JC_Zero, +2
    JA main_after_ball_x
    RDMi $t2, by
    RDMi $t9, p2y
    IML $t8, PEDAL_HEIGHT[0]
    IMH $t8, PEDAL_HEIGHT[1]
    ALU ALU_ADD, $t9, $t8
    ALU ALU_SUB, $AO, $t2
    JC JC_Bigger, +2
    JA main_after_ball_x
    IML $t8, BALL_SIZE[0]
    IMH $t8, BALL_SIZE[1]
    ALU ALU_ADD, $t2, $t8
    ALU ALU_SUB, $AO, $t9
    JC JC_Bigger, +2
    JA main_after_ball_x
    IML $t2, 0xff
    IMH $t2, 0xff
    ALU ALU_MUL, $t3, $t2
    WRMi $AO, bvx
    JA main_after_ball_x
.main_after_player2_x

.main_after_ball_x





    JC JC_RhoPin, +2
    JC JC_Unconditional, -1

    IML $BI, MMIO_Bank
    IML $t0, MMIO_Timer0_RhoReset_Addr[0]
    IMH $t0, MMIO_Timer0_RhoReset_Addr[1]
    IML $t1, 1
    IMH $t1, 0
    WRMr $t1, $t0
    IML $t1, 0
    WRMr $t1, $t0

    GPU 1, $t1, $t1
    GPU 2, $t1, $t1


    JA main
