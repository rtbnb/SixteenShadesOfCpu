-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Nov 14 17:52:17 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Pipelining_Forwarder_0_0/main_Pipelining_Forwarder_0_0_sim_netlist.vhdl
-- Design      : main_Pipelining_Forwarder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_Pipelining_Forwarder_0_0_Pipelining_Forwarder is
  port (
    ForwardedOperand1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ForwardedOperand2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ForwardedMA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentOperand1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ExecutionFlags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ForwardingConfiguration : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ExecutionWriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentOperand2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentMA : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_Pipelining_Forwarder_0_0_Pipelining_Forwarder : entity is "Pipelining_Forwarder";
end main_Pipelining_Forwarder_0_0_Pipelining_Forwarder;

architecture STRUCTURE of main_Pipelining_Forwarder_0_0_Pipelining_Forwarder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ForwardedMA[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ForwardedMA[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ForwardedMA[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ForwardedMA[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ForwardedMA[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ForwardedMA[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ForwardedMA[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ForwardedMA[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ForwardedMA[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ForwardedMA[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ForwardedMA[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ForwardedMA[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ForwardedMA[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ForwardedMA[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ForwardedMA[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ForwardedMA[9]_INST_0\ : label is "soft_lutpair4";
begin
\ForwardedMA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(0),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(0),
      O => ForwardedMA(0)
    );
\ForwardedMA[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(10),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(10),
      O => ForwardedMA(10)
    );
\ForwardedMA[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(11),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(11),
      O => ForwardedMA(11)
    );
\ForwardedMA[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(12),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(12),
      O => ForwardedMA(12)
    );
\ForwardedMA[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(13),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(13),
      O => ForwardedMA(13)
    );
\ForwardedMA[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(14),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(14),
      O => ForwardedMA(14)
    );
\ForwardedMA[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(15),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(15),
      O => ForwardedMA(15)
    );
\ForwardedMA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(1),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(1),
      O => ForwardedMA(1)
    );
\ForwardedMA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(2),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(2),
      O => ForwardedMA(2)
    );
\ForwardedMA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(3),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(3),
      O => ForwardedMA(3)
    );
\ForwardedMA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(4),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(4),
      O => ForwardedMA(4)
    );
\ForwardedMA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(5),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(5),
      O => ForwardedMA(5)
    );
\ForwardedMA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(6),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(6),
      O => ForwardedMA(6)
    );
\ForwardedMA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(7),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(7),
      O => ForwardedMA(7)
    );
\ForwardedMA[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(8),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(8),
      O => ForwardedMA(8)
    );
\ForwardedMA[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ExecutionWriteData(9),
      I1 => ForwardingConfiguration(4),
      I2 => CurrentMA(9),
      O => ForwardedMA(9)
    );
\ForwardedOperand1[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(0),
      I1 => ExecutionFlags(0),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(0),
      O => ForwardedOperand1(0)
    );
\ForwardedOperand1[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(10),
      I1 => ExecutionFlags(10),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(10),
      O => ForwardedOperand1(10)
    );
\ForwardedOperand1[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(11),
      I1 => ExecutionFlags(11),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(11),
      O => ForwardedOperand1(11)
    );
\ForwardedOperand1[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(12),
      I1 => ExecutionFlags(12),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(12),
      O => ForwardedOperand1(12)
    );
\ForwardedOperand1[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(13),
      I1 => ExecutionFlags(13),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(13),
      O => ForwardedOperand1(13)
    );
\ForwardedOperand1[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(14),
      I1 => ExecutionFlags(14),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(14),
      O => ForwardedOperand1(14)
    );
\ForwardedOperand1[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(15),
      I1 => ExecutionFlags(15),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(15),
      O => ForwardedOperand1(15)
    );
\ForwardedOperand1[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(1),
      I1 => ExecutionFlags(1),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(1),
      O => ForwardedOperand1(1)
    );
\ForwardedOperand1[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(2),
      I1 => ExecutionFlags(2),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(2),
      O => ForwardedOperand1(2)
    );
\ForwardedOperand1[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(3),
      I1 => ExecutionFlags(3),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(3),
      O => ForwardedOperand1(3)
    );
\ForwardedOperand1[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(4),
      I1 => ExecutionFlags(4),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(4),
      O => ForwardedOperand1(4)
    );
\ForwardedOperand1[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(5),
      I1 => ExecutionFlags(5),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(5),
      O => ForwardedOperand1(5)
    );
\ForwardedOperand1[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(6),
      I1 => ExecutionFlags(6),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(6),
      O => ForwardedOperand1(6)
    );
\ForwardedOperand1[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(7),
      I1 => ExecutionFlags(7),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(7),
      O => ForwardedOperand1(7)
    );
\ForwardedOperand1[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(8),
      I1 => ExecutionFlags(8),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(8),
      O => ForwardedOperand1(8)
    );
\ForwardedOperand1[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(9),
      I1 => ExecutionFlags(9),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(9),
      O => ForwardedOperand1(9)
    );
\ForwardedOperand2[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(0),
      I1 => ExecutionFlags(0),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(0),
      O => ForwardedOperand2(0)
    );
\ForwardedOperand2[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(10),
      I1 => ExecutionFlags(10),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(10),
      O => ForwardedOperand2(10)
    );
\ForwardedOperand2[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(11),
      I1 => ExecutionFlags(11),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(11),
      O => ForwardedOperand2(11)
    );
\ForwardedOperand2[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(12),
      I1 => ExecutionFlags(12),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(12),
      O => ForwardedOperand2(12)
    );
\ForwardedOperand2[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(13),
      I1 => ExecutionFlags(13),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(13),
      O => ForwardedOperand2(13)
    );
\ForwardedOperand2[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(14),
      I1 => ExecutionFlags(14),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(14),
      O => ForwardedOperand2(14)
    );
\ForwardedOperand2[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(15),
      I1 => ExecutionFlags(15),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(15),
      O => ForwardedOperand2(15)
    );
\ForwardedOperand2[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(1),
      I1 => ExecutionFlags(1),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(1),
      O => ForwardedOperand2(1)
    );
\ForwardedOperand2[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(2),
      I1 => ExecutionFlags(2),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(2),
      O => ForwardedOperand2(2)
    );
\ForwardedOperand2[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(3),
      I1 => ExecutionFlags(3),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(3),
      O => ForwardedOperand2(3)
    );
\ForwardedOperand2[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(4),
      I1 => ExecutionFlags(4),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(4),
      O => ForwardedOperand2(4)
    );
\ForwardedOperand2[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(5),
      I1 => ExecutionFlags(5),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(5),
      O => ForwardedOperand2(5)
    );
\ForwardedOperand2[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(6),
      I1 => ExecutionFlags(6),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(6),
      O => ForwardedOperand2(6)
    );
\ForwardedOperand2[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(7),
      I1 => ExecutionFlags(7),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(7),
      O => ForwardedOperand2(7)
    );
\ForwardedOperand2[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(8),
      I1 => ExecutionFlags(8),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(8),
      O => ForwardedOperand2(8)
    );
\ForwardedOperand2[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(9),
      I1 => ExecutionFlags(9),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(9),
      O => ForwardedOperand2(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_Pipelining_Forwarder_0_0 is
  port (
    CurrentOperand1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentOperand2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentMA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ExecutionWriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ExecutionFlags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ForwardingConfiguration : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ForwardedOperand1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ForwardedOperand2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ForwardedMA : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_Pipelining_Forwarder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_Pipelining_Forwarder_0_0 : entity is "main_Pipelining_Forwarder_0_0,Pipelining_Forwarder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_Pipelining_Forwarder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_Pipelining_Forwarder_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_Pipelining_Forwarder_0_0 : entity is "Pipelining_Forwarder,Vivado 2024.1";
end main_Pipelining_Forwarder_0_0;

architecture STRUCTURE of main_Pipelining_Forwarder_0_0 is
begin
U0: entity work.main_Pipelining_Forwarder_0_0_Pipelining_Forwarder
     port map (
      CurrentMA(15 downto 0) => CurrentMA(15 downto 0),
      CurrentOperand1(15 downto 0) => CurrentOperand1(15 downto 0),
      CurrentOperand2(15 downto 0) => CurrentOperand2(15 downto 0),
      ExecutionFlags(15 downto 0) => ExecutionFlags(15 downto 0),
      ExecutionWriteData(15 downto 0) => ExecutionWriteData(15 downto 0),
      ForwardedMA(15 downto 0) => ForwardedMA(15 downto 0),
      ForwardedOperand1(15 downto 0) => ForwardedOperand1(15 downto 0),
      ForwardedOperand2(15 downto 0) => ForwardedOperand2(15 downto 0),
      ForwardingConfiguration(4 downto 0) => ForwardingConfiguration(4 downto 0)
    );
end STRUCTURE;
