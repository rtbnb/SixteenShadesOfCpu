-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Nov 14 18:05:03 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_RAMAddressControl_0_0/main_CU_RAMAddressControl_0_0_sim_netlist.vhdl
-- Design      : main_CU_RAMAddressControl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_CU_RAMAddressControl_0_0_CU_RAMAddressController is
  port (
    RAM_Address : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Reg2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RAM_Address_Src : in STD_LOGIC;
    MA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Use_MA : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_CU_RAMAddressControl_0_0_CU_RAMAddressController : entity is "CU_RAMAddressController";
end main_CU_RAMAddressControl_0_0_CU_RAMAddressController;

architecture STRUCTURE of main_CU_RAMAddressControl_0_0_CU_RAMAddressController is
  signal \RAM_Address0_carry__0_n_0\ : STD_LOGIC;
  signal \RAM_Address0_carry__0_n_1\ : STD_LOGIC;
  signal \RAM_Address0_carry__0_n_2\ : STD_LOGIC;
  signal \RAM_Address0_carry__0_n_3\ : STD_LOGIC;
  signal \RAM_Address0_carry__1_n_0\ : STD_LOGIC;
  signal \RAM_Address0_carry__1_n_1\ : STD_LOGIC;
  signal \RAM_Address0_carry__1_n_2\ : STD_LOGIC;
  signal \RAM_Address0_carry__1_n_3\ : STD_LOGIC;
  signal \RAM_Address0_carry__2_n_1\ : STD_LOGIC;
  signal \RAM_Address0_carry__2_n_2\ : STD_LOGIC;
  signal \RAM_Address0_carry__2_n_3\ : STD_LOGIC;
  signal \RAM_Address0_carry_i_4__2_n_0\ : STD_LOGIC;
  signal \RAM_Address0_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \RAM_Address0_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \RAM_Address0_carry_i_5__2_n_0\ : STD_LOGIC;
  signal RAM_Address0_carry_i_5_n_0 : STD_LOGIC;
  signal \RAM_Address0_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \RAM_Address0_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \RAM_Address0_carry_i_6__2_n_0\ : STD_LOGIC;
  signal RAM_Address0_carry_i_6_n_0 : STD_LOGIC;
  signal \RAM_Address0_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \RAM_Address0_carry_i_7__1_n_0\ : STD_LOGIC;
  signal \RAM_Address0_carry_i_7__2_n_0\ : STD_LOGIC;
  signal RAM_Address0_carry_i_7_n_0 : STD_LOGIC;
  signal \RAM_Address0_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \RAM_Address0_carry_i_8__1_n_0\ : STD_LOGIC;
  signal RAM_Address0_carry_i_8_n_0 : STD_LOGIC;
  signal RAM_Address0_carry_n_0 : STD_LOGIC;
  signal RAM_Address0_carry_n_1 : STD_LOGIC;
  signal RAM_Address0_carry_n_2 : STD_LOGIC;
  signal RAM_Address0_carry_n_3 : STD_LOGIC;
  signal used_address : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \NLW_RAM_Address0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of RAM_Address0_carry : label is 35;
  attribute ADDER_THRESHOLD of \RAM_Address0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \RAM_Address0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \RAM_Address0_carry__2\ : label is 35;
begin
RAM_Address0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => RAM_Address0_carry_n_0,
      CO(2) => RAM_Address0_carry_n_1,
      CO(1) => RAM_Address0_carry_n_2,
      CO(0) => RAM_Address0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => used_address(3 downto 0),
      O(3 downto 0) => RAM_Address(3 downto 0),
      S(3) => RAM_Address0_carry_i_5_n_0,
      S(2) => RAM_Address0_carry_i_6_n_0,
      S(1) => RAM_Address0_carry_i_7_n_0,
      S(0) => RAM_Address0_carry_i_8_n_0
    );
