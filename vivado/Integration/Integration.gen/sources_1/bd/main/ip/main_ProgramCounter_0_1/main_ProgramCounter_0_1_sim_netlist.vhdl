-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Nov 15 10:58:32 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_ProgramCounter_0_1/main_ProgramCounter_0_1_sim_netlist.vhdl
-- Design      : main_ProgramCounter_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_ProgramCounter_0_1_ProgramCounter is
  port (
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP : in STD_LOGIC;
    InstrExec_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Stalled : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_ProgramCounter_0_1_ProgramCounter : entity is "ProgramCounter";
end main_ProgramCounter_0_1_ProgramCounter;

architecture STRUCTURE of main_ProgramCounter_0_1_ProgramCounter is
  signal \^dout\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \InstrAddr[11]_i_2_n_0\ : STD_LOGIC;
  signal \InstrAddr[11]_i_3_n_0\ : STD_LOGIC;
  signal \InstrAddr[11]_i_4_n_0\ : STD_LOGIC;
  signal \InstrAddr[11]_i_5_n_0\ : STD_LOGIC;
  signal \InstrAddr[15]_i_1_n_0\ : STD_LOGIC;
  signal \InstrAddr[15]_i_3_n_0\ : STD_LOGIC;
  signal \InstrAddr[15]_i_4_n_0\ : STD_LOGIC;
  signal \InstrAddr[15]_i_5_n_0\ : STD_LOGIC;
  signal \InstrAddr[15]_i_6_n_0\ : STD_LOGIC;
  signal \InstrAddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \InstrAddr[3]_i_3_n_0\ : STD_LOGIC;
  signal \InstrAddr[3]_i_4_n_0\ : STD_LOGIC;
  signal \InstrAddr[3]_i_5_n_0\ : STD_LOGIC;
  signal \InstrAddr[3]_i_6_n_0\ : STD_LOGIC;
  signal \InstrAddr[7]_i_2_n_0\ : STD_LOGIC;
  signal \InstrAddr[7]_i_3_n_0\ : STD_LOGIC;
  signal \InstrAddr[7]_i_4_n_0\ : STD_LOGIC;
  signal \InstrAddr[7]_i_5_n_0\ : STD_LOGIC;
  signal \InstrAddr_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \InstrAddr_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \InstrAddr_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \InstrAddr_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \InstrAddr_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \InstrAddr_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \InstrAddr_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \InstrAddr_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \InstrAddr_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \InstrAddr_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \InstrAddr_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \InstrAddr_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \InstrAddr_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \InstrAddr_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \InstrAddr_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \InstrAddr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \InstrAddr_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \InstrAddr_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \InstrAddr_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \InstrAddr_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \InstrAddr_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \InstrAddr_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \InstrAddr_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \InstrAddr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \InstrAddr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \InstrAddr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \InstrAddr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \InstrAddr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \InstrAddr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \InstrAddr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \InstrAddr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_InstrAddr_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \InstrAddr_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \InstrAddr_reg[15]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \InstrAddr_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \InstrAddr_reg[7]_i_1\ : label is 11;
begin
  Dout(15 downto 0) <= \^dout\(15 downto 0);
\InstrAddr[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(11),
      I1 => JMP,
      I2 => \^dout\(11),
      O => \InstrAddr[11]_i_2_n_0\
    );
\InstrAddr[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(10),
      I1 => JMP,
      I2 => \^dout\(10),
      O => \InstrAddr[11]_i_3_n_0\
    );
\InstrAddr[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(9),
      I1 => JMP,
      I2 => \^dout\(9),
      O => \InstrAddr[11]_i_4_n_0\
    );
\InstrAddr[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(8),
      I1 => JMP,
      I2 => \^dout\(8),
      O => \InstrAddr[11]_i_5_n_0\
    );
\InstrAddr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => JMP,
      I1 => Stalled,
      O => \InstrAddr[15]_i_1_n_0\
    );
\InstrAddr[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(15),
      I1 => JMP,
      I2 => \^dout\(15),
      O => \InstrAddr[15]_i_3_n_0\
    );
