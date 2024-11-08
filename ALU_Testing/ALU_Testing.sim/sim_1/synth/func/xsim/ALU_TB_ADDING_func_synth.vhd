-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Nov  7 20:58:29 2024
-- Host        : DESKTOP-NFG9C79 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Code/VHDL/SixteenShadesOfCpu/ALU_Testing/ALU_Testing.sim/sim_1/synth/func/xsim/ALU_TB_ADDING_func_synth.vhd
-- Design      : ALU
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ALU is
  port (
    D1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    D2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ALU_OPP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RHO_PIN : in STD_LOGIC;
    ALU_OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ALU_FLAGS : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ALU : entity is true;
end ALU;

architecture STRUCTURE of ALU is
  signal ALU_FLAGS_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \ALU_FLAGS__0\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \ALU_FLAGS_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ALU_FLAGS_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \ALU_FLAGS_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_FLAGS_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_FLAGS_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_FLAGS_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal ALU_OPP_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ALU_OUT_Internal : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ALU_OUT_Internal_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[10]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[10]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[10]_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[10]_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[11]_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[12]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[12]_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[13]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[13]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[13]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[13]_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[14]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[14]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[14]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[15]_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[15]_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[15]_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[15]_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[15]_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[15]_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[15]_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[6]_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[8]_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[9]_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[9]_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[9]_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal_reg[9]_i_8_n_0\ : STD_LOGIC;
  signal ALU_OUT_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal D1_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal D2_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal temp : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp__0\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \temp_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \temp_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \temp_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \temp_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \temp_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \temp_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \temp_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \temp_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \temp_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \temp_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \temp_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \temp_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \temp_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \temp_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \temp_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \NLW_ALU_FLAGS_reg[3]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ALU_FLAGS_reg[3]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \ALU_FLAGS_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \ALU_FLAGS_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALU_FLAGS_reg[0]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \ALU_FLAGS_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_FLAGS_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \ALU_FLAGS_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_FLAGS_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \ALU_FLAGS_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_FLAGS_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \ALU_FLAGS_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_FLAGS_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[0]_i_5\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[10]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[10]_i_8\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[11]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[11]_i_7\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[12]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[12]_i_7\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[13]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[13]_i_7\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[14]_i_6\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[15]_i_7\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[3]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[3]_i_7\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[4]_i_5\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[5]_i_5\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[7]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[7]_i_7\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[8]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[8]_i_7\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \ALU_OUT_Internal_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \ALU_OUT_Internal_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[9]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALU_OUT_Internal_reg[9]_i_8\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \temp_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \temp_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \temp_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \temp_reg[11]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \temp_reg[11]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute XILINX_LEGACY_PRIM of \temp_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \temp_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \temp_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \temp_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute ADDER_THRESHOLD of \temp_reg[15]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \temp_reg[15]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute XILINX_LEGACY_PRIM of \temp_reg[16]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[16]\ : label is "VCC:GE GND:CLR";
  attribute ADDER_THRESHOLD of \temp_reg[16]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \temp_reg[16]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute XILINX_LEGACY_PRIM of \temp_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \temp_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \temp_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute ADDER_THRESHOLD of \temp_reg[3]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \temp_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute XILINX_LEGACY_PRIM of \temp_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \temp_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \temp_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \temp_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute ADDER_THRESHOLD of \temp_reg[7]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \temp_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute XILINX_LEGACY_PRIM of \temp_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \temp_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \temp_reg[9]\ : label is "VCC:GE GND:CLR";
begin
\ALU_FLAGS_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_FLAGS_OBUF(0),
      O => ALU_FLAGS(0)
    );
\ALU_FLAGS_OBUF[10]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => ALU_FLAGS(10),
      T => '1'
    );
\ALU_FLAGS_OBUF[11]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => ALU_FLAGS(11),
      T => '1'
    );
\ALU_FLAGS_OBUF[12]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => ALU_FLAGS(12),
      T => '1'
    );
\ALU_FLAGS_OBUF[13]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => ALU_FLAGS(13),
      T => '1'
    );
\ALU_FLAGS_OBUF[14]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => ALU_FLAGS(14),
      T => '1'
    );
\ALU_FLAGS_OBUF[15]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => ALU_FLAGS(15),
      T => '1'
    );
\ALU_FLAGS_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_FLAGS_OBUF(1),
      O => ALU_FLAGS(1)
    );
\ALU_FLAGS_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_FLAGS_OBUF(2),
      O => ALU_FLAGS(2)
    );
\ALU_FLAGS_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_FLAGS_OBUF(3),
      O => ALU_FLAGS(3)
    );
\ALU_FLAGS_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_FLAGS_OBUF(4),
      O => ALU_FLAGS(4)
    );
\ALU_FLAGS_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1482"
    )
        port map (
      I0 => ALU_OUT_OBUF(15),
      I1 => D2_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      I3 => D1_IBUF(15),
      O => ALU_FLAGS_OBUF(4)
    );
\ALU_FLAGS_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_FLAGS_OBUF(5),
      O => ALU_FLAGS(5)
    );
\ALU_FLAGS_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_FLAGS_OBUF(6),
      O => ALU_FLAGS(6)
    );
