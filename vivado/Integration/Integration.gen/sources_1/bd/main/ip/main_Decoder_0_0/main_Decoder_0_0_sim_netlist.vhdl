-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Nov 14 17:45:30 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Decoder_0_0/main_Decoder_0_0_sim_netlist.vhdl
-- Design      : main_Decoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_Decoder_0_0_Decoder is
  port (
    Register1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Register2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteBackRegister : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Use_MA : out STD_LOGIC;
    Immediate : out STD_LOGIC_VECTOR ( 12 downto 0 );
    Instruction : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_Decoder_0_0_Decoder : entity is "Decoder";
end main_Decoder_0_0_Decoder;

architecture STRUCTURE of main_Decoder_0_0_Decoder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Immediate[12]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \WriteBackRegister[0]_INST_0\ : label is "soft_lutpair0";
begin
\Immediate[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004D444800484448"
    )
        port map (
      I0 => Instruction(14),
      I1 => Instruction(0),
      I2 => Instruction(13),
      I3 => Instruction(15),
      I4 => Instruction(12),
      I5 => Instruction(8),
      O => Immediate(0)
    );
\Immediate[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010100000001000"
    )
        port map (
      I0 => Instruction(14),
      I1 => Instruction(12),
      I2 => Instruction(15),
      I3 => Instruction(8),
      I4 => Instruction(13),
      I5 => Instruction(10),
      O => Immediate(10)
    );
\Immediate[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010100000001000"
    )
        port map (
      I0 => Instruction(14),
      I1 => Instruction(12),
      I2 => Instruction(15),
      I3 => Instruction(8),
      I4 => Instruction(13),
      I5 => Instruction(11),
      O => Immediate(11)
    );
\Immediate[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => Instruction(8),
      I1 => Instruction(13),
      I2 => Instruction(12),
      I3 => Instruction(15),
      I4 => Instruction(14),
      O => Immediate(12)
    );
\Immediate[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004D444800484448"
    )
        port map (
      I0 => Instruction(14),
      I1 => Instruction(1),
      I2 => Instruction(13),
      I3 => Instruction(15),
      I4 => Instruction(12),
      I5 => Instruction(9),
      O => Immediate(1)
    );
\Immediate[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004D444800484448"
    )
        port map (
      I0 => Instruction(14),
      I1 => Instruction(2),
      I2 => Instruction(13),
      I3 => Instruction(15),
      I4 => Instruction(12),
      I5 => Instruction(10),
      O => Immediate(2)
    );
\Immediate[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004D444800484448"
    )
        port map (
      I0 => Instruction(14),
      I1 => Instruction(3),
      I2 => Instruction(13),
      I3 => Instruction(15),
      I4 => Instruction(12),
      I5 => Instruction(11),
      O => Immediate(3)
    );
\Immediate[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02082228"
    )
        port map (
      I0 => Instruction(4),
      I1 => Instruction(14),
      I2 => Instruction(15),
      I3 => Instruction(13),
      I4 => Instruction(12),
      O => Immediate(4)
    );
\Immediate[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02082228"
    )
        port map (
      I0 => Instruction(5),
      I1 => Instruction(14),
      I2 => Instruction(15),
      I3 => Instruction(13),
      I4 => Instruction(12),
      O => Immediate(5)
    );
\Immediate[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02082228"
    )
        port map (
      I0 => Instruction(6),
      I1 => Instruction(14),
      I2 => Instruction(15),
      I3 => Instruction(13),
      I4 => Instruction(12),
      O => Immediate(6)
    );
\Immediate[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02082228"
    )
        port map (
      I0 => Instruction(7),
      I1 => Instruction(14),
      I2 => Instruction(15),
      I3 => Instruction(13),
      I4 => Instruction(12),
      O => Immediate(7)
    );
\Immediate[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => Instruction(14),
      I1 => Instruction(12),
      I2 => Instruction(8),
      I3 => Instruction(15),
      O => Immediate(8)
    );
\Immediate[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010100000001000"
    )
        port map (
      I0 => Instruction(14),
      I1 => Instruction(12),
      I2 => Instruction(15),
      I3 => Instruction(8),
      I4 => Instruction(13),
      I5 => Instruction(9),
      O => Immediate(9)
    );
\Register1[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1810F2E208001000"
    )
        port map (
      I0 => Instruction(14),
      I1 => Instruction(13),
      I2 => Instruction(12),
      I3 => Instruction(4),
      I4 => Instruction(15),
      I5 => Instruction(8),
      O => Register1(0)
    );
\Register1[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1810F2E208001000"
    )
        port map (
      I0 => Instruction(14),
      I1 => Instruction(13),
      I2 => Instruction(12),
      I3 => Instruction(5),
      I4 => Instruction(15),
      I5 => Instruction(9),
      O => Register1(1)
    );
\Register1[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1810F2E208001000"
    )
        port map (
      I0 => Instruction(14),
      I1 => Instruction(13),
      I2 => Instruction(12),
      I3 => Instruction(6),
      I4 => Instruction(15),
      I5 => Instruction(10),
      O => Register1(2)
    );
\Register1[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1810F2E208001000"
    )
        port map (
      I0 => Instruction(14),
      I1 => Instruction(13),
      I2 => Instruction(12),
      I3 => Instruction(7),
      I4 => Instruction(15),
      I5 => Instruction(11),
      O => Register1(3)
    );
\Register2[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888800333000"
    )
        port map (
      I0 => Instruction(4),
      I1 => Instruction(14),
      I2 => Instruction(0),
      I3 => Instruction(12),
      I4 => Instruction(15),
      I5 => Instruction(13),
      O => Register2(0)
    );
\Register2[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888800333000"
    )
        port map (
      I0 => Instruction(5),
      I1 => Instruction(14),
      I2 => Instruction(1),
      I3 => Instruction(12),
      I4 => Instruction(15),
      I5 => Instruction(13),
      O => Register2(1)
    );
\Register2[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888800333000"
    )
        port map (
      I0 => Instruction(6),
      I1 => Instruction(14),
      I2 => Instruction(2),
      I3 => Instruction(12),
      I4 => Instruction(15),
      I5 => Instruction(13),
      O => Register2(2)
    );
\Register2[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888800333000"
    )
        port map (
      I0 => Instruction(7),
      I1 => Instruction(14),
      I2 => Instruction(3),
      I3 => Instruction(12),
      I4 => Instruction(15),
      I5 => Instruction(13),
      O => Register2(3)
    );
\Use_MA__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4500"
    )
        port map (
      I0 => Instruction(15),
      I1 => Instruction(0),
      I2 => Instruction(14),
      I3 => Instruction(13),
      O => Use_MA
    );
