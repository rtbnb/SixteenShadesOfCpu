--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Tue Dec  3 20:28:30 2024
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
    btn00 : in STD_LOGIC;
    btn01 : in STD_LOGIC;
    btn02 : in STD_LOGIC;
    btn03 : in STD_LOGIC;
    btn04 : in STD_LOGIC;
    btn05 : in STD_LOGIC;
    btn06 : in STD_LOGIC;
    btn07 : in STD_LOGIC;
    btn08 : in STD_LOGIC;
    btn09 : in STD_LOGIC;
    btn10 : in STD_LOGIC;
    btn11 : in STD_LOGIC;
    btn12 : in STD_LOGIC;
    btn13 : in STD_LOGIC;
    btn14 : in STD_LOGIC;
    btn15 : in STD_LOGIC;
    btn16 : in STD_LOGIC;
    btn17 : in STD_LOGIC;
    btn18 : in STD_LOGIC;
    btn19 : in STD_LOGIC;
    clk100mhzIn : in STD_LOGIC;
    debugAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debugBank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    debugClk : out STD_LOGIC;
    debugDin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debugEnable : in STD_LOGIC;
    debugMockClk : in STD_LOGIC;
    debugOverrideEnable : in STD_LOGIC;
    debugReset : in STD_LOGIC;
    debugWe : in STD_LOGIC;
    debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    external_debugClk : in STD_LOGIC;
    faultReset : in STD_LOGIC;
    gpuAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gpuClk : in STD_LOGIC;
    gpuDin : in STD_LOGIC_VECTOR ( 11 downto 0 );
    gpuWe : in STD_LOGIC;
    gpu_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    gramAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gramBank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gramDin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gramOe : in STD_LOGIC;
    gramWe : in STD_LOGIC;
    gram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iramAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    led00 : out STD_LOGIC;
    led01 : out STD_LOGIC;
    led02 : out STD_LOGIC;
    led03 : out STD_LOGIC;
    led04 : out STD_LOGIC;
    led05 : out STD_LOGIC;
    led06 : out STD_LOGIC;
    led07 : out STD_LOGIC;
    led08 : out STD_LOGIC;
    led09 : out STD_LOGIC;
    led10 : out STD_LOGIC;
    led11 : out STD_LOGIC;
    led12 : out STD_LOGIC;
    led13 : out STD_LOGIC;
    led14 : out STD_LOGIC;
    led15 : out STD_LOGIC;
    led16 : out STD_LOGIC;
    led17 : out STD_LOGIC;
    led18 : out STD_LOGIC;
    led19 : out STD_LOGIC;
    rgb0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rho : out STD_LOGIC;
    vgaAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vgaClk : out STD_LOGIC;
    vga_dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end main_block_wrapper;