\ALU_FLAGS_OBUF[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => ALU_FLAGS(7),
      T => '1'
    );
\ALU_FLAGS_OBUF[8]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => ALU_FLAGS(8),
      T => '1'
    );
\ALU_FLAGS_OBUF[9]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => ALU_FLAGS(9),
      T => '1'
    );
\ALU_FLAGS_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => temp(16),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => ALU_FLAGS_OBUF(0)
    );
\ALU_FLAGS_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(1),
      I2 => ALU_OPP_IBUF(2),
      O => \ALU_FLAGS_reg[0]_i_1_n_0\
    );
\ALU_FLAGS_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => '1',
      G => \ALU_FLAGS__0\(1),
      GE => '1',
      Q => ALU_FLAGS_OBUF(1)
    );
\ALU_FLAGS_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \ALU_FLAGS_reg[6]_i_2_n_0\,
      I1 => ALU_OUT_OBUF(15),
      I2 => ALU_OUT_OBUF(14),
      I3 => ALU_OUT_OBUF(12),
      I4 => ALU_OUT_OBUF(13),
      I5 => \ALU_FLAGS_reg[6]_i_3_n_0\,
      O => \ALU_FLAGS__0\(1)
    );
\ALU_FLAGS_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => '1',
      G => p_0_in,
      GE => '1',
      Q => ALU_FLAGS_OBUF(2)
    );
\ALU_FLAGS_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => '1',
      G => \ALU_FLAGS_reg[3]_i_1_n_6\,
      GE => '1',
      Q => ALU_FLAGS_OBUF(3)
    );
\ALU_FLAGS_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => \NLW_ALU_FLAGS_reg[3]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => p_0_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => ALU_OUT_OBUF(15),
      O(3 downto 2) => \NLW_ALU_FLAGS_reg[3]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \ALU_FLAGS_reg[3]_i_1_n_6\,
      O(0) => \NLW_ALU_FLAGS_reg[3]_i_1_O_UNCONNECTED\(0),
      S(3 downto 1) => B"001",
      S(0) => \ALU_FLAGS_reg[3]_i_2_n_0\
    );
\ALU_FLAGS_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ALU_OUT_OBUF(15),
      I1 => ALU_OUT_OBUF(14),
      O => \ALU_FLAGS_reg[3]_i_2_n_0\
    );
\ALU_FLAGS_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => '1',
      G => \ALU_FLAGS__0\(6),
      GE => '1',
      Q => ALU_FLAGS_OBUF(6)
    );
\ALU_FLAGS_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \ALU_FLAGS_reg[6]_i_2_n_0\,
      I1 => ALU_OUT_OBUF(15),
      I2 => ALU_OUT_OBUF(14),
      I3 => ALU_OUT_OBUF(12),
      I4 => ALU_OUT_OBUF(13),
      I5 => \ALU_FLAGS_reg[6]_i_3_n_0\,
      O => \ALU_FLAGS__0\(6)
    );
\ALU_FLAGS_reg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALU_OUT_OBUF(10),
      I1 => ALU_OUT_OBUF(11),
      I2 => ALU_OUT_OBUF(8),
      I3 => ALU_OUT_OBUF(9),
      O => \ALU_FLAGS_reg[6]_i_2_n_0\
    );
\ALU_FLAGS_reg[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ALU_OUT_OBUF(5),
      I1 => ALU_OUT_OBUF(4),
      I2 => ALU_OUT_OBUF(7),
      I3 => ALU_OUT_OBUF(6),
      I4 => \ALU_FLAGS_reg[6]_i_4_n_0\,
      O => \ALU_FLAGS_reg[6]_i_3_n_0\
    );
\ALU_FLAGS_reg[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALU_OUT_OBUF(2),
      I1 => ALU_OUT_OBUF(3),
      I2 => ALU_OUT_OBUF(0),
      I3 => ALU_OUT_OBUF(1),
      O => \ALU_FLAGS_reg[6]_i_4_n_0\
    );
\ALU_OPP_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ALU_OPP(0),
      O => ALU_OPP_IBUF(0)
    );
\ALU_OPP_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ALU_OPP(1),
      O => ALU_OPP_IBUF(1)
    );
\ALU_OPP_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ALU_OPP(2),
      O => ALU_OPP_IBUF(2)
    );
\ALU_OPP_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ALU_OPP(3),
      O => ALU_OPP_IBUF(3)
    );
\ALU_OUT_Internal_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(0),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(0)
    );
\ALU_OUT_Internal_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[0]_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal_reg[0]_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => temp(0),
      O => ALU_OUT_Internal(0)
    );
\ALU_OUT_Internal_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(0),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(0),
      O => \ALU_OUT_Internal_reg[0]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[0]_i_4_n_0\,
      I1 => D1_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_Internal_reg[0]_i_5_n_0\,
      O => \ALU_OUT_Internal_reg[0]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[3]_i_6_n_0\,
      I1 => \ALU_OUT_Internal_reg[1]_i_6_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[2]_i_6_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[0]_i_6_n_0\,
      O => \ALU_OUT_Internal_reg[0]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D1_IBUF(0),
      I2 => D2_IBUF(3),
      I3 => D2_IBUF(1),
      O => \ALU_OUT_Internal_reg[0]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(12),
      I1 => D1_IBUF(4),
      I2 => D2_IBUF(2),
      I3 => D1_IBUF(8),
      I4 => D2_IBUF(3),
      I5 => D1_IBUF(0),
      O => \ALU_OUT_Internal_reg[0]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(10),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(10)
    );
