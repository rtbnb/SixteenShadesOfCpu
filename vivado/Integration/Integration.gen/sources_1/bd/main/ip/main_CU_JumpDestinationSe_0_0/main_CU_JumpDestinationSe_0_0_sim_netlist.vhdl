-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Nov 14 17:58:39 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_JumpDestinationSe_0_0/main_CU_JumpDestinationSe_0_0_sim_netlist.vhdl
-- Design      : main_CU_JumpDestinationSe_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_CU_JumpDestinationSe_0_0_CU_JumpDestinationSelector is
  port (
    JMP_Address : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Register1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_DestinationSelect : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_CU_JumpDestinationSe_0_0_CU_JumpDestinationSelector : entity is "CU_JumpDestinationSelector";
end main_CU_JumpDestinationSe_0_0_CU_JumpDestinationSelector;

architecture STRUCTURE of main_CU_JumpDestinationSe_0_0_CU_JumpDestinationSelector is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \JMP_Address[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \JMP_Address[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \JMP_Address[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \JMP_Address[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \JMP_Address[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \JMP_Address[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \JMP_Address[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \JMP_Address[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \JMP_Address[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \JMP_Address[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \JMP_Address[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \JMP_Address[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \JMP_Address[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \JMP_Address[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \JMP_Address[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \JMP_Address[9]_INST_0\ : label is "soft_lutpair4";
begin
\JMP_Address[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(0),
      I1 => Immediate(0),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(0)
    );
\JMP_Address[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(10),
      I1 => Immediate(10),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(10)
    );
\JMP_Address[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(11),
      I1 => Immediate(11),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(11)
    );
\JMP_Address[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(12),
      I1 => Immediate(12),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(12)
    );
\JMP_Address[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(13),
      I1 => Immediate(13),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(13)
    );
\JMP_Address[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(14),
      I1 => Immediate(14),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(14)
    );
\JMP_Address[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(15),
      I1 => Immediate(15),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(15)
    );
\JMP_Address[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(1),
      I1 => Immediate(1),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(1)
    );
\JMP_Address[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(2),
      I1 => Immediate(2),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(2)
    );
\JMP_Address[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(3),
      I1 => Immediate(3),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(3)
    );
\JMP_Address[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(4),
      I1 => Immediate(4),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(4)
    );
\JMP_Address[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(5),
      I1 => Immediate(5),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(5)
    );
\JMP_Address[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(6),
      I1 => Immediate(6),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(6)
    );
\JMP_Address[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(7),
      I1 => Immediate(7),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(7)
    );
\JMP_Address[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(8),
      I1 => Immediate(8),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(8)
    );
\JMP_Address[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(9),
      I1 => Immediate(9),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_CU_JumpDestinationSe_0_0 is
  port (
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Register1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_DestinationSelect : in STD_LOGIC;
    JMP_Address : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_CU_JumpDestinationSe_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_CU_JumpDestinationSe_0_0 : entity is "main_CU_JumpDestinationSe_0_0,CU_JumpDestinationSelector,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_CU_JumpDestinationSe_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_CU_JumpDestinationSe_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_CU_JumpDestinationSe_0_0 : entity is "CU_JumpDestinationSelector,Vivado 2024.1";
end main_CU_JumpDestinationSe_0_0;

architecture STRUCTURE of main_CU_JumpDestinationSe_0_0 is
begin
U0: entity work.main_CU_JumpDestinationSe_0_0_CU_JumpDestinationSelector
     port map (
      Immediate(15 downto 0) => Immediate(15 downto 0),
      JMP_Address(15 downto 0) => JMP_Address(15 downto 0),
      JMP_DestinationSelect => JMP_DestinationSelect,
      Register1(15 downto 0) => Register1(15 downto 0)
    );
end STRUCTURE;
