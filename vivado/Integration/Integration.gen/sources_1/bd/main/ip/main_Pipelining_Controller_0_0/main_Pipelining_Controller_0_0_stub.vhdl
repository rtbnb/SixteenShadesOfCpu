-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Nov 15 10:21:31 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Pipelining_Controller_0_0/main_Pipelining_Controller_0_0_stub.vhdl
-- Design      : main_Pipelining_Controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_Pipelining_Controller_0_0 is
  Port ( 
    InstrLoad_CLK : in STD_LOGIC;
    InstrExec_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ResolveStall : in STD_LOGIC;
    Stalled : out STD_LOGIC;
    InstructionForwardConfiguration : out STD_LOGIC_VECTOR ( 4 downto 0 );
    InstructionToExecute : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end main_Pipelining_Controller_0_0;

architecture stub of main_Pipelining_Controller_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "InstrLoad_CLK,InstrExec_CLK,Reset,Instruction[15:0],ResolveStall,Stalled,InstructionForwardConfiguration[4:0],InstructionToExecute[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Pipelining_Controller,Vivado 2024.1";
begin
end;
