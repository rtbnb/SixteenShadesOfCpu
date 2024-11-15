-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Nov 15 10:58:32 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_IROM_0_1/main_IROM_0_1_sim_netlist.vhdl
-- Design      : main_IROM_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_IROM_0_1 is
  port (
    Address : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_IROM_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_IROM_0_1 : entity is "main_IROM_0_1,IROM,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_IROM_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_IROM_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_IROM_0_1 : entity is "IROM,Vivado 2024.1";
end main_IROM_0_1;

architecture STRUCTURE of main_IROM_0_1 is
  signal \Data[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Data[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal g0_b10_n_0 : STD_LOGIC;
  signal g0_b11_n_0 : STD_LOGIC;
  signal g0_b12_n_0 : STD_LOGIC;
  signal g0_b13_n_0 : STD_LOGIC;
  signal g0_b14_n_0 : STD_LOGIC;
  signal g0_b15_n_0 : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal g0_b8_n_0 : STD_LOGIC;
  signal g0_b9_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of g0_b0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of g0_b1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of g0_b10 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of g0_b11 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of g0_b12 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of g0_b13 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of g0_b14 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of g0_b15 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of g0_b2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of g0_b3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of g0_b4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of g0_b5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of g0_b6 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of g0_b7 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of g0_b8 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of g0_b9 : label is "soft_lutpair4";
begin
\Data[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b0_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(0)
    );
\Data[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b10_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(10)
    );
\Data[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b11_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(11)
    );
\Data[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b12_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(12)
    );
\Data[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b13_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(13)
    );
\Data[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b14_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(14)
    );
\Data[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b15_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(15)
    );
\Data[15]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Address(11),
      I1 => Address(12),
      I2 => Address(9),
      I3 => Address(10),
      O => \Data[15]_INST_0_i_1_n_0\
    );
\Data[15]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Address(7),
      I1 => Address(8),
      I2 => Address(5),
      I3 => Address(6),
      O => \Data[15]_INST_0_i_2_n_0\
    );
\Data[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b1_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(1)
    );
\Data[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b2_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(2)
    );
\Data[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b3_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(3)
    );
\Data[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b4_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(4)
    );
\Data[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b5_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(5)
    );
\Data[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b6_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(6)
    );
\Data[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b7_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(7)
    );
\Data[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b8_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(8)
    );
\Data[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b9_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(9)
    );
g0_b0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"34810190"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b0_n_0
    );
g0_b1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04811010"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2082FF00"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b10_n_0
    );
g0_b11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20040000"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b11_n_0
    );
g0_b12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"165DAAAA"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b12_n_0
    );
g0_b13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"082A0000"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b13_n_0
    );
g0_b14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B2AFFFF"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b14_n_0
    );
g0_b15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28A20000"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b15_n_0
    );
g0_b2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20111010"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b2_n_0
    );
g0_b3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00804410"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b3_n_0
    );
g0_b4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"24C41000"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b4_n_0
    );
g0_b5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38AB0000"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b5_n_0
    );
g0_b6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38EB0400"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b6_n_0
    );
g0_b7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28AA1400"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b7_n_0
    );
g0_b8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38C0CCCC"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b8_n_0
    );
g0_b9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008FF0F0"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b9_n_0
    );
end STRUCTURE;
