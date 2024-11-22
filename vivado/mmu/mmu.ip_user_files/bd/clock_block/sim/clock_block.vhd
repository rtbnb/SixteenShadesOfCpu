--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Fri Nov 22 23:54:40 2024
--Host        : DESKTOP-Q664A4O running 64-bit major release  (build 9200)
--Command     : generate_target clock_block.bd
--Design      : clock_block
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_block is
  port (
    ck_stable : out STD_LOGIC;
    clk100mhz_in : in STD_LOGIC;
    debug_clk : out STD_LOGIC;
    debug_en : in STD_LOGIC;
    debug_mock_clk : in STD_LOGIC;
    debug_reset : in STD_LOGIC;
    exec_clk : out STD_LOGIC;
    fault_reset : in STD_LOGIC;
    load_clk : out STD_LOGIC;
    test_state : inout STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of clock_block : entity is "clock_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=clock_block,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of clock_block : entity is "clock_block.hwdef";
end clock_block;

architecture STRUCTURE of clock_block is
  component clock_block_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk100mhz : out STD_LOGIC;
    clk50mhz : out STD_LOGIC;
    debug_guard_clk : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component clock_block_clk_wiz_0_0;
  component clock_block_clockcontroller_0_0 is
  port (
    clk100mhz_in : in STD_LOGIC;
    clk50mhz_in : in STD_LOGIC;
    debug_guard_clk : in STD_LOGIC;
    wizard_locked : in STD_LOGIC;
    fault_reset : in STD_LOGIC;
    debug_reset : in STD_LOGIC;
    debug_enable : in STD_LOGIC;
    debug_mock_clk : in STD_LOGIC;
    load_clk : out STD_LOGIC;
    exec_clk : out STD_LOGIC;
    debug_clk : out STD_LOGIC;
    ck_stable : out STD_LOGIC;
    test_state : inout STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component clock_block_clockcontroller_0_0;
  signal Net : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk100mhz_in_1 : STD_LOGIC;
  signal clk_wiz_0_clk100mhz : STD_LOGIC;
  signal clk_wiz_0_clk50mhz : STD_LOGIC;
  signal clk_wiz_0_debug_guard_clk : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal clockcontroller_0_ck_stable : STD_LOGIC;
  signal clockcontroller_0_debug_clk : STD_LOGIC;
  signal clockcontroller_0_exec_clk : STD_LOGIC;
  signal clockcontroller_0_load_clk : STD_LOGIC;
  signal debug_en_1 : STD_LOGIC;
  signal debug_mock_clk_1 : STD_LOGIC;
  signal debug_reset_1 : STD_LOGIC;
  signal fault_reset_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk100mhz_in : signal is "xilinx.com:signal:clock:1.0 CLK.CLK100MHZ_IN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk100mhz_in : signal is "XIL_INTERFACENAME CLK.CLK100MHZ_IN, CLK_DOMAIN clock_block_clk100mhz_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of debug_clk : signal is "xilinx.com:signal:clock:1.0 CLK.DEBUG_CLK CLK";
  attribute X_INTERFACE_PARAMETER of debug_clk : signal is "XIL_INTERFACENAME CLK.DEBUG_CLK, CLK_DOMAIN clock_block_clockcontroller_0_0_debug_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of debug_mock_clk : signal is "xilinx.com:signal:clock:1.0 CLK.DEBUG_MOCK_CLK CLK";
  attribute X_INTERFACE_PARAMETER of debug_mock_clk : signal is "XIL_INTERFACENAME CLK.DEBUG_MOCK_CLK, CLK_DOMAIN clock_block_debug_mock_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of debug_reset : signal is "xilinx.com:signal:reset:1.0 RST.DEBUG_RESET RST";
  attribute X_INTERFACE_PARAMETER of debug_reset : signal is "XIL_INTERFACENAME RST.DEBUG_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of exec_clk : signal is "xilinx.com:signal:clock:1.0 CLK.EXEC_CLK CLK";
  attribute X_INTERFACE_PARAMETER of exec_clk : signal is "XIL_INTERFACENAME CLK.EXEC_CLK, CLK_DOMAIN clock_block_clockcontroller_0_0_exec_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of fault_reset : signal is "xilinx.com:signal:reset:1.0 RST.FAULT_RESET RST";
  attribute X_INTERFACE_PARAMETER of fault_reset : signal is "XIL_INTERFACENAME RST.FAULT_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of load_clk : signal is "xilinx.com:signal:clock:1.0 CLK.LOAD_CLK CLK";
  attribute X_INTERFACE_PARAMETER of load_clk : signal is "XIL_INTERFACENAME CLK.LOAD_CLK, CLK_DOMAIN clock_block_clockcontroller_0_0_load_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  ck_stable <= clockcontroller_0_ck_stable;
  clk100mhz_in_1 <= clk100mhz_in;
  debug_clk <= clockcontroller_0_debug_clk;
  debug_en_1 <= debug_en;
  debug_mock_clk_1 <= debug_mock_clk;
  debug_reset_1 <= debug_reset;
  exec_clk <= clockcontroller_0_exec_clk;
  fault_reset_1 <= fault_reset;
  load_clk <= clockcontroller_0_load_clk;
clk_wiz_0: component clock_block_clk_wiz_0_0
     port map (
      clk100mhz => clk_wiz_0_clk100mhz,
      clk50mhz => clk_wiz_0_clk50mhz,
      clk_in1 => clk100mhz_in_1,
      debug_guard_clk => clk_wiz_0_debug_guard_clk,
      locked => clk_wiz_0_locked
    );
clockcontroller_0: component clock_block_clockcontroller_0_0
     port map (
      ck_stable => clockcontroller_0_ck_stable,
      clk100mhz_in => clk_wiz_0_clk100mhz,
      clk50mhz_in => clk_wiz_0_clk50mhz,
      debug_clk => clockcontroller_0_debug_clk,
      debug_enable => debug_en_1,
      debug_guard_clk => clk_wiz_0_debug_guard_clk,
      debug_mock_clk => debug_mock_clk_1,
      debug_reset => debug_reset_1,
      exec_clk => clockcontroller_0_exec_clk,
      fault_reset => fault_reset_1,
      load_clk => clockcontroller_0_load_clk,
      test_state(3 downto 0) => test_state(3 downto 0),
      wizard_locked => clk_wiz_0_locked
    );
end STRUCTURE;
