--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Thu Nov  7 15:52:45 2024
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of main_block : entity is "main_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=main_block,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of main_block : entity is "main_block.hwdef";
end main_block;

architecture STRUCTURE of main_block is
  component main_block_main_0_0 is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC;
    addr1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    addr2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    din1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    din2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    we : out STD_LOGIC;
    oe : out STD_LOGIC;
    dout1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : out STD_LOGIC;
    clkb : out STD_LOGIC;
    test_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    test_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    test_write : in STD_LOGIC;
    should_write : in STD_LOGIC;
    should_read : in STD_LOGIC
  );
  end component main_block_main_0_0;
  component main_block_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_block_blk_mem_gen_0_0;
  component main_block_blk_mem_gen_1_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_block_blk_mem_gen_1_0;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal blk_mem_gen_1_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal main_0_led : STD_LOGIC;
  signal main_0_oe : STD_LOGIC;
  signal mmu_addr1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_addr2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_clkb : STD_LOGIC;
  signal mmu_din1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_din2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_we : STD_LOGIC;
  signal should_read_1 : STD_LOGIC;
  signal should_write_1 : STD_LOGIC;
  signal test_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal test_data_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal test_write_1 : STD_LOGIC;
  signal NLW_mmu_clka_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk100mhz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK100MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk100mhz : signal is "XIL_INTERFACENAME CLK.CLK100MHZ, CLK_DOMAIN main_block_clk100mhz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of mem_clk : signal is "xilinx.com:signal:clock:1.0 CLK.MEM_CLK CLK";
  attribute X_INTERFACE_PARAMETER of mem_clk : signal is "XIL_INTERFACENAME CLK.MEM_CLK, CLK_DOMAIN main_block_clk100mhz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  addr1_t(15 downto 0) <= mmu_addr1(15 downto 0);
  clk_wiz_0_clk_out1 <= clk100mhz;
  din1_t(15 downto 0) <= mmu_din1(15 downto 0);
  dout1_t(15 downto 0) <= blk_mem_gen_0_douta(15 downto 0);
  led <= main_0_led;
  mem_clk <= clk_wiz_0_clk_out1;
  oe_t <= main_0_oe;
  should_read_1 <= should_read;
  should_write_1 <= should_write;
  test_addr_1(15 downto 0) <= test_addr(15 downto 0);
  test_data_1(15 downto 0) <= test_data(15 downto 0);
  test_write_1 <= test_write;
  we_t <= mmu_we;
blk_mem_gen_0: component main_block_blk_mem_gen_0_0
     port map (
      addra(15 downto 0) => mmu_addr1(15 downto 0),
      clka => clk_wiz_0_clk_out1,
      dina(15 downto 0) => mmu_din1(15 downto 0),
      douta(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      ena => main_0_oe,
      wea(0) => mmu_we
    );
blk_mem_gen_1: component main_block_blk_mem_gen_1_0
     port map (
      addra(15 downto 0) => mmu_addr2(15 downto 0),
      clka => mmu_clkb,
      dina(15 downto 0) => mmu_din2(15 downto 0),
      douta(15 downto 0) => blk_mem_gen_1_douta(15 downto 0),
      ena => main_0_oe,
      wea(0) => mmu_we
    );
mmu: component main_block_main_0_0
     port map (
      addr1(15 downto 0) => mmu_addr1(15 downto 0),
      addr2(15 downto 0) => mmu_addr2(15 downto 0),
      clk => clk_wiz_0_clk_out1,
      clka => NLW_mmu_clka_UNCONNECTED,
      clkb => mmu_clkb,
      din1(15 downto 0) => mmu_din1(15 downto 0),
      din2(15 downto 0) => mmu_din2(15 downto 0),
      dout1(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      dout2(15 downto 0) => blk_mem_gen_1_douta(15 downto 0),
      led => main_0_led,
      oe => main_0_oe,
      should_read => should_read_1,
      should_write => should_write_1,
      test_addr(15 downto 0) => test_addr_1(15 downto 0),
      test_data(15 downto 0) => test_data_1(15 downto 0),
      test_write => test_write_1,
      we => mmu_we
    );
end STRUCTURE;
