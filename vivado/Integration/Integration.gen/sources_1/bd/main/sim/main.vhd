--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Mon Dec  2 12:45:36 2024
--Host        : Robin_Laptop running 64-bit major release  (build 9200)
--Command     : generate_target main.bd
--Design      : main
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main is
  port (
    RX_UART_IN : in STD_LOGIC;
    Reset : in STD_LOGIC;
    TX_UART_OUT : out STD_LOGIC;
    b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    btn00 : in STD_LOGIC;
    btn01 : in STD_LOGIC;
    btn02 : in STD_LOGIC;
    btn03 : in STD_LOGIC;
    btn04 : in STD_LOGIC;
    btn05 : in STD_LOGIC;
    btn06 : in STD_LOGIC;
    btn07 : in STD_LOGIC;
    clk100mhzIn : in STD_LOGIC;
    fault_reset : in STD_LOGIC;
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    h_sync : out STD_LOGIC;
    ioe : out STD_LOGIC;
    led00 : out STD_LOGIC;
    led01 : out STD_LOGIC;
    led02 : out STD_LOGIC;
    led03 : out STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgb0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    v_sync : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of main : entity is "main,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=main,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=27,numReposBlks=27,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=26,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=7,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of main : entity is "main.hwdef";
end main;

architecture STRUCTURE of main is
  component main_Pipelining_Controller_0_0 is
  port (
    loadClk : in STD_LOGIC;
    instructionIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    pcLoad : in STD_LOGIC;
    rfJmp : in STD_LOGIC;
    execJmp : in STD_LOGIC;
    stalled : out STD_LOGIC;
    instructionOut : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_Pipelining_Controller_0_0;
  component main_ProgramCounter_0_0 is
  port (
    loadCLK : in STD_LOGIC;
    stalled : in STD_LOGIC;
    jmp : in STD_LOGIC;
    reset : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_ProgramCounter_0_0;
  component main_CU_Decoder_0_0 is
  port (
    instructionToDecode : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reg1Read : out STD_LOGIC;
    reg2Read : out STD_LOGIC;
    rfWHB : out STD_LOGIC;
    rfWLB : out STD_LOGIC;
    rfWrite : out STD_LOGIC;
    writeDataSelect : out STD_LOGIC_VECTOR ( 2 downto 0 );
    flagSelect : out STD_LOGIC_VECTOR ( 0 to 0 );
    ramAddressSrc : out STD_LOGIC;
    ramRead : out STD_LOGIC;
    ramWrite : out STD_LOGIC;
    jmp : out STD_LOGIC;
    jmpConditional : out STD_LOGIC;
    jmpRelative : out STD_LOGIC;
    jmpDestinationSource : out STD_LOGIC;
    isALUOp : out STD_LOGIC;
    isRAMOp : out STD_LOGIC;
    isGPUOp : out STD_LOGIC
  );
  end component main_CU_Decoder_0_0;
  component main_Decoder_0_0 is
  port (
    instructionToDecode : in STD_LOGIC_VECTOR ( 15 downto 0 );
    register1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    register2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    writeBackRegister : out STD_LOGIC_VECTOR ( 3 downto 0 );
    immediate : out STD_LOGIC_VECTOR ( 15 downto 0 );
    jmpCondition : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component main_Decoder_0_0;
  component main_RegFile_0_0 is
  port (
    AddrReg1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AddrReg2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AddrWriteReg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Flags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WE : in STD_LOGIC;
    OverwriteFl : in STD_LOGIC;
    loadClk : in STD_LOGIC;
    Reg1Data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Reg2Data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BankID : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component main_RegFile_0_0;
  component main_Pipelining_Forwarder_0_0 is
  port (
    reg1Addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg2Addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg1Read : in STD_LOGIC;
    reg2Read : in STD_LOGIC;
    rfIsRAMOp : in STD_LOGIC;
    execRegWriteAddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    execWritesReg : in STD_LOGIC;
    execIsALUOp : in STD_LOGIC;
    reg1Data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reg2Data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    currentBankID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    executionWriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    executionFlags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    forwardedOperand1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    forwardedOperand2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    forwardedBankID : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component main_Pipelining_Forwarder_0_0;
  component main_Pipelining_Execution_0_0 is
  port (
    loadClk : in STD_LOGIC;
    reset : in STD_LOGIC;
    operand1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    operand2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    writeAddress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    whb : in STD_LOGIC;
    wlb : in STD_LOGIC;
    rfWrite : in STD_LOGIC;
    writeDataSel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    flagSel : in STD_LOGIC_VECTOR ( 0 to 0 );
    ramSrc : in STD_LOGIC;
    ramRead : in STD_LOGIC;
    ramWrite : in STD_LOGIC;
    ramBankID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    jmp : in STD_LOGIC;
    jmpConditional : in STD_LOGIC;
    jmpRelative : in STD_LOGIC;
    jmpDestinationSelect : in STD_LOGIC;
    jmpCondition : in STD_LOGIC_VECTOR ( 4 downto 0 );
    isALUOp : in STD_LOGIC;
    isRAMOp : in STD_LOGIC;
    isGPUOp : in STD_LOGIC;
    operand1Out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    operand2Out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    immediateOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    writeAddressOut : out STD_LOGIC_VECTOR ( 3 downto 0 );
    whbOut : out STD_LOGIC;
    wlbOut : out STD_LOGIC;
    rfWriteOut : out STD_LOGIC;
    writeDataSelOut : out STD_LOGIC_VECTOR ( 2 downto 0 );
    flagSelOut : out STD_LOGIC_VECTOR ( 0 to 0 );
    ramSrcOut : out STD_LOGIC;
    ramReadOut : out STD_LOGIC;
    ramWriteOut : out STD_LOGIC;
    ramBankIDOut : out STD_LOGIC_VECTOR ( 3 downto 0 );
    jmpOut : out STD_LOGIC;
    jmpConditionalOut : out STD_LOGIC;
    jmpRelativeOut : out STD_LOGIC;
    jmpDestinationSelectOut : out STD_LOGIC;
    jmpConditionOut : out STD_LOGIC_VECTOR ( 4 downto 0 );
    isALUOpOut : out STD_LOGIC;
    isRAMOpOut : out STD_LOGIC;
    isGPUOpOut : out STD_LOGIC
  );
  end component main_Pipelining_Execution_0_0;
  component main_CU_RAMAddressControl_0_0 is
  port (
    reg2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ramAddressSrc : in STD_LOGIC;
    ramAddress : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_CU_RAMAddressControl_0_0;
  component main_ALU_0_0 is
  port (
    D1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    D2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ALU_OPP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RHO_PIN : in STD_LOGIC;
    ALU_OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CARRY_FLAG : out STD_LOGIC;
    ZERO_FLAG : out STD_LOGIC;
    SMALLER_ZERO_FLAG : out STD_LOGIC;
    BIGGER_ZERO_FLAG : out STD_LOGIC;
    OVERFLOW_FLAG : out STD_LOGIC;
    RHO_FLAG : out STD_LOGIC;
    NOT_ZERO_FLAG : out STD_LOGIC
  );
  end component main_ALU_0_0;
  component main_CU_ImmediateManipula_0_0 is
  port (
    reg1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rfWHB : in STD_LOGIC;
    rfWLB : in STD_LOGIC;
    manipulatedImmediate : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_CU_ImmediateManipula_0_0;
  component main_CU_JumpDestinationSe_0_0 is
  port (
    immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    register1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    jmpDestinationSelect : in STD_LOGIC;
    jmpAddress : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_CU_JumpDestinationSe_0_0;
  component main_CU_JumpController_0_0 is
  port (
    jmp : in STD_LOGIC;
    jmpConditional : in STD_LOGIC;
    jmpRelative : in STD_LOGIC;
    jmpCondition : in STD_LOGIC_VECTOR ( 4 downto 0 );
    flags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rhoPin : in STD_LOGIC;
    gpuDone : in STD_LOGIC;
    jmpAddress : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pcCurrent : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pcLoad : out STD_LOGIC;
    pcNext : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_CU_JumpController_0_0;
  component main_CU_WriteSelector_0_0 is
  port (
    ramOut : in STD_LOGIC_VECTOR ( 15 downto 0 );
    manipulatedImmediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reg1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aluOut : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpuOut : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aluFlags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpuFlags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    writeSel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    flagSel : in STD_LOGIC_VECTOR ( 0 to 0 );
    writeData : out STD_LOGIC_VECTOR ( 15 downto 0 );
    flags : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_CU_WriteSelector_0_0;
  component main_Pipelining_WriteBack_0_0 is
  port (
    instrLoadClk : in STD_LOGIC;
    reset : in STD_LOGIC;
    writeAddress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    writeData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    flags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    whb : in STD_LOGIC;
    wlb : in STD_LOGIC;
    ramRead : in STD_LOGIC;
    isALUOp : in STD_LOGIC;
    jmp : in STD_LOGIC;
    writeAddressOut : out STD_LOGIC_VECTOR ( 3 downto 0 );
    writeDataOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    flagsOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rfWEOut : out STD_LOGIC;
    ramReadOut : out STD_LOGIC;
    isALUOpOut : out STD_LOGIC;
    jmpOut : out STD_LOGIC
  );
  end component main_Pipelining_WriteBack_0_0;
  component main_ALU_FLAG_PACKER_0_1 is
  port (
    CARRY_FLAG : in STD_LOGIC;
    ZERO_FLAG : in STD_LOGIC;
    SMALLER_ZERO_FLAG : in STD_LOGIC;
    BIGGER_ZERO_FLAG : in STD_LOGIC;
    OVERFLOW_FLAG : in STD_LOGIC;
    RHO_FLAG : in STD_LOGIC;
    NOT_ZERO_FLAG : in STD_LOGIC;
    ALU_FLAGS : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_ALU_FLAG_PACKER_0_1;
  component main_clockcontroller_0_0 is
  port (
    clk100mhzIn : in STD_LOGIC;
    faultReset : in STD_LOGIC;
    debugReset : in STD_LOGIC;
    debugEnable : in STD_LOGIC;
    debugMockClk : in STD_LOGIC;
    debugMmuOverrideEnable : in STD_LOGIC;
    loadClk : out STD_LOGIC;
    vgaClk : out STD_LOGIC;
    debugClk : out STD_LOGIC;
    clk100mhzOut : out STD_LOGIC
  );
  end component main_clockcontroller_0_0;
  component main_mmu_0_0 is
  port (
    loadClk : in STD_LOGIC;
    gramAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gramDin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gramBank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gramWe : in STD_LOGIC;
    gramOe : in STD_LOGIC;
    gramDout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iramAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iramDout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debugEnable : in STD_LOGIC;
    debugOverrideEnable : in STD_LOGIC;
    debugClk : in STD_LOGIC;
    debugAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debugDin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debugBank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    debugWe : in STD_LOGIC;
    debugDout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gpuClk : in STD_LOGIC;
    gpuAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gpuDin : in STD_LOGIC_VECTOR ( 11 downto 0 );
    gpuWe : in STD_LOGIC;
    gpuDout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vgaClk : in STD_LOGIC;
    vgaAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vgaDout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vramaMemAddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vramaMemClk : out STD_LOGIC;
    vramaMemDin : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vramaMemWe : out STD_LOGIC_VECTOR ( 0 to 0 );
    vramaMemDout : in STD_LOGIC_VECTOR ( 11 downto 0 );
    vrambMemAddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vrambMemClk : out STD_LOGIC;
    vrambMemDin : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vrambMemWe : out STD_LOGIC_VECTOR ( 0 to 0 );
    vrambMemDout : in STD_LOGIC_VECTOR ( 11 downto 0 );
    mmioMemClk : out STD_LOGIC;
    mmioMemWe : out STD_LOGIC;
    mmioMemAddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmioMemDin : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmioMemDout : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_mmu_0_0;
  component main_mmio_0_0 is
  port (
    clk100mhzIn : in STD_LOGIC;
    clk50mhzIn : in STD_LOGIC;
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    led00 : out STD_LOGIC;
    led01 : out STD_LOGIC;
    led02 : out STD_LOGIC;
    led03 : out STD_LOGIC;
    led04 : out STD_LOGIC;
    led05 : out STD_LOGIC;
    led06 : out STD_LOGIC;
    led07 : out STD_LOGIC;
    led08 : out STD_LOGIC;
    led09 : out STD_LOGIC;
    led10 : out STD_LOGIC;
    led11 : out STD_LOGIC;
    led12 : out STD_LOGIC;
    led13 : out STD_LOGIC;
    led14 : out STD_LOGIC;
    led15 : out STD_LOGIC;
    led16 : out STD_LOGIC;
    led17 : out STD_LOGIC;
    led18 : out STD_LOGIC;
    led19 : out STD_LOGIC;
    rgb0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    btn00 : in STD_LOGIC;
    btn01 : in STD_LOGIC;
    btn02 : in STD_LOGIC;
    btn03 : in STD_LOGIC;
    btn04 : in STD_LOGIC;
    btn05 : in STD_LOGIC;
    btn06 : in STD_LOGIC;
    btn07 : in STD_LOGIC;
    btn08 : in STD_LOGIC;
    btn09 : in STD_LOGIC;
    btn10 : in STD_LOGIC;
    btn11 : in STD_LOGIC;
    btn12 : in STD_LOGIC;
    btn13 : in STD_LOGIC;
    btn14 : in STD_LOGIC;
    btn15 : in STD_LOGIC;
    btn16 : in STD_LOGIC;
    btn17 : in STD_LOGIC;
    btn18 : in STD_LOGIC;
    btn19 : in STD_LOGIC;
    rho : out STD_LOGIC
  );
  end component main_mmio_0_0;
  component main_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 11 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clkb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component main_blk_mem_gen_0_0;
  component main_Debugger_0_0 is
  port (
    clk : in STD_LOGIC;
    rxData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxDataValid : in STD_LOGIC;
    txData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    txDataValid : out STD_LOGIC;
    txDataSended : in STD_LOGIC;
    debugEnable : out STD_LOGIC;
    ccDebugMockClk : out STD_LOGIC;
    ccDebugReset : out STD_LOGIC;
    pipelineStalled : in STD_LOGIC;
    pipelineInstructionForwardingConfig : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pipelineCurrentInstruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pipelineOperand1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pipelineOperand2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pipelineJmp : in STD_LOGIC;
    pipelineJmpConditional : in STD_LOGIC;
    pipelineJmpRelative : in STD_LOGIC;
    pipelineJmpDestinationSelect : in STD_LOGIC;
    pipelineJmpCondition : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pipelineWriteDataSel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pipelineRamSrc : in STD_LOGIC;
    pipelineRamRead : in STD_LOGIC;
    pipelineRamWrite : in STD_LOGIC;
    pipelineRamBankid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcDin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pcDout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aluDin1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aluDin2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aluOut : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aluFlags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aluOp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regfileAddrReg1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regfileAddrReg2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regfileAddrWriteReg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regfileWriteEnable : in STD_LOGIC;
    regfileOverwriteFlag : in STD_LOGIC;
    regfileWriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regfileReg1Data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regfileReg2Data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regfileBankid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mmuDebugClk : out STD_LOGIC;
    mmuDebugOverrideEn : out STD_LOGIC;
    mmuDebugAddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmuDebugDin : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmuDebugBank : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mmuDebugWe : out STD_LOGIC;
    mmuDebugDout : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_Debugger_0_0;
  component main_RX_UART_0_0 is
  port (
    clk : in STD_LOGIC;
    rxSerialInput : in STD_LOGIC;
    dataOutput : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dataValid : out STD_LOGIC
  );
  end component main_RX_UART_0_0;
  component main_TX_UART_0_0 is
  port (
    dataValid : in STD_LOGIC;
    dataIn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    txOutput : out STD_LOGIC;
    sendValid : out STD_LOGIC
  );
  end component main_TX_UART_0_0;
  component main_VGA_CPU_Bridge_0_0 is
  port (
    InstrLoad_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    IsGPU_OP : in STD_LOGIC;
    Immediate_In : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Reg1_In : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Reg2_In : in STD_LOGIC_VECTOR ( 15 downto 0 );
    IsGPU_OP_out : out STD_LOGIC;
    GPU_Command_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Arg1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Arg2_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_VGA_CPU_Bridge_0_0;
  component main_GPU_0_0 is
  port (
    InstrLoad_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Bridge_IsGPU_OP : in STD_LOGIC;
    Bridge_Command : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Bridge_Arg1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Bridge_Arg2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    VRAM_CLK : out STD_LOGIC;
    VRAM_WE : out STD_LOGIC_VECTOR ( 0 to 0 );
    VRAM_Addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    VRAM_Dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    VGAFramBufferSelect : out STD_LOGIC
  );
  end component main_GPU_0_0;
  component main_VGA_Controller_0_0 is
  port (
    InstrExec_CLK : in STD_LOGIC;
    VGAFramBufferSelect : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ioe : out STD_LOGIC;
    h_sync : out STD_LOGIC;
    v_sync : out STD_LOGIC;
    VRAM_Addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    VRAM_Data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    VRAM_Clk : out STD_LOGIC
  );
  end component main_VGA_Controller_0_0;
  component main_FPU_0_0 is
  port (
    D1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    D2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FPU_OPP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RHO_PIN : in STD_LOGIC;
    FPU_OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CARRY_FLAG : out STD_LOGIC;
    ZERO_FLAG : out STD_LOGIC;
    SMALLER_ZERO_FLAG : out STD_LOGIC;
    BIGGER_ZERO_FLAG : out STD_LOGIC;
    OVERFLOW_FLAG : out STD_LOGIC;
    RHO_FLAG : out STD_LOGIC;
    NOT_ZERO_FLAG : out STD_LOGIC
  );
  end component main_FPU_0_0;
  component main_ALU_FLAG_PACKER_1_0 is
  port (
    CARRY_FLAG : in STD_LOGIC;
    ZERO_FLAG : in STD_LOGIC;
    SMALLER_ZERO_FLAG : in STD_LOGIC;
    BIGGER_ZERO_FLAG : in STD_LOGIC;
    OVERFLOW_FLAG : in STD_LOGIC;
    RHO_FLAG : in STD_LOGIC;
    NOT_ZERO_FLAG : in STD_LOGIC;
    ALU_FLAGS : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_ALU_FLAG_PACKER_1_0;
  signal ALU_0_ALU_OUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ALU_0_BIGGER_ZERO_FLAG : STD_LOGIC;
  signal ALU_0_CARRY_FLAG : STD_LOGIC;
  signal ALU_0_NOT_ZERO_FLAG : STD_LOGIC;
  signal ALU_0_OVERFLOW_FLAG : STD_LOGIC;
  signal ALU_0_RHO_FLAG : STD_LOGIC;
  signal ALU_0_SMALLER_ZERO_FLAG : STD_LOGIC;
  signal ALU_0_ZERO_FLAG : STD_LOGIC;
  signal ALU_FLAG_PACKER_0_ALU_FLAGS : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ALU_FLAG_PACKER_0_ALU_FLAGS1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ALU_FLAG_PACKER_1_ALU_FLAGS : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal CU_Decoder_0_JMP : STD_LOGIC;
  signal CU_Decoder_0_RF_WLB : STD_LOGIC;
  signal CU_Decoder_0_Write_Data_Sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CU_Decoder_0_flagSelect : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CU_Decoder_0_isALUOp : STD_LOGIC;
  signal CU_Decoder_0_isGPUOp : STD_LOGIC;
  signal CU_Decoder_0_isRAMOp : STD_LOGIC;
  signal CU_Decoder_0_jmpConditional : STD_LOGIC;
  signal CU_Decoder_0_jmpDestinationSource : STD_LOGIC;
  signal CU_Decoder_0_jmpRelative : STD_LOGIC;
  signal CU_Decoder_0_ramAddressSrc : STD_LOGIC;
  signal CU_Decoder_0_ramRead : STD_LOGIC;
  signal CU_Decoder_0_ramWrite : STD_LOGIC;
  signal CU_Decoder_0_reg1Read : STD_LOGIC;
  signal CU_Decoder_0_reg2Read : STD_LOGIC;
  signal CU_Decoder_0_rfWHB : STD_LOGIC;
  signal CU_Decoder_0_rfWrite : STD_LOGIC;
  signal CU_ImmediateManipula_0_manipulatedImmediate : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal CU_JumpController_0_PC_Load : STD_LOGIC;
  signal CU_JumpController_0_PC_Next : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal CU_JumpDestinationSe_0_jmpAddress : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal CU_RAMAddressControl_0_ramAddress : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal CU_WriteBackSelector_0_writeData : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal CU_WriteSelector_0_Write_Data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Debugger_0_ccDebugMockClk : STD_LOGIC;
  signal Debugger_0_ccDebugReset : STD_LOGIC;
  signal Debugger_0_debugEnable : STD_LOGIC;
  signal Debugger_0_mmuDebugAddr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Debugger_0_mmuDebugBank : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Debugger_0_mmuDebugClk : STD_LOGIC;
  signal Debugger_0_mmuDebugDin : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Debugger_0_mmuDebugOverrideEn : STD_LOGIC;
  signal Debugger_0_mmuDebugWe : STD_LOGIC;
  signal Debugger_0_txData : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Debugger_0_txDataValid : STD_LOGIC;
  signal Decoder_0_Immediate : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Decoder_0_Register1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Decoder_0_Register2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Decoder_0_WriteBackRegister : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Decoder_0_jmpCondition : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal FPU_0_BIGGER_ZERO_FLAG : STD_LOGIC;
  signal FPU_0_CARRY_FLAG : STD_LOGIC;
  signal FPU_0_FPU_OUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal FPU_0_NOT_ZERO_FLAG : STD_LOGIC;
  signal FPU_0_OVERFLOW_FLAG : STD_LOGIC;
  signal FPU_0_RHO_FLAG : STD_LOGIC;
  signal FPU_0_SMALLER_ZERO_FLAG : STD_LOGIC;
  signal FPU_0_ZERO_FLAG : STD_LOGIC;
  signal GPU_0_VGAFramBufferSelect : STD_LOGIC;
  signal GPU_0_VRAM_Addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal GPU_0_VRAM_CLK : STD_LOGIC;
  signal GPU_0_VRAM_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal GPU_0_VRAM_WE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Net : STD_LOGIC;
  signal Pipelining_Controller_0_InstructionToExecute : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Controller_0_Stalled : STD_LOGIC;
  signal Pipelining_Execution_0_Immediate_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Execution_0_Is_GPU_OP_out : STD_LOGIC;
  signal Pipelining_Execution_0_JMP_out : STD_LOGIC;
  signal Pipelining_Execution_0_Operand1_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Execution_0_Operand2_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Execution_0_WriteAddress_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Pipelining_Execution_0_flagSelOut : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Pipelining_Execution_0_isALUOpOut : STD_LOGIC;
  signal Pipelining_Execution_0_isRAMOpOut : STD_LOGIC;
  signal Pipelining_Execution_0_jmpConditionOut : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Pipelining_Execution_0_jmpConditionalOut : STD_LOGIC;
  signal Pipelining_Execution_0_jmpDestinationSelectOut : STD_LOGIC;
  signal Pipelining_Execution_0_jmpRelativeOut : STD_LOGIC;
  signal Pipelining_Execution_0_ramBankIDOut : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Pipelining_Execution_0_ramReadOut : STD_LOGIC;
  signal Pipelining_Execution_0_ramSrcOut : STD_LOGIC;
  signal Pipelining_Execution_0_ramWriteOut : STD_LOGIC;
  signal Pipelining_Execution_0_rfWriteOut : STD_LOGIC;
  signal Pipelining_Execution_0_whbOut : STD_LOGIC;
  signal Pipelining_Execution_0_wlbOut : STD_LOGIC;
  signal Pipelining_Execution_0_writeDataSelOut : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Pipelining_Forwarder_0_ForwardedOperand1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Forwarder_0_ForwardedOperand2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_WriteBack_0_Flags_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_WriteBack_0_Is_ALU_OP_out : STD_LOGIC;
  signal Pipelining_WriteBack_0_JMP_out : STD_LOGIC;
  signal Pipelining_WriteBack_0_RF_WE_out : STD_LOGIC;
  signal Pipelining_WriteBack_0_WriteAddress_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ProgramCounter_0_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RX_UART_0_dataOutput : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RX_UART_0_dataValid : STD_LOGIC;
  signal RX_UART_IN_1 : STD_LOGIC;
  signal RegFile_0_BankID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal RegFile_0_BankID1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal RegFile_0_Reg1Data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RegFile_0_Reg2Data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Reset_1 : STD_LOGIC;
  signal TX_UART_0_sendValid : STD_LOGIC;
  signal TX_UART_0_tx_output : STD_LOGIC;
  signal VGA_CPU_Bridge_0_Arg1_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal VGA_CPU_Bridge_0_Arg2_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal VGA_CPU_Bridge_0_GPU_Command_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_CPU_Bridge_0_IsGPU_OP_out : STD_LOGIC;
  signal VGA_Controller_0_VRAM_Addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal VGA_Controller_0_VRAM_Clk : STD_LOGIC;
  signal VGA_Controller_0_b : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_Controller_0_g : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_Controller_0_h_sync : STD_LOGIC;
  signal VGA_Controller_0_ioe : STD_LOGIC;
  signal VGA_Controller_0_r : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_Controller_0_v_sync : STD_LOGIC;
  signal btn00_1 : STD_LOGIC;
  signal btn01_1 : STD_LOGIC;
  signal btn02_1 : STD_LOGIC;
  signal btn03_1 : STD_LOGIC;
  signal btn04_1 : STD_LOGIC;
  signal btn05_1 : STD_LOGIC;
  signal btn06_1 : STD_LOGIC;
  signal btn07_1 : STD_LOGIC;
  signal clk100mhzIn_1 : STD_LOGIC;
  signal clockcontroller_0_clk100mhzOut : STD_LOGIC;
  signal clockcontroller_0_loadClk : STD_LOGIC;
  signal clockcontroller_0_vga_clk : STD_LOGIC;
  signal fault_reset_1 : STD_LOGIC;
  signal mmio_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmio_0_led00 : STD_LOGIC;
  signal mmio_0_led01 : STD_LOGIC;
  signal mmio_0_led02 : STD_LOGIC;
  signal mmio_0_led03 : STD_LOGIC;
  signal mmio_0_rgb0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mmio_0_rgb1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mmio_0_rgb2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mmio_0_rgb3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mmio_0_rho : STD_LOGIC;
  signal mmu_0_debugDout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_gramDout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_iramDout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_mmio_mem_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_mmio_mem_ck : STD_LOGIC;
  signal mmu_0_mmio_mem_din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_mmio_mem_we : STD_LOGIC;
  signal mmu_0_vga_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mmu_0_vrama_mem_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_vrama_mem_ck : STD_LOGIC;
  signal mmu_0_vrama_mem_din : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mmu_0_vrama_mem_we : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mmu_0_vramb_mem_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_vramb_mem_ck : STD_LOGIC;
  signal mmu_0_vramb_mem_din : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mmu_0_vramb_mem_we : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vram_bram_douta : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal vram_bram_doutb : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Pipelining_WriteBack_0_ramReadOut_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led04_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led05_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led06_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led07_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led08_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led09_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led10_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led11_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led12_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led13_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led14_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led15_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led16_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led17_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led18_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_led19_UNCONNECTED : STD_LOGIC;
  signal NLW_mmu_0_gpuDout_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of clk100mhzIn : signal is "xilinx.com:signal:clock:1.0 CLK.CLK100MHZIN CLK";
  attribute X_INTERFACE_PARAMETER of clk100mhzIn : signal is "XIL_INTERFACENAME CLK.CLK100MHZIN, CLK_DOMAIN main_clk100mhzIn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of fault_reset : signal is "xilinx.com:signal:reset:1.0 RST.FAULT_RESET RST";
  attribute X_INTERFACE_PARAMETER of fault_reset : signal is "XIL_INTERFACENAME RST.FAULT_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  RX_UART_IN_1 <= RX_UART_IN;
  Reset_1 <= Reset;
  TX_UART_OUT <= TX_UART_0_tx_output;
  b(3 downto 0) <= VGA_Controller_0_b(3 downto 0);
  btn00_1 <= btn00;
  btn01_1 <= btn01;
  btn02_1 <= btn02;
  btn03_1 <= btn03;
  btn04_1 <= btn04;
  btn05_1 <= btn05;
  btn06_1 <= btn06;
  btn07_1 <= btn07;
  clk100mhzIn_1 <= clk100mhzIn;
  fault_reset_1 <= fault_reset;
  g(3 downto 0) <= VGA_Controller_0_g(3 downto 0);
  h_sync <= VGA_Controller_0_h_sync;
  ioe <= VGA_Controller_0_ioe;
  led00 <= mmio_0_led00;
  led01 <= mmio_0_led01;
  led02 <= mmio_0_led02;
  led03 <= mmio_0_led03;
  r(3 downto 0) <= VGA_Controller_0_r(3 downto 0);
  rgb0(2 downto 0) <= mmio_0_rgb0(2 downto 0);
  rgb1(2 downto 0) <= mmio_0_rgb1(2 downto 0);
  rgb2(2 downto 0) <= mmio_0_rgb2(2 downto 0);
  rgb3(2 downto 0) <= mmio_0_rgb3(2 downto 0);
  v_sync <= VGA_Controller_0_v_sync;
ALU_0: component main_ALU_0_0
     port map (
      ALU_OPP(3 downto 0) => Pipelining_Execution_0_Immediate_out(3 downto 0),
      ALU_OUT(15 downto 0) => ALU_0_ALU_OUT(15 downto 0),
      BIGGER_ZERO_FLAG => ALU_0_BIGGER_ZERO_FLAG,
      CARRY_FLAG => ALU_0_CARRY_FLAG,
      D1(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      D2(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0),
      NOT_ZERO_FLAG => ALU_0_NOT_ZERO_FLAG,
      OVERFLOW_FLAG => ALU_0_OVERFLOW_FLAG,
      RHO_FLAG => ALU_0_RHO_FLAG,
      RHO_PIN => mmio_0_rho,
      SMALLER_ZERO_FLAG => ALU_0_SMALLER_ZERO_FLAG,
      ZERO_FLAG => ALU_0_ZERO_FLAG
    );
ALU_FLAG_PACKER_0: component main_ALU_FLAG_PACKER_0_1
     port map (
      ALU_FLAGS(15 downto 0) => ALU_FLAG_PACKER_0_ALU_FLAGS1(15 downto 0),
      BIGGER_ZERO_FLAG => ALU_0_BIGGER_ZERO_FLAG,
      CARRY_FLAG => ALU_0_CARRY_FLAG,
      NOT_ZERO_FLAG => ALU_0_NOT_ZERO_FLAG,
      OVERFLOW_FLAG => ALU_0_OVERFLOW_FLAG,
      RHO_FLAG => ALU_0_RHO_FLAG,
      SMALLER_ZERO_FLAG => ALU_0_SMALLER_ZERO_FLAG,
      ZERO_FLAG => ALU_0_ZERO_FLAG
    );
ALU_FLAG_PACKER_1: component main_ALU_FLAG_PACKER_1_0
     port map (
      ALU_FLAGS(15 downto 0) => ALU_FLAG_PACKER_1_ALU_FLAGS(15 downto 0),
      BIGGER_ZERO_FLAG => FPU_0_BIGGER_ZERO_FLAG,
      CARRY_FLAG => FPU_0_CARRY_FLAG,
      NOT_ZERO_FLAG => FPU_0_NOT_ZERO_FLAG,
      OVERFLOW_FLAG => FPU_0_OVERFLOW_FLAG,
      RHO_FLAG => FPU_0_RHO_FLAG,
      SMALLER_ZERO_FLAG => FPU_0_SMALLER_ZERO_FLAG,
      ZERO_FLAG => FPU_0_ZERO_FLAG
    );
CU_Decoder_0: component main_CU_Decoder_0_0
     port map (
      flagSelect(0) => CU_Decoder_0_flagSelect(0),
      instructionToDecode(15 downto 0) => Pipelining_Controller_0_InstructionToExecute(15 downto 0),
      isALUOp => CU_Decoder_0_isALUOp,
      isGPUOp => CU_Decoder_0_isGPUOp,
      isRAMOp => CU_Decoder_0_isRAMOp,
      jmp => CU_Decoder_0_JMP,
      jmpConditional => CU_Decoder_0_jmpConditional,
      jmpDestinationSource => CU_Decoder_0_jmpDestinationSource,
      jmpRelative => CU_Decoder_0_jmpRelative,
      ramAddressSrc => CU_Decoder_0_ramAddressSrc,
      ramRead => CU_Decoder_0_ramRead,
      ramWrite => CU_Decoder_0_ramWrite,
      reg1Read => CU_Decoder_0_reg1Read,
      reg2Read => CU_Decoder_0_reg2Read,
      rfWHB => CU_Decoder_0_rfWHB,
      rfWLB => CU_Decoder_0_RF_WLB,
      rfWrite => CU_Decoder_0_rfWrite,
      writeDataSelect(2 downto 0) => CU_Decoder_0_Write_Data_Sel(2 downto 0)
    );
CU_ImmediateManipula_0: component main_CU_ImmediateManipula_0_0
     port map (
      immediate(15 downto 0) => Pipelining_Execution_0_Immediate_out(15 downto 0),
      manipulatedImmediate(15 downto 0) => CU_ImmediateManipula_0_manipulatedImmediate(15 downto 0),
      reg1(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      rfWHB => Pipelining_Execution_0_whbOut,
      rfWLB => Pipelining_Execution_0_wlbOut
    );
CU_JumpController_0: component main_CU_JumpController_0_0
     port map (
      flags(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0),
      gpuDone => '0',
      jmp => Pipelining_Execution_0_JMP_out,
      jmpAddress(15 downto 0) => CU_JumpDestinationSe_0_jmpAddress(15 downto 0),
      jmpCondition(4 downto 0) => Pipelining_Execution_0_jmpConditionOut(4 downto 0),
      jmpConditional => Pipelining_Execution_0_jmpConditionalOut,
      jmpRelative => Pipelining_Execution_0_jmpRelativeOut,
      pcCurrent(15 downto 0) => ProgramCounter_0_Dout(15 downto 0),
      pcLoad => CU_JumpController_0_PC_Load,
      pcNext(15 downto 0) => CU_JumpController_0_PC_Next(15 downto 0),
      rhoPin => mmio_0_rho
    );
CU_JumpDestinationSe_0: component main_CU_JumpDestinationSe_0_0
     port map (
      immediate(15 downto 0) => Pipelining_Execution_0_Immediate_out(15 downto 0),
      jmpAddress(15 downto 0) => CU_JumpDestinationSe_0_jmpAddress(15 downto 0),
      jmpDestinationSelect => Pipelining_Execution_0_jmpDestinationSelectOut,
      register1(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0)
    );
CU_RAMAddressControl_0: component main_CU_RAMAddressControl_0_0
     port map (
      immediate(15 downto 0) => Pipelining_Execution_0_Immediate_out(15 downto 0),
      ramAddress(15 downto 0) => CU_RAMAddressControl_0_ramAddress(15 downto 0),
      ramAddressSrc => Pipelining_Execution_0_ramSrcOut,
      reg2(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0)
    );
CU_WriteSelector_0: component main_CU_WriteSelector_0_0
     port map (
      aluFlags(15 downto 0) => ALU_FLAG_PACKER_0_ALU_FLAGS1(15 downto 0),
      aluOut(15 downto 0) => ALU_0_ALU_OUT(15 downto 0),
      flagSel(0) => Pipelining_Execution_0_flagSelOut(0),
      flags(15 downto 0) => ALU_FLAG_PACKER_0_ALU_FLAGS(15 downto 0),
      fpuFlags(15 downto 0) => ALU_FLAG_PACKER_1_ALU_FLAGS(15 downto 0),
      fpuOut(15 downto 0) => FPU_0_FPU_OUT(15 downto 0),
      manipulatedImmediate(15 downto 0) => CU_ImmediateManipula_0_manipulatedImmediate(15 downto 0),
      ramOut(15 downto 0) => mmu_0_gramDout(15 downto 0),
      reg1(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      writeData(15 downto 0) => CU_WriteSelector_0_Write_Data(15 downto 0),
      writeSel(2 downto 0) => Pipelining_Execution_0_writeDataSelOut(2 downto 0)
    );
Debugger_0: component main_Debugger_0_0
     port map (
      aluDin1(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      aluDin2(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0),
      aluFlags(15 downto 0) => ALU_FLAG_PACKER_0_ALU_FLAGS(15 downto 0),
      aluOp(15 downto 0) => Pipelining_Execution_0_Immediate_out(15 downto 0),
      aluOut(15 downto 0) => ALU_0_ALU_OUT(15 downto 0),
      ccDebugMockClk => Debugger_0_ccDebugMockClk,
      ccDebugReset => Debugger_0_ccDebugReset,
      clk => Net,
      debugEnable => Debugger_0_debugEnable,
      mmuDebugAddr(15 downto 0) => Debugger_0_mmuDebugAddr(15 downto 0),
      mmuDebugBank(3 downto 0) => Debugger_0_mmuDebugBank(3 downto 0),
      mmuDebugClk => Debugger_0_mmuDebugClk,
      mmuDebugDin(15 downto 0) => Debugger_0_mmuDebugDin(15 downto 0),
      mmuDebugDout(15 downto 0) => mmu_0_debugDout(15 downto 0),
      mmuDebugOverrideEn => Debugger_0_mmuDebugOverrideEn,
      mmuDebugWe => Debugger_0_mmuDebugWe,
      pcDin(15 downto 0) => CU_JumpController_0_PC_Next(15 downto 0),
      pcDout(15 downto 0) => ProgramCounter_0_Dout(15 downto 0),
      pipelineCurrentInstruction(15 downto 0) => Pipelining_Controller_0_InstructionToExecute(15 downto 0),
      pipelineInstructionForwardingConfig(4 downto 0) => B"00000",
      pipelineJmp => Pipelining_Execution_0_JMP_out,
      pipelineJmpCondition(4 downto 0) => Pipelining_Execution_0_jmpConditionOut(4 downto 0),
      pipelineJmpConditional => Pipelining_Execution_0_jmpConditionalOut,
      pipelineJmpDestinationSelect => Pipelining_Execution_0_jmpDestinationSelectOut,
      pipelineJmpRelative => Pipelining_Execution_0_jmpRelativeOut,
      pipelineOperand1(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      pipelineOperand2(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0),
      pipelineRamBankid(3 downto 0) => Pipelining_Execution_0_ramBankIDOut(3 downto 0),
      pipelineRamRead => Pipelining_Execution_0_ramReadOut,
      pipelineRamSrc => Pipelining_Execution_0_ramSrcOut,
      pipelineRamWrite => Pipelining_Execution_0_ramWriteOut,
      pipelineStalled => Pipelining_Controller_0_Stalled,
      pipelineWriteDataSel(1 downto 0) => Pipelining_Execution_0_writeDataSelOut(1 downto 0),
      regfileAddrReg1(3 downto 0) => Decoder_0_Register1(3 downto 0),
      regfileAddrReg2(3 downto 0) => Decoder_0_Register2(3 downto 0),
      regfileAddrWriteReg(3 downto 0) => Pipelining_WriteBack_0_WriteAddress_out(3 downto 0),
      regfileBankid(3 downto 0) => RegFile_0_BankID(3 downto 0),
      regfileOverwriteFlag => Pipelining_WriteBack_0_Is_ALU_OP_out,
      regfileReg1Data(15 downto 0) => RegFile_0_Reg1Data(15 downto 0),
      regfileReg2Data(15 downto 0) => RegFile_0_Reg2Data(15 downto 0),
      regfileWriteData(15 downto 0) => CU_WriteBackSelector_0_writeData(15 downto 0),
      regfileWriteEnable => Pipelining_WriteBack_0_RF_WE_out,
      rxData(7 downto 0) => RX_UART_0_dataOutput(7 downto 0),
      rxDataValid => RX_UART_0_dataValid,
      txData(7 downto 0) => Debugger_0_txData(7 downto 0),
      txDataSended => TX_UART_0_sendValid,
      txDataValid => Debugger_0_txDataValid
    );
Decoder_0: component main_Decoder_0_0
     port map (
      immediate(15 downto 0) => Decoder_0_Immediate(15 downto 0),
      instructionToDecode(15 downto 0) => Pipelining_Controller_0_InstructionToExecute(15 downto 0),
      jmpCondition(4 downto 0) => Decoder_0_jmpCondition(4 downto 0),
      register1(3 downto 0) => Decoder_0_Register1(3 downto 0),
      register2(3 downto 0) => Decoder_0_Register2(3 downto 0),
      writeBackRegister(3 downto 0) => Decoder_0_WriteBackRegister(3 downto 0)
    );
FPU_0: component main_FPU_0_0
     port map (
      BIGGER_ZERO_FLAG => FPU_0_BIGGER_ZERO_FLAG,
      CARRY_FLAG => FPU_0_CARRY_FLAG,
      D1(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      D2(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0),
      FPU_OPP(3 downto 0) => Pipelining_Execution_0_Immediate_out(3 downto 0),
      FPU_OUT(15 downto 0) => FPU_0_FPU_OUT(15 downto 0),
      NOT_ZERO_FLAG => FPU_0_NOT_ZERO_FLAG,
      OVERFLOW_FLAG => FPU_0_OVERFLOW_FLAG,
      RHO_FLAG => FPU_0_RHO_FLAG,
      RHO_PIN => mmio_0_rho,
      SMALLER_ZERO_FLAG => FPU_0_SMALLER_ZERO_FLAG,
      ZERO_FLAG => FPU_0_ZERO_FLAG
    );
GPU_0: component main_GPU_0_0
     port map (
      Bridge_Arg1(15 downto 0) => VGA_CPU_Bridge_0_Arg1_out(15 downto 0),
      Bridge_Arg2(15 downto 0) => VGA_CPU_Bridge_0_Arg2_out(15 downto 0),
      Bridge_Command(3 downto 0) => VGA_CPU_Bridge_0_GPU_Command_out(3 downto 0),
      Bridge_IsGPU_OP => VGA_CPU_Bridge_0_IsGPU_OP_out,
      InstrLoad_CLK => clockcontroller_0_loadClk,
      Reset => Reset_1,
      VGAFramBufferSelect => GPU_0_VGAFramBufferSelect,
      VRAM_Addr(15 downto 0) => GPU_0_VRAM_Addr(15 downto 0),
      VRAM_CLK => GPU_0_VRAM_CLK,
      VRAM_Dout(15 downto 0) => GPU_0_VRAM_Dout(15 downto 0),
      VRAM_WE(0) => GPU_0_VRAM_WE(0)
    );
Pipelining_Controller_0: component main_Pipelining_Controller_0_0
     port map (
      execJmp => Pipelining_Execution_0_JMP_out,
      instructionIn(15 downto 0) => mmu_0_iramDout(15 downto 0),
      instructionOut(15 downto 0) => Pipelining_Controller_0_InstructionToExecute(15 downto 0),
      loadClk => clockcontroller_0_loadClk,
      pcLoad => CU_JumpController_0_PC_Load,
      reset => Reset_1,
      rfJmp => CU_Decoder_0_JMP,
      stalled => Pipelining_Controller_0_Stalled
    );
Pipelining_Execution_0: component main_Pipelining_Execution_0_0
     port map (
      flagSel(0) => CU_Decoder_0_flagSelect(0),
      flagSelOut(0) => Pipelining_Execution_0_flagSelOut(0),
      immediate(15 downto 0) => Decoder_0_Immediate(15 downto 0),
      immediateOut(15 downto 0) => Pipelining_Execution_0_Immediate_out(15 downto 0),
      isALUOp => CU_Decoder_0_isALUOp,
      isALUOpOut => Pipelining_Execution_0_isALUOpOut,
      isGPUOp => CU_Decoder_0_isGPUOp,
      isGPUOpOut => Pipelining_Execution_0_Is_GPU_OP_out,
      isRAMOp => CU_Decoder_0_isRAMOp,
      isRAMOpOut => Pipelining_Execution_0_isRAMOpOut,
      jmp => CU_Decoder_0_JMP,
      jmpCondition(4 downto 0) => Decoder_0_jmpCondition(4 downto 0),
      jmpConditionOut(4 downto 0) => Pipelining_Execution_0_jmpConditionOut(4 downto 0),
      jmpConditional => CU_Decoder_0_jmpConditional,
      jmpConditionalOut => Pipelining_Execution_0_jmpConditionalOut,
      jmpDestinationSelect => CU_Decoder_0_jmpDestinationSource,
      jmpDestinationSelectOut => Pipelining_Execution_0_jmpDestinationSelectOut,
      jmpOut => Pipelining_Execution_0_JMP_out,
      jmpRelative => CU_Decoder_0_jmpRelative,
      jmpRelativeOut => Pipelining_Execution_0_jmpRelativeOut,
      loadClk => clockcontroller_0_loadClk,
      operand1(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand1(15 downto 0),
      operand1Out(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      operand2(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand2(15 downto 0),
      operand2Out(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0),
      ramBankID(3 downto 0) => RegFile_0_BankID(3 downto 0),
      ramBankIDOut(3 downto 0) => Pipelining_Execution_0_ramBankIDOut(3 downto 0),
      ramRead => CU_Decoder_0_ramRead,
      ramReadOut => Pipelining_Execution_0_ramReadOut,
      ramSrc => CU_Decoder_0_ramAddressSrc,
      ramSrcOut => Pipelining_Execution_0_ramSrcOut,
      ramWrite => CU_Decoder_0_ramWrite,
      ramWriteOut => Pipelining_Execution_0_ramWriteOut,
      reset => Reset_1,
      rfWrite => CU_Decoder_0_rfWrite,
      rfWriteOut => Pipelining_Execution_0_rfWriteOut,
      whb => CU_Decoder_0_rfWHB,
      whbOut => Pipelining_Execution_0_whbOut,
      wlb => CU_Decoder_0_RF_WLB,
      wlbOut => Pipelining_Execution_0_wlbOut,
      writeAddress(3 downto 0) => Decoder_0_WriteBackRegister(3 downto 0),
      writeAddressOut(3 downto 0) => Pipelining_Execution_0_WriteAddress_out(3 downto 0),
      writeDataSel(2 downto 0) => CU_Decoder_0_Write_Data_Sel(2 downto 0),
      writeDataSelOut(2 downto 0) => Pipelining_Execution_0_writeDataSelOut(2 downto 0)
    );
Pipelining_Forwarder_0: component main_Pipelining_Forwarder_0_0
     port map (
      currentBankID(3 downto 0) => RegFile_0_BankID1(3 downto 0),
      execIsALUOp => Pipelining_Execution_0_isALUOpOut,
      execRegWriteAddr(3 downto 0) => Pipelining_Execution_0_WriteAddress_out(3 downto 0),
      execWritesReg => Pipelining_Execution_0_rfWriteOut,
      executionFlags(15 downto 0) => ALU_FLAG_PACKER_0_ALU_FLAGS(15 downto 0),
      executionWriteData(15 downto 0) => CU_WriteSelector_0_Write_Data(15 downto 0),
      forwardedBankID(3 downto 0) => RegFile_0_BankID(3 downto 0),
      forwardedOperand1(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand1(15 downto 0),
      forwardedOperand2(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand2(15 downto 0),
      reg1Addr(3 downto 0) => Decoder_0_Register1(3 downto 0),
      reg1Data(15 downto 0) => RegFile_0_Reg1Data(15 downto 0),
      reg1Read => CU_Decoder_0_reg1Read,
      reg2Addr(3 downto 0) => Decoder_0_Register2(3 downto 0),
      reg2Data(15 downto 0) => RegFile_0_Reg2Data(15 downto 0),
      reg2Read => CU_Decoder_0_reg2Read,
      rfIsRAMOp => CU_Decoder_0_isRAMOp
    );
Pipelining_WriteBack_0: component main_Pipelining_WriteBack_0_0
     port map (
      flags(15 downto 0) => ALU_FLAG_PACKER_0_ALU_FLAGS(15 downto 0),
      flagsOut(15 downto 0) => Pipelining_WriteBack_0_Flags_out(15 downto 0),
      instrLoadClk => clockcontroller_0_loadClk,
      isALUOp => Pipelining_Execution_0_isALUOpOut,
      isALUOpOut => Pipelining_WriteBack_0_Is_ALU_OP_out,
      jmp => Pipelining_Execution_0_JMP_out,
      jmpOut => Pipelining_WriteBack_0_JMP_out,
      ramRead => Pipelining_Execution_0_ramReadOut,
      ramReadOut => NLW_Pipelining_WriteBack_0_ramReadOut_UNCONNECTED,
      reset => Reset_1,
      rfWEOut => Pipelining_WriteBack_0_RF_WE_out,
      whb => Pipelining_Execution_0_whbOut,
      wlb => Pipelining_Execution_0_wlbOut,
      writeAddress(3 downto 0) => Pipelining_Execution_0_WriteAddress_out(3 downto 0),
      writeAddressOut(3 downto 0) => Pipelining_WriteBack_0_WriteAddress_out(3 downto 0),
      writeData(15 downto 0) => CU_WriteSelector_0_Write_Data(15 downto 0),
      writeDataOut(15 downto 0) => CU_WriteBackSelector_0_writeData(15 downto 0)
    );
ProgramCounter_0: component main_ProgramCounter_0_0
     port map (
      din(15 downto 0) => CU_JumpController_0_PC_Next(15 downto 0),
      dout(15 downto 0) => ProgramCounter_0_Dout(15 downto 0),
      jmp => CU_JumpController_0_PC_Load,
      loadCLK => clockcontroller_0_loadClk,
      reset => Reset_1,
      stalled => Pipelining_Controller_0_Stalled
    );
RX_UART_0: component main_RX_UART_0_0
     port map (
      clk => Net,
      dataOutput(7 downto 0) => RX_UART_0_dataOutput(7 downto 0),
      dataValid => RX_UART_0_dataValid,
      rxSerialInput => RX_UART_IN_1
    );
RegFile_0: component main_RegFile_0_0
     port map (
      AddrReg1(3 downto 0) => Decoder_0_Register1(3 downto 0),
      AddrReg2(3 downto 0) => Decoder_0_Register2(3 downto 0),
      AddrWriteReg(3 downto 0) => Pipelining_WriteBack_0_WriteAddress_out(3 downto 0),
      BankID(3 downto 0) => RegFile_0_BankID1(3 downto 0),
      Flags(15 downto 0) => Pipelining_WriteBack_0_Flags_out(15 downto 0),
      OverwriteFl => Pipelining_WriteBack_0_Is_ALU_OP_out,
      Reg1Data(15 downto 0) => RegFile_0_Reg1Data(15 downto 0),
      Reg2Data(15 downto 0) => RegFile_0_Reg2Data(15 downto 0),
      WE => Pipelining_WriteBack_0_RF_WE_out,
      WriteData(15 downto 0) => CU_WriteBackSelector_0_writeData(15 downto 0),
      loadClk => clockcontroller_0_loadClk
    );
TX_UART_0: component main_TX_UART_0_0
     port map (
      clk => Net,
      dataIn(7 downto 0) => Debugger_0_txData(7 downto 0),
      dataValid => Debugger_0_txDataValid,
      sendValid => TX_UART_0_sendValid,
      txOutput => TX_UART_0_tx_output
    );
VGA_CPU_Bridge_0: component main_VGA_CPU_Bridge_0_0
     port map (
      Arg1_out(15 downto 0) => VGA_CPU_Bridge_0_Arg1_out(15 downto 0),
      Arg2_out(15 downto 0) => VGA_CPU_Bridge_0_Arg2_out(15 downto 0),
      GPU_Command_out(3 downto 0) => VGA_CPU_Bridge_0_GPU_Command_out(3 downto 0),
      Immediate_In(15 downto 0) => Pipelining_Execution_0_Immediate_out(15 downto 0),
      InstrLoad_CLK => clockcontroller_0_loadClk,
      IsGPU_OP => Pipelining_Execution_0_Is_GPU_OP_out,
      IsGPU_OP_out => VGA_CPU_Bridge_0_IsGPU_OP_out,
      Reg1_In(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      Reg2_In(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0),
      Reset => Reset_1
    );
VGA_Controller_0: component main_VGA_Controller_0_0
     port map (
      InstrExec_CLK => clockcontroller_0_vga_clk,
      VGAFramBufferSelect => GPU_0_VGAFramBufferSelect,
      VRAM_Addr(15 downto 0) => VGA_Controller_0_VRAM_Addr(15 downto 0),
      VRAM_Clk => VGA_Controller_0_VRAM_Clk,
      VRAM_Data(15 downto 12) => B"0000",
      VRAM_Data(11 downto 0) => mmu_0_vga_dout(11 downto 0),
      b(3 downto 0) => VGA_Controller_0_b(3 downto 0),
      g(3 downto 0) => VGA_Controller_0_g(3 downto 0),
      h_sync => VGA_Controller_0_h_sync,
      ioe => VGA_Controller_0_ioe,
      r(3 downto 0) => VGA_Controller_0_r(3 downto 0),
      v_sync => VGA_Controller_0_v_sync
    );
clockcontroller_0: component main_clockcontroller_0_0
     port map (
      clk100mhzIn => clk100mhzIn_1,
      clk100mhzOut => clockcontroller_0_clk100mhzOut,
      debugClk => Net,
      debugEnable => Debugger_0_debugEnable,
      debugMmuOverrideEnable => Debugger_0_mmuDebugOverrideEn,
      debugMockClk => Debugger_0_ccDebugMockClk,
      debugReset => Debugger_0_ccDebugReset,
      faultReset => fault_reset_1,
      loadClk => clockcontroller_0_loadClk,
      vgaClk => clockcontroller_0_vga_clk
    );
mmio_0: component main_mmio_0_0
     port map (
      addr(15 downto 0) => mmu_0_mmio_mem_addr(15 downto 0),
      btn00 => btn00_1,
      btn01 => btn01_1,
      btn02 => btn02_1,
      btn03 => btn03_1,
      btn04 => btn04_1,
      btn05 => btn05_1,
      btn06 => btn06_1,
      btn07 => btn07_1,
      btn08 => '0',
      btn09 => '0',
      btn10 => '0',
      btn11 => '0',
      btn12 => '0',
      btn13 => '0',
      btn14 => '0',
      btn15 => '0',
      btn16 => '0',
      btn17 => '0',
      btn18 => '0',
      btn19 => '0',
      clk => mmu_0_mmio_mem_ck,
      clk100mhzIn => clockcontroller_0_clk100mhzOut,
      clk50mhzIn => clockcontroller_0_loadClk,
      din(15 downto 0) => mmu_0_mmio_mem_din(15 downto 0),
      dout(15 downto 0) => mmio_0_dout(15 downto 0),
      led00 => mmio_0_led00,
      led01 => mmio_0_led01,
      led02 => mmio_0_led02,
      led03 => mmio_0_led03,
      led04 => NLW_mmio_0_led04_UNCONNECTED,
      led05 => NLW_mmio_0_led05_UNCONNECTED,
      led06 => NLW_mmio_0_led06_UNCONNECTED,
      led07 => NLW_mmio_0_led07_UNCONNECTED,
      led08 => NLW_mmio_0_led08_UNCONNECTED,
      led09 => NLW_mmio_0_led09_UNCONNECTED,
      led10 => NLW_mmio_0_led10_UNCONNECTED,
      led11 => NLW_mmio_0_led11_UNCONNECTED,
      led12 => NLW_mmio_0_led12_UNCONNECTED,
      led13 => NLW_mmio_0_led13_UNCONNECTED,
      led14 => NLW_mmio_0_led14_UNCONNECTED,
      led15 => NLW_mmio_0_led15_UNCONNECTED,
      led16 => NLW_mmio_0_led16_UNCONNECTED,
      led17 => NLW_mmio_0_led17_UNCONNECTED,
      led18 => NLW_mmio_0_led18_UNCONNECTED,
      led19 => NLW_mmio_0_led19_UNCONNECTED,
      rgb0(2 downto 0) => mmio_0_rgb0(2 downto 0),
      rgb1(2 downto 0) => mmio_0_rgb1(2 downto 0),
      rgb2(2 downto 0) => mmio_0_rgb2(2 downto 0),
      rgb3(2 downto 0) => mmio_0_rgb3(2 downto 0),
      rho => mmio_0_rho,
      we => mmu_0_mmio_mem_we
    );
mmu_0: component main_mmu_0_0
     port map (
      debugAddr(15 downto 0) => Debugger_0_mmuDebugAddr(15 downto 0),
      debugBank(3 downto 0) => Debugger_0_mmuDebugBank(3 downto 0),
      debugClk => Debugger_0_mmuDebugClk,
      debugDin(15 downto 0) => Debugger_0_mmuDebugDin(15 downto 0),
      debugDout(15 downto 0) => mmu_0_debugDout(15 downto 0),
      debugEnable => Debugger_0_debugEnable,
      debugOverrideEnable => Debugger_0_mmuDebugOverrideEn,
      debugWe => Debugger_0_mmuDebugWe,
      gpuAddr(15 downto 0) => GPU_0_VRAM_Addr(15 downto 0),
      gpuClk => GPU_0_VRAM_CLK,
      gpuDin(11 downto 0) => GPU_0_VRAM_Dout(11 downto 0),
      gpuDout(11 downto 0) => NLW_mmu_0_gpuDout_UNCONNECTED(11 downto 0),
      gpuWe => GPU_0_VRAM_WE(0),
      gramAddr(15 downto 0) => CU_RAMAddressControl_0_ramAddress(15 downto 0),
      gramBank(3 downto 0) => Pipelining_Execution_0_ramBankIDOut(3 downto 0),
      gramDin(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      gramDout(15 downto 0) => mmu_0_gramDout(15 downto 0),
      gramOe => Pipelining_Execution_0_ramReadOut,
      gramWe => Pipelining_Execution_0_ramWriteOut,
      iramAddr(15 downto 0) => ProgramCounter_0_Dout(15 downto 0),
      iramDout(15 downto 0) => mmu_0_iramDout(15 downto 0),
      loadClk => clockcontroller_0_loadClk,
      mmioMemAddr(15 downto 0) => mmu_0_mmio_mem_addr(15 downto 0),
      mmioMemClk => mmu_0_mmio_mem_ck,
      mmioMemDin(15 downto 0) => mmu_0_mmio_mem_din(15 downto 0),
      mmioMemDout(15 downto 0) => mmio_0_dout(15 downto 0),
      mmioMemWe => mmu_0_mmio_mem_we,
      vgaAddr(15 downto 0) => VGA_Controller_0_VRAM_Addr(15 downto 0),
      vgaClk => VGA_Controller_0_VRAM_Clk,
      vgaDout(11 downto 0) => mmu_0_vga_dout(11 downto 0),
      vramaMemAddr(15 downto 0) => mmu_0_vrama_mem_addr(15 downto 0),
      vramaMemClk => mmu_0_vrama_mem_ck,
      vramaMemDin(11 downto 0) => mmu_0_vrama_mem_din(11 downto 0),
      vramaMemDout(11 downto 0) => vram_bram_douta(11 downto 0),
      vramaMemWe(0) => mmu_0_vrama_mem_we(0),
      vrambMemAddr(15 downto 0) => mmu_0_vramb_mem_addr(15 downto 0),
      vrambMemClk => mmu_0_vramb_mem_ck,
      vrambMemDin(11 downto 0) => mmu_0_vramb_mem_din(11 downto 0),
      vrambMemDout(11 downto 0) => vram_bram_doutb(11 downto 0),
      vrambMemWe(0) => mmu_0_vramb_mem_we(0)
    );
vram_bram: component main_blk_mem_gen_0_0
     port map (
      addra(15 downto 0) => mmu_0_vrama_mem_addr(15 downto 0),
      addrb(15 downto 0) => mmu_0_vramb_mem_addr(15 downto 0),
      clka => mmu_0_vrama_mem_ck,
      clkb => mmu_0_vramb_mem_ck,
      dina(11 downto 0) => mmu_0_vrama_mem_din(11 downto 0),
      dinb(11 downto 0) => mmu_0_vramb_mem_din(11 downto 0),
      douta(11 downto 0) => vram_bram_douta(11 downto 0),
      doutb(11 downto 0) => vram_bram_doutb(11 downto 0),
      wea(0) => mmu_0_vrama_mem_we(0),
      web(0) => mmu_0_vramb_mem_we(0)
    );
end STRUCTURE;
