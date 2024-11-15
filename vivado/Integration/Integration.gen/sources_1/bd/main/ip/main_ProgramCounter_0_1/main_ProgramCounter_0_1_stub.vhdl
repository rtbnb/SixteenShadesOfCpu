-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Nov 15 10:58:32 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_ProgramCounter_0_1/main_ProgramCounter_0_1_stub.vhdl
-- Design      : main_ProgramCounter_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_ProgramCounter_0_1 is
  Port ( 
    InstrExec_CLK : in STD_LOGIC;
    Stalled : in STD_LOGIC;
    JMP : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end main_ProgramCounter_0_1;

architecture stub of main_ProgramCounter_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "InstrExec_CLK,Stalled,JMP,Reset,Din[15:0],Dout[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ProgramCounter,Vivado 2024.1";
begin
end;
