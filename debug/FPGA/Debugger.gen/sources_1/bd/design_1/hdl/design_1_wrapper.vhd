--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Sun Nov 17 18:55:48 2024
--Host        : DESKTOP-E8CIL9E running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    CLK100MHZ : in STD_LOGIC;
    rx_data_in : in STD_LOGIC;
    tx_data_out : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    CLK100MHZ : in STD_LOGIC;
    rx_data_in : in STD_LOGIC;
    tx_data_out : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      CLK100MHZ => CLK100MHZ,
      rx_data_in => rx_data_in,
      tx_data_out => tx_data_out
    );
end STRUCTURE;
