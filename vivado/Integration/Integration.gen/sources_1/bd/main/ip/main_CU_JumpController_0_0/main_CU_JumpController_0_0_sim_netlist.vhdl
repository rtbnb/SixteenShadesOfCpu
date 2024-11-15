-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Nov 15 11:23:48 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_JumpController_0_0/main_CU_JumpController_0_0_sim_netlist.vhdl
-- Design      : main_CU_JumpController_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_CU_JumpController_0_0_CU_JumpController is
  port (
    PC_Next : out STD_LOGIC_VECTOR ( 15 downto 0 );
    PC_Current : in STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_Address : in STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_Relative : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_CU_JumpController_0_0_CU_JumpController : entity is "CU_JumpController";
end main_CU_JumpController_0_0_CU_JumpController;

architecture STRUCTURE of main_CU_JumpController_0_0_CU_JumpController is
  signal relative_jump_destination : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \relative_jump_destination__0_carry__0_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__0_n_1\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__0_n_2\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__0_n_3\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__1_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__1_n_1\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__1_n_2\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__1_n_3\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__2_n_1\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__2_n_2\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__2_n_3\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_1__2_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_2__2_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_3__2_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_4__2_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_5__2_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_6__2_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_7__1_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_7__2_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_8__1_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_n_1\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_n_2\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_n_3\ : STD_LOGIC;
  signal \NLW_relative_jump_destination__0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \PC_Next[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \PC_Next[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \PC_Next[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \PC_Next[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \PC_Next[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \PC_Next[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \PC_Next[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \PC_Next[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \PC_Next[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \PC_Next[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \PC_Next[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \PC_Next[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \PC_Next[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \PC_Next[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \PC_Next[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \PC_Next[9]_INST_0\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \relative_jump_destination__0_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \relative_jump_destination__0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \relative_jump_destination__0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \relative_jump_destination__0_carry__2\ : label is 35;
begin
\PC_Next[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(0),
      I1 => JMP_Address(0),
      I2 => JMP_Relative,
      O => PC_Next(0)
    );
\PC_Next[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(10),
      I1 => JMP_Address(10),
      I2 => JMP_Relative,
      O => PC_Next(10)
    );
\PC_Next[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(11),
      I1 => JMP_Address(11),
      I2 => JMP_Relative,
      O => PC_Next(11)
    );
\PC_Next[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(12),
      I1 => JMP_Address(12),
      I2 => JMP_Relative,
      O => PC_Next(12)
    );
\PC_Next[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(13),
      I1 => JMP_Address(13),
      I2 => JMP_Relative,
      O => PC_Next(13)
    );
\PC_Next[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(14),
      I1 => JMP_Address(14),
      I2 => JMP_Relative,
      O => PC_Next(14)
    );
\PC_Next[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(15),
      I1 => JMP_Address(15),
      I2 => JMP_Relative,
      O => PC_Next(15)
    );
\PC_Next[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(1),
      I1 => JMP_Address(1),
      I2 => JMP_Relative,
      O => PC_Next(1)
    );
\PC_Next[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(2),
      I1 => JMP_Address(2),
      I2 => JMP_Relative,
      O => PC_Next(2)
    );
\PC_Next[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(3),
      I1 => JMP_Address(3),
      I2 => JMP_Relative,
      O => PC_Next(3)
    );
\PC_Next[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(4),
      I1 => JMP_Address(4),
      I2 => JMP_Relative,
      O => PC_Next(4)
    );
\PC_Next[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(5),
      I1 => JMP_Address(5),
      I2 => JMP_Relative,
      O => PC_Next(5)
    );
\PC_Next[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(6),
      I1 => JMP_Address(6),
      I2 => JMP_Relative,
      O => PC_Next(6)
    );
\PC_Next[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(7),
      I1 => JMP_Address(7),
      I2 => JMP_Relative,
      O => PC_Next(7)
    );
\PC_Next[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(8),
      I1 => JMP_Address(8),
      I2 => JMP_Relative,
      O => PC_Next(8)
    );
\PC_Next[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(9),
      I1 => JMP_Address(9),
      I2 => JMP_Relative,
      O => PC_Next(9)
    );
\relative_jump_destination__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \relative_jump_destination__0_carry_n_0\,
      CO(2) => \relative_jump_destination__0_carry_n_1\,
      CO(1) => \relative_jump_destination__0_carry_n_2\,
      CO(0) => \relative_jump_destination__0_carry_n_3\,
      CYINIT => '1',
      DI(3) => \relative_jump_destination__0_carry_i_1_n_0\,
      DI(2) => \relative_jump_destination__0_carry_i_2_n_0\,
      DI(1) => \relative_jump_destination__0_carry_i_3_n_0\,
      DI(0) => \relative_jump_destination__0_carry_i_4_n_0\,
      O(3 downto 0) => relative_jump_destination(3 downto 0),
      S(3) => \relative_jump_destination__0_carry_i_5_n_0\,
      S(2) => \relative_jump_destination__0_carry_i_6_n_0\,
      S(1) => \relative_jump_destination__0_carry_i_7_n_0\,
      S(0) => \relative_jump_destination__0_carry_i_8_n_0\
    );
\relative_jump_destination__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \relative_jump_destination__0_carry_n_0\,
      CO(3) => \relative_jump_destination__0_carry__0_n_0\,
      CO(2) => \relative_jump_destination__0_carry__0_n_1\,
      CO(1) => \relative_jump_destination__0_carry__0_n_2\,
      CO(0) => \relative_jump_destination__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \relative_jump_destination__0_carry_i_1__0_n_0\,
      DI(2) => \relative_jump_destination__0_carry_i_2__0_n_0\,
      DI(1) => \relative_jump_destination__0_carry_i_3__0_n_0\,
      DI(0) => \relative_jump_destination__0_carry_i_4__0_n_0\,
      O(3 downto 0) => relative_jump_destination(7 downto 4),
      S(3) => \relative_jump_destination__0_carry_i_5__0_n_0\,
      S(2) => \relative_jump_destination__0_carry_i_6__0_n_0\,
      S(1) => \relative_jump_destination__0_carry_i_7__0_n_0\,
      S(0) => \relative_jump_destination__0_carry_i_8__0_n_0\
    );
\relative_jump_destination__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \relative_jump_destination__0_carry__0_n_0\,
      CO(3) => \relative_jump_destination__0_carry__1_n_0\,
      CO(2) => \relative_jump_destination__0_carry__1_n_1\,
      CO(1) => \relative_jump_destination__0_carry__1_n_2\,
      CO(0) => \relative_jump_destination__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \relative_jump_destination__0_carry_i_1__1_n_0\,
      DI(2) => \relative_jump_destination__0_carry_i_2__1_n_0\,
      DI(1) => \relative_jump_destination__0_carry_i_3__1_n_0\,
      DI(0) => \relative_jump_destination__0_carry_i_4__1_n_0\,
      O(3 downto 0) => relative_jump_destination(11 downto 8),
      S(3) => \relative_jump_destination__0_carry_i_5__1_n_0\,
      S(2) => \relative_jump_destination__0_carry_i_6__1_n_0\,
      S(1) => \relative_jump_destination__0_carry_i_7__1_n_0\,
      S(0) => \relative_jump_destination__0_carry_i_8__1_n_0\
    );
\relative_jump_destination__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \relative_jump_destination__0_carry__1_n_0\,
      CO(3) => \NLW_relative_jump_destination__0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \relative_jump_destination__0_carry__2_n_1\,
      CO(1) => \relative_jump_destination__0_carry__2_n_2\,
      CO(0) => \relative_jump_destination__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \relative_jump_destination__0_carry_i_1__2_n_0\,
      DI(1) => \relative_jump_destination__0_carry_i_2__2_n_0\,
      DI(0) => \relative_jump_destination__0_carry_i_3__2_n_0\,
      O(3 downto 0) => relative_jump_destination(15 downto 12),
      S(3) => \relative_jump_destination__0_carry_i_4__2_n_0\,
      S(2) => \relative_jump_destination__0_carry_i_5__2_n_0\,
      S(1) => \relative_jump_destination__0_carry_i_6__2_n_0\,
      S(0) => \relative_jump_destination__0_carry_i_7__2_n_0\
    );
\relative_jump_destination__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(2),
      I1 => PC_Current(2),
      O => \relative_jump_destination__0_carry_i_1_n_0\
    );
\relative_jump_destination__0_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(6),
      I1 => PC_Current(6),
      O => \relative_jump_destination__0_carry_i_1__0_n_0\
    );
\relative_jump_destination__0_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(10),
      I1 => PC_Current(10),
      O => \relative_jump_destination__0_carry_i_1__1_n_0\
    );
\relative_jump_destination__0_carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(13),
      I1 => PC_Current(13),
      O => \relative_jump_destination__0_carry_i_1__2_n_0\
    );
\relative_jump_destination__0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => PC_Current(2),
      I1 => JMP_Address(2),
      O => \relative_jump_destination__0_carry_i_2_n_0\
    );
\relative_jump_destination__0_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(5),
      I1 => PC_Current(5),
      O => \relative_jump_destination__0_carry_i_2__0_n_0\
    );
\relative_jump_destination__0_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(9),
      I1 => PC_Current(9),
      O => \relative_jump_destination__0_carry_i_2__1_n_0\
    );
\relative_jump_destination__0_carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(12),
      I1 => PC_Current(12),
      O => \relative_jump_destination__0_carry_i_2__2_n_0\
    );
\relative_jump_destination__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(0),
      I1 => PC_Current(0),
      O => \relative_jump_destination__0_carry_i_3_n_0\
    );
\relative_jump_destination__0_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(4),
      I1 => PC_Current(4),
      O => \relative_jump_destination__0_carry_i_3__0_n_0\
    );
\relative_jump_destination__0_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(8),
      I1 => PC_Current(8),
      O => \relative_jump_destination__0_carry_i_3__1_n_0\
    );
\relative_jump_destination__0_carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(11),
      I1 => PC_Current(11),
      O => \relative_jump_destination__0_carry_i_3__2_n_0\
    );
