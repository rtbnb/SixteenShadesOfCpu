-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Nov 15 10:21:31 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Pipelining_Execution_0_0/main_Pipelining_Execution_0_0_sim_netlist.vhdl
-- Design      : main_Pipelining_Execution_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_Pipelining_Execution_0_0_Pipelining_ExecutionStage is
  port (
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
    Is_RAM_OP_out : out STD_LOGIC;
    Operand1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    InstrLoad_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
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
    Is_RAM_OP : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_Pipelining_Execution_0_0_Pipelining_ExecutionStage : entity is "Pipelining_ExecutionStage";
end main_Pipelining_Execution_0_0_Pipelining_ExecutionStage;

architecture STRUCTURE of main_Pipelining_Execution_0_0_Pipelining_ExecutionStage is
begin
\immediate_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(0),
      Q => Immediate_out(0)
    );
\immediate_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(10),
      Q => Immediate_out(10)
    );
\immediate_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(11),
      Q => Immediate_out(11)
    );
\immediate_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(12),
      Q => Immediate_out(12)
    );
\immediate_s_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(13),
      Q => Immediate_out(13)
    );
\immediate_s_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(14),
      Q => Immediate_out(14)
    );
\immediate_s_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(15),
      Q => Immediate_out(15)
    );
\immediate_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(1),
      Q => Immediate_out(1)
    );
\immediate_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(2),
      Q => Immediate_out(2)
    );
\immediate_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(3),
      Q => Immediate_out(3)
    );
\immediate_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(4),
      Q => Immediate_out(4)
    );
\immediate_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(5),
      Q => Immediate_out(5)
    );
\immediate_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(6),
      Q => Immediate_out(6)
    );
\immediate_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(7),
      Q => Immediate_out(7)
    );
\immediate_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(8),
      Q => Immediate_out(8)
    );
\immediate_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(9),
      Q => Immediate_out(9)
    );
is_alu_op_s_reg: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Is_ALU_OP,
      Q => IS_ALU_OP_out
    );
is_ram_op_s_reg: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Is_RAM_OP,
      Q => Is_RAM_OP_out
    );
\jmp_condition_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP_Condition(0),
      Q => JMP_Condition_out(0)
    );
\jmp_condition_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP_Condition(1),
      Q => JMP_Condition_out(1)
    );
\jmp_condition_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP_Condition(2),
      Q => JMP_Condition_out(2)
    );
jmp_conditional_s_reg: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP_Conditional,
      Q => JMP_Conditional_out
    );
jmp_destination_sel_s_reg: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP_DestinationSelect,
      Q => JMP_DestinationSelect_out
    );
jmp_relative_s_reg: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP_Relative,
      Q => JMP_Relative_out
    );
jmp_s_reg: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP,
      Q => JMP_out
    );
\ma_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(0),
      Q => MA_out(0)
    );
\ma_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(10),
      Q => MA_out(10)
    );
\ma_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(11),
      Q => MA_out(11)
    );
\ma_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(12),
      Q => MA_out(12)
    );
\ma_s_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(13),
      Q => MA_out(13)
    );
\ma_s_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(14),
      Q => MA_out(14)
    );
\ma_s_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(15),
      Q => MA_out(15)
    );
\ma_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(1),
      Q => MA_out(1)
    );
\ma_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(2),
      Q => MA_out(2)
    );
\ma_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(3),
      Q => MA_out(3)
    );
\ma_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(4),
      Q => MA_out(4)
    );
\ma_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(5),
      Q => MA_out(5)
    );
\ma_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(6),
      Q => MA_out(6)
    );
\ma_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(7),
      Q => MA_out(7)
    );
\ma_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(8),
      Q => MA_out(8)
    );
\ma_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(9),
      Q => MA_out(9)
    );
\operand1_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(0),
      Q => Operand1_out(0)
    );
\operand1_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(10),
      Q => Operand1_out(10)
    );
\operand1_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(11),
      Q => Operand1_out(11)
    );
\operand1_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(12),
      Q => Operand1_out(12)
    );
\operand1_s_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(13),
      Q => Operand1_out(13)
    );
\operand1_s_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(14),
      Q => Operand1_out(14)
    );
\operand1_s_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(15),
      Q => Operand1_out(15)
    );
\operand1_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(1),
      Q => Operand1_out(1)
    );
\operand1_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(2),
      Q => Operand1_out(2)
    );
\operand1_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(3),
      Q => Operand1_out(3)
    );
\operand1_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(4),
      Q => Operand1_out(4)
    );
\operand1_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(5),
      Q => Operand1_out(5)
    );
\operand1_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(6),
      Q => Operand1_out(6)
    );
\operand1_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(7),
      Q => Operand1_out(7)
    );
\operand1_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(8),
      Q => Operand1_out(8)
    );
\operand1_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(9),
      Q => Operand1_out(9)
    );
\operand2_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(0),
      Q => Operand2_out(0)
    );
\operand2_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(10),
      Q => Operand2_out(10)
    );