\ALU_OUT_Internal_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[10]_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal_reg[10]_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => temp(10),
      O => ALU_OUT_Internal(10)
    );
\ALU_OUT_Internal_reg[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(10),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(10),
      O => \ALU_OUT_Internal_reg[10]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[10]_i_4_n_0\,
      I1 => D1_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I4 => \ALU_OUT_Internal_reg[10]_i_5_n_0\,
      O => \ALU_OUT_Internal_reg[10]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[11]_i_6_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_Internal_reg[10]_i_6_n_0\,
      I3 => D2_IBUF(1),
      I4 => \ALU_OUT_Internal_reg[10]_i_7_n_0\,
      O => \ALU_OUT_Internal_reg[10]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[10]_i_8_n_0\,
      I1 => \ALU_OUT_Internal_reg[12]_i_7_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[11]_i_7_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[13]_i_7_n_0\,
      O => \ALU_OUT_Internal_reg[10]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D1_IBUF(15),
      I2 => D2_IBUF(3),
      I3 => D1_IBUF(12),
      O => \ALU_OUT_Internal_reg[10]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[10]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(15),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(10),
      O => \ALU_OUT_Internal_reg[10]_i_7_n_0\
    );
\ALU_OUT_Internal_reg[10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(7),
      I3 => D2_IBUF(3),
      O => \ALU_OUT_Internal_reg[10]_i_8_n_0\
    );
\ALU_OUT_Internal_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(11),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(11)
    );
\ALU_OUT_Internal_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[11]_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal_reg[11]_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => temp(11),
      O => ALU_OUT_Internal(11)
    );
\ALU_OUT_Internal_reg[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(11),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(11),
      O => \ALU_OUT_Internal_reg[11]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[11]_i_4_n_0\,
      I1 => D1_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I4 => \ALU_OUT_Internal_reg[11]_i_5_n_0\,
      O => \ALU_OUT_Internal_reg[11]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[12]_i_6_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_Internal_reg[11]_i_6_n_0\,
      O => \ALU_OUT_Internal_reg[11]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[11]_i_7_n_0\,
      I1 => \ALU_OUT_Internal_reg[13]_i_7_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[12]_i_7_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[14]_i_6_n_0\,
      O => \ALU_OUT_Internal_reg[11]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => D2_IBUF(1),
      I2 => D2_IBUF(2),
      I3 => D1_IBUF(15),
      I4 => D2_IBUF(3),
      I5 => D1_IBUF(11),
      O => \ALU_OUT_Internal_reg[11]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[11]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(0),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(8),
      O => \ALU_OUT_Internal_reg[11]_i_7_n_0\
    );
\ALU_OUT_Internal_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(12),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(12)
    );
\ALU_OUT_Internal_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[12]_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal_reg[12]_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => temp(12),
      O => ALU_OUT_Internal(12)
    );
\ALU_OUT_Internal_reg[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(12),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(12),
      O => \ALU_OUT_Internal_reg[12]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[12]_i_4_n_0\,
      I1 => D1_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I4 => \ALU_OUT_Internal_reg[12]_i_5_n_0\,
      O => \ALU_OUT_Internal_reg[12]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[13]_i_6_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_Internal_reg[12]_i_6_n_0\,
      O => \ALU_OUT_Internal_reg[12]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[12]_i_7_n_0\,
      I1 => \ALU_OUT_Internal_reg[14]_i_6_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[13]_i_7_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[15]_i_10_n_0\,
      O => \ALU_OUT_Internal_reg[12]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => D2_IBUF(1),
      I2 => D2_IBUF(2),
      I3 => D1_IBUF(15),
      I4 => D2_IBUF(3),
      I5 => D1_IBUF(12),
      O => \ALU_OUT_Internal_reg[12]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => D1_IBUF(5),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(1),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(9),
      O => \ALU_OUT_Internal_reg[12]_i_7_n_0\
    );
\ALU_OUT_Internal_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(13),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(13)
    );
\ALU_OUT_Internal_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[13]_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal_reg[13]_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => temp(13),
      O => ALU_OUT_Internal(13)
    );
\ALU_OUT_Internal_reg[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(13),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(13),
      O => \ALU_OUT_Internal_reg[13]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[13]_i_4_n_0\,
      I1 => D1_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I4 => \ALU_OUT_Internal_reg[13]_i_5_n_0\,
      O => \ALU_OUT_Internal_reg[13]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[13]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[14]_i_4_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_Internal_reg[13]_i_6_n_0\,
      O => \ALU_OUT_Internal_reg[13]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[13]_i_7_n_0\,
      I1 => \ALU_OUT_Internal_reg[15]_i_10_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[14]_i_6_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[15]_i_12_n_0\,
      O => \ALU_OUT_Internal_reg[13]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[13]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => D2_IBUF(1),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(15),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(13),
      O => \ALU_OUT_Internal_reg[13]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[13]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => D1_IBUF(6),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(2),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(10),
      O => \ALU_OUT_Internal_reg[13]_i_7_n_0\
    );
