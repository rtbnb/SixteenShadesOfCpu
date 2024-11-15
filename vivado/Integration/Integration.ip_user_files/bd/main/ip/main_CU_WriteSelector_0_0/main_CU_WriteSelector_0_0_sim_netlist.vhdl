-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Nov 14 18:05:03 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_WriteSelector_0_0/main_CU_WriteSelector_0_0_sim_netlist.vhdl
-- Design      : main_CU_WriteSelector_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_CU_WriteSelector_0_0_CU_WriteSelector is
  port (
    Write_Data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Manipulated_Immidiate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ALU_Out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RAM_Out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Write_Sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Reg1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_CU_WriteSelector_0_0_CU_WriteSelector : entity is "CU_WriteSelector";
end main_CU_WriteSelector_0_0_CU_WriteSelector;

architecture STRUCTURE of main_CU_WriteSelector_0_0_CU_WriteSelector is
begin
\Write_Data[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(0),
      I1 => ALU_Out(0),
      I2 => RAM_Out(0),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(0),
      O => Write_Data(0)
    );
\Write_Data[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(10),
      I1 => ALU_Out(10),
      I2 => RAM_Out(10),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(10),
      O => Write_Data(10)
    );
\Write_Data[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(11),
      I1 => ALU_Out(11),
      I2 => RAM_Out(11),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(11),
      O => Write_Data(11)
    );
\Write_Data[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(12),
      I1 => ALU_Out(12),
      I2 => RAM_Out(12),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(12),
      O => Write_Data(12)
    );
\Write_Data[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(13),
      I1 => ALU_Out(13),
      I2 => RAM_Out(13),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(13),
      O => Write_Data(13)
    );
\Write_Data[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(14),
      I1 => ALU_Out(14),
      I2 => RAM_Out(14),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(14),
      O => Write_Data(14)
    );
\Write_Data[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(15),
      I1 => ALU_Out(15),
      I2 => RAM_Out(15),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(15),
      O => Write_Data(15)
    );
\Write_Data[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(1),
      I1 => ALU_Out(1),
      I2 => RAM_Out(1),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(1),
      O => Write_Data(1)
    );
\Write_Data[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(2),
      I1 => ALU_Out(2),
      I2 => RAM_Out(2),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(2),
      O => Write_Data(2)
    );
\Write_Data[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(3),
      I1 => ALU_Out(3),
      I2 => RAM_Out(3),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(3),
      O => Write_Data(3)
    );
\Write_Data[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(4),
      I1 => ALU_Out(4),
      I2 => RAM_Out(4),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(4),
      O => Write_Data(4)
    );
\Write_Data[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(5),
      I1 => ALU_Out(5),
      I2 => RAM_Out(5),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(5),
      O => Write_Data(5)
    );
\Write_Data[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(6),
      I1 => ALU_Out(6),
      I2 => RAM_Out(6),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(6),
      O => Write_Data(6)
    );
\Write_Data[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(7),
      I1 => ALU_Out(7),
      I2 => RAM_Out(7),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(7),
      O => Write_Data(7)
    );
\Write_Data[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(8),
      I1 => ALU_Out(8),
      I2 => RAM_Out(8),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(8),
      O => Write_Data(8)
    );
\Write_Data[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => Manipulated_Immidiate(9),
      I1 => ALU_Out(9),
      I2 => RAM_Out(9),
      I3 => Write_Sel(1),
      I4 => Write_Sel(0),
      I5 => Reg1(9),
      O => Write_Data(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_CU_WriteSelector_0_0 is
  port (
    RAM_Out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Manipulated_Immidiate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Reg1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ALU_Out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Write_Sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Write_Data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_CU_WriteSelector_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_CU_WriteSelector_0_0 : entity is "main_CU_WriteSelector_0_0,CU_WriteSelector,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_CU_WriteSelector_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_CU_WriteSelector_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_CU_WriteSelector_0_0 : entity is "CU_WriteSelector,Vivado 2024.1";
end main_CU_WriteSelector_0_0;

architecture STRUCTURE of main_CU_WriteSelector_0_0 is
begin
U0: entity work.main_CU_WriteSelector_0_0_CU_WriteSelector
     port map (
      ALU_Out(15 downto 0) => ALU_Out(15 downto 0),
      Manipulated_Immidiate(15 downto 0) => Manipulated_Immidiate(15 downto 0),
      RAM_Out(15 downto 0) => RAM_Out(15 downto 0),
      Reg1(15 downto 0) => Reg1(15 downto 0),
      Write_Data(15 downto 0) => Write_Data(15 downto 0),
      Write_Sel(1 downto 0) => Write_Sel(1 downto 0)
    );
end STRUCTURE;