\relative_jump_destination__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => PC_Current(0),
      I1 => JMP_Address(0),
      O => \relative_jump_destination__0_carry_i_4_n_0\
    );
\relative_jump_destination__0_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(3),
      I1 => PC_Current(3),
      O => \relative_jump_destination__0_carry_i_4__0_n_0\
    );
\relative_jump_destination__0_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(7),
      I1 => PC_Current(7),
      O => \relative_jump_destination__0_carry_i_4__1_n_0\
    );
\relative_jump_destination__0_carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(14),
      I1 => JMP_Address(14),
      I2 => PC_Current(15),
      I3 => JMP_Address(15),
      O => \relative_jump_destination__0_carry_i_4__2_n_0\
    );
\relative_jump_destination__0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(2),
      I1 => JMP_Address(2),
      I2 => PC_Current(3),
      I3 => JMP_Address(3),
      O => \relative_jump_destination__0_carry_i_5_n_0\
    );
\relative_jump_destination__0_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(6),
      I1 => JMP_Address(6),
      I2 => PC_Current(7),
      I3 => JMP_Address(7),
      O => \relative_jump_destination__0_carry_i_5__0_n_0\
    );
\relative_jump_destination__0_carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(10),
      I1 => JMP_Address(10),
      I2 => PC_Current(11),
      I3 => JMP_Address(11),
      O => \relative_jump_destination__0_carry_i_5__1_n_0\
    );