\RAM_Address0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => RAM_Address0_carry_n_0,
      CO(3) => \RAM_Address0_carry__0_n_0\,
      CO(2) => \RAM_Address0_carry__0_n_1\,
      CO(1) => \RAM_Address0_carry__0_n_2\,
      CO(0) => \RAM_Address0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => used_address(7 downto 4),
      O(3 downto 0) => RAM_Address(7 downto 4),
      S(3) => \RAM_Address0_carry_i_5__0_n_0\,
      S(2) => \RAM_Address0_carry_i_6__0_n_0\,
      S(1) => \RAM_Address0_carry_i_7__0_n_0\,
      S(0) => \RAM_Address0_carry_i_8__0_n_0\
    );
\RAM_Address0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RAM_Address0_carry__0_n_0\,
      CO(3) => \RAM_Address0_carry__1_n_0\,
      CO(2) => \RAM_Address0_carry__1_n_1\,
      CO(1) => \RAM_Address0_carry__1_n_2\,
      CO(0) => \RAM_Address0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => used_address(11 downto 8),
      O(3 downto 0) => RAM_Address(11 downto 8),
      S(3) => \RAM_Address0_carry_i_5__1_n_0\,
      S(2) => \RAM_Address0_carry_i_6__1_n_0\,
      S(1) => \RAM_Address0_carry_i_7__1_n_0\,
      S(0) => \RAM_Address0_carry_i_8__1_n_0\
    );
\RAM_Address0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \RAM_Address0_carry__1_n_0\,
      CO(3) => \NLW_RAM_Address0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \RAM_Address0_carry__2_n_1\,
      CO(1) => \RAM_Address0_carry__2_n_2\,
      CO(0) => \RAM_Address0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => used_address(14 downto 12),
      O(3 downto 0) => RAM_Address(15 downto 12),
      S(3) => \RAM_Address0_carry_i_4__2_n_0\,
      S(2) => \RAM_Address0_carry_i_5__2_n_0\,
      S(1) => \RAM_Address0_carry_i_6__2_n_0\,
      S(0) => \RAM_Address0_carry_i_7__2_n_0\
    );
RAM_Address0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(3),
      I1 => Reg2(3),
      I2 => RAM_Address_Src,
      O => used_address(3)
    );
\RAM_Address0_carry_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(7),
      I1 => Reg2(7),
      I2 => RAM_Address_Src,
      O => used_address(7)
    );
\RAM_Address0_carry_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(11),
      I1 => Reg2(11),
      I2 => RAM_Address_Src,
      O => used_address(11)
    );
\RAM_Address0_carry_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(14),
      I1 => Reg2(14),
      I2 => RAM_Address_Src,
      O => used_address(14)
    );
RAM_Address0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(2),
      I1 => Reg2(2),
      I2 => RAM_Address_Src,
      O => used_address(2)
    );
\RAM_Address0_carry_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(6),
      I1 => Reg2(6),
      I2 => RAM_Address_Src,
      O => used_address(6)
    );
\RAM_Address0_carry_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(10),
      I1 => Reg2(10),
      I2 => RAM_Address_Src,
      O => used_address(10)
    );
\RAM_Address0_carry_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(13),
      I1 => Reg2(13),
      I2 => RAM_Address_Src,
      O => used_address(13)
    );
RAM_Address0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(1),
      I1 => Reg2(1),
      I2 => RAM_Address_Src,
      O => used_address(1)
    );
\RAM_Address0_carry_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(5),
      I1 => Reg2(5),
      I2 => RAM_Address_Src,
      O => used_address(5)
    );
\RAM_Address0_carry_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(9),
      I1 => Reg2(9),
      I2 => RAM_Address_Src,
      O => used_address(9)
    );
\RAM_Address0_carry_i_3__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(12),
      I1 => Reg2(12),
      I2 => RAM_Address_Src,
      O => used_address(12)
    );
RAM_Address0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(0),
      I1 => Reg2(0),
      I2 => RAM_Address_Src,
      O => used_address(0)
    );
\RAM_Address0_carry_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(4),
      I1 => Reg2(4),
      I2 => RAM_Address_Src,
      O => used_address(4)
    );
\RAM_Address0_carry_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(8),
      I1 => Reg2(8),
      I2 => RAM_Address_Src,
      O => used_address(8)
    );
\RAM_Address0_carry_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(15),
      I2 => Immediate(15),
      I3 => MA(15),
      I4 => Use_MA,
      O => \RAM_Address0_carry_i_4__2_n_0\
    );
