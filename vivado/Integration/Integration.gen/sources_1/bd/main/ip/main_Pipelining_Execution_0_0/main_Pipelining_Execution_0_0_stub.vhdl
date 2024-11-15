-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Nov 15 10:21:31 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Pipelining_Execution_0_0/main_Pipelining_Execution_0_0_stub.vhdl
-- Design      : main_Pipelining_Execution_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_Pipelining_Execution_0_0 is
  Port ( 
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

end main_Pipelining_Execution_0_0;

architecture stub of main_Pipelining_Execution_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "InstrLoad_CLK,Reset,Operand1[15:0],Operand2[15:0],Immediate[15:0],MA[15:0],WriteAddress[3:0],WHB,WLB,WriteDataSel[1:0],RAM_Src,RAM_Read,RAM_Write,Use_MA,JMP,JMP_Conditional,JMP_Relative,JMP_DestinationSelect,JMP_Condition[2:0],Is_ALU_OP,Is_RAM_OP,Operand1_out[15:0],Operand2_out[15:0],Immediate_out[15:0],MA_out[15:0],WriteAddress_out[3:0],WHB_out,WLB_out,WriteDataSel_out[1:0],RAM_Src_out,RAM_Read_out,RAM_Write_out,Use_MA_out,JMP_out,JMP_Conditional_out,JMP_Relative_out,JMP_DestinationSelect_out,JMP_Condition_out[2:0],IS_ALU_OP_out,Is_RAM_OP_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Pipelining_ExecutionStage,Vivado 2024.1";
begin
end;