\relative_jump_destination__0_carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(13),
      I1 => JMP_Address(13),
      I2 => PC_Current(14),
      I3 => JMP_Address(14),
      O => \relative_jump_destination__0_carry_i_5__2_n_0\
    );
\relative_jump_destination__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => PC_Current(2),
      I1 => JMP_Address(2),
      I2 => JMP_Address(1),
      I3 => PC_Current(1),
      O => \relative_jump_destination__0_carry_i_6_n_0\
    );
\relative_jump_destination__0_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(5),
      I1 => JMP_Address(5),
      I2 => PC_Current(6),
      I3 => JMP_Address(6),
      O => \relative_jump_destination__0_carry_i_6__0_n_0\
    );
\relative_jump_destination__0_carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(9),
      I1 => JMP_Address(9),
      I2 => PC_Current(10),
      I3 => JMP_Address(10),
      O => \relative_jump_destination__0_carry_i_6__1_n_0\
    );
\relative_jump_destination__0_carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(12),
      I1 => JMP_Address(12),
      I2 => PC_Current(13),
      I3 => JMP_Address(13),
      O => \relative_jump_destination__0_carry_i_6__2_n_0\
    );
\relative_jump_destination__0_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => PC_Current(0),
      I1 => JMP_Address(0),
      I2 => PC_Current(1),
      I3 => JMP_Address(1),
      O => \relative_jump_destination__0_carry_i_7_n_0\
    );