RAM_Address0_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(3),
      I2 => Immediate(3),
      I3 => MA(3),
      I4 => Use_MA,
      O => RAM_Address0_carry_i_5_n_0
    );
\RAM_Address0_carry_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(7),
      I2 => Immediate(7),
      I3 => MA(7),
      I4 => Use_MA,
      O => \RAM_Address0_carry_i_5__0_n_0\
    );
\RAM_Address0_carry_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(11),
      I2 => Immediate(11),
      I3 => MA(11),
      I4 => Use_MA,
      O => \RAM_Address0_carry_i_5__1_n_0\
    );
\RAM_Address0_carry_i_5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(14),
      I2 => Immediate(14),
      I3 => MA(14),
      I4 => Use_MA,
      O => \RAM_Address0_carry_i_5__2_n_0\
    );
RAM_Address0_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(2),
      I2 => Immediate(2),
      I3 => MA(2),
      I4 => Use_MA,
      O => RAM_Address0_carry_i_6_n_0
    );
\RAM_Address0_carry_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(6),
      I2 => Immediate(6),
      I3 => MA(6),
      I4 => Use_MA,
      O => \RAM_Address0_carry_i_6__0_n_0\
    );
\RAM_Address0_carry_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(10),
      I2 => Immediate(10),
      I3 => MA(10),
      I4 => Use_MA,
      O => \RAM_Address0_carry_i_6__1_n_0\
    );
\RAM_Address0_carry_i_6__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(13),
      I2 => Immediate(13),
      I3 => MA(13),
      I4 => Use_MA,
      O => \RAM_Address0_carry_i_6__2_n_0\
    );
RAM_Address0_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(1),
      I2 => Immediate(1),
      I3 => MA(1),
      I4 => Use_MA,
      O => RAM_Address0_carry_i_7_n_0
    );
\RAM_Address0_carry_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(5),
      I2 => Immediate(5),
      I3 => MA(5),
      I4 => Use_MA,
      O => \RAM_Address0_carry_i_7__0_n_0\
    );
\RAM_Address0_carry_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(9),
      I2 => Immediate(9),
      I3 => MA(9),
      I4 => Use_MA,
      O => \RAM_Address0_carry_i_7__1_n_0\
    );
\RAM_Address0_carry_i_7__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(12),
      I2 => Immediate(12),
      I3 => MA(12),
      I4 => Use_MA,
      O => \RAM_Address0_carry_i_7__2_n_0\
    );
RAM_Address0_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(0),
      I2 => Immediate(0),
      I3 => MA(0),
      I4 => Use_MA,
      O => RAM_Address0_carry_i_8_n_0
    );
\RAM_Address0_carry_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(4),
      I2 => Immediate(4),
      I3 => MA(4),
      I4 => Use_MA,
      O => \RAM_Address0_carry_i_8__0_n_0\
    );
\RAM_Address0_carry_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(8),
      I2 => Immediate(8),
      I3 => MA(8),
      I4 => Use_MA,
      O => \RAM_Address0_carry_i_8__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_CU_RAMAddressControl_0_0 is
  port (
    Reg2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RAM_Address_Src : in STD_LOGIC;
    Use_MA : in STD_LOGIC;
    RAM_Address : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_CU_RAMAddressControl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_CU_RAMAddressControl_0_0 : entity is "main_CU_RAMAddressControl_0_0,CU_RAMAddressController,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_CU_RAMAddressControl_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_CU_RAMAddressControl_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_CU_RAMAddressControl_0_0 : entity is "CU_RAMAddressController,Vivado 2024.1";
end main_CU_RAMAddressControl_0_0;

architecture STRUCTURE of main_CU_RAMAddressControl_0_0 is
begin
U0: entity work.main_CU_RAMAddressControl_0_0_CU_RAMAddressController
     port map (
      Immediate(15 downto 0) => Immediate(15 downto 0),
      MA(15 downto 0) => MA(15 downto 0),
      RAM_Address(15 downto 0) => RAM_Address(15 downto 0),
      RAM_Address_Src => RAM_Address_Src,
      Reg2(15 downto 0) => Reg2(15 downto 0),
      Use_MA => Use_MA
    );
end STRUCTURE;
