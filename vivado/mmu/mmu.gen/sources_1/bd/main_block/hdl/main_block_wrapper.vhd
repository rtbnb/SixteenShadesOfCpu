--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Mon Nov 18 13:34:30 2024
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
    clk200mhz : in STD_LOGIC;
    debug_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_clk : in STD_LOGIC;
    debug_clk200mhz : in STD_LOGIC;
    debug_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_enable : in STD_LOGIC;
    debug_override_enable : in STD_LOGIC;
    debug_we : in STD_LOGIC;
    gram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gram_clk : in STD_LOGIC;
    gram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_we : in STD_LOGIC;
    iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_clk : in STD_LOGIC;
    iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vram_clk : in STD_LOGIC;
    vram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end main_block_wrapper;

architecture STRUCTURE of main_block_wrapper is
  component main_block is
  port (
    vram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk200mhz : in STD_LOGIC;
    debug_clk200mhz : in STD_LOGIC;
    debug_clk : in STD_LOGIC;
    debug_we : in STD_LOGIC;
    debug_enable : in STD_LOGIC;
    debug_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iram_clk : in STD_LOGIC;
    iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_clk : in STD_LOGIC;
    gram_we : in STD_LOGIC;
    gram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vram_clk : in STD_LOGIC;
    vram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_override_enable : in STD_LOGIC
  );
  end component main_block;
begin
main_block_i: component main_block
     port map (
      clk200mhz => clk200mhz,
      debug_addr(15 downto 0) => debug_addr(15 downto 0),
      debug_bank(3 downto 0) => debug_bank(3 downto 0),
      debug_clk => debug_clk,
      debug_clk200mhz => debug_clk200mhz,
      debug_din(15 downto 0) => debug_din(15 downto 0),
      debug_dout(15 downto 0) => debug_dout(15 downto 0),
      debug_enable => debug_enable,
      debug_override_enable => debug_override_enable,
      debug_we => debug_we,
      gram_addr(15 downto 0) => gram_addr(15 downto 0),
      gram_bank(3 downto 0) => gram_bank(3 downto 0),
      gram_clk => gram_clk,
      gram_din(15 downto 0) => gram_din(15 downto 0),
      gram_dout(15 downto 0) => gram_dout(15 downto 0),
      gram_we => gram_we,
      iram_addr(15 downto 0) => iram_addr(15 downto 0),
      iram_clk => iram_clk,
      iram_dout(15 downto 0) => iram_dout(15 downto 0),
      vram_addr(15 downto 0) => vram_addr(15 downto 0),
      vram_clk => vram_clk,
      vram_dout(15 downto 0) => vram_dout(15 downto 0)
    );
end STRUCTURE;