\ALU_OUT_Internal_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(14),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(14)
    );
\ALU_OUT_Internal_reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[14]_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal_reg[14]_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => temp(14),
      O => ALU_OUT_Internal(14)
    );
\ALU_OUT_Internal_reg[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(14),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(14),
      O => \ALU_OUT_Internal_reg[14]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4FFF000E400F000"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => \ALU_OUT_Internal_reg[14]_i_4_n_0\,
      I2 => D1_IBUF(15),
      I3 => ALU_OPP_IBUF(0),
      I4 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I5 => \ALU_OUT_Internal_reg[14]_i_5_n_0\,
      O => \ALU_OUT_Internal_reg[14]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => D2_IBUF(1),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(15),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(14),
      O => \ALU_OUT_Internal_reg[14]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[14]_i_6_n_0\,
      I1 => \ALU_OUT_Internal_reg[15]_i_12_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_10_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[15]_i_11_n_0\,
      O => \ALU_OUT_Internal_reg[14]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[14]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => D1_IBUF(7),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(3),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(11),
      O => \ALU_OUT_Internal_reg[14]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(15),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(15)
    );
\ALU_OUT_Internal_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT_Internal_reg[15]_i_3_n_0\,
      I1 => \ALU_OUT_Internal_reg[15]_i_4_n_0\,
      O => ALU_OUT_Internal(15),
      S => ALU_OPP_IBUF(3)
    );
\ALU_OUT_Internal_reg[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D1_IBUF(8),
      I2 => D2_IBUF(2),
      I3 => D1_IBUF(4),
      I4 => D2_IBUF(3),
      I5 => D1_IBUF(12),
      O => \ALU_OUT_Internal_reg[15]_i_10_n_0\
    );
\ALU_OUT_Internal_reg[15]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => D1_IBUF(10),
      I2 => D2_IBUF(2),
      I3 => D1_IBUF(6),
      I4 => D2_IBUF(3),
      I5 => D1_IBUF(14),
      O => \ALU_OUT_Internal_reg[15]_i_11_n_0\
    );
\ALU_OUT_Internal_reg[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D1_IBUF(9),
      I2 => D2_IBUF(2),
      I3 => D1_IBUF(5),
      I4 => D2_IBUF(3),
      I5 => D1_IBUF(13),
      O => \ALU_OUT_Internal_reg[15]_i_12_n_0\
    );
\ALU_OUT_Internal_reg[15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => D1_IBUF(11),
      I2 => D2_IBUF(2),
      I3 => D1_IBUF(7),
      I4 => D2_IBUF(3),
      I5 => D1_IBUF(15),
      O => \ALU_OUT_Internal_reg[15]_i_13_n_0\
    );
\ALU_OUT_Internal_reg[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_Internal_reg[15]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => ALU_OPP_IBUF(0),
      I2 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I3 => \ALU_OUT_Internal_reg[15]_i_6_n_0\,
      I4 => \ALU_OUT_Internal_reg[15]_i_7_n_0\,
      I5 => temp(15),
      O => \ALU_OUT_Internal_reg[15]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(15),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(15),
      O => \ALU_OUT_Internal_reg[15]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => D2_IBUF(13),
      I1 => D2_IBUF(12),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(14),
      I4 => \ALU_OUT_Internal_reg[15]_i_8_n_0\,
      I5 => \ALU_OUT_Internal_reg[15]_i_9_n_0\,
      O => \ALU_OUT_Internal_reg[15]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[15]_i_10_n_0\,
      I1 => \ALU_OUT_Internal_reg[15]_i_11_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_12_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[15]_i_13_n_0\,
      O => \ALU_OUT_Internal_reg[15]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_Internal_reg[15]_i_7_n_0\
    );
\ALU_OUT_Internal_reg[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => D2_IBUF(6),
      I1 => D2_IBUF(7),
      I2 => D2_IBUF(4),
      I3 => D2_IBUF(5),
      O => \ALU_OUT_Internal_reg[15]_i_8_n_0\
    );
\ALU_OUT_Internal_reg[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => D2_IBUF(10),
      I1 => D2_IBUF(11),
      I2 => D2_IBUF(8),
      I3 => D2_IBUF(9),
      O => \ALU_OUT_Internal_reg[15]_i_9_n_0\
    );
\ALU_OUT_Internal_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(1),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(1)
    );
\ALU_OUT_Internal_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[1]_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal_reg[1]_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => temp(1),
      O => ALU_OUT_Internal(1)
    );
\ALU_OUT_Internal_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(1),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(1),
      O => \ALU_OUT_Internal_reg[1]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[1]_i_4_n_0\,
      I1 => D1_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I4 => \ALU_OUT_Internal_reg[1]_i_5_n_0\,
      O => \ALU_OUT_Internal_reg[1]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[4]_i_6_n_0\,
      I1 => \ALU_OUT_Internal_reg[2]_i_6_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[3]_i_6_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[1]_i_6_n_0\,
      O => \ALU_OUT_Internal_reg[1]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D2_IBUF(0),
      I2 => D2_IBUF(2),
      I3 => D1_IBUF(1),
      I4 => D2_IBUF(3),
      I5 => D2_IBUF(1),
      O => \ALU_OUT_Internal_reg[1]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => D1_IBUF(5),
      I2 => D2_IBUF(2),
      I3 => D1_IBUF(9),
      I4 => D2_IBUF(3),
      I5 => D1_IBUF(1),
      O => \ALU_OUT_Internal_reg[1]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(2),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(2)
    );