\operand2_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(11),
      Q => Operand2_out(11)
    );
\operand2_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(12),
      Q => Operand2_out(12)
    );
\operand2_s_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(13),
      Q => Operand2_out(13)
    );
\operand2_s_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(14),
      Q => Operand2_out(14)
    );
\operand2_s_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(15),
      Q => Operand2_out(15)
    );
\operand2_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(1),
      Q => Operand2_out(1)
    );
\operand2_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(2),
      Q => Operand2_out(2)
    );
\operand2_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(3),
      Q => Operand2_out(3)
    );
\operand2_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(4),
      Q => Operand2_out(4)
    );
\operand2_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(5),
      Q => Operand2_out(5)
    );
\operand2_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(6),
      Q => Operand2_out(6)
    );
\operand2_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(7),
      Q => Operand2_out(7)
    );
\operand2_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(8),
      Q => Operand2_out(8)
    );
\operand2_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(9),
      Q => Operand2_out(9)
    );
ram_read_s_reg: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => RAM_Read,
      Q => RAM_Read_out
    );
ram_src_s_reg: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => RAM_Src,
      Q => RAM_Src_out
    );
ram_write_s_reg: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => RAM_Write,
      Q => RAM_Write_out
    );
use_ma_s_reg: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Use_MA,
      Q => Use_MA_out
    );
whb_s_reg: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WHB,
      Q => WHB_out
    );
wlb_s_reg: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WLB,
      Q => WLB_out
    );
\write_address_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(0),
      Q => WriteAddress_out(0)
    );
\write_address_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(1),
      Q => WriteAddress_out(1)
    );
\write_address_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(2),
      Q => WriteAddress_out(2)
    );
\write_address_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(3),
      Q => WriteAddress_out(3)
    );
\write_data_select_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteDataSel(0),
      Q => WriteDataSel_out(0)
    );
\write_data_select_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteDataSel(1),
      Q => WriteDataSel_out(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_Pipelining_Execution_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_Pipelining_Execution_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_Pipelining_Execution_0_0 : entity is "main_Pipelining_Execution_0_0,Pipelining_ExecutionStage,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_Pipelining_Execution_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_Pipelining_Execution_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_Pipelining_Execution_0_0 : entity is "Pipelining_ExecutionStage,Vivado 2024.1";
end main_Pipelining_Execution_0_0;

architecture STRUCTURE of main_Pipelining_Execution_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of InstrLoad_CLK : signal is "xilinx.com:signal:clock:1.0 InstrLoad_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of InstrLoad_CLK : signal is "XIL_INTERFACENAME InstrLoad_CLK, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.main_Pipelining_Execution_0_0_Pipelining_ExecutionStage
     port map (
      IS_ALU_OP_out => IS_ALU_OP_out,
      Immediate(15 downto 0) => Immediate(15 downto 0),
      Immediate_out(15 downto 0) => Immediate_out(15 downto 0),
      InstrLoad_CLK => InstrLoad_CLK,
      Is_ALU_OP => Is_ALU_OP,
      Is_RAM_OP => Is_RAM_OP,
      Is_RAM_OP_out => Is_RAM_OP_out,
      JMP => JMP,
      JMP_Condition(2 downto 0) => JMP_Condition(2 downto 0),
      JMP_Condition_out(2 downto 0) => JMP_Condition_out(2 downto 0),
      JMP_Conditional => JMP_Conditional,
      JMP_Conditional_out => JMP_Conditional_out,
      JMP_DestinationSelect => JMP_DestinationSelect,
      JMP_DestinationSelect_out => JMP_DestinationSelect_out,
      JMP_Relative => JMP_Relative,
      JMP_Relative_out => JMP_Relative_out,
      JMP_out => JMP_out,
      MA(15 downto 0) => MA(15 downto 0),
      MA_out(15 downto 0) => MA_out(15 downto 0),
      Operand1(15 downto 0) => Operand1(15 downto 0),
      Operand1_out(15 downto 0) => Operand1_out(15 downto 0),
      Operand2(15 downto 0) => Operand2(15 downto 0),
      Operand2_out(15 downto 0) => Operand2_out(15 downto 0),
      RAM_Read => RAM_Read,
      RAM_Read_out => RAM_Read_out,
      RAM_Src => RAM_Src,
      RAM_Src_out => RAM_Src_out,
      RAM_Write => RAM_Write,
      RAM_Write_out => RAM_Write_out,
      Reset => Reset,
      Use_MA => Use_MA,
      Use_MA_out => Use_MA_out,
      WHB => WHB,
      WHB_out => WHB_out,
      WLB => WLB,
      WLB_out => WLB_out,
      WriteAddress(3 downto 0) => WriteAddress(3 downto 0),
      WriteAddress_out(3 downto 0) => WriteAddress_out(3 downto 0),
      WriteDataSel(1 downto 0) => WriteDataSel(1 downto 0),
      WriteDataSel_out(1 downto 0) => WriteDataSel_out(1 downto 0)
    );
end STRUCTURE;
