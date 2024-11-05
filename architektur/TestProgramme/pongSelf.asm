
%define ALU_ADD 0
%define ALU_SUB 1
%define ALU_SHL 2
%define ALU_SHR 3
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

%define TICKS_PER_FRAME 1666 ;One tick is 10us
%define HW_INPUTS_MSB 0xff
%define HW_TIMER_0_LSB 0xfc
%define HW_TIMER_1_LSB 0xfd

%define VGA_ED_ID 1
%define VGA_WIDTH 200
%define VGA_HEIGHT 150



.save_current_time
    EXT 2, $t0, $t0
    IMH $t7, HW_INPUTS_MSB
    IML $t7, HW_TIMER_0_LSB
    RDMr $t8, $t7, 0
    IML $t7, HW_TIMER_1_LSB
    RDMr $t9, $t7, 0

.clear_vga
    ; x
    IML $t0, 0
    IMH $t0, 0
    ; y
    IML $t1, 0
    IMH $t1, 0
    ; blue
    IML $t2, 0x0f
    IMH $t2, 0x00
    ; (<<) 8
    IML $t3, 8
    IMH $t3, 0
    ; (+) 1
    IML $t4, 1
    IMH $t4, 0
    IML $t5, VGA_WIDTH
    IMH $t5, 0
    IML $t6, VGA_HEIGHT
    IMH $t6, 0
    ALU ALU_SHL, $t1, $t3
    ALU ALU_OR, $AO, $t0
    EXT VGA_ED_ID, $AO, $t2
    ALU ALU_ADD, $t0, $t4
    CR $t0, $AO
    ALU ALU_SUB, $t5, $t0
    JC JC_Bigger, -6
    IML $t0, 0
    IMH $t0, 0
    ALU ALU_ADD, $t1, $t4
    CR $t1, $AO
    ALU ALU_SUB, $t6, $t1
    JC JC_Bigger, -12

    

.loop