\ALU_OUT_Internal_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[2]_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal_reg[2]_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => temp(2),
      O => ALU_OUT_Internal(2)
    );
\ALU_OUT_Internal_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(2),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(2),
      O => \ALU_OUT_Internal_reg[2]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[2]_i_4_n_0\,
      I1 => D1_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I4 => \ALU_OUT_Internal_reg[2]_i_5_n_0\,
      O => \ALU_OUT_Internal_reg[2]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[5]_i_6_n_0\,
      I1 => \ALU_OUT_Internal_reg[3]_i_6_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[4]_i_6_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[2]_i_6_n_0\,
      O => \ALU_OUT_Internal_reg[2]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D1_IBUF(1),
      I2 => D2_IBUF(3),
      I3 => D2_IBUF(1),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_Internal_reg[3]_i_7_n_0\,
      O => \ALU_OUT_Internal_reg[2]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => D1_IBUF(6),
      I2 => D2_IBUF(2),
      I3 => D1_IBUF(10),
      I4 => D2_IBUF(3),
      I5 => D1_IBUF(2),
      O => \ALU_OUT_Internal_reg[2]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(3),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(3)
    );
\ALU_OUT_Internal_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[3]_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal_reg[3]_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => temp(3),
      O => ALU_OUT_Internal(3)
    );
\ALU_OUT_Internal_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(3),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(3),
      O => \ALU_OUT_Internal_reg[3]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[3]_i_4_n_0\,
      I1 => D1_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I4 => \ALU_OUT_Internal_reg[3]_i_5_n_0\,
      O => \ALU_OUT_Internal_reg[3]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[6]_i_6_n_0\,
      I1 => \ALU_OUT_Internal_reg[4]_i_6_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[5]_i_6_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[3]_i_6_n_0\,
      O => \ALU_OUT_Internal_reg[3]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[3]_i_7_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_Internal_reg[4]_i_7_n_0\,
      O => \ALU_OUT_Internal_reg[3]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D1_IBUF(7),
      I2 => D2_IBUF(2),
      I3 => D1_IBUF(11),
      I4 => D2_IBUF(3),
      I5 => D1_IBUF(3),
      O => \ALU_OUT_Internal_reg[3]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D2_IBUF(1),
      I2 => D2_IBUF(3),
      I3 => D1_IBUF(2),
      I4 => D2_IBUF(2),
      O => \ALU_OUT_Internal_reg[3]_i_7_n_0\
    );
\ALU_OUT_Internal_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(4),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(4)
    );
\ALU_OUT_Internal_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[4]_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal_reg[4]_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => temp(4),
      O => ALU_OUT_Internal(4)
    );
\ALU_OUT_Internal_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(4),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(4),
      O => \ALU_OUT_Internal_reg[4]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[4]_i_4_n_0\,
      I1 => D1_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I4 => \ALU_OUT_Internal_reg[4]_i_5_n_0\,
      O => \ALU_OUT_Internal_reg[4]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[7]_i_6_n_0\,
      I1 => \ALU_OUT_Internal_reg[5]_i_6_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[6]_i_6_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[4]_i_6_n_0\,
      O => \ALU_OUT_Internal_reg[4]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[4]_i_7_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_Internal_reg[5]_i_7_n_0\,
      O => \ALU_OUT_Internal_reg[4]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D1_IBUF(8),
      I2 => D2_IBUF(2),
      I3 => D1_IBUF(12),
      I4 => D2_IBUF(3),
      I5 => D1_IBUF(4),
      O => \ALU_OUT_Internal_reg[4]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D2_IBUF(1),
      I2 => D2_IBUF(3),
      I3 => D1_IBUF(3),
      I4 => D2_IBUF(2),
      O => \ALU_OUT_Internal_reg[4]_i_7_n_0\
    );
\ALU_OUT_Internal_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(5),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(5)
    );
\ALU_OUT_Internal_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[5]_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal_reg[5]_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => temp(5),
      O => ALU_OUT_Internal(5)
    );
\ALU_OUT_Internal_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(5),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(5),
      O => \ALU_OUT_Internal_reg[5]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[5]_i_4_n_0\,
      I1 => D1_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I4 => \ALU_OUT_Internal_reg[5]_i_5_n_0\,
      O => \ALU_OUT_Internal_reg[5]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[8]_i_6_n_0\,
      I1 => \ALU_OUT_Internal_reg[6]_i_6_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[7]_i_6_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[5]_i_6_n_0\,
      O => \ALU_OUT_Internal_reg[5]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[5]_i_7_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_Internal_reg[6]_i_7_n_0\,
      O => \ALU_OUT_Internal_reg[5]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D1_IBUF(9),
      I2 => D2_IBUF(2),
      I3 => D1_IBUF(13),
      I4 => D2_IBUF(3),
      I5 => D1_IBUF(5),
      O => \ALU_OUT_Internal_reg[5]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => D2_IBUF(1),
      I2 => D1_IBUF(0),
      I3 => D2_IBUF(2),
      I4 => D1_IBUF(4),
      I5 => D2_IBUF(3),
      O => \ALU_OUT_Internal_reg[5]_i_7_n_0\
    );
