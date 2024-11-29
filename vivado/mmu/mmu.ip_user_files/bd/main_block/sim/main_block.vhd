--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Fri Nov 29 11:54:45 2024
--Host        : DESKTOP-Q664A4O running 64-bit major release  (build 9200)
--Command     : generate_target main_block.bd
--Design      : main_block
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_block is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of main_block : entity is "main_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=main_block,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of main_block : entity is "main_block.hwdef";
end main_block;

architecture STRUCTURE of main_block is
  component main_block_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 11 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clkb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component main_block_blk_mem_gen_0_0;
  component main_block_mmio_0_0 is
  port (
    clk100mhzIn : in STD_LOGIC;
    clk50mhzIn : in STD_LOGIC;
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
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
    rho : out STD_LOGIC
  );
  end component main_block_mmio_0_0;
  component main_block_clockcontroller_0_0 is
  port (
    clk100mhzIn : in STD_LOGIC;
    faultReset : in STD_LOGIC;
    debugReset : in STD_LOGIC;
    debugEnable : in STD_LOGIC;
    debugMockClk : in STD_LOGIC;
    debugMmuOverrideEnable : in STD_LOGIC;
    loadClk : out STD_LOGIC;
    vgaClk : out STD_LOGIC;
    debugClk : out STD_LOGIC;
    clk100mhzOut : out STD_LOGIC
  );
  end component main_block_clockcontroller_0_0;
  component main_block_mmu_1_0 is
  port (
    loadClk : in STD_LOGIC;
    gramAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gramDin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gramBank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gramWe : in STD_LOGIC;
    gramOe : in STD_LOGIC;
    gramDout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iramAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iramDout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debugEnable : in STD_LOGIC;
    debugOverrideEnable : in STD_LOGIC;
    debugClk : in STD_LOGIC;
    debugAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debugDin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debugBank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    debugWe : in STD_LOGIC;
    debugDout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gpuClk : in STD_LOGIC;
    gpuAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gpuDin : in STD_LOGIC_VECTOR ( 11 downto 0 );
    gpuWe : in STD_LOGIC;
    gpuDout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vgaClk : in STD_LOGIC;
    vgaAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vgaDout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vramaMemAddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vramaMemClk : out STD_LOGIC;
    vramaMemDin : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vramaMemWe : out STD_LOGIC_VECTOR ( 0 to 0 );
    vramaMemDout : in STD_LOGIC_VECTOR ( 11 downto 0 );
    vrambMemAddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vrambMemClk : out STD_LOGIC;
    vrambMemDin : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vrambMemWe : out STD_LOGIC_VECTOR ( 0 to 0 );
    vrambMemDout : in STD_LOGIC_VECTOR ( 11 downto 0 );
    mmioMemClk : out STD_LOGIC;
    mmioMemWe : out STD_LOGIC;
    mmioMemAddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmioMemDin : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmioMemDout : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_block_mmu_1_0;
  signal btn00_1 : STD_LOGIC;
  signal btn01_1 : STD_LOGIC;
  signal btn02_1 : STD_LOGIC;
  signal btn03_1 : STD_LOGIC;
  signal btn04_1 : STD_LOGIC;
  signal btn05_1 : STD_LOGIC;
  signal btn06_1 : STD_LOGIC;
  signal btn07_1 : STD_LOGIC;
  signal btn08_1 : STD_LOGIC;
  signal btn09_1 : STD_LOGIC;
  signal btn10_1 : STD_LOGIC;
  signal btn11_1 : STD_LOGIC;
  signal btn12_1 : STD_LOGIC;
  signal btn13_1 : STD_LOGIC;
  signal btn14_1 : STD_LOGIC;
  signal btn15_1 : STD_LOGIC;
  signal btn16_1 : STD_LOGIC;
  signal btn17_1 : STD_LOGIC;
  signal btn18_1 : STD_LOGIC;
  signal btn19_1 : STD_LOGIC;
  signal clk100mhzIn_1 : STD_LOGIC;
  signal clockcontroller_0_clk100mhzOut : STD_LOGIC;
  signal clockcontroller_0_debugClk : STD_LOGIC;
  signal clockcontroller_0_load_clk : STD_LOGIC;
  signal clockcontroller_0_vgaClk : STD_LOGIC;
  signal debugAddr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal debugBank_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal debugDin_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal debugMockClk_1 : STD_LOGIC;
  signal debugReset_1 : STD_LOGIC;
  signal debugWe_1 : STD_LOGIC;
  signal debug_enable_1 : STD_LOGIC;
  signal debug_override_enable_1 : STD_LOGIC;
  signal external_debugClk_1 : STD_LOGIC;
  signal faultReset_1 : STD_LOGIC;
  signal gpuAddr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gpuClk_1 : STD_LOGIC;
  signal gpuDin_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gpuWe_1 : STD_LOGIC;
  signal gramAddr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gramBank_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gramDin_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gramOe_1 : STD_LOGIC;
  signal gramWe_1 : STD_LOGIC;
  signal iramAddr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmio_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmio_0_led00 : STD_LOGIC;
  signal mmio_0_led01 : STD_LOGIC;
  signal mmio_0_led02 : STD_LOGIC;
  signal mmio_0_led03 : STD_LOGIC;
  signal mmio_0_led04 : STD_LOGIC;
  signal mmio_0_led05 : STD_LOGIC;
  signal mmio_0_led06 : STD_LOGIC;
  signal mmio_0_led07 : STD_LOGIC;
  signal mmio_0_led08 : STD_LOGIC;
  signal mmio_0_led09 : STD_LOGIC;
  signal mmio_0_led10 : STD_LOGIC;
  signal mmio_0_led11 : STD_LOGIC;
  signal mmio_0_led12 : STD_LOGIC;
  signal mmio_0_led13 : STD_LOGIC;
  signal mmio_0_led14 : STD_LOGIC;
  signal mmio_0_led15 : STD_LOGIC;
  signal mmio_0_led16 : STD_LOGIC;
  signal mmio_0_led17 : STD_LOGIC;
  signal mmio_0_led18 : STD_LOGIC;
  signal mmio_0_led19 : STD_LOGIC;
  signal mmio_0_rgb0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mmio_0_rgb1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mmio_0_rgb2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mmio_0_rgb3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mmio_0_rho : STD_LOGIC;
  signal mmu_1_debugDout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_1_gpuDout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mmu_1_gramDout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_1_iramDout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_1_mmioMemAddr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_1_mmioMemClk : STD_LOGIC;
  signal mmu_1_mmioMemDin : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_1_mmioMemWe : STD_LOGIC;
  signal mmu_1_vgaDout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mmu_1_vramaMemAddr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_1_vramaMemClk : STD_LOGIC;
  signal mmu_1_vramaMemDin : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mmu_1_vramaMemWe : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mmu_1_vrambMemAddr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_1_vrambMemClk : STD_LOGIC;
  signal mmu_1_vrambMemDin : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mmu_1_vrambMemWe : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vgaAddr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal vram_douta : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal vram_doutb : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk100mhzIn : signal is "xilinx.com:signal:clock:1.0 CLK.CLK100MHZIN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk100mhzIn : signal is "XIL_INTERFACENAME CLK.CLK100MHZIN, CLK_DOMAIN main_block_clk100mhzIn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of debugClk : signal is "xilinx.com:signal:clock:1.0 CLK.DEBUGCLK CLK";
  attribute X_INTERFACE_PARAMETER of debugClk : signal is "XIL_INTERFACENAME CLK.DEBUGCLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of vgaClk : signal is "xilinx.com:signal:clock:1.0 CLK.VGACLK CLK";
  attribute X_INTERFACE_PARAMETER of vgaClk : signal is "XIL_INTERFACENAME CLK.VGACLK, CLK_DOMAIN main_block_vga_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  btn00_1 <= btn00;
  btn01_1 <= btn01;
  btn02_1 <= btn02;
  btn03_1 <= btn03;
  btn04_1 <= btn04;
  btn05_1 <= btn05;
  btn06_1 <= btn06;
  btn07_1 <= btn07;
  btn08_1 <= btn08;
  btn09_1 <= btn09;
  btn10_1 <= btn10;
  btn11_1 <= btn11;
  btn12_1 <= btn12;
  btn13_1 <= btn13;
  btn14_1 <= btn14;
  btn15_1 <= btn15;
  btn16_1 <= btn16;
  btn17_1 <= btn17;
  btn18_1 <= btn18;
  btn19_1 <= btn19;
  clk100mhzIn_1 <= clk100mhzIn;
  debugAddr_1(15 downto 0) <= debugAddr(15 downto 0);
  debugBank_1(3 downto 0) <= debugBank(3 downto 0);
  debugClk <= clockcontroller_0_debugClk;
  debugDin_1(15 downto 0) <= debugDin(15 downto 0);
  debugMockClk_1 <= debugMockClk;
  debugReset_1 <= debugReset;
  debugWe_1 <= debugWe;
  debug_dout(15 downto 0) <= mmu_1_debugDout(15 downto 0);
  debug_enable_1 <= debugEnable;
  debug_override_enable_1 <= debugOverrideEnable;
  external_debugClk_1 <= external_debugClk;
  faultReset_1 <= faultReset;
  gpuAddr_1(15 downto 0) <= gpuAddr(15 downto 0);
  gpuClk_1 <= gpuClk;
  gpuDin_1(11 downto 0) <= gpuDin(11 downto 0);
  gpuWe_1 <= gpuWe;
  gpu_dout(11 downto 0) <= mmu_1_gpuDout(11 downto 0);
  gramAddr_1(15 downto 0) <= gramAddr(15 downto 0);
  gramBank_1(3 downto 0) <= gramBank(3 downto 0);
  gramDin_1(15 downto 0) <= gramDin(15 downto 0);
  gramOe_1 <= gramOe;
  gramWe_1 <= gramWe;
  gram_dout(15 downto 0) <= mmu_1_gramDout(15 downto 0);
  iramAddr_1(15 downto 0) <= iramAddr(15 downto 0);
  iram_dout(15 downto 0) <= mmu_1_iramDout(15 downto 0);
  led00 <= mmio_0_led00;
  led01 <= mmio_0_led01;
  led02 <= mmio_0_led02;
  led03 <= mmio_0_led03;
  led04 <= mmio_0_led04;
  led05 <= mmio_0_led05;
  led06 <= mmio_0_led06;
  led07 <= mmio_0_led07;
  led08 <= mmio_0_led08;
  led09 <= mmio_0_led09;
  led10 <= mmio_0_led10;
  led11 <= mmio_0_led11;
  led12 <= mmio_0_led12;
  led13 <= mmio_0_led13;
  led14 <= mmio_0_led14;
  led15 <= mmio_0_led15;
  led16 <= mmio_0_led16;
  led17 <= mmio_0_led17;
  led18 <= mmio_0_led18;
  led19 <= mmio_0_led19;
  rgb0(2 downto 0) <= mmio_0_rgb0(2 downto 0);
  rgb1(2 downto 0) <= mmio_0_rgb1(2 downto 0);
  rgb2(2 downto 0) <= mmio_0_rgb2(2 downto 0);
  rgb3(2 downto 0) <= mmio_0_rgb3(2 downto 0);
  rho <= mmio_0_rho;
  vgaAddr_1(15 downto 0) <= vgaAddr(15 downto 0);
  vgaClk <= clockcontroller_0_vgaClk;
  vga_dout(11 downto 0) <= mmu_1_vgaDout(11 downto 0);
clockcontroller_0: component main_block_clockcontroller_0_0
     port map (
      clk100mhzIn => clk100mhzIn_1,
      clk100mhzOut => clockcontroller_0_clk100mhzOut,
      debugClk => clockcontroller_0_debugClk,
      debugEnable => debug_enable_1,
      debugMmuOverrideEnable => debug_override_enable_1,
      debugMockClk => debugMockClk_1,
      debugReset => debugReset_1,
      faultReset => faultReset_1,
      loadClk => clockcontroller_0_load_clk,
      vgaClk => clockcontroller_0_vgaClk
    );
mmio_0: component main_block_mmio_0_0
     port map (
      addr(15 downto 0) => mmu_1_mmioMemAddr(15 downto 0),
      btn00 => btn00_1,
      btn01 => btn01_1,
      btn02 => btn02_1,
      btn03 => btn03_1,
      btn04 => btn04_1,
      btn05 => btn05_1,
      btn06 => btn06_1,
      btn07 => btn07_1,
      btn08 => btn08_1,
      btn09 => btn09_1,
      btn10 => btn10_1,
      btn11 => btn11_1,
      btn12 => btn12_1,
      btn13 => btn13_1,
      btn14 => btn14_1,
      btn15 => btn15_1,
      btn16 => btn16_1,
      btn17 => btn17_1,
      btn18 => btn18_1,
      btn19 => btn19_1,
      clk => mmu_1_mmioMemClk,
      clk100mhzIn => clockcontroller_0_clk100mhzOut,
      clk50mhzIn => clockcontroller_0_load_clk,
      din(15 downto 0) => mmu_1_mmioMemDin(15 downto 0),
      dout(15 downto 0) => mmio_0_dout(15 downto 0),
      led00 => mmio_0_led00,
      led01 => mmio_0_led01,
      led02 => mmio_0_led02,
      led03 => mmio_0_led03,
      led04 => mmio_0_led04,
      led05 => mmio_0_led05,
      led06 => mmio_0_led06,
      led07 => mmio_0_led07,
      led08 => mmio_0_led08,
      led09 => mmio_0_led09,
      led10 => mmio_0_led10,
      led11 => mmio_0_led11,
      led12 => mmio_0_led12,
      led13 => mmio_0_led13,
      led14 => mmio_0_led14,
      led15 => mmio_0_led15,
      led16 => mmio_0_led16,
      led17 => mmio_0_led17,
      led18 => mmio_0_led18,
      led19 => mmio_0_led19,
      rgb0(2 downto 0) => mmio_0_rgb0(2 downto 0),
      rgb1(2 downto 0) => mmio_0_rgb1(2 downto 0),
      rgb2(2 downto 0) => mmio_0_rgb2(2 downto 0),
      rgb3(2 downto 0) => mmio_0_rgb3(2 downto 0),
      rho => mmio_0_rho,
      we => mmu_1_mmioMemWe
    );
mmu_1: component main_block_mmu_1_0
     port map (
      debugAddr(15 downto 0) => debugAddr_1(15 downto 0),
      debugBank(3 downto 0) => debugBank_1(3 downto 0),
      debugClk => external_debugClk_1,
      debugDin(15 downto 0) => debugDin_1(15 downto 0),
      debugDout(15 downto 0) => mmu_1_debugDout(15 downto 0),
      debugEnable => debug_enable_1,
      debugOverrideEnable => debug_override_enable_1,
      debugWe => debugWe_1,
      gpuAddr(15 downto 0) => gpuAddr_1(15 downto 0),
      gpuClk => gpuClk_1,
      gpuDin(11 downto 0) => gpuDin_1(11 downto 0),
      gpuDout(11 downto 0) => mmu_1_gpuDout(11 downto 0),
      gpuWe => gpuWe_1,
      gramAddr(15 downto 0) => gramAddr_1(15 downto 0),
      gramBank(3 downto 0) => gramBank_1(3 downto 0),
      gramDin(15 downto 0) => gramDin_1(15 downto 0),
      gramDout(15 downto 0) => mmu_1_gramDout(15 downto 0),
      gramOe => gramOe_1,
      gramWe => gramWe_1,
      iramAddr(15 downto 0) => iramAddr_1(15 downto 0),
      iramDout(15 downto 0) => mmu_1_iramDout(15 downto 0),
      loadClk => clockcontroller_0_load_clk,
      mmioMemAddr(15 downto 0) => mmu_1_mmioMemAddr(15 downto 0),
      mmioMemClk => mmu_1_mmioMemClk,
      mmioMemDin(15 downto 0) => mmu_1_mmioMemDin(15 downto 0),
      mmioMemDout(15 downto 0) => mmio_0_dout(15 downto 0),
      mmioMemWe => mmu_1_mmioMemWe,
      vgaAddr(15 downto 0) => vgaAddr_1(15 downto 0),
      vgaClk => clockcontroller_0_vgaClk,
      vgaDout(11 downto 0) => mmu_1_vgaDout(11 downto 0),
      vramaMemAddr(15 downto 0) => mmu_1_vramaMemAddr(15 downto 0),
      vramaMemClk => mmu_1_vramaMemClk,
      vramaMemDin(11 downto 0) => mmu_1_vramaMemDin(11 downto 0),
      vramaMemDout(11 downto 0) => vram_douta(11 downto 0),
      vramaMemWe(0) => mmu_1_vramaMemWe(0),
      vrambMemAddr(15 downto 0) => mmu_1_vrambMemAddr(15 downto 0),
      vrambMemClk => mmu_1_vrambMemClk,
      vrambMemDin(11 downto 0) => mmu_1_vrambMemDin(11 downto 0),
      vrambMemDout(11 downto 0) => vram_doutb(11 downto 0),
      vrambMemWe(0) => mmu_1_vrambMemWe(0)
    );
vram: component main_block_blk_mem_gen_0_0
     port map (
      addra(15 downto 0) => mmu_1_vramaMemAddr(15 downto 0),
      addrb(15 downto 0) => mmu_1_vrambMemAddr(15 downto 0),
      clka => mmu_1_vramaMemClk,
      clkb => mmu_1_vrambMemClk,
      dina(11 downto 0) => mmu_1_vramaMemDin(11 downto 0),
      dinb(11 downto 0) => mmu_1_vrambMemDin(11 downto 0),
      douta(11 downto 0) => vram_douta(11 downto 0),
      doutb(11 downto 0) => vram_doutb(11 downto 0),
      wea(0) => mmu_1_vramaMemWe(0),
      web(0) => mmu_1_vrambMemWe(0)
    );
end STRUCTURE;
