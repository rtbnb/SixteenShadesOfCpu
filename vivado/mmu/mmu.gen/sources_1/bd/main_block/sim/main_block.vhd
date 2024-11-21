--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Thu Nov 21 14:49:18 2024
--Host        : Robin_Laptop running 64-bit major release  (build 9200)
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
    btn0 : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    btn3 : in STD_LOGIC;
    clk100mhz_in : in STD_LOGIC;
    debug_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_en : in STD_LOGIC;
    debug_enable : in STD_LOGIC;
    debug_override_enable : in STD_LOGIC;
    debug_reset : in STD_LOGIC;
    debug_we : in STD_LOGIC;
    fault_reset : in STD_LOGIC;
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
    reset : in STD_LOGIC;
    vram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of main_block : entity is "main_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=main_block,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of main_block : entity is "main_block.hwdef";
end main_block;

architecture STRUCTURE of main_block is
  component main_block_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_block_blk_mem_gen_0_0;
  component main_block_mmu_0_0 is
  port (
    clk200mhz : in STD_LOGIC;
    debug_en_lock : out STD_LOGIC;
    fault : out STD_LOGIC;
    ck_stable : in STD_LOGIC;
    cpu_sync : in STD_LOGIC;
    debug_sync : in STD_LOGIC;
    vram_sync : in STD_LOGIC;
    debug_clk200mhz : in STD_LOGIC;
    debug_we : in STD_LOGIC;
    debug_enable : in STD_LOGIC;
    debug_override_enable : in STD_LOGIC;
    debug_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_we : in STD_LOGIC;
    gram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vram_clk200mhz : in STD_LOGIC;
    vram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vrama_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vrama_mem_ck : out STD_LOGIC;
    vrama_mem_din : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vrama_mem_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    vrama_mem_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vramb_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vramb_mem_ck : out STD_LOGIC;
    vramb_mem_din : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vramb_mem_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    vramb_mem_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_mem_ck : out STD_LOGIC;
    mmio_mem_we : out STD_LOGIC;
    mmio_mem_oe : out STD_LOGIC;
    mmio_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_mem_din : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_mem_dout : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_block_mmu_0_0;
  component main_block_mmio_0_0 is
  port (
    ck : in STD_LOGIC;
    we : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    led3 : out STD_LOGIC;
    btn0 : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    btn3 : in STD_LOGIC;
    rho : out STD_LOGIC
  );
  end component main_block_mmio_0_0;
  component main_block_clockcontroller_0_0 is
  port (
    clk100mhz_in : in STD_LOGIC;
    clk200mhz_in : in STD_LOGIC;
    wizard_locked : in STD_LOGIC;
    debug_en_lock : in STD_LOGIC;
    fault_reset : in STD_LOGIC;
    debug_reset : in STD_LOGIC;
    fault : in STD_LOGIC;
    debug_en : in STD_LOGIC;
    load_clk : out STD_LOGIC;
    exec_clk : out STD_LOGIC;
    debug_clk : out STD_LOGIC;
    clk200mhz : out STD_LOGIC;
    clk200mhz_inf : out STD_LOGIC;
    ck_stable : out STD_LOGIC
  );
  end component main_block_clockcontroller_0_0;
  component main_block_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk100mhz_out : out STD_LOGIC;
    clk200mhz_out : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component main_block_clk_wiz_0_0;
  signal btn0_1 : STD_LOGIC;
  signal btn1_1 : STD_LOGIC;
  signal btn2_1 : STD_LOGIC;
  signal btn3_1 : STD_LOGIC;
  signal clk100mhz_in_1 : STD_LOGIC;
  signal clk_wiz_0_clk100mhz_out : STD_LOGIC;
  signal clk_wiz_0_clk200mhz_out : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal clockcontroller_0_ck_stable : STD_LOGIC;
  signal clockcontroller_0_clk100mhz : STD_LOGIC;
  signal clockcontroller_0_clk200mhz : STD_LOGIC;
  signal debug_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal debug_bank_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal debug_din_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal debug_en_1 : STD_LOGIC;
  signal debug_enable_1 : STD_LOGIC;
  signal debug_override_enable_1 : STD_LOGIC;
  signal debug_reset_1 : STD_LOGIC;
  signal debug_we_1 : STD_LOGIC;
  signal fault_reset_1 : STD_LOGIC;
  signal gram_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gram_bank_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gram_din_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gram_we_1 : STD_LOGIC;
  signal iram_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmio_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmio_0_led0 : STD_LOGIC;
  signal mmio_0_led1 : STD_LOGIC;
  signal mmio_0_led2 : STD_LOGIC;
  signal mmio_0_led3 : STD_LOGIC;
  signal mmu_0_debug_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_debug_en_lock : STD_LOGIC;
  signal mmu_0_fault : STD_LOGIC;
  signal mmu_0_gram_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_iram_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_mmio_mem_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_mmio_mem_ck : STD_LOGIC;
  signal mmu_0_mmio_mem_din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_mmio_mem_oe : STD_LOGIC;
  signal mmu_0_mmio_mem_we : STD_LOGIC;
  signal mmu_0_vram_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_vram_mem_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_vram_mem_ck : STD_LOGIC;
  signal mmu_0_vram_mem_din : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mmu_0_vram_mem_we : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mmu_0_vramb_mem_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_0_vramb_mem_ck : STD_LOGIC;
  signal mmu_0_vramb_mem_din : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mmu_0_vramb_mem_we : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_1 : STD_LOGIC;
  signal vram_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal vram_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal vram_doutb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_clockcontroller_0_clk200mhz_inf_UNCONNECTED : STD_LOGIC;
  signal NLW_clockcontroller_0_debug_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_clockcontroller_0_load_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_mmio_0_rho_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk100mhz_in : signal is "xilinx.com:signal:clock:1.0 CLK.CLK100MHZ_IN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk100mhz_in : signal is "XIL_INTERFACENAME CLK.CLK100MHZ_IN, CLK_DOMAIN main_block_clk100mhz_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of debug_reset : signal is "xilinx.com:signal:reset:1.0 RST.DEBUG_RESET RST";
  attribute X_INTERFACE_PARAMETER of debug_reset : signal is "XIL_INTERFACENAME RST.DEBUG_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of fault_reset : signal is "xilinx.com:signal:reset:1.0 RST.FAULT_RESET RST";
  attribute X_INTERFACE_PARAMETER of fault_reset : signal is "XIL_INTERFACENAME RST.FAULT_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  btn0_1 <= btn0;
  btn1_1 <= btn1;
  btn2_1 <= btn2;
  btn3_1 <= btn3;
  clk100mhz_in_1 <= clk100mhz_in;
  debug_addr_1(15 downto 0) <= debug_addr(15 downto 0);
  debug_bank_1(3 downto 0) <= debug_bank(3 downto 0);
  debug_din_1(15 downto 0) <= debug_din(15 downto 0);
  debug_dout(15 downto 0) <= mmu_0_debug_dout(15 downto 0);
  debug_en_1 <= debug_en;
  debug_enable_1 <= debug_enable;
  debug_override_enable_1 <= debug_override_enable;
  debug_reset_1 <= debug_reset;
  debug_we_1 <= debug_we;
  fault_reset_1 <= fault_reset;
  gram_addr_1(15 downto 0) <= gram_addr(15 downto 0);
  gram_bank_1(3 downto 0) <= gram_bank(3 downto 0);
  gram_din_1(15 downto 0) <= gram_din(15 downto 0);
  gram_dout(15 downto 0) <= mmu_0_gram_dout(15 downto 0);
  gram_we_1 <= gram_we;
  iram_addr_1(15 downto 0) <= iram_addr(15 downto 0);
  iram_dout(15 downto 0) <= mmu_0_iram_dout(15 downto 0);
  led0 <= mmio_0_led0;
  led1 <= mmio_0_led1;
  led2 <= mmio_0_led2;
  led3 <= mmio_0_led3;
  reset_1 <= reset;
  vram_addr_1(15 downto 0) <= vram_addr(15 downto 0);
  vram_dout(15 downto 0) <= mmu_0_vram_dout(15 downto 0);
clk_wiz_0: component main_block_clk_wiz_0_0
     port map (
      clk100mhz_out => clk_wiz_0_clk100mhz_out,
      clk200mhz_out => clk_wiz_0_clk200mhz_out,
      clk_in1 => clk100mhz_in_1,
      locked => clk_wiz_0_locked,
      reset => reset_1
    );
clockcontroller_0: component main_block_clockcontroller_0_0
     port map (
      ck_stable => clockcontroller_0_ck_stable,
      clk100mhz_in => clk_wiz_0_clk100mhz_out,
      clk200mhz => clockcontroller_0_clk200mhz,
      clk200mhz_in => clk_wiz_0_clk200mhz_out,
      clk200mhz_inf => NLW_clockcontroller_0_clk200mhz_inf_UNCONNECTED,
      debug_clk => NLW_clockcontroller_0_debug_clk_UNCONNECTED,
      debug_en => debug_en_1,
      debug_en_lock => mmu_0_debug_en_lock,
      debug_reset => debug_reset_1,
      exec_clk => clockcontroller_0_clk100mhz,
      fault => mmu_0_fault,
      fault_reset => fault_reset_1,
      load_clk => NLW_clockcontroller_0_load_clk_UNCONNECTED,
      wizard_locked => clk_wiz_0_locked
    );
mmio_0: component main_block_mmio_0_0
     port map (
      addr(15 downto 0) => mmu_0_mmio_mem_addr(15 downto 0),
      btn0 => btn0_1,
      btn1 => btn1_1,
      btn2 => btn2_1,
      btn3 => btn3_1,
      ck => mmu_0_mmio_mem_ck,
      din(15 downto 0) => mmu_0_mmio_mem_din(15 downto 0),
      dout(15 downto 0) => mmio_0_dout(15 downto 0),
      led0 => mmio_0_led0,
      led1 => mmio_0_led1,
      led2 => mmio_0_led2,
      led3 => mmio_0_led3,
      rho => NLW_mmio_0_rho_UNCONNECTED,
      we => mmu_0_mmio_mem_we
    );
mmu_0: component main_block_mmu_0_0
     port map (
      ck_stable => clockcontroller_0_ck_stable,
      clk200mhz => clockcontroller_0_clk200mhz,
      cpu_sync => clockcontroller_0_clk100mhz,
      debug_addr(15 downto 0) => debug_addr_1(15 downto 0),
      debug_bank(3 downto 0) => debug_bank_1(3 downto 0),
      debug_clk200mhz => clockcontroller_0_clk200mhz,
      debug_din(15 downto 0) => debug_din_1(15 downto 0),
      debug_dout(15 downto 0) => mmu_0_debug_dout(15 downto 0),
      debug_en_lock => mmu_0_debug_en_lock,
      debug_enable => debug_enable_1,
      debug_override_enable => debug_override_enable_1,
      debug_sync => clockcontroller_0_clk100mhz,
      debug_we => debug_we_1,
      fault => mmu_0_fault,
      gram_addr(15 downto 0) => gram_addr_1(15 downto 0),
      gram_bank(3 downto 0) => gram_bank_1(3 downto 0),
      gram_din(15 downto 0) => gram_din_1(15 downto 0),
      gram_dout(15 downto 0) => mmu_0_gram_dout(15 downto 0),
      gram_we => gram_we_1,
      iram_addr(15 downto 0) => iram_addr_1(15 downto 0),
      iram_dout(15 downto 0) => mmu_0_iram_dout(15 downto 0),
      mmio_mem_addr(15 downto 0) => mmu_0_mmio_mem_addr(15 downto 0),
      mmio_mem_ck => mmu_0_mmio_mem_ck,
      mmio_mem_din(15 downto 0) => mmu_0_mmio_mem_din(15 downto 0),
      mmio_mem_dout(15 downto 0) => mmio_0_dout(15 downto 0),
      mmio_mem_oe => mmu_0_mmio_mem_oe,
      mmio_mem_we => mmu_0_mmio_mem_we,
      vram_addr(15 downto 0) => vram_addr_1(15 downto 0),
      vram_clk200mhz => clockcontroller_0_clk200mhz,
      vram_dout(15 downto 0) => mmu_0_vram_dout(15 downto 0),
      vram_sync => clockcontroller_0_clk100mhz,
      vrama_mem_addr(15 downto 0) => mmu_0_vram_mem_addr(15 downto 0),
      vrama_mem_ck => mmu_0_vram_mem_ck,
      vrama_mem_din(11 downto 0) => mmu_0_vram_mem_din(11 downto 0),
      vrama_mem_dout(15 downto 0) => vram_douta(15 downto 0),
      vrama_mem_we(0) => mmu_0_vram_mem_we(0),
      vramb_mem_addr(15 downto 0) => mmu_0_vramb_mem_addr(15 downto 0),
      vramb_mem_ck => mmu_0_vramb_mem_ck,
      vramb_mem_din(11 downto 0) => mmu_0_vramb_mem_din(11 downto 0),
      vramb_mem_dout(15 downto 0) => vram_doutb(15 downto 0),
      vramb_mem_we(0) => mmu_0_vramb_mem_we(0)
    );
vram: component main_block_blk_mem_gen_0_0
     port map (
      addra(15 downto 0) => mmu_0_vram_mem_addr(15 downto 0),
      addrb(15 downto 0) => mmu_0_vramb_mem_addr(15 downto 0),
      clka => mmu_0_vram_mem_ck,
      clkb => mmu_0_vramb_mem_ck,
      dina(15 downto 12) => B"0000",
      dina(11 downto 0) => mmu_0_vram_mem_din(11 downto 0),
      dinb(15 downto 12) => B"0000",
      dinb(11 downto 0) => mmu_0_vramb_mem_din(11 downto 0),
      douta(15 downto 0) => vram_douta(15 downto 0),
      doutb(15 downto 0) => vram_doutb(15 downto 0),
      wea(0) => mmu_0_vram_mem_we(0),
      web(0) => mmu_0_vramb_mem_we(0)
    );
end STRUCTURE;