\InstrAddr[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(14),
      I1 => JMP,
      I2 => \^dout\(14),
      O => \InstrAddr[15]_i_4_n_0\
    );
\InstrAddr[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(13),
      I1 => JMP,
      I2 => \^dout\(13),
      O => \InstrAddr[15]_i_5_n_0\
    );
\InstrAddr[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(12),
      I1 => JMP,
      I2 => \^dout\(12),
      O => \InstrAddr[15]_i_6_n_0\
    );
\InstrAddr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(0),
      I1 => JMP,
      I2 => \^dout\(0),
      O => \InstrAddr[3]_i_2_n_0\
    );
\InstrAddr[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(3),
      I1 => JMP,
      I2 => \^dout\(3),
      O => \InstrAddr[3]_i_3_n_0\
    );
\InstrAddr[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(2),
      I1 => JMP,
      I2 => \^dout\(2),
      O => \InstrAddr[3]_i_4_n_0\
    );
\InstrAddr[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(1),
      I1 => JMP,
      I2 => \^dout\(1),
      O => \InstrAddr[3]_i_5_n_0\
    );
\InstrAddr[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^dout\(0),
      I1 => Din(0),
      I2 => JMP,
      O => \InstrAddr[3]_i_6_n_0\
    );
\InstrAddr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(7),
      I1 => JMP,
      I2 => \^dout\(7),
      O => \InstrAddr[7]_i_2_n_0\
    );
\InstrAddr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(6),
      I1 => JMP,
      I2 => \^dout\(6),
      O => \InstrAddr[7]_i_3_n_0\
    );
\InstrAddr[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(5),
      I1 => JMP,
      I2 => \^dout\(5),
      O => \InstrAddr[7]_i_4_n_0\
    );
\InstrAddr[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(4),
      I1 => JMP,
      I2 => \^dout\(4),
      O => \InstrAddr[7]_i_5_n_0\
    );
\InstrAddr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[3]_i_1_n_7\,
      Q => \^dout\(0)
    );
\InstrAddr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[11]_i_1_n_5\,
      Q => \^dout\(10)
    );
\InstrAddr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[11]_i_1_n_4\,
      Q => \^dout\(11)
    );
\InstrAddr_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \InstrAddr_reg[7]_i_1_n_0\,
      CO(3) => \InstrAddr_reg[11]_i_1_n_0\,
      CO(2) => \InstrAddr_reg[11]_i_1_n_1\,
      CO(1) => \InstrAddr_reg[11]_i_1_n_2\,
      CO(0) => \InstrAddr_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \InstrAddr_reg[11]_i_1_n_4\,
      O(2) => \InstrAddr_reg[11]_i_1_n_5\,
      O(1) => \InstrAddr_reg[11]_i_1_n_6\,
      O(0) => \InstrAddr_reg[11]_i_1_n_7\,
      S(3) => \InstrAddr[11]_i_2_n_0\,
      S(2) => \InstrAddr[11]_i_3_n_0\,
      S(1) => \InstrAddr[11]_i_4_n_0\,
      S(0) => \InstrAddr[11]_i_5_n_0\
    );
\InstrAddr_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[15]_i_2_n_7\,
      Q => \^dout\(12)
    );
\InstrAddr_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[15]_i_2_n_6\,
      Q => \^dout\(13)
    );
\InstrAddr_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[15]_i_2_n_5\,
      Q => \^dout\(14)
    );
\InstrAddr_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[15]_i_2_n_4\,
      Q => \^dout\(15)
    );
\InstrAddr_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \InstrAddr_reg[11]_i_1_n_0\,
      CO(3) => \NLW_InstrAddr_reg[15]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \InstrAddr_reg[15]_i_2_n_1\,
      CO(1) => \InstrAddr_reg[15]_i_2_n_2\,
      CO(0) => \InstrAddr_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \InstrAddr_reg[15]_i_2_n_4\,
      O(2) => \InstrAddr_reg[15]_i_2_n_5\,
      O(1) => \InstrAddr_reg[15]_i_2_n_6\,
      O(0) => \InstrAddr_reg[15]_i_2_n_7\,
      S(3) => \InstrAddr[15]_i_3_n_0\,
      S(2) => \InstrAddr[15]_i_4_n_0\,
      S(1) => \InstrAddr[15]_i_5_n_0\,
      S(0) => \InstrAddr[15]_i_6_n_0\
    );
