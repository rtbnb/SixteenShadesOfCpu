-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Nov 22 12:43:43 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA_CPU/vivado/VGA_Controller/VGA_Controller.gen/sources_1/bd/TestBlockDesign/ip/TestBlockDesign_VGA_Controller_0_0/TestBlockDesign_VGA_Controller_0_0_stub.vhdl
-- Design      : TestBlockDesign_VGA_Controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TestBlockDesign_VGA_Controller_0_0 is
  Port ( 
    InstrExec_CLK : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ioe : out STD_LOGIC;
    h_sync : out STD_LOGIC;
    v_sync : out STD_LOGIC;
    VRAM_Addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    VRAM_Data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    VRAM_Clk : out STD_LOGIC
  );

end TestBlockDesign_VGA_Controller_0_0;

architecture stub of TestBlockDesign_VGA_Controller_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "InstrExec_CLK,r[3:0],g[3:0],b[3:0],ioe,h_sync,v_sync,VRAM_Addr[15:0],VRAM_Data[15:0],VRAM_Clk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "VGA_Controller,Vivado 2024.1";
begin
end;
