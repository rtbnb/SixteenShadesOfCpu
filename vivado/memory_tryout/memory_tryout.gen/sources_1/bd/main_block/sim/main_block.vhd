--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Sun Nov 10 17:41:06 2024
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
    iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iram_clk : in STD_LOGIC;
    iram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_dout_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_en_t : out STD_LOGIC;
    iram_mem_clk : out STD_LOGIC;
    iram_mem_oe_t : out STD_LOGIC;
    iram_mem_we_t : out STD_LOGIC;
    iram_oe : in STD_LOGIC;
    iram_we : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of main_block : entity is "main_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=main_block,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of main_block : entity is "main_block.hwdef";
end main_block;

architecture STRUCTURE of main_block is
  component main_block_main_0_0 is
  port (
    clk200mhz : in STD_LOGIC;
    iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_we : in STD_LOGIC;
    iram_oe : in STD_LOGIC;
    iram_clk : in STD_LOGIC;
    iram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_mem_din : out STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_mem_clk : out STD_LOGIC;
    iram_mem_we : out STD_LOGIC;
    iram_mem_oe : out STD_LOGIC;
    iram_mem_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iram_en_t : out STD_LOGIC
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
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk200mhz_1 : STD_LOGIC;
  signal iram_addr_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal iram_bank_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal iram_clk_1 : STD_LOGIC;
  signal iram_din_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal iram_oe_1 : STD_LOGIC;
  signal iram_we_1 : STD_LOGIC;
  signal mmu_iram_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_iram_en_t : STD_LOGIC;
  signal mmu_iram_mem_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_iram_mem_clk : STD_LOGIC;
  signal mmu_iram_mem_din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mmu_iram_mem_oe : STD_LOGIC;
  signal mmu_iram_mem_we : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of iram_mem_clk : signal is "xilinx.com:signal:clock:1.0 CLK.IRAM_MEM_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of iram_mem_clk : signal is "XIL_INTERFACENAME CLK.IRAM_MEM_CLK, CLK_DOMAIN main_block_main_0_0_iram_mem_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  clk200mhz_1 <= clk200mhz;
  iram_addr_1(15 downto 0) <= iram_addr(15 downto 0);
  iram_bank_1(3 downto 0) <= iram_bank(3 downto 0);
  iram_clk_1 <= iram_clk;
  iram_din_1(15 downto 0) <= iram_din(15 downto 0);
  iram_dout(15 downto 0) <= mmu_iram_dout(15 downto 0);
  iram_dout_t(15 downto 0) <= blk_mem_gen_0_douta(15 downto 0);
  iram_en_t <= mmu_iram_en_t;
  iram_mem_clk <= mmu_iram_mem_clk;
  iram_mem_oe_t <= mmu_iram_mem_oe;
  iram_mem_we_t <= mmu_iram_mem_we;
  iram_oe_1 <= iram_oe;
  iram_we_1 <= iram_we;
blk_mem_gen_0: component main_block_blk_mem_gen_0_0
     port map (
      addra(15 downto 0) => mmu_iram_mem_addr(15 downto 0),
      clka => mmu_iram_mem_clk,
      dina(15 downto 0) => mmu_iram_mem_din(15 downto 0),
      douta(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      ena => mmu_iram_mem_oe,
      wea(0) => mmu_iram_mem_we
    );
mmu: component main_block_main_0_0
     port map (
      clk200mhz => clk200mhz_1,
      iram_addr(15 downto 0) => iram_addr_1(15 downto 0),
      iram_bank(3 downto 0) => iram_bank_1(3 downto 0),
      iram_clk => iram_clk_1,
      iram_din(15 downto 0) => iram_din_1(15 downto 0),
      iram_dout(15 downto 0) => mmu_iram_dout(15 downto 0),
      iram_en_t => mmu_iram_en_t,
      iram_mem_addr(15 downto 0) => mmu_iram_mem_addr(15 downto 0),
      iram_mem_clk => mmu_iram_mem_clk,
      iram_mem_din(15 downto 0) => mmu_iram_mem_din(15 downto 0),
      iram_mem_dout(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      iram_mem_oe => mmu_iram_mem_oe,
      iram_mem_we => mmu_iram_mem_we,
      iram_oe => iram_oe_1,
      iram_we => iram_we_1
    );
end STRUCTURE;