\ALU_OUT_Internal_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(6),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(6)
    );
\ALU_OUT_Internal_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[6]_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal_reg[6]_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => temp(6),
      O => ALU_OUT_Internal(6)
    );
\ALU_OUT_Internal_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(6),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(6),
      O => \ALU_OUT_Internal_reg[6]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[6]_i_4_n_0\,
      I1 => D1_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I4 => \ALU_OUT_Internal_reg[6]_i_5_n_0\,
      O => \ALU_OUT_Internal_reg[6]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[9]_i_7_n_0\,
      I1 => \ALU_OUT_Internal_reg[7]_i_6_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[8]_i_6_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[6]_i_6_n_0\,
      O => \ALU_OUT_Internal_reg[6]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[6]_i_7_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_Internal_reg[7]_i_7_n_0\,
      I3 => D2_IBUF(1),
      I4 => \ALU_OUT_Internal_reg[9]_i_8_n_0\,
      O => \ALU_OUT_Internal_reg[6]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D1_IBUF(10),
      I2 => D2_IBUF(2),
      I3 => D1_IBUF(14),
      I4 => D2_IBUF(3),
      I5 => D1_IBUF(6),
      O => \ALU_OUT_Internal_reg[6]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => D2_IBUF(1),
      I2 => D1_IBUF(1),
      I3 => D2_IBUF(2),
      I4 => D1_IBUF(5),
      I5 => D2_IBUF(3),
      O => \ALU_OUT_Internal_reg[6]_i_7_n_0\
    );
\ALU_OUT_Internal_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(7),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(7)
    );
\ALU_OUT_Internal_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[7]_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal_reg[7]_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => temp(7),
      O => ALU_OUT_Internal(7)
    );
\ALU_OUT_Internal_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(7),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(7),
      O => \ALU_OUT_Internal_reg[7]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[7]_i_4_n_0\,
      I1 => D1_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I4 => \ALU_OUT_Internal_reg[7]_i_5_n_0\,
      O => \ALU_OUT_Internal_reg[7]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[10]_i_7_n_0\,
      I1 => \ALU_OUT_Internal_reg[8]_i_6_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[9]_i_7_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[7]_i_6_n_0\,
      O => \ALU_OUT_Internal_reg[7]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[7]_i_7_n_0\,
      I1 => \ALU_OUT_Internal_reg[9]_i_8_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[8]_i_7_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[10]_i_8_n_0\,
      O => \ALU_OUT_Internal_reg[7]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1_IBUF(11),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(15),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(7),
      O => \ALU_OUT_Internal_reg[7]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(4),
      I3 => D2_IBUF(3),
      O => \ALU_OUT_Internal_reg[7]_i_7_n_0\
    );
\ALU_OUT_Internal_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(8),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(8)
    );
\ALU_OUT_Internal_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[8]_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal_reg[8]_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => temp(8),
      O => ALU_OUT_Internal(8)
    );
\ALU_OUT_Internal_reg[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(8),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(8),
      O => \ALU_OUT_Internal_reg[8]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[8]_i_4_n_0\,
      I1 => D1_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I4 => \ALU_OUT_Internal_reg[8]_i_5_n_0\,
      O => \ALU_OUT_Internal_reg[8]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[9]_i_6_n_0\,
      I1 => \ALU_OUT_Internal_reg[9]_i_7_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[10]_i_7_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[8]_i_6_n_0\,
      O => \ALU_OUT_Internal_reg[8]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[8]_i_7_n_0\,
      I1 => \ALU_OUT_Internal_reg[10]_i_8_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[9]_i_8_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[11]_i_7_n_0\,
      O => \ALU_OUT_Internal_reg[8]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1_IBUF(12),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(15),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(8),
      O => \ALU_OUT_Internal_reg[8]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(5),
      I3 => D2_IBUF(3),
      O => \ALU_OUT_Internal_reg[8]_i_7_n_0\
    );
\ALU_OUT_Internal_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_OUT_Internal(9),
      G => \ALU_OUT_Internal_reg[15]_i_2_n_0\,
      GE => '1',
      Q => ALU_OUT_OBUF(9)
    );
\ALU_OUT_Internal_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[9]_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal_reg[9]_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => temp(9),
      O => ALU_OUT_Internal(9)
    );
\ALU_OUT_Internal_reg[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B748474748B848B8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => D2_IBUF(9),
      I4 => ALU_OPP_IBUF(0),
      I5 => D1_IBUF(9),
      O => \ALU_OUT_Internal_reg[9]_i_2_n_0\
    );
\ALU_OUT_Internal_reg[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[9]_i_4_n_0\,
      I1 => D1_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[15]_i_5_n_0\,
      I4 => \ALU_OUT_Internal_reg[9]_i_5_n_0\,
      O => \ALU_OUT_Internal_reg[9]_i_3_n_0\
    );
