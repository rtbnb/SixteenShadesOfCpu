
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
%define JC_RhoPin 5
%define JC_NotZero 6
%define JC_Unconditional 7


%define GRAM_Bank 0
%define MMIO_Bank 1

;Timer 0 Prescaler Register: 0x000e
%define MMIO_Timer0_Prescaler_Register 1
%define MMIO_Timer0_Prescaler_Register_Addr 0x000e
;Timer 0 Max Prescaler Register: 0x000f
%define MMIO_Timer0_Max_Count 5
%define MMIO_Timer0_Max_Count_Addr 0x000f
;Timer 0 Config Register: 0x000d
%define MMIO_Timer0_Config 0b0000001000110111
%define MMIO_Timer0_Config_Addr 0x000d
;Timer 0 Rho Reset Register: 0x0012
%define MMIO_Timer0_RhoReset_Addr 0x0012
;Timer 0 Counter Register: 0x0010
%define MMIO_Timer0_Counter_Addr 0x0010
%define MMIO_RhoPinMask_Addr 0x0001

%define MMIO_LED3_Addr 0x8003

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
    IML $t0, MMIO_Timer0_Config_Addr[0]
    IMH $t0, MMIO_Timer0_Config_Addr[1]
    IML $t1, MMIO_Timer0_Config[0]
    IMH $t1, MMIO_Timer0_Config[1]
    WRMr $t1, $t0
.main




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

    IML $t0, MMIO_LED3_Addr[0]
    IMH $t0, MMIO_LED3_Addr[1]
    RDMr $t1, $t0
    ALU ALU_NEG, $t1, $t1
    WRMr $AO, $t0

    JA main






