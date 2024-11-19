--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Tue Nov 19 13:16:35 2024
--Host        : DESKTOP-NFG9C79 running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    ALU_OPP_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ALU_OUT_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BIGGER_ZERO_FLAG_0 : out STD_LOGIC;
    CARRY_FLAG_0 : out STD_LOGIC;
    CLK_0 : in STD_LOGIC;
    D1_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    D2_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    NOT_ZERO_FLAG_0 : out STD_LOGIC;
    OVERFLOW_FLAG_0 : out STD_LOGIC;
    RHO_FLAG_0 : out STD_LOGIC;
    RHO_PIN_0 : in STD_LOGIC;
    SMALLER_ZERO_FLAG_0 : out STD_LOGIC;
    ZERO_FLAG_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_ALU_0_6 is
  port (
    CLK : in STD_LOGIC;
    D1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    D2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ALU_OPP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RHO_PIN : in STD_LOGIC;
    ALU_OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CARRY_FLAG : out STD_LOGIC;
    ZERO_FLAG : out STD_LOGIC;
    SMALLER_ZERO_FLAG : out STD_LOGIC;
    BIGGER_ZERO_FLAG : out STD_LOGIC;
    OVERFLOW_FLAG : out STD_LOGIC;
    RHO_FLAG : out STD_LOGIC;
    NOT_ZERO_FLAG : out STD_LOGIC
  );
  end component design_1_ALU_0_6;
  signal ALU_0_ALU_OUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ALU_0_BIGGER_ZERO_FLAG : STD_LOGIC;
  signal ALU_0_CARRY_FLAG : STD_LOGIC;
  signal ALU_0_NOT_ZERO_FLAG : STD_LOGIC;
  signal ALU_0_OVERFLOW_FLAG : STD_LOGIC;
  signal ALU_0_RHO_FLAG : STD_LOGIC;
  signal ALU_0_SMALLER_ZERO_FLAG : STD_LOGIC;
  signal ALU_0_ZERO_FLAG : STD_LOGIC;
  signal ALU_OPP_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CLK_0_1 : STD_LOGIC;
  signal D1_0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal D2_0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RHO_PIN_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_1_CLK_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  ALU_OPP_0_1(3 downto 0) <= ALU_OPP_0(3 downto 0);
  ALU_OUT_0(15 downto 0) <= ALU_0_ALU_OUT(15 downto 0);
  BIGGER_ZERO_FLAG_0 <= ALU_0_BIGGER_ZERO_FLAG;
  CARRY_FLAG_0 <= ALU_0_CARRY_FLAG;
  CLK_0_1 <= CLK_0;
  D1_0_1(15 downto 0) <= D1_0(15 downto 0);
  D2_0_1(15 downto 0) <= D2_0(15 downto 0);
  NOT_ZERO_FLAG_0 <= ALU_0_NOT_ZERO_FLAG;
  OVERFLOW_FLAG_0 <= ALU_0_OVERFLOW_FLAG;
  RHO_FLAG_0 <= ALU_0_RHO_FLAG;
  RHO_PIN_0_1 <= RHO_PIN_0;
  SMALLER_ZERO_FLAG_0 <= ALU_0_SMALLER_ZERO_FLAG;
  ZERO_FLAG_0 <= ALU_0_ZERO_FLAG;
ALU_0: component design_1_ALU_0_6
     port map (
      ALU_OPP(3 downto 0) => ALU_OPP_0_1(3 downto 0),
      ALU_OUT(15 downto 0) => ALU_0_ALU_OUT(15 downto 0),
      BIGGER_ZERO_FLAG => ALU_0_BIGGER_ZERO_FLAG,
      CARRY_FLAG => ALU_0_CARRY_FLAG,
      CLK => CLK_0_1,
      D1(15 downto 0) => D1_0_1(15 downto 0),
      D2(15 downto 0) => D2_0_1(15 downto 0),
      NOT_ZERO_FLAG => ALU_0_NOT_ZERO_FLAG,
      OVERFLOW_FLAG => ALU_0_OVERFLOW_FLAG,
      RHO_FLAG => ALU_0_RHO_FLAG,
      RHO_PIN => RHO_PIN_0_1,
      SMALLER_ZERO_FLAG => ALU_0_SMALLER_ZERO_FLAG,
      ZERO_FLAG => ALU_0_ZERO_FLAG
    );
end STRUCTURE;
