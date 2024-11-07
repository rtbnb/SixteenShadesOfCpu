--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Thu Nov  7 15:52:45 2024
--Host        : Robin_Laptop running 64-bit major release  (build 9200)
--Command     : generate_target main_block_wrapper.bd
--Design      : main_block_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_block_wrapper is
  port (
    addr1_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk100mhz : in STD_LOGIC;
    din1_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout1_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    led : out STD_LOGIC;
    mem_clk : out STD_LOGIC;
    oe_t : out STD_LOGIC;
    should_read : in STD_LOGIC;
    should_write : in STD_LOGIC;
    test_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    test_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    test_write : in STD_LOGIC;
    we_t : out STD_LOGIC
  );
end main_block_wrapper;

architecture STRUCTURE of main_block_wrapper is
  component main_block is
  port (
    clk100mhz : in STD_LOGIC;
    led : out STD_LOGIC;
    dout1_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    addr1_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    din1_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    oe_t : out STD_LOGIC;
    we_t : out STD_LOGIC;
    test_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    test_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    test_write : in STD_LOGIC;
    mem_clk : out STD_LOGIC;
    should_write : in STD_LOGIC;
    should_read : in STD_LOGIC
  );
  end component main_block;
begin
main_block_i: component main_block
     port map (
      addr1_t(15 downto 0) => addr1_t(15 downto 0),
      clk100mhz => clk100mhz,
      din1_t(15 downto 0) => din1_t(15 downto 0),
      dout1_t(15 downto 0) => dout1_t(15 downto 0),
      led => led,
      mem_clk => mem_clk,
      oe_t => oe_t,
      should_read => should_read,
      should_write => should_write,
      test_addr(15 downto 0) => test_addr(15 downto 0),
      test_data(15 downto 0) => test_data(15 downto 0),
      test_write => test_write,
      we_t => we_t
    );
end STRUCTURE;
