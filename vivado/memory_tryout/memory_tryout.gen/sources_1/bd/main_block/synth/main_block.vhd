--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Thu Nov 14 12:17:27 2024
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
    clk200mhz : in STD_LOGIC;
    debug_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_clk : in STD_LOGIC;
    debug_clk200mhz : in STD_LOGIC;
    debug_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_enable : in STD_LOGIC;
    debug_iram_select : in STD_LOGIC;
    debug_oe : in STD_LOGIC;
    debug_we : in STD_LOGIC;
    gram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gram_clk : in STD_LOGIC;
    gram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_oe : in STD_LOGIC;
    gram_we : in STD_LOGIC;
    iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_clk : in STD_LOGIC;
    iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_clk : in STD_LOGIC;
    mmio_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_mem_ck : out STD_LOGIC;
    mmio_mem_din : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_mem_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_mem_oe : out STD_LOGIC;
    mmio_mem_we : out STD_LOGIC;
    mmio_oe : in STD_LOGIC;
    mmio_we : in STD_LOGIC;
    vram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vram_clk : in STD_LOGIC;
    vram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of main_block : entity is "main_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=main_block,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of main_block : entity is "main_block.hwdef";
end main_block;

architecture STRUCTURE of main_block is
  component main_block_main_0_0 is
  port (
    clk200mhz : in STD_LOGIC;
    iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_clk : in STD_LOGIC;
    iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_mem_din : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_mem_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    iram_mem_ck : out STD_LOGIC;
    iram_mem_we : out STD_LOGIC;
    iram_mem_oe : out STD_LOGIC;
    iram_mem_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_we : in STD_LOGIC;
    gram_oe : in STD_LOGIC;
    gram_clk : in STD_LOGIC;
    gram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_mem_din : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gram_mem_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    gram_mem_ck : out STD_LOGIC;
    gram_mem_we : out STD_LOGIC;
    gram_mem_oe : out STD_LOGIC;
    gram_mem_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vram_clk : in STD_LOGIC;
    vram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vram_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vram_mem_din : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vram_mem_ck : out STD_LOGIC;
    vram_mem_we : out STD_LOGIC;
    vram_mem_oe : out STD_LOGIC;
    vram_mem_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_clk : in STD_LOGIC;
    mmio_we : in STD_LOGIC;
    mmio_oe : in STD_LOGIC;
    mmio_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_mem_ck : out STD_LOGIC;
    mmio_mem_we : out STD_LOGIC;
    mmio_mem_oe : out STD_LOGIC;
    mmio_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_mem_din : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mmio_mem_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_clk200mhz : in STD_LOGIC;
    debug_clk : in STD_LOGIC;
    debug_we : in STD_LOGIC;
    debug_oe : in STD_LOGIC;
    debug_enable : in STD_LOGIC;
    debug_iram_select : in STD_LOGIC;
    debug_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_block_main_0_0;
  component main_block_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_block_blk_mem_gen_0_0;
  component main_block_blk_mem_gen_1_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_block_blk_mem_gen_1_0;
  component main_block_blk_mem_gen_2_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_block_blk_mem_gen_2_0;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk200mhz_1 : STD_LOGIC;
  signal debug_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal debug_bank_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal debug_clk200mhz_1 : STD_LOGIC;
  signal debug_clk_1 : STD_LOGIC;
  signal debug_din_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal debug_enable_1 : STD_LOGIC;
  signal debug_iram_select_1 : STD_LOGIC;
  signal debug_oe_1 : STD_LOGIC;
  signal debug_we_1 : STD_LOGIC;
  signal gram_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gram_bank_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gram_clk_1 : STD_LOGIC;
  signal gram_din_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gram_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gram_oe_1 : STD_LOGIC;
  signal gram_we_1 : STD_LOGIC;
  signal iram_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal iram_clk_1 : STD_LOGIC;
  signal mmio_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmio_clk_1 : STD_LOGIC;
  signal mmio_din_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmio_mem_dout_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmio_oe_1 : STD_LOGIC;
  signal mmio_we_1 : STD_LOGIC;
  signal mmu_debug_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_gram_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_gram_mem_addr : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal mmu_gram_mem_clk : STD_LOGIC;
  signal mmu_gram_mem_din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_gram_mem_oe : STD_LOGIC;
  signal mmu_gram_mem_we : STD_LOGIC;
  signal mmu_iram_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_iram_mem_addr : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal mmu_iram_mem_clk : STD_LOGIC;
  signal mmu_iram_mem_din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_iram_mem_oe : STD_LOGIC;
  signal mmu_iram_mem_we : STD_LOGIC;
  signal mmu_mmio_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_mmio_mem_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_mmio_mem_ck : STD_LOGIC;
  signal mmu_mmio_mem_din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_mmio_mem_oe : STD_LOGIC;
  signal mmu_mmio_mem_we : STD_LOGIC;
  signal mmu_vram_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_vram_mem_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_vram_mem_clk : STD_LOGIC;
  signal mmu_vram_mem_din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_vram_mem_oe : STD_LOGIC;
  signal mmu_vram_mem_we : STD_LOGIC;
  signal vram_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal vram_clk_1 : STD_LOGIC;
  signal vram_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of debug_clk : signal is "xilinx.com:signal:clock:1.0 CLK.DEBUG_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of debug_clk : signal is "XIL_INTERFACENAME CLK.DEBUG_CLK, CLK_DOMAIN main_block_debug_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of debug_clk200mhz : signal is "xilinx.com:signal:clock:1.0 CLK.DEBUG_CLK200MHZ CLK";
  attribute X_INTERFACE_PARAMETER of debug_clk200mhz : signal is "XIL_INTERFACENAME CLK.DEBUG_CLK200MHZ, CLK_DOMAIN main_block_debug_clk200mhz, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of gram_clk : signal is "xilinx.com:signal:clock:1.0 CLK.GRAM_CLK CLK";
  attribute X_INTERFACE_PARAMETER of gram_clk : signal is "XIL_INTERFACENAME CLK.GRAM_CLK, CLK_DOMAIN main_block_gram_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of mmio_clk : signal is "xilinx.com:signal:clock:1.0 CLK.MMIO_CLK CLK";
  attribute X_INTERFACE_PARAMETER of mmio_clk : signal is "XIL_INTERFACENAME CLK.MMIO_CLK, CLK_DOMAIN main_block_mmio_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of vram_clk : signal is "xilinx.com:signal:clock:1.0 CLK.VRAM_CLK CLK";
  attribute X_INTERFACE_PARAMETER of vram_clk : signal is "XIL_INTERFACENAME CLK.VRAM_CLK, CLK_DOMAIN main_block_vram_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  clk200mhz_1 <= clk200mhz;
  debug_addr_1(15 downto 0) <= debug_addr(15 downto 0);
  debug_bank_1(3 downto 0) <= debug_bank(3 downto 0);
  debug_clk200mhz_1 <= debug_clk200mhz;
  debug_clk_1 <= debug_clk;
  debug_din_1(15 downto 0) <= debug_din(15 downto 0);
  debug_dout(15 downto 0) <= mmu_debug_dout(15 downto 0);
  debug_enable_1 <= debug_enable;
  debug_iram_select_1 <= debug_iram_select;
  debug_oe_1 <= debug_oe;
  debug_we_1 <= debug_we;
  gram_addr_1(15 downto 0) <= gram_addr(15 downto 0);
  gram_bank_1(3 downto 0) <= gram_bank(3 downto 0);
  gram_clk_1 <= gram_clk;
  gram_din_1(15 downto 0) <= gram_din(15 downto 0);
  gram_dout(15 downto 0) <= mmu_gram_dout(15 downto 0);
  gram_oe_1 <= gram_oe;
  gram_we_1 <= gram_we;
  iram_addr_1(15 downto 0) <= iram_addr(15 downto 0);
  iram_clk_1 <= iram_clk;
  iram_dout(15 downto 0) <= mmu_iram_dout(15 downto 0);
  mmio_addr_1(15 downto 0) <= mmio_addr(15 downto 0);
  mmio_clk_1 <= mmio_clk;
  mmio_din_1(15 downto 0) <= mmio_din(15 downto 0);
  mmio_dout(15 downto 0) <= mmu_mmio_dout(15 downto 0);
  mmio_mem_addr(15 downto 0) <= mmu_mmio_mem_addr(15 downto 0);
  mmio_mem_ck <= mmu_mmio_mem_ck;
  mmio_mem_din(15 downto 0) <= mmu_mmio_mem_din(15 downto 0);
  mmio_mem_dout_1(15 downto 0) <= mmio_mem_dout(15 downto 0);
  mmio_mem_oe <= mmu_mmio_mem_oe;
  mmio_mem_we <= mmu_mmio_mem_we;
  mmio_oe_1 <= mmio_oe;
  mmio_we_1 <= mmio_we;
  vram_addr_1(15 downto 0) <= vram_addr(15 downto 0);
  vram_clk_1 <= vram_clk;
  vram_dout(15 downto 0) <= mmu_vram_dout(15 downto 0);
gram: component main_block_blk_mem_gen_1_0
     port map (
      addra(13 downto 0) => mmu_gram_mem_addr(13 downto 0),
      clka => mmu_gram_mem_clk,
      dina(15 downto 0) => mmu_gram_mem_din(15 downto 0),
      douta(15 downto 0) => gram_douta(15 downto 0),
      ena => mmu_gram_mem_oe,
      wea(0) => mmu_gram_mem_we
    );
iram: component main_block_blk_mem_gen_0_0
     port map (
      addra(13 downto 0) => mmu_iram_mem_addr(13 downto 0),
      clka => mmu_iram_mem_clk,
      dina(15 downto 0) => mmu_iram_mem_din(15 downto 0),
      douta(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      ena => mmu_iram_mem_oe,
      wea(0) => mmu_iram_mem_we
    );
mmu: component main_block_main_0_0
     port map (
      clk200mhz => clk200mhz_1,
      debug_addr(15 downto 0) => debug_addr_1(15 downto 0),
      debug_bank(3 downto 0) => debug_bank_1(3 downto 0),
      debug_clk => debug_clk_1,
      debug_clk200mhz => debug_clk200mhz_1,
      debug_din(15 downto 0) => debug_din_1(15 downto 0),
      debug_dout(15 downto 0) => mmu_debug_dout(15 downto 0),
      debug_enable => debug_enable_1,
      debug_iram_select => debug_iram_select_1,
      debug_oe => debug_oe_1,
      debug_we => debug_we_1,
      gram_addr(15 downto 0) => gram_addr_1(15 downto 0),
      gram_bank(3 downto 0) => gram_bank_1(3 downto 0),
      gram_clk => gram_clk_1,
      gram_din(15 downto 0) => gram_din_1(15 downto 0),
      gram_dout(15 downto 0) => mmu_gram_dout(15 downto 0),
      gram_mem_addr(13 downto 0) => mmu_gram_mem_addr(13 downto 0),
      gram_mem_ck => mmu_gram_mem_clk,
      gram_mem_din(15 downto 0) => mmu_gram_mem_din(15 downto 0),
      gram_mem_dout(15 downto 0) => gram_douta(15 downto 0),
      gram_mem_oe => mmu_gram_mem_oe,
      gram_mem_we => mmu_gram_mem_we,
      gram_oe => gram_oe_1,
      gram_we => gram_we_1,
      iram_addr(15 downto 0) => iram_addr_1(15 downto 0),
      iram_clk => iram_clk_1,
      iram_dout(15 downto 0) => mmu_iram_dout(15 downto 0),
      iram_mem_addr(13 downto 0) => mmu_iram_mem_addr(13 downto 0),
      iram_mem_ck => mmu_iram_mem_clk,
      iram_mem_din(15 downto 0) => mmu_iram_mem_din(15 downto 0),
      iram_mem_dout(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      iram_mem_oe => mmu_iram_mem_oe,
      iram_mem_we => mmu_iram_mem_we,
      mmio_addr(15 downto 0) => mmio_addr_1(15 downto 0),
      mmio_clk => mmio_clk_1,
      mmio_din(15 downto 0) => mmio_din_1(15 downto 0),
      mmio_dout(15 downto 0) => mmu_mmio_dout(15 downto 0),
      mmio_mem_addr(15 downto 0) => mmu_mmio_mem_addr(15 downto 0),
      mmio_mem_ck => mmu_mmio_mem_ck,
      mmio_mem_din(15 downto 0) => mmu_mmio_mem_din(15 downto 0),
      mmio_mem_dout(15 downto 0) => mmio_mem_dout_1(15 downto 0),
      mmio_mem_oe => mmu_mmio_mem_oe,
      mmio_mem_we => mmu_mmio_mem_we,
      mmio_oe => mmio_oe_1,
      mmio_we => mmio_we_1,
      vram_addr(15 downto 0) => vram_addr_1(15 downto 0),
      vram_clk => vram_clk_1,
      vram_dout(15 downto 0) => mmu_vram_dout(15 downto 0),
      vram_mem_addr(15 downto 0) => mmu_vram_mem_addr(15 downto 0),
      vram_mem_ck => mmu_vram_mem_clk,
      vram_mem_din(15 downto 0) => mmu_vram_mem_din(15 downto 0),
      vram_mem_dout(15 downto 0) => vram_douta(15 downto 0),
      vram_mem_oe => mmu_vram_mem_oe,
      vram_mem_we => mmu_vram_mem_we
    );
vram: component main_block_blk_mem_gen_2_0
     port map (
      addra(15 downto 0) => mmu_vram_mem_addr(15 downto 0),
      clka => mmu_vram_mem_clk,
      dina(15 downto 0) => mmu_vram_mem_din(15 downto 0),
      douta(15 downto 0) => vram_douta(15 downto 0),
      ena => mmu_vram_mem_oe,
      wea(0) => mmu_vram_mem_we
    );
end STRUCTURE;
