-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Nov 14 17:45:30 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_ImmediateManipula_0_0/main_CU_ImmediateManipula_0_0_sim_netlist.vhdl
-- Design      : main_CU_ImmediateManipula_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_CU_ImmediateManipula_0_0_CU_ImmediateManipulator is
  port (
    ManipulatedImmidiate : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RF_WLB : in STD_LOGIC;
    RF_WHB : in STD_LOGIC;
    Reg1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_CU_ImmediateManipula_0_0_CU_ImmediateManipulator : entity is "CU_ImmediateManipulator";
end main_CU_ImmediateManipula_0_0_CU_ImmediateManipulator;

architecture STRUCTURE of main_CU_ImmediateManipula_0_0_CU_ImmediateManipulator is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ManipulatedImmidiate[0]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ManipulatedImmidiate[1]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ManipulatedImmidiate[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ManipulatedImmidiate[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ManipulatedImmidiate[4]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ManipulatedImmidiate[5]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ManipulatedImmidiate[6]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ManipulatedImmidiate[7]_INST_0\ : label is "soft_lutpair0";
begin
\ManipulatedImmidiate[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => Reg1(0),
      I1 => Immediate(0),
      I2 => RF_WLB,
      O => ManipulatedImmidiate(0)
    );
\ManipulatedImmidiate[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFFCA00"
    )
        port map (
      I0 => Immediate(2),
      I1 => Immediate(10),
      I2 => RF_WLB,
      I3 => RF_WHB,
      I4 => Reg1(10),
      O => ManipulatedImmidiate(10)
    );
\ManipulatedImmidiate[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFFCA00"
    )
        port map (
      I0 => Immediate(3),
      I1 => Immediate(11),
      I2 => RF_WLB,
      I3 => RF_WHB,
      I4 => Reg1(11),
      O => ManipulatedImmidiate(11)
    );
\ManipulatedImmidiate[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFFCA00"
    )
        port map (
      I0 => Immediate(4),
      I1 => Immediate(12),
      I2 => RF_WLB,
      I3 => RF_WHB,
      I4 => Reg1(12),
      O => ManipulatedImmidiate(12)
    );
\ManipulatedImmidiate[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFFCA00"
    )
        port map (
      I0 => Immediate(5),
      I1 => Immediate(13),
      I2 => RF_WLB,
      I3 => RF_WHB,
      I4 => Reg1(13),
      O => ManipulatedImmidiate(13)
    );
\ManipulatedImmidiate[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFFCA00"
    )
        port map (
      I0 => Immediate(6),
      I1 => Immediate(14),
      I2 => RF_WLB,
      I3 => RF_WHB,
      I4 => Reg1(14),
      O => ManipulatedImmidiate(14)
    );
\ManipulatedImmidiate[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFFCA00"
    )
        port map (
      I0 => Immediate(7),
      I1 => Immediate(15),
      I2 => RF_WLB,
      I3 => RF_WHB,
      I4 => Reg1(15),
      O => ManipulatedImmidiate(15)
    );
\ManipulatedImmidiate[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => Reg1(1),
      I1 => Immediate(1),
      I2 => RF_WLB,
      O => ManipulatedImmidiate(1)
    );
\ManipulatedImmidiate[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => Reg1(2),
      I1 => Immediate(2),
      I2 => RF_WLB,
      O => ManipulatedImmidiate(2)
    );
\ManipulatedImmidiate[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => Reg1(3),
      I1 => Immediate(3),
      I2 => RF_WLB,
      O => ManipulatedImmidiate(3)
    );
\ManipulatedImmidiate[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => Reg1(4),
      I1 => Immediate(4),
      I2 => RF_WLB,
      O => ManipulatedImmidiate(4)
    );
\ManipulatedImmidiate[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => Reg1(5),
      I1 => Immediate(5),
      I2 => RF_WLB,
      O => ManipulatedImmidiate(5)
    );
\ManipulatedImmidiate[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => Reg1(6),
      I1 => Immediate(6),
      I2 => RF_WLB,
      O => ManipulatedImmidiate(6)
    );
\ManipulatedImmidiate[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => Reg1(7),
      I1 => Immediate(7),
      I2 => RF_WLB,
      O => ManipulatedImmidiate(7)
    );
\ManipulatedImmidiate[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFFCA00"
    )
        port map (
      I0 => Immediate(0),
      I1 => Immediate(8),
      I2 => RF_WLB,
      I3 => RF_WHB,
      I4 => Reg1(8),
      O => ManipulatedImmidiate(8)
    );
\ManipulatedImmidiate[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFFCA00"
    )
        port map (
      I0 => Immediate(1),
      I1 => Immediate(9),
      I2 => RF_WLB,
      I3 => RF_WHB,
      I4 => Reg1(9),
      O => ManipulatedImmidiate(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_CU_ImmediateManipula_0_0 is
  port (
    Reg1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RF_WHB : in STD_LOGIC;
    RF_WLB : in STD_LOGIC;
    ManipulatedImmidiate : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_CU_ImmediateManipula_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_CU_ImmediateManipula_0_0 : entity is "main_CU_ImmediateManipula_0_0,CU_ImmediateManipulator,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_CU_ImmediateManipula_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_CU_ImmediateManipula_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_CU_ImmediateManipula_0_0 : entity is "CU_ImmediateManipulator,Vivado 2024.1";
end main_CU_ImmediateManipula_0_0;

architecture STRUCTURE of main_CU_ImmediateManipula_0_0 is
begin
U0: entity work.main_CU_ImmediateManipula_0_0_CU_ImmediateManipulator
     port map (
      Immediate(15 downto 0) => Immediate(15 downto 0),
      ManipulatedImmidiate(15 downto 0) => ManipulatedImmidiate(15 downto 0),
      RF_WHB => RF_WHB,
      RF_WLB => RF_WLB,
      Reg1(15 downto 0) => Reg1(15 downto 0)
    );
end STRUCTURE;
