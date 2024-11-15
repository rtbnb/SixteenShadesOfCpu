-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Nov 14 17:52:17 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_Decoder_0_0/main_CU_Decoder_0_0_sim_netlist.vhdl
-- Design      : main_CU_Decoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_CU_Decoder_0_0_CU_Decoder is
  port (
    Reg1Read : out STD_LOGIC;
    Reg2Read : out STD_LOGIC;
    JMP : out STD_LOGIC;
    Is_RAM_OP : out STD_LOGIC;
    Write_Data_Sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Is_ALU_OP : out STD_LOGIC;
    JMP_Relative : out STD_LOGIC;
    JMP_DestinationSource : out STD_LOGIC;
    Instruction : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_CU_Decoder_0_0_CU_Decoder : entity is "CU_Decoder";
end main_CU_Decoder_0_0_CU_Decoder;

architecture STRUCTURE of main_CU_Decoder_0_0_CU_Decoder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Is_ALU_OP_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of JMP_DestinationSource_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of JMP_Relative_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \JMP__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Reg1Read__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Reg2Read__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Write_Data_Sel[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Write_Data_Sel[1]_INST_0\ : label is "soft_lutpair2";
begin
Is_ALU_OP_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Instruction(2),
      I1 => Instruction(0),
      I2 => Instruction(3),
      I3 => Instruction(1),
      O => Is_ALU_OP
    );
\Is_RAM_OP__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => Instruction(3),
      I1 => Instruction(1),
      O => Is_RAM_OP
    );
JMP_DestinationSource_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => Instruction(2),
      I1 => Instruction(1),
      I2 => Instruction(0),
      I3 => Instruction(3),
      O => JMP_DestinationSource
    );
JMP_Relative_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Instruction(2),
      I1 => Instruction(3),
      I2 => Instruction(0),
      I3 => Instruction(1),
      O => JMP_Relative
    );
\JMP__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1500"
    )
        port map (
      I0 => Instruction(2),
      I1 => Instruction(1),
      I2 => Instruction(0),
      I3 => Instruction(3),
      O => JMP
    );
\Reg1Read__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F84"
    )
        port map (
      I0 => Instruction(1),
      I1 => Instruction(2),
      I2 => Instruction(3),
      I3 => Instruction(0),
      O => Reg1Read
    );
\Reg2Read__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2214"
    )
        port map (
      I0 => Instruction(2),
      I1 => Instruction(3),
      I2 => Instruction(0),
      I3 => Instruction(1),
      O => Reg2Read
    );
\Write_Data_Sel[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1302"
    )
        port map (
      I0 => Instruction(1),
      I1 => Instruction(3),
      I2 => Instruction(0),
      I3 => Instruction(2),
      O => Write_Data_Sel(0)
    );
\Write_Data_Sel[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A02"
    )
        port map (
      I0 => Instruction(1),
      I1 => Instruction(3),
      I2 => Instruction(0),
      I3 => Instruction(2),
      O => Write_Data_Sel(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_CU_Decoder_0_0 is
  port (
    Instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Reg1Read : out STD_LOGIC;
    Reg2Read : out STD_LOGIC;
    RF_WHB : out STD_LOGIC;
    RF_WLB : out STD_LOGIC;
    Write_Data_Sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RAM_Address_Src : out STD_LOGIC;
    RAM_Read : out STD_LOGIC;
    RAM_Write : out STD_LOGIC;
    JMP : out STD_LOGIC;
    JMP_Conditional : out STD_LOGIC;
    JMP_Relative : out STD_LOGIC;
    JMP_DestinationSource : out STD_LOGIC;
    Is_ALU_OP : out STD_LOGIC;
    Is_RAM_OP : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_CU_Decoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_CU_Decoder_0_0 : entity is "main_CU_Decoder_0_0,CU_Decoder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_CU_Decoder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_CU_Decoder_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_CU_Decoder_0_0 : entity is "CU_Decoder,Vivado 2024.1";
end main_CU_Decoder_0_0;

architecture STRUCTURE of main_CU_Decoder_0_0 is
  signal \^jmp_relative\ : STD_LOGIC;
begin
  JMP_Conditional <= \^jmp_relative\;
  JMP_Relative <= \^jmp_relative\;
RAM_Address_Src_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => Instruction(15),
      I1 => Instruction(14),
      I2 => Instruction(13),
      O => RAM_Address_Src
    );
RAM_Read_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => Instruction(15),
      I1 => Instruction(12),
      I2 => Instruction(13),
      O => RAM_Read
    );
RAM_Write_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Instruction(15),
      I1 => Instruction(12),
      I2 => Instruction(13),
      O => RAM_Write
    );
RF_WHB_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"058A"
    )
        port map (
      I0 => Instruction(13),
      I1 => Instruction(14),
      I2 => Instruction(15),
      I3 => Instruction(12),
      O => RF_WHB
    );
RF_WLB_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"081E"
    )
        port map (
      I0 => Instruction(13),
      I1 => Instruction(14),
      I2 => Instruction(12),
      I3 => Instruction(15),
      O => RF_WLB
    );
U0: entity work.main_CU_Decoder_0_0_CU_Decoder
     port map (
      Instruction(3 downto 0) => Instruction(15 downto 12),
      Is_ALU_OP => Is_ALU_OP,
      Is_RAM_OP => Is_RAM_OP,
      JMP => JMP,
      JMP_DestinationSource => JMP_DestinationSource,
      JMP_Relative => \^jmp_relative\,
      Reg1Read => Reg1Read,
      Reg2Read => Reg2Read,
      Write_Data_Sel(1 downto 0) => Write_Data_Sel(1 downto 0)
    );
end STRUCTURE;
