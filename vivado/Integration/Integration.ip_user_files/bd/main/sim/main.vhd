--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Mon Nov 25 01:16:14 2024
--Host        : DESKTOP-7KK7962 running 64-bit major release  (build 9200)
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
    btn0 : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    btn3 : in STD_LOGIC;
    clk100mhz_in : in STD_LOGIC;
    fault_reset : in STD_LOGIC;
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    h_sync : out STD_LOGIC;
    ioe : out STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    led3 : out STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v_sync : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of main : entity is "main,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=main,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=25,numReposBlks=25,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=24,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=7,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of main : entity is "main.hwdef";
end main;

architecture STRUCTURE of main is
  component main_Pipelining_Controller_0_0 is
  port (
    InstrLoad_CLK : in STD_LOGIC;
    InstrExec_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ResolveStall : in STD_LOGIC;
    Stalled : out STD_LOGIC;
    InstructionForwardConfiguration : out STD_LOGIC_VECTOR ( 3 downto 0 );
    InstructionToExecute : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_enable : in STD_LOGIC;
    debug_override_enable : in STD_LOGIC
  );
  end component main_Pipelining_Controller_0_0;
  component main_ProgramCounter_0_0 is
  port (
    InstrExec_CLK : in STD_LOGIC;
    InstrLoad_CLK : in STD_LOGIC;
    Stalled : in STD_LOGIC;
    JMP : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_ProgramCounter_0_0;
  component main_CU_Decoder_0_0 is
  port (
    Instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Reg1Read : out STD_LOGIC;
    Reg2Read : out STD_LOGIC;
    RF_WHB : out STD_LOGIC;
    RF_WLB : out STD_LOGIC;
    Write_Data_Sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RAM_Address_Src : out STD_LOGIC;
    RAM_Read : out STD_LOGIC;
    RAM_Write : out STD_LOGIC;
    JMP : out STD_LOGIC;
    JMP_Conditional : out STD_LOGIC;
    JMP_Relative : out STD_LOGIC;
    JMP_DestinationSource : out STD_LOGIC;
    Is_ALU_OP : out STD_LOGIC;
    Is_RAM_OP : out STD_LOGIC;
    Is_GPU_OP : out STD_LOGIC
  );
  end component main_CU_Decoder_0_0;
  component main_Decoder_0_0 is
  port (
    Instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Register1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Register2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteBackRegister : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Immediate : out STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_Condition : out STD_LOGIC_VECTOR ( 2 downto 0 )
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
    clk : in STD_LOGIC;
    Reg1_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Reg2_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BankID : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component main_RegFile_0_0;
  component main_Pipelining_Forwarder_0_0 is
  port (
    CurrentOperand1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentOperand2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ExecutionWriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ExecutionFlags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ForwardingConfiguration : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ForwardedOperand1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ForwardedOperand2 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_Pipelining_Forwarder_0_0;
  component main_Pipelining_Execution_0_0 is
  port (
    InstrLoad_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Operand1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Operand2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WriteAddress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WHB : in STD_LOGIC;
    WLB : in STD_LOGIC;
    WriteDataSel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RAM_Src : in STD_LOGIC;
    RAM_Read : in STD_LOGIC;
    RAM_Write : in STD_LOGIC;
    RAM_BankID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    JMP : in STD_LOGIC;
    JMP_Conditional : in STD_LOGIC;
    JMP_Relative : in STD_LOGIC;
    JMP_DestinationSelect : in STD_LOGIC;
    JMP_Condition : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Is_ALU_OP : in STD_LOGIC;
    Is_RAM_OP : in STD_LOGIC;
    Is_GPU_OP : in STD_LOGIC;
    Operand1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Operand2_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    WriteAddress_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WHB_out : out STD_LOGIC;
    WLB_out : out STD_LOGIC;
    WriteDataSel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RAM_Src_out : out STD_LOGIC;
    RAM_Read_out : out STD_LOGIC;
    RAM_Write_out : out STD_LOGIC;
    RAM_BankID_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    JMP_out : out STD_LOGIC;
    JMP_Conditional_out : out STD_LOGIC;
    JMP_Relative_out : out STD_LOGIC;
    JMP_DestinationSelect_out : out STD_LOGIC;
    JMP_Condition_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IS_ALU_OP_out : out STD_LOGIC;
    Is_RAM_OP_out : out STD_LOGIC;
    Is_GPU_OP_out : out STD_LOGIC
  );
  end component main_Pipelining_Execution_0_0;
  component main_CU_RAMAddressControl_0_0 is
  port (
    Reg2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RAM_Address_Src : in STD_LOGIC;
    RAM_Address : out STD_LOGIC_VECTOR ( 15 downto 0 )
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
    Reg1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RF_WHB : in STD_LOGIC;
    RF_WLB : in STD_LOGIC;
    ManipulatedImmidiate : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_CU_ImmediateManipula_0_0;
  component main_CU_JumpDestinationSe_0_0 is
  port (
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Register1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_DestinationSelect : in STD_LOGIC;
    JMP_Address : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_CU_JumpDestinationSe_0_0;
  component main_CU_JumpController_0_0 is
  port (
    InstrExec_CLK : in STD_LOGIC;
    JMP : in STD_LOGIC;
    JMP_Conditional : in STD_LOGIC;
    JMP_Relative : in STD_LOGIC;
    JMP_Condition : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Flags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_Address : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PC_Current : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PC_Load : out STD_LOGIC;
    PC_Next : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_CU_JumpController_0_0;
  component main_CU_WriteSelector_0_0 is
  port (
    RAM_Out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Manipulated_Immidiate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Reg1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ALU_Out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Write_Sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Write_Data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_CU_WriteSelector_0_0;
  component main_Pipelining_WriteBack_0_0 is
  port (
    InstrLoad_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    WriteAddress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Flags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WHB : in STD_LOGIC;
    WLB : in STD_LOGIC;
    Is_ALU_OP : in STD_LOGIC;
    JMP : in STD_LOGIC;
    WriteAddress_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteData_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Flags_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RF_WE_out : out STD_LOGIC;
    Is_ALU_OP_out : out STD_LOGIC;
    JMP_out : out STD_LOGIC
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
    clk100mhz_in : in STD_LOGIC;
    fault_reset : in STD_LOGIC;
    debug_reset : in STD_LOGIC;
    debug_enable : in STD_LOGIC;
    debug_mock_clk : in STD_LOGIC;
    debug_mmu_override_enbale : in STD_LOGIC;
    load_clk : out STD_LOGIC;
    exec_clk : out STD_LOGIC;
    debug_clk : out STD_LOGIC;
    ck_stable : out STD_LOGIC
  );
  end component main_clockcontroller_0_0;
  component main_mmu_0_0 is
  port (
    ck_stable : in STD_LOGIC;
    exec_clk : in STD_LOGIC;
    gram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gram_we : in STD_LOGIC;
    gram_oe : in STD_LOGIC;
    gram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_enable : in STD_LOGIC;
    debug_override_enable : in STD_LOGIC;
    debug_clk : in STD_LOGIC;
    debug_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_we : in STD_LOGIC;
    debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gpu_clk : in STD_LOGIC;
    gpu_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gpu_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    gpu_we : in STD_LOGIC;
    gpu_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vga_clk : in STD_LOGIC;
    vga_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vga_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vrama_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vrama_mem_ck : out STD_LOGIC;
    vrama_mem_din : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vrama_mem_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    vrama_mem_dout : in STD_LOGIC_VECTOR ( 11 downto 0 );
    vramb_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vramb_mem_ck : out STD_LOGIC;
    vramb_mem_din : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vramb_mem_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    vramb_mem_dout : in STD_LOGIC_VECTOR ( 11 downto 0 );
    mmio_mem_ck : out STD_LOGIC;
    mmio_mem_we : out STD_LOGIC;
    mmio_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_mem_din : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_mem_dout : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_mmu_0_0;
  component main_mmio_0_0 is
  port (
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    led3 : out STD_LOGIC;
    btn0 : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    btn3 : in STD_LOGIC;
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
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_data_valid : in STD_LOGIC;
    tx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_data_valid : out STD_LOGIC;
    tx_data_sended : in STD_LOGIC;
    debug_enable : out STD_LOGIC;
    cc_debug_mock_clk : out STD_LOGIC;
    cc_debug_reset : out STD_LOGIC;
    load_clk : in STD_LOGIC;
    pipeline_stalled : in STD_LOGIC;
    pipeline_instruction_forwarding_config : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pipeline_current_instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pipeline_operand_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pipeline_operand_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pipeline_memory_addr_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pipeline_jmp : in STD_LOGIC;
    pc_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pc_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pc_current_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    alu_din1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    alu_din2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    alu_out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    alu_flags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    alu_op : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regfile_addr_reg1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regfile_addr_reg2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regfile_addr_write_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regfile_write_enable : in STD_LOGIC;
    regfile_overwrite_flag : in STD_LOGIC;
    regfile_write_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regfile_reg1_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regfile_reg2_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regfile_regma_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regfile_bankid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mmu_debug_clk : out STD_LOGIC;
    mmu_debug_override_en : out STD_LOGIC;
    mmu_debug_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmu_debug_din : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmu_debug_bank : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mmu_debug_we : out STD_LOGIC;
    mmu_debug_dout : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_Debugger_0_0;
  component main_RX_UART_0_0 is
  port (
    clk : in STD_LOGIC;
    rx_serial_input : in STD_LOGIC;
    data_output : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_valid : out STD_LOGIC
  );
  end component main_RX_UART_0_0;
  component main_TX_UART_0_0 is
  port (
    data_valid : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    tx_output : out STD_LOGIC;
    send_valid : out STD_LOGIC
  );
  end component main_TX_UART_0_0;
  component main_VGA_CPU_Bridge_0_0 is
  port (
    InstrExec_CLK : in STD_LOGIC;
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
    InstrExec_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Bridge_IsGPU_OP : in STD_LOGIC;
    Bridge_Command : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Bridge_Arg1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Bridge_Arg2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    VRAM_CLK : out STD_LOGIC;
    VRAM_WE : out STD_LOGIC_VECTOR ( 0 to 0 );
    VRAM_Addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    VRAM_Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_GPU_0_0;
  component main_VGA_Controller_0_0 is
  port (
    InstrExec_CLK : in STD_LOGIC;
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
  signal ALU_0_ALU_OUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ALU_0_BIGGER_ZERO_FLAG : STD_LOGIC;
  signal ALU_0_CARRY_FLAG : STD_LOGIC;
  signal ALU_0_NOT_ZERO_FLAG : STD_LOGIC;
  signal ALU_0_OVERFLOW_FLAG : STD_LOGIC;
  signal ALU_0_RHO_FLAG : STD_LOGIC;
  signal ALU_0_SMALLER_ZERO_FLAG : STD_LOGIC;
  signal ALU_0_ZERO_FLAG : STD_LOGIC;
  signal ALU_FLAG_PACKER_0_ALU_FLAGS : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal CU_Decoder_0_Is_ALU_OP : STD_LOGIC;
  signal CU_Decoder_0_Is_GPU_OP : STD_LOGIC;
  signal CU_Decoder_0_Is_RAM_OP : STD_LOGIC;
  signal CU_Decoder_0_JMP : STD_LOGIC;
  signal CU_Decoder_0_JMP_Conditional : STD_LOGIC;
  signal CU_Decoder_0_JMP_DestinationSource : STD_LOGIC;
  signal CU_Decoder_0_JMP_Relative : STD_LOGIC;
  signal CU_Decoder_0_RAM_Address_Src : STD_LOGIC;
  signal CU_Decoder_0_RAM_Read : STD_LOGIC;
  signal CU_Decoder_0_RAM_Write : STD_LOGIC;
  signal CU_Decoder_0_RF_WHB : STD_LOGIC;
  signal CU_Decoder_0_RF_WLB : STD_LOGIC;
  signal CU_Decoder_0_Write_Data_Sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CU_ImmediateManipula_0_ManipulatedImmidiate : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal CU_JumpController_0_PC_Load : STD_LOGIC;
  signal CU_JumpController_0_PC_Next : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal CU_JumpDestinationSe_0_JMP_Address : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal CU_RAMAddressControl_0_RAM_Address : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal CU_WriteSelector_0_Write_Data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Debugger_0_cc_debug_mock_clk : STD_LOGIC;
  signal Debugger_0_cc_debug_reset : STD_LOGIC;
  signal Debugger_0_debug_enable : STD_LOGIC;
  signal Debugger_0_mmu_debug_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Debugger_0_mmu_debug_bank : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Debugger_0_mmu_debug_din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Debugger_0_mmu_debug_override_en : STD_LOGIC;
  signal Debugger_0_mmu_debug_sync_clk100mhz : STD_LOGIC;
  signal Debugger_0_mmu_debug_we : STD_LOGIC;
  signal Debugger_0_tx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Debugger_0_tx_data_valid : STD_LOGIC;
  signal Decoder_0_Immediate : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Decoder_0_JMP_Condition : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Decoder_0_Register1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Decoder_0_Register2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Decoder_0_WriteBackRegister : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal GPU_0_VRAM_Addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal GPU_0_VRAM_CLK : STD_LOGIC;
  signal GPU_0_VRAM_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal GPU_0_VRAM_WE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal InstrLoad_CLK_1 : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Pipelining_Controller_0_InstructionForwardConfiguration : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Pipelining_Controller_0_InstructionToExecute : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Controller_0_Stalled : STD_LOGIC;
  signal Pipelining_Execution_0_IS_ALU_OP_out : STD_LOGIC;
  signal Pipelining_Execution_0_Immediate_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Execution_0_Is_GPU_OP_out : STD_LOGIC;
  signal Pipelining_Execution_0_JMP_Condition_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Pipelining_Execution_0_JMP_Conditional_out : STD_LOGIC;
  signal Pipelining_Execution_0_JMP_DestinationSelect_out : STD_LOGIC;
  signal Pipelining_Execution_0_JMP_Relative_out : STD_LOGIC;
  signal Pipelining_Execution_0_JMP_out : STD_LOGIC;
  signal Pipelining_Execution_0_Operand1_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Execution_0_Operand2_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Execution_0_RAM_BankID_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Pipelining_Execution_0_RAM_Read_out : STD_LOGIC;
  signal Pipelining_Execution_0_RAM_Src_out : STD_LOGIC;
  signal Pipelining_Execution_0_RAM_Write_out : STD_LOGIC;
  signal Pipelining_Execution_0_WHB_out : STD_LOGIC;
  signal Pipelining_Execution_0_WLB_out : STD_LOGIC;
  signal Pipelining_Execution_0_WriteAddress_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Pipelining_Execution_0_WriteDataSel_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Pipelining_Forwarder_0_ForwardedOperand1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Forwarder_0_ForwardedOperand2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_WriteBack_0_Flags_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_WriteBack_0_Is_ALU_OP_out : STD_LOGIC;
  signal Pipelining_WriteBack_0_JMP_out : STD_LOGIC;
  signal Pipelining_WriteBack_0_RF_WE_out : STD_LOGIC;
  signal Pipelining_WriteBack_0_WriteAddress_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Pipelining_WriteBack_0_WriteData_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ProgramCounter_0_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RX_UART_0_data_output : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RX_UART_0_data_valid : STD_LOGIC;
  signal RX_UART_IN_1 : STD_LOGIC;
  signal RegFile_0_BankID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal RegFile_0_Reg1_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RegFile_0_Reg2_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Reset_1 : STD_LOGIC;
  signal TX_UART_0_send_valid : STD_LOGIC;
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
  signal btn0_1 : STD_LOGIC;
  signal btn1_1 : STD_LOGIC;
  signal btn2_1 : STD_LOGIC;
  signal btn3_1 : STD_LOGIC;
  signal clk100mhz_in_1 : STD_LOGIC;
  signal clockcontroller_0_ck_stable : STD_LOGIC;
  signal clockcontroller_0_exec_clk : STD_LOGIC;
  signal fault_reset_1 : STD_LOGIC;
  signal mmio_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmio_0_led0 : STD_LOGIC;
  signal mmio_0_led1 : STD_LOGIC;
  signal mmio_0_led2 : STD_LOGIC;
  signal mmio_0_led3 : STD_LOGIC;
  signal mmio_0_rho : STD_LOGIC;
  signal mmu_0_debug_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_gram_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_iram_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  signal NLW_CU_Decoder_0_Reg1Read_UNCONNECTED : STD_LOGIC;
  signal NLW_CU_Decoder_0_Reg2Read_UNCONNECTED : STD_LOGIC;
  signal NLW_Debugger_0_pipeline_memory_addr_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Debugger_0_regfile_regma_data_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Pipelining_Execution_0_Is_RAM_OP_out_UNCONNECTED : STD_LOGIC;
  signal NLW_mmu_0_gpu_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of clk100mhz_in : signal is "xilinx.com:signal:clock:1.0 CLK.CLK100MHZ_IN CLK";
  attribute X_INTERFACE_PARAMETER of clk100mhz_in : signal is "XIL_INTERFACENAME CLK.CLK100MHZ_IN, CLK_DOMAIN main_clk100mhz_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of fault_reset : signal is "xilinx.com:signal:reset:1.0 RST.FAULT_RESET RST";
  attribute X_INTERFACE_PARAMETER of fault_reset : signal is "XIL_INTERFACENAME RST.FAULT_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  RX_UART_IN_1 <= RX_UART_IN;
  Reset_1 <= Reset;
  TX_UART_OUT <= TX_UART_0_tx_output;
  b(3 downto 0) <= VGA_Controller_0_b(3 downto 0);
  btn0_1 <= btn0;
  btn1_1 <= btn1;
  btn2_1 <= btn2;
  btn3_1 <= btn3;
  clk100mhz_in_1 <= clk100mhz_in;
  fault_reset_1 <= fault_reset;
  g(3 downto 0) <= VGA_Controller_0_g(3 downto 0);
  h_sync <= VGA_Controller_0_h_sync;
  ioe <= VGA_Controller_0_ioe;
  led0 <= mmio_0_led0;
  led1 <= mmio_0_led1;
  led2 <= mmio_0_led2;
  led3 <= mmio_0_led3;
  r(3 downto 0) <= VGA_Controller_0_r(3 downto 0);
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
      ALU_FLAGS(15 downto 0) => ALU_FLAG_PACKER_0_ALU_FLAGS(15 downto 0),
      BIGGER_ZERO_FLAG => ALU_0_BIGGER_ZERO_FLAG,
      CARRY_FLAG => ALU_0_CARRY_FLAG,
      NOT_ZERO_FLAG => ALU_0_NOT_ZERO_FLAG,
      OVERFLOW_FLAG => ALU_0_OVERFLOW_FLAG,
      RHO_FLAG => ALU_0_RHO_FLAG,
      SMALLER_ZERO_FLAG => ALU_0_SMALLER_ZERO_FLAG,
      ZERO_FLAG => ALU_0_ZERO_FLAG
    );
CU_Decoder_0: component main_CU_Decoder_0_0
     port map (
      Instruction(15 downto 0) => Pipelining_Controller_0_InstructionToExecute(15 downto 0),
      Is_ALU_OP => CU_Decoder_0_Is_ALU_OP,
      Is_GPU_OP => CU_Decoder_0_Is_GPU_OP,
      Is_RAM_OP => CU_Decoder_0_Is_RAM_OP,
      JMP => CU_Decoder_0_JMP,
      JMP_Conditional => CU_Decoder_0_JMP_Conditional,
      JMP_DestinationSource => CU_Decoder_0_JMP_DestinationSource,
      JMP_Relative => CU_Decoder_0_JMP_Relative,
      RAM_Address_Src => CU_Decoder_0_RAM_Address_Src,
      RAM_Read => CU_Decoder_0_RAM_Read,
      RAM_Write => CU_Decoder_0_RAM_Write,
      RF_WHB => CU_Decoder_0_RF_WHB,
      RF_WLB => CU_Decoder_0_RF_WLB,
      Reg1Read => NLW_CU_Decoder_0_Reg1Read_UNCONNECTED,
      Reg2Read => NLW_CU_Decoder_0_Reg2Read_UNCONNECTED,
      Write_Data_Sel(1 downto 0) => CU_Decoder_0_Write_Data_Sel(1 downto 0)
    );
CU_ImmediateManipula_0: component main_CU_ImmediateManipula_0_0
     port map (
      Immediate(15 downto 0) => Pipelining_Execution_0_Immediate_out(15 downto 0),
      ManipulatedImmidiate(15 downto 0) => CU_ImmediateManipula_0_ManipulatedImmidiate(15 downto 0),
      RF_WHB => Pipelining_Execution_0_WHB_out,
      RF_WLB => Pipelining_Execution_0_WLB_out,
      Reg1(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0)
    );
CU_JumpController_0: component main_CU_JumpController_0_0
     port map (
      Flags(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0),
      InstrExec_CLK => clockcontroller_0_exec_clk,
      JMP => Pipelining_Execution_0_JMP_out,
      JMP_Address(15 downto 0) => CU_JumpDestinationSe_0_JMP_Address(15 downto 0),
      JMP_Condition(2 downto 0) => Pipelining_Execution_0_JMP_Condition_out(2 downto 0),
      JMP_Conditional => Pipelining_Execution_0_JMP_Conditional_out,
      JMP_Relative => Pipelining_Execution_0_JMP_Relative_out,
      PC_Current(15 downto 0) => ProgramCounter_0_Dout(15 downto 0),
      PC_Load => CU_JumpController_0_PC_Load,
      PC_Next(15 downto 0) => CU_JumpController_0_PC_Next(15 downto 0)
    );
CU_JumpDestinationSe_0: component main_CU_JumpDestinationSe_0_0
     port map (
      Immediate(15 downto 0) => Pipelining_Execution_0_Immediate_out(15 downto 0),
      JMP_Address(15 downto 0) => CU_JumpDestinationSe_0_JMP_Address(15 downto 0),
      JMP_DestinationSelect => Pipelining_Execution_0_JMP_DestinationSelect_out,
      Register1(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0)
    );
CU_RAMAddressControl_0: component main_CU_RAMAddressControl_0_0
     port map (
      Immediate(15 downto 0) => Pipelining_Execution_0_Immediate_out(15 downto 0),
      RAM_Address(15 downto 0) => CU_RAMAddressControl_0_RAM_Address(15 downto 0),
      RAM_Address_Src => Pipelining_Execution_0_RAM_Src_out,
      Reg2(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0)
    );
CU_WriteSelector_0: component main_CU_WriteSelector_0_0
     port map (
      ALU_Out(15 downto 0) => ALU_0_ALU_OUT(15 downto 0),
      Manipulated_Immidiate(15 downto 0) => CU_ImmediateManipula_0_ManipulatedImmidiate(15 downto 0),
      RAM_Out(15 downto 0) => mmu_0_gram_dout(15 downto 0),
      Reg1(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      Write_Data(15 downto 0) => CU_WriteSelector_0_Write_Data(15 downto 0),
      Write_Sel(1 downto 0) => Pipelining_Execution_0_WriteDataSel_out(1 downto 0)
    );
Debugger_0: component main_Debugger_0_0
     port map (
      alu_din1(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      alu_din2(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0),
      alu_flags(15 downto 0) => ALU_FLAG_PACKER_0_ALU_FLAGS(15 downto 0),
      alu_op(15 downto 0) => Pipelining_Execution_0_Immediate_out(15 downto 0),
      alu_out(15 downto 0) => ALU_0_ALU_OUT(15 downto 0),
      cc_debug_mock_clk => Debugger_0_cc_debug_mock_clk,
      cc_debug_reset => Debugger_0_cc_debug_reset,
      clk => Net,
      debug_enable => Debugger_0_debug_enable,
      load_clk => InstrLoad_CLK_1,
      mmu_debug_addr(15 downto 0) => Debugger_0_mmu_debug_addr(15 downto 0),
      mmu_debug_bank(3 downto 0) => Debugger_0_mmu_debug_bank(3 downto 0),
      mmu_debug_clk => Debugger_0_mmu_debug_sync_clk100mhz,
      mmu_debug_din(15 downto 0) => Debugger_0_mmu_debug_din(15 downto 0),
      mmu_debug_dout(15 downto 0) => mmu_0_debug_dout(15 downto 0),
      mmu_debug_override_en => Debugger_0_mmu_debug_override_en,
      mmu_debug_we => Debugger_0_mmu_debug_we,
      pc_current_addr(15 downto 0) => ProgramCounter_0_Dout(15 downto 0),
      pc_din(15 downto 0) => CU_JumpController_0_PC_Next(15 downto 0),
      pc_dout(15 downto 0) => ProgramCounter_0_Dout(15 downto 0),
      pipeline_current_instruction(15 downto 0) => Pipelining_Controller_0_InstructionToExecute(15 downto 0),
      pipeline_instruction_forwarding_config(4) => '0',
      pipeline_instruction_forwarding_config(3 downto 0) => Pipelining_Controller_0_InstructionForwardConfiguration(3 downto 0),
      pipeline_jmp => CU_Decoder_0_JMP,
      pipeline_memory_addr_reg(15 downto 0) => NLW_Debugger_0_pipeline_memory_addr_reg_UNCONNECTED(15 downto 0),
      pipeline_operand_1(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand1(15 downto 0),
      pipeline_operand_2(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand2(15 downto 0),
      pipeline_stalled => Pipelining_Controller_0_Stalled,
      regfile_addr_reg1(3 downto 0) => Decoder_0_Register1(3 downto 0),
      regfile_addr_reg2(3 downto 0) => Decoder_0_Register2(3 downto 0),
      regfile_addr_write_reg(3 downto 0) => Pipelining_WriteBack_0_WriteAddress_out(3 downto 0),
      regfile_bankid(3 downto 0) => RegFile_0_BankID(3 downto 0),
      regfile_overwrite_flag => Pipelining_WriteBack_0_Is_ALU_OP_out,
      regfile_reg1_data(15 downto 0) => RegFile_0_Reg1_data(15 downto 0),
      regfile_reg2_data(15 downto 0) => RegFile_0_Reg2_data(15 downto 0),
      regfile_regma_data(15 downto 0) => NLW_Debugger_0_regfile_regma_data_UNCONNECTED(15 downto 0),
      regfile_write_data(15 downto 0) => Pipelining_WriteBack_0_WriteData_out(15 downto 0),
      regfile_write_enable => Pipelining_WriteBack_0_RF_WE_out,
      rx_data(7 downto 0) => RX_UART_0_data_output(7 downto 0),
      rx_data_valid => RX_UART_0_data_valid,
      tx_data(7 downto 0) => Debugger_0_tx_data(7 downto 0),
      tx_data_sended => TX_UART_0_send_valid,
      tx_data_valid => Debugger_0_tx_data_valid
    );
Decoder_0: component main_Decoder_0_0
     port map (
      Immediate(15 downto 0) => Decoder_0_Immediate(15 downto 0),
      Instruction(15 downto 0) => Pipelining_Controller_0_InstructionToExecute(15 downto 0),
      JMP_Condition(2 downto 0) => Decoder_0_JMP_Condition(2 downto 0),
      Register1(3 downto 0) => Decoder_0_Register1(3 downto 0),
      Register2(3 downto 0) => Decoder_0_Register2(3 downto 0),
      WriteBackRegister(3 downto 0) => Decoder_0_WriteBackRegister(3 downto 0)
    );
GPU_0: component main_GPU_0_0
     port map (
      Bridge_Arg1(15 downto 0) => VGA_CPU_Bridge_0_Arg1_out(15 downto 0),
      Bridge_Arg2(15 downto 0) => VGA_CPU_Bridge_0_Arg2_out(15 downto 0),
      Bridge_Command(3 downto 0) => VGA_CPU_Bridge_0_GPU_Command_out(3 downto 0),
      Bridge_IsGPU_OP => VGA_CPU_Bridge_0_IsGPU_OP_out,
      InstrExec_CLK => clockcontroller_0_exec_clk,
      InstrLoad_CLK => InstrLoad_CLK_1,
      Reset => Reset_1,
      VRAM_Addr(15 downto 0) => GPU_0_VRAM_Addr(15 downto 0),
      VRAM_CLK => GPU_0_VRAM_CLK,
      VRAM_Dout(15 downto 0) => GPU_0_VRAM_Dout(15 downto 0),
      VRAM_WE(0) => GPU_0_VRAM_WE(0)
    );
Pipelining_Controller_0: component main_Pipelining_Controller_0_0
     port map (
      InstrExec_CLK => clockcontroller_0_exec_clk,
      InstrLoad_CLK => InstrLoad_CLK_1,
      Instruction(15 downto 0) => mmu_0_iram_dout(15 downto 0),
      InstructionForwardConfiguration(3 downto 0) => Pipelining_Controller_0_InstructionForwardConfiguration(3 downto 0),
      InstructionToExecute(15 downto 0) => Pipelining_Controller_0_InstructionToExecute(15 downto 0),
      Reset => Reset_1,
      ResolveStall => Pipelining_WriteBack_0_JMP_out,
      Stalled => Pipelining_Controller_0_Stalled,
      debug_enable => Debugger_0_debug_enable,
      debug_override_enable => Debugger_0_mmu_debug_override_en
    );
Pipelining_Execution_0: component main_Pipelining_Execution_0_0
     port map (
      IS_ALU_OP_out => Pipelining_Execution_0_IS_ALU_OP_out,
      Immediate(15 downto 0) => Decoder_0_Immediate(15 downto 0),
      Immediate_out(15 downto 0) => Pipelining_Execution_0_Immediate_out(15 downto 0),
      InstrLoad_CLK => InstrLoad_CLK_1,
      Is_ALU_OP => CU_Decoder_0_Is_ALU_OP,
      Is_GPU_OP => CU_Decoder_0_Is_GPU_OP,
      Is_GPU_OP_out => Pipelining_Execution_0_Is_GPU_OP_out,
      Is_RAM_OP => CU_Decoder_0_Is_RAM_OP,
      Is_RAM_OP_out => NLW_Pipelining_Execution_0_Is_RAM_OP_out_UNCONNECTED,
      JMP => CU_Decoder_0_JMP,
      JMP_Condition(2 downto 0) => Decoder_0_JMP_Condition(2 downto 0),
      JMP_Condition_out(2 downto 0) => Pipelining_Execution_0_JMP_Condition_out(2 downto 0),
      JMP_Conditional => CU_Decoder_0_JMP_Conditional,
      JMP_Conditional_out => Pipelining_Execution_0_JMP_Conditional_out,
      JMP_DestinationSelect => CU_Decoder_0_JMP_DestinationSource,
      JMP_DestinationSelect_out => Pipelining_Execution_0_JMP_DestinationSelect_out,
      JMP_Relative => CU_Decoder_0_JMP_Relative,
      JMP_Relative_out => Pipelining_Execution_0_JMP_Relative_out,
      JMP_out => Pipelining_Execution_0_JMP_out,
      Operand1(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand1(15 downto 0),
      Operand1_out(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      Operand2(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand2(15 downto 0),
      Operand2_out(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0),
      RAM_BankID(3 downto 0) => RegFile_0_BankID(3 downto 0),
      RAM_BankID_out(3 downto 0) => Pipelining_Execution_0_RAM_BankID_out(3 downto 0),
      RAM_Read => CU_Decoder_0_RAM_Read,
      RAM_Read_out => Pipelining_Execution_0_RAM_Read_out,
      RAM_Src => CU_Decoder_0_RAM_Address_Src,
      RAM_Src_out => Pipelining_Execution_0_RAM_Src_out,
      RAM_Write => CU_Decoder_0_RAM_Write,
      RAM_Write_out => Pipelining_Execution_0_RAM_Write_out,
      Reset => Reset_1,
      WHB => CU_Decoder_0_RF_WHB,
      WHB_out => Pipelining_Execution_0_WHB_out,
      WLB => CU_Decoder_0_RF_WLB,
      WLB_out => Pipelining_Execution_0_WLB_out,
      WriteAddress(3 downto 0) => Decoder_0_WriteBackRegister(3 downto 0),
      WriteAddress_out(3 downto 0) => Pipelining_Execution_0_WriteAddress_out(3 downto 0),
      WriteDataSel(1 downto 0) => CU_Decoder_0_Write_Data_Sel(1 downto 0),
      WriteDataSel_out(1 downto 0) => Pipelining_Execution_0_WriteDataSel_out(1 downto 0)
    );
Pipelining_Forwarder_0: component main_Pipelining_Forwarder_0_0
     port map (
      CurrentOperand1(15 downto 0) => RegFile_0_Reg1_data(15 downto 0),
      CurrentOperand2(15 downto 0) => RegFile_0_Reg2_data(15 downto 0),
      ExecutionFlags(15 downto 0) => ALU_FLAG_PACKER_0_ALU_FLAGS(15 downto 0),
      ExecutionWriteData(15 downto 0) => CU_WriteSelector_0_Write_Data(15 downto 0),
      ForwardedOperand1(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand1(15 downto 0),
      ForwardedOperand2(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand2(15 downto 0),
      ForwardingConfiguration(3 downto 0) => Pipelining_Controller_0_InstructionForwardConfiguration(3 downto 0)
    );
Pipelining_WriteBack_0: component main_Pipelining_WriteBack_0_0
     port map (
      Flags(15 downto 0) => ALU_FLAG_PACKER_0_ALU_FLAGS(15 downto 0),
      Flags_out(15 downto 0) => Pipelining_WriteBack_0_Flags_out(15 downto 0),
      InstrLoad_CLK => InstrLoad_CLK_1,
      Is_ALU_OP => Pipelining_Execution_0_IS_ALU_OP_out,
      Is_ALU_OP_out => Pipelining_WriteBack_0_Is_ALU_OP_out,
      JMP => Pipelining_Execution_0_JMP_out,
      JMP_out => Pipelining_WriteBack_0_JMP_out,
      RF_WE_out => Pipelining_WriteBack_0_RF_WE_out,
      Reset => Reset_1,
      WHB => Pipelining_Execution_0_WHB_out,
      WLB => Pipelining_Execution_0_WLB_out,
      WriteAddress(3 downto 0) => Pipelining_Execution_0_WriteAddress_out(3 downto 0),
      WriteAddress_out(3 downto 0) => Pipelining_WriteBack_0_WriteAddress_out(3 downto 0),
      WriteData(15 downto 0) => CU_WriteSelector_0_Write_Data(15 downto 0),
      WriteData_out(15 downto 0) => Pipelining_WriteBack_0_WriteData_out(15 downto 0)
    );
ProgramCounter_0: component main_ProgramCounter_0_0
     port map (
      Din(15 downto 0) => CU_JumpController_0_PC_Next(15 downto 0),
      Dout(15 downto 0) => ProgramCounter_0_Dout(15 downto 0),
      InstrExec_CLK => clockcontroller_0_exec_clk,
      InstrLoad_CLK => InstrLoad_CLK_1,
      JMP => CU_JumpController_0_PC_Load,
      Reset => Reset_1,
      Stalled => Pipelining_Controller_0_Stalled
    );
RX_UART_0: component main_RX_UART_0_0
     port map (
      clk => Net,
      data_output(7 downto 0) => RX_UART_0_data_output(7 downto 0),
      data_valid => RX_UART_0_data_valid,
      rx_serial_input => RX_UART_IN_1
    );
RegFile_0: component main_RegFile_0_0
     port map (
      AddrReg1(3 downto 0) => Decoder_0_Register1(3 downto 0),
      AddrReg2(3 downto 0) => Decoder_0_Register2(3 downto 0),
      AddrWriteReg(3 downto 0) => Pipelining_WriteBack_0_WriteAddress_out(3 downto 0),
      BankID(3 downto 0) => RegFile_0_BankID(3 downto 0),
      Flags(15 downto 0) => Pipelining_WriteBack_0_Flags_out(15 downto 0),
      OverwriteFl => Pipelining_WriteBack_0_Is_ALU_OP_out,
      Reg1_data(15 downto 0) => RegFile_0_Reg1_data(15 downto 0),
      Reg2_data(15 downto 0) => RegFile_0_Reg2_data(15 downto 0),
      WE => Pipelining_WriteBack_0_RF_WE_out,
      WriteData(15 downto 0) => Pipelining_WriteBack_0_WriteData_out(15 downto 0),
      clk => clockcontroller_0_exec_clk
    );
TX_UART_0: component main_TX_UART_0_0
     port map (
      clk => Net,
      data_in(7 downto 0) => Debugger_0_tx_data(7 downto 0),
      data_valid => Debugger_0_tx_data_valid,
      send_valid => TX_UART_0_send_valid,
      tx_output => TX_UART_0_tx_output
    );
VGA_CPU_Bridge_0: component main_VGA_CPU_Bridge_0_0
     port map (
      Arg1_out(15 downto 0) => VGA_CPU_Bridge_0_Arg1_out(15 downto 0),
      Arg2_out(15 downto 0) => VGA_CPU_Bridge_0_Arg2_out(15 downto 0),
      GPU_Command_out(3 downto 0) => VGA_CPU_Bridge_0_GPU_Command_out(3 downto 0),
      Immediate_In(15 downto 0) => Pipelining_Execution_0_Immediate_out(15 downto 0),
      InstrExec_CLK => clockcontroller_0_exec_clk,
      IsGPU_OP => Pipelining_Execution_0_Is_GPU_OP_out,
      IsGPU_OP_out => VGA_CPU_Bridge_0_IsGPU_OP_out,
      Reg1_In(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      Reg2_In(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0),
      Reset => Reset_1
    );
VGA_Controller_0: component main_VGA_Controller_0_0
     port map (
      InstrExec_CLK => clockcontroller_0_exec_clk,
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
      ck_stable => clockcontroller_0_ck_stable,
      clk100mhz_in => clk100mhz_in_1,
      debug_clk => Net,
      debug_enable => Debugger_0_debug_enable,
      debug_mmu_override_enbale => Debugger_0_mmu_debug_override_en,
      debug_mock_clk => Debugger_0_cc_debug_mock_clk,
      debug_reset => Debugger_0_cc_debug_reset,
      exec_clk => clockcontroller_0_exec_clk,
      fault_reset => fault_reset_1,
      load_clk => InstrLoad_CLK_1
    );
mmio_0: component main_mmio_0_0
     port map (
      addr(15 downto 0) => mmu_0_mmio_mem_addr(15 downto 0),
      btn0 => btn0_1,
      btn1 => btn1_1,
      btn2 => btn2_1,
      btn3 => btn3_1,
      clk => mmu_0_mmio_mem_ck,
      din(15 downto 0) => mmu_0_mmio_mem_din(15 downto 0),
      dout(15 downto 0) => mmio_0_dout(15 downto 0),
      led0 => mmio_0_led0,
      led1 => mmio_0_led1,
      led2 => mmio_0_led2,
      led3 => mmio_0_led3,
      rho => mmio_0_rho,
      we => mmu_0_mmio_mem_we
    );
mmu_0: component main_mmu_0_0
     port map (
      ck_stable => clockcontroller_0_ck_stable,
      debug_addr(15 downto 0) => Debugger_0_mmu_debug_addr(15 downto 0),
      debug_bank(3 downto 0) => Debugger_0_mmu_debug_bank(3 downto 0),
      debug_clk => Debugger_0_mmu_debug_sync_clk100mhz,
      debug_din(15 downto 0) => Debugger_0_mmu_debug_din(15 downto 0),
      debug_dout(15 downto 0) => mmu_0_debug_dout(15 downto 0),
      debug_enable => Debugger_0_debug_enable,
      debug_override_enable => Debugger_0_mmu_debug_override_en,
      debug_we => Debugger_0_mmu_debug_we,
      exec_clk => clockcontroller_0_exec_clk,
      gpu_addr(15 downto 0) => GPU_0_VRAM_Addr(15 downto 0),
      gpu_clk => GPU_0_VRAM_CLK,
      gpu_din(11 downto 0) => GPU_0_VRAM_Dout(11 downto 0),
      gpu_dout(11 downto 0) => NLW_mmu_0_gpu_dout_UNCONNECTED(11 downto 0),
      gpu_we => GPU_0_VRAM_WE(0),
      gram_addr(15 downto 0) => CU_RAMAddressControl_0_RAM_Address(15 downto 0),
      gram_bank(3 downto 0) => Pipelining_Execution_0_RAM_BankID_out(3 downto 0),
      gram_din(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      gram_dout(15 downto 0) => mmu_0_gram_dout(15 downto 0),
      gram_oe => Pipelining_Execution_0_RAM_Read_out,
      gram_we => Pipelining_Execution_0_RAM_Write_out,
      iram_addr(15 downto 0) => ProgramCounter_0_Dout(15 downto 0),
      iram_dout(15 downto 0) => mmu_0_iram_dout(15 downto 0),
      mmio_mem_addr(15 downto 0) => mmu_0_mmio_mem_addr(15 downto 0),
      mmio_mem_ck => mmu_0_mmio_mem_ck,
      mmio_mem_din(15 downto 0) => mmu_0_mmio_mem_din(15 downto 0),
      mmio_mem_dout(15 downto 0) => mmio_0_dout(15 downto 0),
      mmio_mem_we => mmu_0_mmio_mem_we,
      vga_addr(15 downto 0) => VGA_Controller_0_VRAM_Addr(15 downto 0),
      vga_clk => VGA_Controller_0_VRAM_Clk,
      vga_dout(11 downto 0) => mmu_0_vga_dout(11 downto 0),
      vrama_mem_addr(15 downto 0) => mmu_0_vrama_mem_addr(15 downto 0),
      vrama_mem_ck => mmu_0_vrama_mem_ck,
      vrama_mem_din(11 downto 0) => mmu_0_vrama_mem_din(11 downto 0),
      vrama_mem_dout(11 downto 0) => vram_bram_douta(11 downto 0),
      vrama_mem_we(0) => mmu_0_vrama_mem_we(0),
      vramb_mem_addr(15 downto 0) => mmu_0_vramb_mem_addr(15 downto 0),
      vramb_mem_ck => mmu_0_vramb_mem_ck,
      vramb_mem_din(11 downto 0) => mmu_0_vramb_mem_din(11 downto 0),
      vramb_mem_dout(11 downto 0) => vram_bram_doutb(11 downto 0),
      vramb_mem_we(0) => mmu_0_vramb_mem_we(0)
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
