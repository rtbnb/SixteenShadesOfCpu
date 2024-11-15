-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Nov 15 10:21:31 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Pipelining_WriteBack_0_0/main_Pipelining_WriteBack_0_0_stub.vhdl
-- Design      : main_Pipelining_WriteBack_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_Pipelining_WriteBack_0_0 is
  Port ( 
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

end main_Pipelining_WriteBack_0_0;

architecture stub of main_Pipelining_WriteBack_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "InstrLoad_CLK,Reset,WriteAddress[3:0],WriteData[15:0],Flags[15:0],WHB,WLB,Is_ALU_OP,JMP,WriteAddress_out[3:0],WriteData_out[15:0],Flags_out[15:0],RF_WE_out,Is_ALU_OP_out,JMP_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Pipelining_WriteBackStage,Vivado 2024.1";
begin
end;
