--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Sat Nov 23 15:06:57 2024
--Host        : DESKTOP-Q664A4O running 64-bit major release  (build 9200)
--Command     : generate_target clock_block_wrapper.bd
--Design      : clock_block_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_block_wrapper is
  port (
    ck_stable : out STD_LOGIC;
    clk100mhz_in : in STD_LOGIC;
    debug_clk : out STD_LOGIC;
    debug_en : in STD_LOGIC;
    debug_mock_clk : in STD_LOGIC;
    debug_reset : in STD_LOGIC;
    exec_clk : out STD_LOGIC;
    fault_reset : in STD_LOGIC;
    load_clk : out STD_LOGIC;
    test_state : inout STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end clock_block_wrapper;

architecture STRUCTURE of clock_block_wrapper is
  component clock_block is
  port (
    clk100mhz_in : in STD_LOGIC;
    fault_reset : in STD_LOGIC;
    debug_reset : in STD_LOGIC;
    debug_en : in STD_LOGIC;
    debug_mock_clk : in STD_LOGIC;
    load_clk : out STD_LOGIC;
    exec_clk : out STD_LOGIC;
    debug_clk : out STD_LOGIC;
    ck_stable : out STD_LOGIC;
    test_state : inout STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component clock_block;
begin
clock_block_i: component clock_block
     port map (
      ck_stable => ck_stable,
      clk100mhz_in => clk100mhz_in,
      debug_clk => debug_clk,
      debug_en => debug_en,
      debug_mock_clk => debug_mock_clk,
      debug_reset => debug_reset,
      exec_clk => exec_clk,
      fault_reset => fault_reset,
      load_clk => load_clk,
      test_state(3 downto 0) => test_state(3 downto 0)
    );
end STRUCTURE;
