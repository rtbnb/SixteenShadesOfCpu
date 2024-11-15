-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Nov 14 17:58:38 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_JumpDestinationSe_0_0/main_CU_JumpDestinationSe_0_0_stub.vhdl
-- Design      : main_CU_JumpDestinationSe_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_CU_JumpDestinationSe_0_0 is
  Port ( 
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Register1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_DestinationSelect : in STD_LOGIC;
    JMP_Address : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end main_CU_JumpDestinationSe_0_0;

architecture stub of main_CU_JumpDestinationSe_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Immediate[15:0],Register1[15:0],JMP_DestinationSelect,JMP_Address[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "CU_JumpDestinationSelector,Vivado 2024.1";
begin
end;
