-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Nov  6 16:20:55 2024
-- Host        : Robin_Laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Entwicklung/SixteenShadesOfCpu/vivado/memory_tryout/memory_tryout.gen/sources_1/bd/main_block/ip/main_block_main_0_0/main_block_main_0_0_stub.vhdl
-- Design      : main_block_main_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_block_main_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    led : out STD_LOGIC;
    addr1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    addr2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    din1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    din2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    we : out STD_LOGIC;
    oe : out STD_LOGIC;
    dout1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout2 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end main_block_main_0_0;

architecture stub of main_block_main_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,led,addr1[15:0],addr2[15:0],din1[15:0],din2[15:0],we,oe,dout1[15:0],dout2[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "main,Vivado 2024.1";
begin
end;