\ALU_OUT_Internal_reg[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[10]_i_6_n_0\,
      I1 => \ALU_OUT_Internal_reg[10]_i_7_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[9]_i_6_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[9]_i_7_n_0\,
      O => \ALU_OUT_Internal_reg[9]_i_4_n_0\
    );
\ALU_OUT_Internal_reg[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_Internal_reg[9]_i_8_n_0\,
      I1 => \ALU_OUT_Internal_reg[11]_i_7_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_Internal_reg[10]_i_8_n_0\,
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_Internal_reg[12]_i_7_n_0\,
      O => \ALU_OUT_Internal_reg[9]_i_5_n_0\
    );
\ALU_OUT_Internal_reg[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D1_IBUF(15),
      I2 => D2_IBUF(3),
      I3 => D1_IBUF(11),
      O => \ALU_OUT_Internal_reg[9]_i_6_n_0\
    );
\ALU_OUT_Internal_reg[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(15),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(9),
      O => \ALU_OUT_Internal_reg[9]_i_7_n_0\
    );
\ALU_OUT_Internal_reg[9]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(6),
      I3 => D2_IBUF(3),
      O => \ALU_OUT_Internal_reg[9]_i_8_n_0\
    );
\ALU_OUT_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(0),
      O => ALU_OUT(0)
    );
\ALU_OUT_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(10),
      O => ALU_OUT(10)
    );
\ALU_OUT_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(11),
      O => ALU_OUT(11)
    );
\ALU_OUT_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(12),
      O => ALU_OUT(12)
    );
\ALU_OUT_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(13),
      O => ALU_OUT(13)
    );
\ALU_OUT_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(14),
      O => ALU_OUT(14)
    );
\ALU_OUT_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(15),
      O => ALU_OUT(15)
    );
\ALU_OUT_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(1),
      O => ALU_OUT(1)
    );
\ALU_OUT_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(2),
      O => ALU_OUT(2)
    );
\ALU_OUT_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(3),
      O => ALU_OUT(3)
    );
\ALU_OUT_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(4),
      O => ALU_OUT(4)
    );
\ALU_OUT_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(5),
      O => ALU_OUT(5)
    );
\ALU_OUT_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(6),
      O => ALU_OUT(6)
    );
\ALU_OUT_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(7),
      O => ALU_OUT(7)
    );
\ALU_OUT_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(8),
      O => ALU_OUT(8)
    );
\ALU_OUT_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(9),
      O => ALU_OUT(9)
    );
\D1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(0),
      O => D1_IBUF(0)
    );
\D1_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(10),
      O => D1_IBUF(10)
    );
\D1_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(11),
      O => D1_IBUF(11)
    );
\D1_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(12),
      O => D1_IBUF(12)
    );
\D1_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(13),
      O => D1_IBUF(13)
    );
\D1_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(14),
      O => D1_IBUF(14)
    );
\D1_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(15),
      O => D1_IBUF(15)
    );
\D1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(1),
      O => D1_IBUF(1)
    );
\D1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(2),
      O => D1_IBUF(2)
    );
\D1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(3),
      O => D1_IBUF(3)
    );
\D1_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(4),
      O => D1_IBUF(4)
    );
\D1_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(5),
      O => D1_IBUF(5)
    );
\D1_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(6),
      O => D1_IBUF(6)
    );
\D1_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(7),
      O => D1_IBUF(7)
    );
\D1_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(8),
      O => D1_IBUF(8)
    );
\D1_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D1(9),
      O => D1_IBUF(9)
    );
\D2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(0),
      O => D2_IBUF(0)
    );
\D2_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(10),
      O => D2_IBUF(10)
    );
\D2_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(11),
      O => D2_IBUF(11)
    );
\D2_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(12),
      O => D2_IBUF(12)
    );
\D2_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(13),
      O => D2_IBUF(13)
    );
\D2_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(14),
      O => D2_IBUF(14)
    );
\D2_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(15),
      O => D2_IBUF(15)
    );
\D2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(1),
      O => D2_IBUF(1)
    );
\D2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(2),
      O => D2_IBUF(2)
    );
\D2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(3),
      O => D2_IBUF(3)
    );
\D2_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(4),
      O => D2_IBUF(4)
    );
\D2_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(5),
      O => D2_IBUF(5)
    );
\D2_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(6),
      O => D2_IBUF(6)
    );
\D2_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(7),
      O => D2_IBUF(7)
    );
\D2_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(8),
      O => D2_IBUF(8)
    );
\D2_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D2(9),
      O => D2_IBUF(9)
    );
RHO_PIN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RHO_PIN,
      O => ALU_FLAGS_OBUF(5)
    );
\temp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(0),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(0)
    );
\temp_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(10),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(10)
    );
\temp_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(11),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(11)
    );
\temp_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[7]_i_1_n_0\,
      CO(3) => \temp_reg[11]_i_1_n_0\,
      CO(2) => \temp_reg[11]_i_1_n_1\,
      CO(1) => \temp_reg[11]_i_1_n_2\,
      CO(0) => \temp_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D1_IBUF(11 downto 8),
      O(3 downto 0) => \temp__0\(11 downto 8),
      S(3) => \temp_reg[11]_i_2_n_0\,
      S(2) => \temp_reg[11]_i_3_n_0\,
      S(1) => \temp_reg[11]_i_4_n_0\,
      S(0) => \temp_reg[11]_i_5_n_0\
    );
