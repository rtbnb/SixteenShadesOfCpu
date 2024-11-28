--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Thu Nov 28 22:20:17 2024
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
    clk100mhz_in : in STD_LOGIC;
    debugClk : out STD_LOGIC;
    debugMockClk : in STD_LOGIC;
    debug_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_clk : in STD_LOGIC;
    debug_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_enable : in STD_LOGIC;
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
    gram_oe : in STD_LOGIC;
    gram_we : in STD_LOGIC;
    iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
    vgaClk : out STD_LOGIC;
    vga_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vga_clk : in STD_LOGIC;
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
  signal clk100mhz_in_1 : STD_LOGIC;
  signal clockcontroller_0_clk100mhzOut : STD_LOGIC;
  signal clockcontroller_0_debugClk : STD_LOGIC;
  signal clockcontroller_0_load_clk : STD_LOGIC;
  signal clockcontroller_0_vgaClk : STD_LOGIC;
  signal debugMockClk_1 : STD_LOGIC;
  signal debug_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal debug_bank_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal debug_clk_1 : STD_LOGIC;
  signal debug_din_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal debug_enable_1 : STD_LOGIC;
  signal debug_override_enable_1 : STD_LOGIC;
  signal debug_reset_1 : STD_LOGIC;
  signal debug_we_1 : STD_LOGIC;
  signal fault_reset_1 : STD_LOGIC;
  signal gpu_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gpu_clk_1 : STD_LOGIC;
  signal gpu_din_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gpu_we_1 : STD_LOGIC;
  signal gram_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gram_bank_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gram_din_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gram_oe_1 : STD_LOGIC;
  signal gram_we_1 : STD_LOGIC;
  signal iram_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  signal vga_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal vga_clk_1 : STD_LOGIC;
  signal vram_douta : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal vram_doutb : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk100mhz_in : signal is "xilinx.com:signal:clock:1.0 CLK.CLK100MHZ_IN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk100mhz_in : signal is "XIL_INTERFACENAME CLK.CLK100MHZ_IN, CLK_DOMAIN main_block_clk100mhz_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of debugClk : signal is "xilinx.com:signal:clock:1.0 CLK.DEBUGCLK CLK";
  attribute X_INTERFACE_PARAMETER of debugClk : signal is "XIL_INTERFACENAME CLK.DEBUGCLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of debug_clk : signal is "xilinx.com:signal:clock:1.0 CLK.DEBUG_CLK CLK";
  attribute X_INTERFACE_PARAMETER of debug_clk : signal is "XIL_INTERFACENAME CLK.DEBUG_CLK, CLK_DOMAIN main_block_debug_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of debug_reset : signal is "xilinx.com:signal:reset:1.0 RST.DEBUG_RESET RST";
  attribute X_INTERFACE_PARAMETER of debug_reset : signal is "XIL_INTERFACENAME RST.DEBUG_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of fault_reset : signal is "xilinx.com:signal:reset:1.0 RST.FAULT_RESET RST";
  attribute X_INTERFACE_PARAMETER of fault_reset : signal is "XIL_INTERFACENAME RST.FAULT_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of gpu_clk : signal is "xilinx.com:signal:clock:1.0 CLK.GPU_CLK CLK";
  attribute X_INTERFACE_PARAMETER of gpu_clk : signal is "XIL_INTERFACENAME CLK.GPU_CLK, CLK_DOMAIN main_block_gpu_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of vgaClk : signal is "xilinx.com:signal:clock:1.0 CLK.VGACLK CLK";
  attribute X_INTERFACE_PARAMETER of vgaClk : signal is "XIL_INTERFACENAME CLK.VGACLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of vga_clk : signal is "xilinx.com:signal:clock:1.0 CLK.VGA_CLK CLK";
  attribute X_INTERFACE_PARAMETER of vga_clk : signal is "XIL_INTERFACENAME CLK.VGA_CLK, CLK_DOMAIN main_block_vga_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
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
  clk100mhz_in_1 <= clk100mhz_in;
  debugClk <= clockcontroller_0_debugClk;
  debugMockClk_1 <= debugMockClk;
  debug_addr_1(15 downto 0) <= debug_addr(15 downto 0);
  debug_bank_1(3 downto 0) <= debug_bank(3 downto 0);
  debug_clk_1 <= debug_clk;
  debug_din_1(15 downto 0) <= debug_din(15 downto 0);
  debug_dout(15 downto 0) <= mmu_1_debugDout(15 downto 0);
  debug_enable_1 <= debug_enable;
  debug_override_enable_1 <= debug_override_enable;
  debug_reset_1 <= debug_reset;
  debug_we_1 <= debug_we;
  fault_reset_1 <= fault_reset;
  gpu_addr_1(15 downto 0) <= gpu_addr(15 downto 0);
  gpu_clk_1 <= gpu_clk;
  gpu_din_1(11 downto 0) <= gpu_din(11 downto 0);
  gpu_dout(11 downto 0) <= mmu_1_gpuDout(11 downto 0);
  gpu_we_1 <= gpu_we;
  gram_addr_1(15 downto 0) <= gram_addr(15 downto 0);
  gram_bank_1(3 downto 0) <= gram_bank(3 downto 0);
  gram_din_1(15 downto 0) <= gram_din(15 downto 0);
  gram_dout(15 downto 0) <= mmu_1_gramDout(15 downto 0);
  gram_oe_1 <= gram_oe;
  gram_we_1 <= gram_we;
  iram_addr_1(15 downto 0) <= iram_addr(15 downto 0);
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
  vgaClk <= clockcontroller_0_vgaClk;
  vga_addr_1(15 downto 0) <= vga_addr(15 downto 0);
  vga_clk_1 <= vga_clk;
  vga_dout(11 downto 0) <= mmu_1_vgaDout(11 downto 0);
