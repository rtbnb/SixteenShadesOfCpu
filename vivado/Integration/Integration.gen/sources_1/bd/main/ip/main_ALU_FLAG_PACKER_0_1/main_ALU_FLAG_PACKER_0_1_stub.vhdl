-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Nov 14 17:58:38 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_ALU_FLAG_PACKER_0_1/main_ALU_FLAG_PACKER_0_1_stub.vhdl
-- Design      : main_ALU_FLAG_PACKER_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_ALU_FLAG_PACKER_0_1 is
  Port ( 
    CARRY_FLAG : in STD_LOGIC;
    ZERO_FLAG : in STD_LOGIC;
    SMALLER_ZERO_FLAG : in STD_LOGIC;
    BIGGER_ZERO_FLAG : in STD_LOGIC;
    OVERFLOW_FLAG : in STD_LOGIC;
    RHO_FLAG : in STD_LOGIC;
    NOT_ZERO_FLAG : in STD_LOGIC;
    ALU_FLAGS : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end main_ALU_FLAG_PACKER_0_1;

architecture stub of main_ALU_FLAG_PACKER_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CARRY_FLAG,ZERO_FLAG,SMALLER_ZERO_FLAG,BIGGER_ZERO_FLAG,OVERFLOW_FLAG,RHO_FLAG,NOT_ZERO_FLAG,ALU_FLAGS[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ALU_FLAG_PACKER,Vivado 2024.1";
begin
end;
