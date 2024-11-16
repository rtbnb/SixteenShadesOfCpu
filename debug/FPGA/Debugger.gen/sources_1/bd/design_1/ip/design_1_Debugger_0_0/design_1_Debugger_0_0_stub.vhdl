-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Nov 16 22:58:55 2024
-- Host        : DESKTOP-E8CIL9E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Development/SixteenShadesOfCpu/debug/FPGA/Debugger.gen/sources_1/bd/design_1/ip/design_1_Debugger_0_0/design_1_Debugger_0_0_stub.vhdl
-- Design      : design_1_Debugger_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Debugger_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    b1 : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_data_valid : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_data_valid : out STD_LOGIC;
    tx_data_sended : in STD_LOGIC
  );

end design_1_Debugger_0_0;

architecture stub of design_1_Debugger_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,b1,rx_data[7:0],rx_data_valid,led[3:0],tx_data[7:0],tx_data_valid,tx_data_sended";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Debugger,Vivado 2024.1";
begin
end;