clockcontroller_0: component main_block_clockcontroller_0_0
     port map (
      clk100mhzIn => clk100mhz_in_1,
      clk100mhzOut => clockcontroller_0_clk100mhzOut,
      debugClk => clockcontroller_0_debugClk,
      debugEnable => debug_enable_1,
      debugMmuOverrideEnable => debug_override_enable_1,
      debugMockClk => debugMockClk_1,
      debugReset => debug_reset_1,
      faultReset => fault_reset_1,
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
      debugAddr(15 downto 0) => debug_addr_1(15 downto 0),
      debugBank(3 downto 0) => debug_bank_1(3 downto 0),
      debugClk => debug_clk_1,
      debugDin(15 downto 0) => debug_din_1(15 downto 0),
      debugDout(15 downto 0) => mmu_1_debugDout(15 downto 0),
      debugEnable => debug_enable_1,
      debugOverrideEnable => debug_override_enable_1,
      debugWe => debug_we_1,
      gpuAddr(15 downto 0) => gpu_addr_1(15 downto 0),
      gpuClk => gpu_clk_1,
      gpuDin(11 downto 0) => gpu_din_1(11 downto 0),
      gpuDout(11 downto 0) => mmu_1_gpuDout(11 downto 0),
      gpuWe => gpu_we_1,
      gramAddr(15 downto 0) => gram_addr_1(15 downto 0),
      gramBank(3 downto 0) => gram_bank_1(3 downto 0),
      gramDin(15 downto 0) => gram_din_1(15 downto 0),
      gramDout(15 downto 0) => mmu_1_gramDout(15 downto 0),
      gramOe => gram_oe_1,
      gramWe => gram_we_1,
      iramAddr(15 downto 0) => iram_addr_1(15 downto 0),
      iramDout(15 downto 0) => mmu_1_iramDout(15 downto 0),
      loadClk => clockcontroller_0_load_clk,
      mmioMemAddr(15 downto 0) => mmu_1_mmioMemAddr(15 downto 0),
      mmioMemClk => mmu_1_mmioMemClk,
      mmioMemDin(15 downto 0) => mmu_1_mmioMemDin(15 downto 0),
      mmioMemDout(15 downto 0) => mmio_0_dout(15 downto 0),
      mmioMemWe => mmu_1_mmioMemWe,
      vgaAddr(15 downto 0) => vga_addr_1(15 downto 0),
      vgaClk => vga_clk_1,
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
