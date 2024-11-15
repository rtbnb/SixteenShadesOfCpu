-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Nov 15 11:23:48 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_JumpController_0_0/main_CU_JumpController_0_0_stub.vhdl
-- Design      : main_CU_JumpController_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_CU_JumpController_0_0 is
  Port ( 
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

end main_CU_JumpController_0_0;

architecture stub of main_CU_JumpController_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "InstrExec_CLK,JMP,JMP_Conditional,JMP_Relative,JMP_Condition[2:0],Flags[15:0],JMP_Address[15:0],PC_Current[15:0],PC_Load,PC_Next[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "CU_JumpController,Vivado 2024.1";
begin
end;
