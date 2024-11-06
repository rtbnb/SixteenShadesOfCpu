--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Wed Nov  6 12:37:46 2024
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
    sys_clock : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of main_block : entity is "main_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=main_block,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of main_block : entity is "main_block.hwdef";
end main_block;

architecture STRUCTURE of main_block is
  component main_block_main_0_0 is
  port (
    clk : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 31 downto 0 );
    led : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    din : out STD_LOGIC_VECTOR ( 15 downto 0 );
    we : out STD_LOGIC;
    oe : out STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component main_block_main_0_0;
  component main_block_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component main_block_clk_wiz_0_0;
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
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal main_0_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal main_0_din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal main_0_oe : STD_LOGIC;
  signal main_0_we : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal NLW_clk_wiz_0_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_main_0_led_UNCONNECTED : STD_LOGIC;
  signal NLW_main_0_leds_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, ASSOCIATED_RESET reset, CLK_DOMAIN main_block_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  sys_clock_1 <= sys_clock;
blk_mem_gen_0: component main_block_blk_mem_gen_0_0
     port map (
      addra(15 downto 0) => main_0_addr(15 downto 0),
      clka => clk_wiz_0_clk_out1,
      dina(15 downto 0) => main_0_din(15 downto 0),
      douta(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      ena => main_0_oe,
      wea(0) => main_0_we
    );
clk_wiz_0: component main_block_clk_wiz_0_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => NLW_clk_wiz_0_locked_UNCONNECTED,
      reset => '0'
    );
main_0: component main_block_main_0_0
     port map (
      addr(15 downto 0) => main_0_addr(15 downto 0),
      clk => clk_wiz_0_clk_out1,
      din(15 downto 0) => main_0_din(15 downto 0),
      dout(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      led => NLW_main_0_led_UNCONNECTED,
      leds(31 downto 0) => NLW_main_0_leds_UNCONNECTED(31 downto 0),
      oe => main_0_oe,
      we => main_0_we
    );
end STRUCTURE;
