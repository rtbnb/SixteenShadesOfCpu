
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

_gram_variables:
    testVariable: 0

_code:
    IML  $t0,  1[0]         ; 0x0000
    IMH  $t0,  1[1]         ; 0x0001
    WRMi $t0, testVariable  ; 0x0002
    RDMi $t1, testVariable  ; 0x0003
    IML  $t2, -1[0]         ; 0x0004
    IMH  $t2, -1[1]         ; 0x0005
    ALU  ALU_ADD, $t1, $t2  ; 0x0006
    JC   JC_Zero, 0         ; 0x0007