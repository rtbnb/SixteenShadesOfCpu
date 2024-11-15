--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Fri Nov 15 11:40:03 2024
--Host        : 8x8-Bit running 64-bit major release  (build 9200)
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
    InstrExec_CLK : in STD_LOGIC;
    InstrLoad_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    led : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of main : entity is "main,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=main,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=17,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=17,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=7,synth_mode=Hierarchical}";
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
    InstructionForwardConfiguration : out STD_LOGIC_VECTOR ( 4 downto 0 );
    InstructionToExecute : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_Pipelining_Controller_0_0;
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
    Is_RAM_OP : out STD_LOGIC
  );
  end component main_CU_Decoder_0_0;
  component main_Decoder_0_0 is
  port (
    Instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Register1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Register2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteBackRegister : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Immediate : out STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_Condition : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Use_MA : out STD_LOGIC
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
    RegMA_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BankID : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component main_RegFile_0_0;
  component main_Pipelining_Forwarder_0_0 is
  port (
    CurrentOperand1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentOperand2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentMA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ExecutionWriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ExecutionFlags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ForwardingConfiguration : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ForwardedOperand1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ForwardedOperand2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ForwardedMA : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_Pipelining_Forwarder_0_0;
  component main_Pipelining_Execution_0_0 is
  port (
    InstrLoad_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Operand1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Operand2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WriteAddress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WHB : in STD_LOGIC;
    WLB : in STD_LOGIC;
    WriteDataSel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RAM_Src : in STD_LOGIC;
    RAM_Read : in STD_LOGIC;
    RAM_Write : in STD_LOGIC;
    Use_MA : in STD_LOGIC;
    JMP : in STD_LOGIC;
    JMP_Conditional : in STD_LOGIC;
    JMP_Relative : in STD_LOGIC;
    JMP_DestinationSelect : in STD_LOGIC;
    JMP_Condition : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Is_ALU_OP : in STD_LOGIC;
    Is_RAM_OP : in STD_LOGIC;
    Operand1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Operand2_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    MA_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    WriteAddress_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WHB_out : out STD_LOGIC;
    WLB_out : out STD_LOGIC;
    WriteDataSel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RAM_Src_out : out STD_LOGIC;
    RAM_Read_out : out STD_LOGIC;
    RAM_Write_out : out STD_LOGIC;
    Use_MA_out : out STD_LOGIC;
    JMP_out : out STD_LOGIC;
    JMP_Conditional_out : out STD_LOGIC;
    JMP_Relative_out : out STD_LOGIC;
    JMP_DestinationSelect_out : out STD_LOGIC;
    JMP_Condition_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IS_ALU_OP_out : out STD_LOGIC;
    Is_RAM_OP_out : out STD_LOGIC
  );
  end component main_Pipelining_Execution_0_0;
  component main_CU_RAMAddressControl_0_0 is
  port (
    Reg2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RAM_Address_Src : in STD_LOGIC;
    Use_MA : in STD_LOGIC;
    RAM_Address : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_CU_RAMAddressControl_0_0;
  component main_ALU_0_0 is
  port (
    D1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    D2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ALU_OPP : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
  component main_IROM_0_1 is
  port (
    Address : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_IROM_0_1;
  component main_RAM_Placeholder_0_0 is
  port (
    Address : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DataIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WE : in STD_LOGIC;
    OE : in STD_LOGIC;
    CLK : in STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_RAM_Placeholder_0_0;
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
  component main_ProgramCounter_0_1 is
  port (
    InstrExec_CLK : in STD_LOGIC;
    Stalled : in STD_LOGIC;
    JMP : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_ProgramCounter_0_1;
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
  signal Decoder_0_Immediate : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Decoder_0_JMP_Condition : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Decoder_0_Register1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Decoder_0_Register2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Decoder_0_Use_MA : STD_LOGIC;
  signal Decoder_0_WriteBackRegister : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IROM_0_Data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal InstrExec_CLK_1 : STD_LOGIC;
  signal InstrLoad_CLK_1 : STD_LOGIC;
  signal Pipelining_Controller_0_InstructionForwardConfiguration : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Pipelining_Controller_0_InstructionToExecute : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Controller_0_Stalled : STD_LOGIC;
  signal Pipelining_Execution_0_IS_ALU_OP_out : STD_LOGIC;
  signal Pipelining_Execution_0_Immediate_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Execution_0_JMP_Condition_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Pipelining_Execution_0_JMP_Conditional_out : STD_LOGIC;
  signal Pipelining_Execution_0_JMP_DestinationSelect_out : STD_LOGIC;
  signal Pipelining_Execution_0_JMP_Relative_out : STD_LOGIC;
  signal Pipelining_Execution_0_JMP_out : STD_LOGIC;
  signal Pipelining_Execution_0_MA_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Execution_0_Operand1_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Execution_0_Operand2_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Execution_0_RAM_Read_out : STD_LOGIC;
  signal Pipelining_Execution_0_RAM_Src_out : STD_LOGIC;
  signal Pipelining_Execution_0_RAM_Write_out : STD_LOGIC;
  signal Pipelining_Execution_0_Use_MA_out : STD_LOGIC;
  signal Pipelining_Execution_0_WHB_out : STD_LOGIC;
  signal Pipelining_Execution_0_WLB_out : STD_LOGIC;
  signal Pipelining_Execution_0_WriteAddress_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Pipelining_Execution_0_WriteDataSel_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Pipelining_Forwarder_0_ForwardedMA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Forwarder_0_ForwardedOperand1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Forwarder_0_ForwardedOperand2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_WriteBack_0_Flags_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_WriteBack_0_Is_ALU_OP_out : STD_LOGIC;
  signal Pipelining_WriteBack_0_JMP_out : STD_LOGIC;
  signal Pipelining_WriteBack_0_RF_WE_out : STD_LOGIC;
  signal Pipelining_WriteBack_0_WriteAddress_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Pipelining_WriteBack_0_WriteData_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ProgramCounter_0_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RAM_Placeholder_0_DataOut : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RegFile_0_Reg1_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RegFile_0_Reg2_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RegFile_0_RegMA_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Reset_1 : STD_LOGIC;
  signal NLW_CU_Decoder_0_Reg1Read_UNCONNECTED : STD_LOGIC;
  signal NLW_CU_Decoder_0_Reg2Read_UNCONNECTED : STD_LOGIC;
  signal NLW_Pipelining_Execution_0_Is_RAM_OP_out_UNCONNECTED : STD_LOGIC;
  signal NLW_RegFile_0_BankID_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  InstrExec_CLK_1 <= InstrExec_CLK;
  InstrLoad_CLK_1 <= InstrLoad_CLK;
  Reset_1 <= Reset;
  led <= Pipelining_WriteBack_0_JMP_out;
ALU_0: component main_ALU_0_0
     port map (
      ALU_OPP(15 downto 0) => Pipelining_Execution_0_Immediate_out(15 downto 0),
      ALU_OUT(15 downto 0) => ALU_0_ALU_OUT(15 downto 0),
      BIGGER_ZERO_FLAG => ALU_0_BIGGER_ZERO_FLAG,
      CARRY_FLAG => ALU_0_CARRY_FLAG,
      D1(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      D2(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0),
      NOT_ZERO_FLAG => ALU_0_NOT_ZERO_FLAG,
      OVERFLOW_FLAG => ALU_0_OVERFLOW_FLAG,
      RHO_FLAG => ALU_0_RHO_FLAG,
      RHO_PIN => '0',
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
      InstrExec_CLK => InstrExec_CLK_1,
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
      MA(15 downto 0) => Pipelining_Execution_0_MA_out(15 downto 0),
      RAM_Address(15 downto 0) => CU_RAMAddressControl_0_RAM_Address(15 downto 0),
      RAM_Address_Src => Pipelining_Execution_0_RAM_Src_out,
      Reg2(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0),
      Use_MA => Pipelining_Execution_0_Use_MA_out
    );
CU_WriteSelector_0: component main_CU_WriteSelector_0_0
     port map (
      ALU_Out(15 downto 0) => ALU_0_ALU_OUT(15 downto 0),
      Manipulated_Immidiate(15 downto 0) => CU_ImmediateManipula_0_ManipulatedImmidiate(15 downto 0),
      RAM_Out(15 downto 0) => RAM_Placeholder_0_DataOut(15 downto 0),
      Reg1(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      Write_Data(15 downto 0) => CU_WriteSelector_0_Write_Data(15 downto 0),
      Write_Sel(1 downto 0) => Pipelining_Execution_0_WriteDataSel_out(1 downto 0)
    );
Decoder_0: component main_Decoder_0_0
     port map (
      Immediate(15 downto 0) => Decoder_0_Immediate(15 downto 0),
      Instruction(15 downto 0) => Pipelining_Controller_0_InstructionToExecute(15 downto 0),
      JMP_Condition(2 downto 0) => Decoder_0_JMP_Condition(2 downto 0),
      Register1(3 downto 0) => Decoder_0_Register1(3 downto 0),
      Register2(3 downto 0) => Decoder_0_Register2(3 downto 0),
      Use_MA => Decoder_0_Use_MA,
      WriteBackRegister(3 downto 0) => Decoder_0_WriteBackRegister(3 downto 0)
    );
IROM_0: component main_IROM_0_1
     port map (
      Address(15 downto 0) => ProgramCounter_0_Dout(15 downto 0),
      Data(15 downto 0) => IROM_0_Data(15 downto 0)
    );
Pipelining_Controller_0: component main_Pipelining_Controller_0_0
     port map (
      InstrExec_CLK => InstrExec_CLK_1,
      InstrLoad_CLK => InstrLoad_CLK_1,
      Instruction(15 downto 0) => IROM_0_Data(15 downto 0),
      InstructionForwardConfiguration(4 downto 0) => Pipelining_Controller_0_InstructionForwardConfiguration(4 downto 0),
      InstructionToExecute(15 downto 0) => Pipelining_Controller_0_InstructionToExecute(15 downto 0),
      Reset => Reset_1,
      ResolveStall => Pipelining_Execution_0_JMP_out,
      Stalled => Pipelining_Controller_0_Stalled
    );
Pipelining_Execution_0: component main_Pipelining_Execution_0_0
     port map (
      IS_ALU_OP_out => Pipelining_Execution_0_IS_ALU_OP_out,
      Immediate(15 downto 0) => Decoder_0_Immediate(15 downto 0),
      Immediate_out(15 downto 0) => Pipelining_Execution_0_Immediate_out(15 downto 0),
      InstrLoad_CLK => InstrLoad_CLK_1,
      Is_ALU_OP => CU_Decoder_0_Is_ALU_OP,
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
      MA(15 downto 0) => Pipelining_Forwarder_0_ForwardedMA(15 downto 0),
      MA_out(15 downto 0) => Pipelining_Execution_0_MA_out(15 downto 0),
      Operand1(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand1(15 downto 0),
      Operand1_out(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      Operand2(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand2(15 downto 0),
      Operand2_out(15 downto 0) => Pipelining_Execution_0_Operand2_out(15 downto 0),
      RAM_Read => CU_Decoder_0_RAM_Read,
      RAM_Read_out => Pipelining_Execution_0_RAM_Read_out,
      RAM_Src => CU_Decoder_0_RAM_Address_Src,
      RAM_Src_out => Pipelining_Execution_0_RAM_Src_out,
      RAM_Write => CU_Decoder_0_RAM_Write,
      RAM_Write_out => Pipelining_Execution_0_RAM_Write_out,
      Reset => Reset_1,
      Use_MA => Decoder_0_Use_MA,
      Use_MA_out => Pipelining_Execution_0_Use_MA_out,
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
      CurrentMA(15 downto 0) => RegFile_0_RegMA_data(15 downto 0),
      CurrentOperand1(15 downto 0) => RegFile_0_Reg1_data(15 downto 0),
      CurrentOperand2(15 downto 0) => RegFile_0_Reg2_data(15 downto 0),
      ExecutionFlags(15 downto 0) => ALU_FLAG_PACKER_0_ALU_FLAGS(15 downto 0),
      ExecutionWriteData(15 downto 0) => CU_WriteSelector_0_Write_Data(15 downto 0),
      ForwardedMA(15 downto 0) => Pipelining_Forwarder_0_ForwardedMA(15 downto 0),
      ForwardedOperand1(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand1(15 downto 0),
      ForwardedOperand2(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand2(15 downto 0),
      ForwardingConfiguration(4 downto 0) => Pipelining_Controller_0_InstructionForwardConfiguration(4 downto 0)
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
ProgramCounter_0: component main_ProgramCounter_0_1
     port map (
      Din(15 downto 0) => CU_JumpController_0_PC_Next(15 downto 0),
      Dout(15 downto 0) => ProgramCounter_0_Dout(15 downto 0),
      InstrExec_CLK => InstrExec_CLK_1,
      JMP => CU_JumpController_0_PC_Load,
      Reset => Reset_1,
      Stalled => Pipelining_Controller_0_Stalled
    );
RAM_Placeholder_0: component main_RAM_Placeholder_0_0
     port map (
      Address(15 downto 0) => CU_RAMAddressControl_0_RAM_Address(15 downto 0),
      CLK => InstrExec_CLK_1,
      DataIn(15 downto 0) => Pipelining_Execution_0_Operand1_out(15 downto 0),
      DataOut(15 downto 0) => RAM_Placeholder_0_DataOut(15 downto 0),
      OE => Pipelining_Execution_0_RAM_Read_out,
      WE => Pipelining_Execution_0_RAM_Write_out
    );
RegFile_0: component main_RegFile_0_0
     port map (
      AddrReg1(3 downto 0) => Decoder_0_Register1(3 downto 0),
      AddrReg2(3 downto 0) => Decoder_0_Register2(3 downto 0),
      AddrWriteReg(3 downto 0) => Pipelining_WriteBack_0_WriteAddress_out(3 downto 0),
      BankID(3 downto 0) => NLW_RegFile_0_BankID_UNCONNECTED(3 downto 0),
      Flags(15 downto 0) => Pipelining_WriteBack_0_Flags_out(15 downto 0),
      OverwriteFl => Pipelining_WriteBack_0_Is_ALU_OP_out,
      Reg1_data(15 downto 0) => RegFile_0_Reg1_data(15 downto 0),
      Reg2_data(15 downto 0) => RegFile_0_Reg2_data(15 downto 0),
      RegMA_data(15 downto 0) => RegFile_0_RegMA_data(15 downto 0),
      WE => Pipelining_WriteBack_0_RF_WE_out,
      WriteData(15 downto 0) => Pipelining_WriteBack_0_WriteData_out(15 downto 0),
      clk => InstrExec_CLK_1
    );
end STRUCTURE;
