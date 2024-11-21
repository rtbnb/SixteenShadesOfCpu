--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Thu Nov 21 09:02:30 2024
--Host        : BOOK-69BD3QPCMV running 64-bit major release  (build 9200)
--Command     : generate_target main_wrapper.bd
--Design      : main_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_wrapper is
  port (
    Reset : in STD_LOGIC;
    clk100mhz_in : in STD_LOGIC;
    led : out STD_LOGIC
  );
end main_wrapper;

architecture STRUCTURE of main_wrapper is
  component main is
  port (
    Reset : in STD_LOGIC;
    led : out STD_LOGIC;
    clk100mhz_in : in STD_LOGIC
  );
  end component main;
begin
main_i: component main
     port map (
      Reset => Reset,
      clk100mhz_in => clk100mhz_in,
      led => led
    );
end STRUCTURE;