\relative_jump_destination__0_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(4),
      I1 => JMP_Address(4),
      I2 => PC_Current(5),
      I3 => JMP_Address(5),
      O => \relative_jump_destination__0_carry_i_7__0_n_0\
    );
\relative_jump_destination__0_carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(8),
      I1 => JMP_Address(8),
      I2 => PC_Current(9),
      I3 => JMP_Address(9),
      O => \relative_jump_destination__0_carry_i_7__1_n_0\
    );
\relative_jump_destination__0_carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(11),
      I1 => JMP_Address(11),
      I2 => PC_Current(12),
      I3 => JMP_Address(12),
      O => \relative_jump_destination__0_carry_i_7__2_n_0\
    );
\relative_jump_destination__0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => JMP_Address(0),
      I1 => PC_Current(0),
      O => \relative_jump_destination__0_carry_i_8_n_0\
    );
\relative_jump_destination__0_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(3),
      I1 => JMP_Address(3),
      I2 => PC_Current(4),
      I3 => JMP_Address(4),
      O => \relative_jump_destination__0_carry_i_8__0_n_0\
    );
\relative_jump_destination__0_carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(7),
      I1 => JMP_Address(7),
      I2 => PC_Current(8),
      I3 => JMP_Address(8),
      O => \relative_jump_destination__0_carry_i_8__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_CU_JumpController_0_0 is
  port (
    InstrExec_CLK : in STD_LOGIC;
    JMP : in STD_LOGIC;
    JMP_Conditional : in STD_LOGIC;
    JMP_Relative : in STD_LOGIC;
    JMP_Condition : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Flags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_Address : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PC_Current : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PC_Load : out STD_LOGIC;
    PC_Next : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_CU_JumpController_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_CU_JumpController_0_0 : entity is "main_CU_JumpController_0_0,CU_JumpController,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_CU_JumpController_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_CU_JumpController_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_CU_JumpController_0_0 : entity is "CU_JumpController,Vivado 2024.1";
end main_CU_JumpController_0_0;

architecture STRUCTURE of main_CU_JumpController_0_0 is
  signal PC_Load_INST_0_i_1_n_0 : STD_LOGIC;
  signal PC_Load_INST_0_i_2_n_0 : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of InstrExec_CLK : signal is "xilinx.com:signal:clock:1.0 InstrExec_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of InstrExec_CLK : signal is "XIL_INTERFACENAME InstrExec_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
PC_Load_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AAA222"
    )
        port map (
      I0 => JMP,
      I1 => JMP_Conditional,
      I2 => PC_Load_INST_0_i_1_n_0,
      I3 => JMP_Condition(2),
      I4 => PC_Load_INST_0_i_2_n_0,
      O => PC_Load
    );
PC_Load_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC77FC44"
    )
        port map (
      I0 => Flags(1),
      I1 => JMP_Condition(1),
      I2 => Flags(5),
      I3 => JMP_Condition(0),
      I4 => Flags(4),
      O => PC_Load_INST_0_i_1_n_0
    );
PC_Load_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Flags(3),
      I1 => Flags(2),
      I2 => JMP_Condition(1),
      I3 => Flags(1),
      I4 => JMP_Condition(0),
      I5 => Flags(0),
      O => PC_Load_INST_0_i_2_n_0
    );
U0: entity work.main_CU_JumpController_0_0_CU_JumpController
     port map (
      JMP_Address(15 downto 0) => JMP_Address(15 downto 0),
      JMP_Relative => JMP_Relative,
      PC_Current(15 downto 0) => PC_Current(15 downto 0),
      PC_Next(15 downto 0) => PC_Next(15 downto 0)
    );
end STRUCTURE;
