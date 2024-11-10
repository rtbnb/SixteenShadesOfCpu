--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Sun Nov 10 16:44:50 2024
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
    iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iram_clk : in STD_LOGIC;
    iram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_dout_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_en_t : out STD_LOGIC;
    iram_mem_clk : out STD_LOGIC;
    iram_oe : in STD_LOGIC;
    iram_we : in STD_LOGIC
  );
end main_block_wrapper;

architecture STRUCTURE of main_block_wrapper is
  component main_block is
  port (
    clk200mhz : in STD_LOGIC;
    iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_we : in STD_LOGIC;
    iram_oe : in STD_LOGIC;
    iram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_en_t : out STD_LOGIC;
    iram_clk : in STD_LOGIC;
    iram_mem_clk : out STD_LOGIC;
    iram_dout_t : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_block;
begin
main_block_i: component main_block
     port map (
      clk200mhz => clk200mhz,
      iram_addr(15 downto 0) => iram_addr(15 downto 0),
      iram_bank(3 downto 0) => iram_bank(3 downto 0),
      iram_clk => iram_clk,
      iram_din(15 downto 0) => iram_din(15 downto 0),
      iram_dout(15 downto 0) => iram_dout(15 downto 0),
      iram_dout_t(15 downto 0) => iram_dout_t(15 downto 0),
      iram_en_t => iram_en_t,
      iram_mem_clk => iram_mem_clk,
      iram_oe => iram_oe,
      iram_we => iram_we
    );
end STRUCTURE;