architecture STRUCTURE of main_block_wrapper is
  component main_block is
  port (
    gram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gpu_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vga_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    btn00 : in STD_LOGIC;
    btn01 : in STD_LOGIC;
    btn02 : in STD_LOGIC;
    btn03 : in STD_LOGIC;
    btn04 : in STD_LOGIC;
    btn05 : in STD_LOGIC;
    btn06 : in STD_LOGIC;
    btn07 : in STD_LOGIC;
    btn08 : in STD_LOGIC;
    btn09 : in STD_LOGIC;
    btn10 : in STD_LOGIC;
    btn11 : in STD_LOGIC;
    btn12 : in STD_LOGIC;
    btn13 : in STD_LOGIC;
    btn14 : in STD_LOGIC;
    btn15 : in STD_LOGIC;
    btn16 : in STD_LOGIC;
    btn17 : in STD_LOGIC;
    btn18 : in STD_LOGIC;
    btn19 : in STD_LOGIC;
    led00 : out STD_LOGIC;
    led01 : out STD_LOGIC;
    led02 : out STD_LOGIC;
    led03 : out STD_LOGIC;
    led04 : out STD_LOGIC;
    led05 : out STD_LOGIC;
    led06 : out STD_LOGIC;
    led07 : out STD_LOGIC;
    led08 : out STD_LOGIC;
    led09 : out STD_LOGIC;
    led10 : out STD_LOGIC;
    led11 : out STD_LOGIC;
    led12 : out STD_LOGIC;
    led13 : out STD_LOGIC;
    led14 : out STD_LOGIC;
    led15 : out STD_LOGIC;
    led16 : out STD_LOGIC;
    led17 : out STD_LOGIC;
    led18 : out STD_LOGIC;
    led19 : out STD_LOGIC;
    rgb0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rho : out STD_LOGIC;
    vgaClk : out STD_LOGIC;
    debugClk : out STD_LOGIC;
    debugMockClk : in STD_LOGIC;
    clk100mhzIn : in STD_LOGIC;
    faultReset : in STD_LOGIC;
    debugReset : in STD_LOGIC;
    gramWe : in STD_LOGIC;
    debugWe : in STD_LOGIC;
    gpuWe : in STD_LOGIC;
    vgaAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gramAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gramOe : in STD_LOGIC;
    gramBank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gramDin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debugEnable : in STD_LOGIC;
    debugOverrideEnable : in STD_LOGIC;
    external_debugClk : in STD_LOGIC;
    debugAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iramAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gpuClk : in STD_LOGIC;
    debugDin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debugBank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpuAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gpuDin : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component main_block;
begin
main_block_i: component main_block
     port map (
      btn00 => btn00,
      btn01 => btn01,
      btn02 => btn02,
      btn03 => btn03,
      btn04 => btn04,
      btn05 => btn05,
      btn06 => btn06,
      btn07 => btn07,
      btn08 => btn08,
      btn09 => btn09,
      btn10 => btn10,
      btn11 => btn11,
      btn12 => btn12,
      btn13 => btn13,
      btn14 => btn14,
      btn15 => btn15,
      btn16 => btn16,
      btn17 => btn17,
      btn18 => btn18,
      btn19 => btn19,
      clk100mhzIn => clk100mhzIn,
      debugAddr(15 downto 0) => debugAddr(15 downto 0),
      debugBank(3 downto 0) => debugBank(3 downto 0),
      debugClk => debugClk,
      debugDin(15 downto 0) => debugDin(15 downto 0),
      debugEnable => debugEnable,
      debugMockClk => debugMockClk,
      debugOverrideEnable => debugOverrideEnable,
      debugReset => debugReset,
      debugWe => debugWe,
      debug_dout(15 downto 0) => debug_dout(15 downto 0),
      external_debugClk => external_debugClk,
      faultReset => faultReset,
      gpuAddr(15 downto 0) => gpuAddr(15 downto 0),
      gpuClk => gpuClk,
      gpuDin(11 downto 0) => gpuDin(11 downto 0),
      gpuWe => gpuWe,
      gpu_dout(11 downto 0) => gpu_dout(11 downto 0),
      gramAddr(15 downto 0) => gramAddr(15 downto 0),
      gramBank(3 downto 0) => gramBank(3 downto 0),
      gramDin(15 downto 0) => gramDin(15 downto 0),
      gramOe => gramOe,
      gramWe => gramWe,
      gram_dout(15 downto 0) => gram_dout(15 downto 0),
      iramAddr(15 downto 0) => iramAddr(15 downto 0),
      iram_dout(15 downto 0) => iram_dout(15 downto 0),
      led00 => led00,
      led01 => led01,
      led02 => led02,
      led03 => led03,
      led04 => led04,
      led05 => led05,
      led06 => led06,
      led07 => led07,
      led08 => led08,
      led09 => led09,
      led10 => led10,
      led11 => led11,
      led12 => led12,
      led13 => led13,
      led14 => led14,
      led15 => led15,
      led16 => led16,
      led17 => led17,
      led18 => led18,
      led19 => led19,
      rgb0(2 downto 0) => rgb0(2 downto 0),
      rgb1(2 downto 0) => rgb1(2 downto 0),
      rgb2(2 downto 0) => rgb2(2 downto 0),
      rgb3(2 downto 0) => rgb3(2 downto 0),
      rho => rho,
      vgaAddr(15 downto 0) => vgaAddr(15 downto 0),
      vgaClk => vgaClk,
      vga_dout(11 downto 0) => vga_dout(11 downto 0)
    );
end STRUCTURE;
