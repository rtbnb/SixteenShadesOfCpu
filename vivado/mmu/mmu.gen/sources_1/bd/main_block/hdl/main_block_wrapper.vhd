--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Sat Nov 23 15:24:54 2024
--Host        : DESKTOP-Q664A4O running 64-bit major release  (build 9200)
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
    btn0 : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    btn3 : in STD_LOGIC;
    clk100mhz_in : in STD_LOGIC;
    debug_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_clk : in STD_LOGIC;
    debug_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_enable : in STD_LOGIC;
    debug_mock_clk_1 : in STD_LOGIC;
    debug_override_enable : in STD_LOGIC;
    debug_reset : in STD_LOGIC;
    debug_we : in STD_LOGIC;
    fault_reset : in STD_LOGIC;
    gpu_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gpu_clk : in STD_LOGIC;
    gpu_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    gpu_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    gpu_we : in STD_LOGIC;
    gram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_we : in STD_LOGIC;
    iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    led3 : out STD_LOGIC;
    vga_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vga_clk : in STD_LOGIC;
    vga_dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end main_block_wrapper;

architecture STRUCTURE of main_block_wrapper is
  component main_block is
  port (
    gram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    btn0 : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    btn3 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    led3 : out STD_LOGIC;
    clk100mhz_in : in STD_LOGIC;
    fault_reset : in STD_LOGIC;
    debug_reset : in STD_LOGIC;
    gpu_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vga_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    gram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gram_we : in STD_LOGIC;
    iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_enable : in STD_LOGIC;
    debug_override_enable : in STD_LOGIC;
    debug_clk : in STD_LOGIC;
    debug_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_we : in STD_LOGIC;
    gpu_clk : in STD_LOGIC;
    gpu_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gpu_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    gpu_we : in STD_LOGIC;
    vga_clk : in STD_LOGIC;
    vga_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_mock_clk_1 : in STD_LOGIC
  );
  end component main_block;
begin
main_block_i: component main_block
     port map (
      btn0 => btn0,
      btn1 => btn1,
      btn2 => btn2,
      btn3 => btn3,
      clk100mhz_in => clk100mhz_in,
      debug_addr(15 downto 0) => debug_addr(15 downto 0),
      debug_bank(3 downto 0) => debug_bank(3 downto 0),
      debug_clk => debug_clk,
      debug_din(15 downto 0) => debug_din(15 downto 0),
      debug_dout(15 downto 0) => debug_dout(15 downto 0),
      debug_enable => debug_enable,
      debug_mock_clk_1 => debug_mock_clk_1,
      debug_override_enable => debug_override_enable,
      debug_reset => debug_reset,
      debug_we => debug_we,
      fault_reset => fault_reset,
      gpu_addr(15 downto 0) => gpu_addr(15 downto 0),
      gpu_clk => gpu_clk,
      gpu_din(11 downto 0) => gpu_din(11 downto 0),
      gpu_dout(11 downto 0) => gpu_dout(11 downto 0),
      gpu_we => gpu_we,
      gram_addr(15 downto 0) => gram_addr(15 downto 0),
      gram_bank(3 downto 0) => gram_bank(3 downto 0),
      gram_din(15 downto 0) => gram_din(15 downto 0),
      gram_dout(15 downto 0) => gram_dout(15 downto 0),
      gram_we => gram_we,
      iram_addr(15 downto 0) => iram_addr(15 downto 0),
      iram_dout(15 downto 0) => iram_dout(15 downto 0),
      led0 => led0,
      led1 => led1,
      led2 => led2,
      led3 => led3,
      vga_addr(15 downto 0) => vga_addr(15 downto 0),
      vga_clk => vga_clk,
      vga_dout(11 downto 0) => vga_dout(11 downto 0)
    );
end STRUCTURE;
