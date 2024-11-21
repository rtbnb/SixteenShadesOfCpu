--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Thu Nov 21 21:31:47 2024
--Host        : DESKTOP-7KK7962 running 64-bit major release  (build 9200)
--Command     : generate_target TestBlockDesign.bd
--Design      : TestBlockDesign
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TestBlockDesign is
  port (
    InstrExec_CLK : in STD_LOGIC;
    b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    h_sync : out STD_LOGIC;
    ioe : out STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v_sync : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of TestBlockDesign : entity is "TestBlockDesign,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=TestBlockDesign,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of TestBlockDesign : entity is "TestBlockDesign.hwdef";
end TestBlockDesign;

architecture STRUCTURE of TestBlockDesign is
  component TestBlockDesign_VGA_Controller_0_0 is
  port (
    InstrExec_CLK : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ioe : out STD_LOGIC;
    h_sync : out STD_LOGIC;
    v_sync : out STD_LOGIC;
    VRAM_Addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    VRAM_Data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    VRAM_Clk : out STD_LOGIC
  );
  end component TestBlockDesign_VGA_Controller_0_0;
  component TestBlockDesign_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 11 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component TestBlockDesign_blk_mem_gen_0_0;
  signal InstrExec_CLK_1 : STD_LOGIC;
  signal VGA_Controller_0_VRAM_Addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal VGA_Controller_0_VRAM_Clk : STD_LOGIC;
  signal VGA_Controller_0_b : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_Controller_0_g : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_Controller_0_h_sync : STD_LOGIC;
  signal VGA_Controller_0_ioe : STD_LOGIC;
  signal VGA_Controller_0_r : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_Controller_0_v_sync : STD_LOGIC;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of InstrExec_CLK : signal is "xilinx.com:signal:clock:1.0 CLK.INSTREXEC_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of InstrExec_CLK : signal is "XIL_INTERFACENAME CLK.INSTREXEC_CLK, CLK_DOMAIN TestBlockDesign_InstrExec_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  InstrExec_CLK_1 <= InstrExec_CLK;
  b(3 downto 0) <= VGA_Controller_0_b(3 downto 0);
  g(3 downto 0) <= VGA_Controller_0_g(3 downto 0);
  h_sync <= VGA_Controller_0_h_sync;
  ioe <= VGA_Controller_0_ioe;
  r(3 downto 0) <= VGA_Controller_0_r(3 downto 0);
  v_sync <= VGA_Controller_0_v_sync;
VGA_Controller_0: component TestBlockDesign_VGA_Controller_0_0
     port map (
      InstrExec_CLK => InstrExec_CLK_1,
      VRAM_Addr(15 downto 0) => VGA_Controller_0_VRAM_Addr(15 downto 0),
      VRAM_Clk => VGA_Controller_0_VRAM_Clk,
      VRAM_Data(15 downto 12) => B"0000",
      VRAM_Data(11 downto 0) => blk_mem_gen_0_douta(11 downto 0),
      b(3 downto 0) => VGA_Controller_0_b(3 downto 0),
      g(3 downto 0) => VGA_Controller_0_g(3 downto 0),
      h_sync => VGA_Controller_0_h_sync,
      ioe => VGA_Controller_0_ioe,
      r(3 downto 0) => VGA_Controller_0_r(3 downto 0),
      v_sync => VGA_Controller_0_v_sync
    );
blk_mem_gen_0: component TestBlockDesign_blk_mem_gen_0_0
     port map (
      addra(14 downto 0) => VGA_Controller_0_VRAM_Addr(14 downto 0),
      clka => VGA_Controller_0_VRAM_Clk,
      dina(11 downto 0) => B"000000001000",
      douta(11 downto 0) => blk_mem_gen_0_douta(11 downto 0),
      wea(0) => '0'
    );
end STRUCTURE;