\temp_reg[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D2_IBUF(11),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(11),
      O => \temp_reg[11]_i_2_n_0\
    );
\temp_reg[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D2_IBUF(10),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(10),
      O => \temp_reg[11]_i_3_n_0\
    );
\temp_reg[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D2_IBUF(9),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(9),
      O => \temp_reg[11]_i_4_n_0\
    );
\temp_reg[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D2_IBUF(8),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(8),
      O => \temp_reg[11]_i_5_n_0\
    );
\temp_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(12),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(12)
    );
\temp_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(13),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(13)
    );
\temp_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(14),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(14)
    );
\temp_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(15),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(15)
    );
\temp_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[11]_i_1_n_0\,
      CO(3) => \temp_reg[15]_i_1_n_0\,
      CO(2) => \temp_reg[15]_i_1_n_1\,
      CO(1) => \temp_reg[15]_i_1_n_2\,
      CO(0) => \temp_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D1_IBUF(15 downto 12),
      O(3 downto 0) => \temp__0\(15 downto 12),
      S(3) => \temp_reg[15]_i_2_n_0\,
      S(2) => \temp_reg[15]_i_3_n_0\,
      S(1) => \temp_reg[15]_i_4_n_0\,
      S(0) => \temp_reg[15]_i_5_n_0\
    );
\temp_reg[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D2_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      O => \temp_reg[15]_i_2_n_0\
    );
\temp_reg[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D2_IBUF(14),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(14),
      O => \temp_reg[15]_i_3_n_0\
    );
\temp_reg[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D2_IBUF(13),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(13),
      O => \temp_reg[15]_i_4_n_0\
    );
\temp_reg[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D2_IBUF(12),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(12),
      O => \temp_reg[15]_i_5_n_0\
    );
\temp_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(16),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(16)
    );
\temp_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[15]_i_1_n_0\,
      CO(3 downto 0) => \NLW_temp_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_temp_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \temp__0\(16),
      S(3 downto 1) => B"000",
      S(0) => \temp_reg[16]_i_2_n_0\
    );
\temp_reg[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D2_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      O => \temp_reg[16]_i_2_n_0\
    );
\temp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(1),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(1)
    );
\temp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(2),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(2)
    );
\temp_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(3),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(3)
    );
\temp_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temp_reg[3]_i_1_n_0\,
      CO(2) => \temp_reg[3]_i_1_n_1\,
      CO(1) => \temp_reg[3]_i_1_n_2\,
      CO(0) => \temp_reg[3]_i_1_n_3\,
      CYINIT => D1_IBUF(0),
      DI(3 downto 1) => D1_IBUF(3 downto 1),
      DI(0) => ALU_OPP_IBUF(0),
      O(3 downto 0) => \temp__0\(3 downto 0),
      S(3) => \temp_reg[3]_i_2_n_0\,
      S(2) => \temp_reg[3]_i_3_n_0\,
      S(1) => \temp_reg[3]_i_4_n_0\,
      S(0) => \temp_reg[3]_i_5_n_0\
    );
\temp_reg[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(3),
      O => \temp_reg[3]_i_2_n_0\
    );
\temp_reg[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(2),
      O => \temp_reg[3]_i_3_n_0\
    );
\temp_reg[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D2_IBUF(1),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(1),
      O => \temp_reg[3]_i_4_n_0\
    );
\temp_reg[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => D2_IBUF(0),
      O => \temp_reg[3]_i_5_n_0\
    );
\temp_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(4),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(4)
    );
\temp_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(5),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(5)
    );
\temp_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(6),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(6)
    );
\temp_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(7),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(7)
    );
\temp_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[3]_i_1_n_0\,
      CO(3) => \temp_reg[7]_i_1_n_0\,
      CO(2) => \temp_reg[7]_i_1_n_1\,
      CO(1) => \temp_reg[7]_i_1_n_2\,
      CO(0) => \temp_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D1_IBUF(7 downto 4),
      O(3 downto 0) => \temp__0\(7 downto 4),
      S(3) => \temp_reg[7]_i_2_n_0\,
      S(2) => \temp_reg[7]_i_3_n_0\,
      S(1) => \temp_reg[7]_i_4_n_0\,
      S(0) => \temp_reg[7]_i_5_n_0\
    );
\temp_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D2_IBUF(7),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(7),
      O => \temp_reg[7]_i_2_n_0\
    );
\temp_reg[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D2_IBUF(6),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(6),
      O => \temp_reg[7]_i_3_n_0\
    );
\temp_reg[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D2_IBUF(5),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(5),
      O => \temp_reg[7]_i_4_n_0\
    );
\temp_reg[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(4),
      O => \temp_reg[7]_i_5_n_0\
    );
\temp_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(8),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(8)
    );
\temp_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp__0\(9),
      G => \ALU_FLAGS_reg[0]_i_1_n_0\,
      GE => '1',
      Q => temp(9)
    );
end STRUCTURE;
