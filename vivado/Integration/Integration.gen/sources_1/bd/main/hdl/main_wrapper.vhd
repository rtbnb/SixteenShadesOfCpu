--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Mon Nov 18 20:44:55 2024
--Host        : DESKTOP-E8CIL9E running 64-bit major release  (build 9200)
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
    CLK100MHZ : in STD_LOGIC;
    RX_UART_IN : in STD_LOGIC;
    Reset : in STD_LOGIC;
    TX_UART_OUT : out STD_LOGIC;
    led : out STD_LOGIC
  );
end main_wrapper;

architecture STRUCTURE of main_wrapper is
  component main is
  port (
    Reset : in STD_LOGIC;
    led : out STD_LOGIC;
    TX_UART_OUT : out STD_LOGIC;
    RX_UART_IN : in STD_LOGIC;
    CLK100MHZ : in STD_LOGIC
  );
  end component main;
begin
main_i: component main
     port map (
      CLK100MHZ => CLK100MHZ,
      RX_UART_IN => RX_UART_IN,
      Reset => Reset,
      TX_UART_OUT => TX_UART_OUT,
      led => led
    );
end STRUCTURE;