\WriteBackRegister[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A220"
    )
        port map (
      I0 => Instruction(8),
      I1 => Instruction(15),
      I2 => Instruction(14),
      I3 => Instruction(13),
      I4 => Instruction(12),
      O => WriteBackRegister(0)
    );
\WriteBackRegister[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35140004"
    )
        port map (
      I0 => Instruction(15),
      I1 => Instruction(12),
      I2 => Instruction(13),
      I3 => Instruction(14),
      I4 => Instruction(9),
      O => WriteBackRegister(1)
    );
\WriteBackRegister[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35140004"
    )
        port map (
      I0 => Instruction(15),
      I1 => Instruction(12),
      I2 => Instruction(13),
      I3 => Instruction(14),
      I4 => Instruction(10),
      O => WriteBackRegister(2)
    );
\WriteBackRegister[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35140004"
    )
        port map (
      I0 => Instruction(15),
      I1 => Instruction(12),
      I2 => Instruction(13),
      I3 => Instruction(14),
      I4 => Instruction(11),
      O => WriteBackRegister(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_Decoder_0_0 is
  port (
    Instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Register1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Register2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteBackRegister : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Immediate : out STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_Condition : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Use_MA : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_Decoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_Decoder_0_0 : entity is "main_Decoder_0_0,Decoder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_Decoder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_Decoder_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_Decoder_0_0 : entity is "Decoder,Vivado 2024.1";
end main_Decoder_0_0;

architecture STRUCTURE of main_Decoder_0_0 is
  signal \^immediate\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^instruction\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  Immediate(15) <= \^immediate\(15);
  Immediate(14) <= \^immediate\(15);
  Immediate(13) <= \^immediate\(15);
  Immediate(12) <= \^immediate\(15);
  Immediate(11 downto 0) <= \^immediate\(11 downto 0);
  JMP_Condition(2 downto 0) <= \^instruction\(11 downto 9);
  \^instruction\(15 downto 0) <= Instruction(15 downto 0);
U0: entity work.main_Decoder_0_0_Decoder
     port map (
      Immediate(12) => \^immediate\(15),
      Immediate(11 downto 0) => \^immediate\(11 downto 0),
      Instruction(15 downto 0) => \^instruction\(15 downto 0),
      Register1(3 downto 0) => Register1(3 downto 0),
      Register2(3 downto 0) => Register2(3 downto 0),
      Use_MA => Use_MA,
      WriteBackRegister(3 downto 0) => WriteBackRegister(3 downto 0)
    );
end STRUCTURE;