\InstrAddr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[3]_i_1_n_6\,
      Q => \^dout\(1)
    );
\InstrAddr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[3]_i_1_n_5\,
      Q => \^dout\(2)
    );
\InstrAddr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[3]_i_1_n_4\,
      Q => \^dout\(3)
    );
\InstrAddr_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \InstrAddr_reg[3]_i_1_n_0\,
      CO(2) => \InstrAddr_reg[3]_i_1_n_1\,
      CO(1) => \InstrAddr_reg[3]_i_1_n_2\,
      CO(0) => \InstrAddr_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \InstrAddr[3]_i_2_n_0\,
      O(3) => \InstrAddr_reg[3]_i_1_n_4\,
      O(2) => \InstrAddr_reg[3]_i_1_n_5\,
      O(1) => \InstrAddr_reg[3]_i_1_n_6\,
      O(0) => \InstrAddr_reg[3]_i_1_n_7\,
      S(3) => \InstrAddr[3]_i_3_n_0\,
      S(2) => \InstrAddr[3]_i_4_n_0\,
      S(1) => \InstrAddr[3]_i_5_n_0\,
      S(0) => \InstrAddr[3]_i_6_n_0\
    );
\InstrAddr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[7]_i_1_n_7\,
      Q => \^dout\(4)
    );
\InstrAddr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[7]_i_1_n_6\,
      Q => \^dout\(5)
    );
\InstrAddr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[7]_i_1_n_5\,
      Q => \^dout\(6)
    );
\InstrAddr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[7]_i_1_n_4\,
      Q => \^dout\(7)
    );
\InstrAddr_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \InstrAddr_reg[3]_i_1_n_0\,
      CO(3) => \InstrAddr_reg[7]_i_1_n_0\,
      CO(2) => \InstrAddr_reg[7]_i_1_n_1\,
      CO(1) => \InstrAddr_reg[7]_i_1_n_2\,
      CO(0) => \InstrAddr_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \InstrAddr_reg[7]_i_1_n_4\,
      O(2) => \InstrAddr_reg[7]_i_1_n_5\,
      O(1) => \InstrAddr_reg[7]_i_1_n_6\,
      O(0) => \InstrAddr_reg[7]_i_1_n_7\,
      S(3) => \InstrAddr[7]_i_2_n_0\,
      S(2) => \InstrAddr[7]_i_3_n_0\,
      S(1) => \InstrAddr[7]_i_4_n_0\,
      S(0) => \InstrAddr[7]_i_5_n_0\
    );
\InstrAddr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[11]_i_1_n_7\,
      Q => \^dout\(8)
    );
\InstrAddr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[11]_i_1_n_6\,
      Q => \^dout\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_ProgramCounter_0_1 is
  port (
    InstrExec_CLK : in STD_LOGIC;
    Stalled : in STD_LOGIC;
    JMP : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_ProgramCounter_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_ProgramCounter_0_1 : entity is "main_ProgramCounter_0_1,ProgramCounter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_ProgramCounter_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_ProgramCounter_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_ProgramCounter_0_1 : entity is "ProgramCounter,Vivado 2024.1";
end main_ProgramCounter_0_1;

architecture STRUCTURE of main_ProgramCounter_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of InstrExec_CLK : signal is "xilinx.com:signal:clock:1.0 InstrExec_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of InstrExec_CLK : signal is "XIL_INTERFACENAME InstrExec_CLK, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.main_ProgramCounter_0_1_ProgramCounter
     port map (
      Din(15 downto 0) => Din(15 downto 0),
      Dout(15 downto 0) => Dout(15 downto 0),
      InstrExec_CLK => InstrExec_CLK,
      JMP => JMP,
      Reset => Reset,
      Stalled => Stalled
    );
end STRUCTURE;
