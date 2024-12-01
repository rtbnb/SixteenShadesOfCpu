-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Nov 23 17:44:33 2024
-- Host        : DESKTOP-NFG9C79 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Code/VHDL/SixteenShadesOfCpu/vivado/ALU_Testing/ALU_Testing.sim/sim_1/impl/func/xsim/ALU_TB_AND_func_impl.vhd
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
    CARRY_FLAG : out STD_LOGIC;
    ZERO_FLAG : out STD_LOGIC;
    SMALLER_ZERO_FLAG : out STD_LOGIC;
    BIGGER_ZERO_FLAG : out STD_LOGIC;
    OVERFLOW_FLAG : out STD_LOGIC;
    RHO_FLAG : out STD_LOGIC;
    NOT_ZERO_FLAG : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ALU : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of ALU : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of ALU : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of ALU : entity is "fafee0bc";
  attribute use_dsp : string;
  attribute use_dsp of ALU : entity is "yes";
end ALU;

architecture STRUCTURE of ALU is
  signal ALU_OPP_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ALU_OUT_Internal0__0_n_100\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_101\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_102\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_103\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_104\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_105\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_89\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_90\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_91\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_92\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_93\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_94\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_95\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_96\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_97\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_98\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__0_n_99\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_100\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_101\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_102\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_103\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_104\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_105\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_89\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_90\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_91\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_92\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_93\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_94\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_95\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_96\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_97\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_98\ : STD_LOGIC;
  signal \ALU_OUT_Internal0__1_n_99\ : STD_LOGIC;
  signal ALU_OUT_Internal0_n_100 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_101 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_102 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_103 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_104 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_105 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_89 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_90 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_91 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_92 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_93 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_94 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_95 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_96 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_97 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_98 : STD_LOGIC;
  signal ALU_OUT_Internal0_n_99 : STD_LOGIC;
  signal ALU_OUT_OBUF : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \ALU_OUT_OBUF[0]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_9_n_0\ : STD_LOGIC;
  signal BIGGER_ZERO_FLAG_OBUF : STD_LOGIC;
  signal CARRY_FLAG_OBUF : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_5_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_6_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_7_n_0 : STD_LOGIC;
  signal D1_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal D2_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NOT_ZERO_FLAG_OBUF : STD_LOGIC;
  signal OVERFLOW_FLAG_OBUF : STD_LOGIC;
  signal RHO_FLAG_OBUF : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_OBUF : STD_LOGIC;
  signal ZERO_FLAG_OBUF : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_5_n_0 : STD_LOGIC;
  signal NLW_ALU_OUT_Internal0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_ALU_OUT_Internal0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_ALU_OUT_Internal0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_ALU_OUT_Internal0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_ALU_OUT_Internal0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_ALU_OUT_Internal0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_ALU_OUT_Internal0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_ALU_OUT_Internal0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_ALU_OUT_Internal0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ALU_OUT_Internal0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_ALU_OUT_Internal0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_ALU_OUT_Internal0__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ALU_OUT_Internal0__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ALU_OUT_Internal0__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ALU_OUT_Internal0__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ALU_OUT_Internal0__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ALU_OUT_Internal0__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ALU_OUT_Internal0__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_ALU_OUT_Internal0__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_ALU_OUT_Internal0__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ALU_OUT_Internal0__0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal \NLW_ALU_OUT_Internal0__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_ALU_OUT_Internal0__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ALU_OUT_Internal0__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ALU_OUT_Internal0__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ALU_OUT_Internal0__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ALU_OUT_Internal0__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ALU_OUT_Internal0__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ALU_OUT_Internal0__1_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_ALU_OUT_Internal0__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_ALU_OUT_Internal0__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ALU_OUT_Internal0__1_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal \NLW_ALU_OUT_Internal0__1_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ALU_OUT_Internal0 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ALU_OUT_Internal0__0\ : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ALU_OUT_Internal0__1\ : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[0]_inst_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[0]_inst_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[11]_inst_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_8\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_9\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[15]_inst_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[1]_inst_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[1]_inst_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[3]_inst_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[5]_inst_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[5]_inst_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[6]_inst_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[7]_inst_i_10\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[7]_inst_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[8]_inst_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[9]_inst_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[9]_inst_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[9]_inst_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of BIGGER_ZERO_FLAG_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of CARRY_FLAG_OBUF_inst_i_6 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of CARRY_FLAG_OBUF_inst_i_7 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of NOT_ZERO_FLAG_OBUF_inst_i_1 : label is "soft_lutpair0";
begin
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
ALU_OUT_Internal0: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "NONE",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => D2_IBUF(15),
      A(28) => D2_IBUF(15),
      A(27) => D2_IBUF(15),
      A(26) => D2_IBUF(15),
      A(25) => D2_IBUF(15),
      A(24) => D2_IBUF(15),
      A(23) => D2_IBUF(15),
      A(22) => D2_IBUF(15),
      A(21) => D2_IBUF(15),
      A(20) => D2_IBUF(15),
      A(19) => D2_IBUF(15),
      A(18) => D2_IBUF(15),
      A(17) => D2_IBUF(15),
      A(16) => D2_IBUF(15),
      A(15) => D2_IBUF(15),
      A(14) => D2_IBUF(15),
      A(13) => D2_IBUF(15),
      A(12) => D2_IBUF(15),
      A(11) => D2_IBUF(15),
      A(10) => D2_IBUF(15),
      A(9) => D2_IBUF(15),
      A(8) => D2_IBUF(15),
      A(7) => D2_IBUF(15),
      A(6) => D2_IBUF(15),
      A(5) => D2_IBUF(15),
      A(4) => D2_IBUF(15),
      A(3) => D2_IBUF(15),
      A(2) => D2_IBUF(15),
      A(1) => D2_IBUF(15),
      A(0) => D2_IBUF(15),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_ALU_OUT_Internal0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => D2_IBUF(15),
      B(16) => D2_IBUF(15),
      B(15 downto 0) => D2_IBUF(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_ALU_OUT_Internal0_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => D1_IBUF(15),
      C(46) => D1_IBUF(15),
      C(45) => D1_IBUF(15),
      C(44) => D1_IBUF(15),
      C(43) => D1_IBUF(15),
      C(42) => D1_IBUF(15),
      C(41) => D1_IBUF(15),
      C(40) => D1_IBUF(15),
      C(39) => D1_IBUF(15),
      C(38) => D1_IBUF(15),
      C(37) => D1_IBUF(15),
      C(36) => D1_IBUF(15),
      C(35) => D1_IBUF(15),
      C(34) => D1_IBUF(15),
      C(33) => D1_IBUF(15),
      C(32) => D1_IBUF(15),
      C(31) => D1_IBUF(15),
      C(30) => D1_IBUF(15),
      C(29) => D1_IBUF(15),
      C(28) => D1_IBUF(15),
      C(27) => D1_IBUF(15),
      C(26) => D1_IBUF(15),
      C(25) => D1_IBUF(15),
      C(24) => D1_IBUF(15),
      C(23) => D1_IBUF(15),
      C(22) => D1_IBUF(15),
      C(21) => D1_IBUF(15),
      C(20) => D1_IBUF(15),
      C(19) => D1_IBUF(15),
      C(18) => D1_IBUF(15),
      C(17) => D1_IBUF(15),
      C(16) => D1_IBUF(15),
      C(15 downto 0) => D1_IBUF(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_ALU_OUT_Internal0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_ALU_OUT_Internal0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_ALU_OUT_Internal0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110011",
      OVERFLOW => NLW_ALU_OUT_Internal0_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_ALU_OUT_Internal0_P_UNCONNECTED(47 downto 17),
      P(16) => ALU_OUT_Internal0_n_89,
      P(15) => ALU_OUT_Internal0_n_90,
      P(14) => ALU_OUT_Internal0_n_91,
      P(13) => ALU_OUT_Internal0_n_92,
      P(12) => ALU_OUT_Internal0_n_93,
      P(11) => ALU_OUT_Internal0_n_94,
      P(10) => ALU_OUT_Internal0_n_95,
      P(9) => ALU_OUT_Internal0_n_96,
      P(8) => ALU_OUT_Internal0_n_97,
      P(7) => ALU_OUT_Internal0_n_98,
      P(6) => ALU_OUT_Internal0_n_99,
      P(5) => ALU_OUT_Internal0_n_100,
      P(4) => ALU_OUT_Internal0_n_101,
      P(3) => ALU_OUT_Internal0_n_102,
      P(2) => ALU_OUT_Internal0_n_103,
      P(1) => ALU_OUT_Internal0_n_104,
      P(0) => ALU_OUT_Internal0_n_105,
      PATTERNBDETECT => NLW_ALU_OUT_Internal0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_ALU_OUT_Internal0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_ALU_OUT_Internal0_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_ALU_OUT_Internal0_UNDERFLOW_UNCONNECTED
    );
\ALU_OUT_Internal0__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "NONE",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => D2_IBUF(15),
      A(28) => D2_IBUF(15),
      A(27) => D2_IBUF(15),
      A(26) => D2_IBUF(15),
      A(25) => D2_IBUF(15),
      A(24) => D2_IBUF(15),
      A(23) => D2_IBUF(15),
      A(22) => D2_IBUF(15),
      A(21) => D2_IBUF(15),
      A(20) => D2_IBUF(15),
      A(19) => D2_IBUF(15),
      A(18) => D2_IBUF(15),
      A(17) => D2_IBUF(15),
      A(16) => D2_IBUF(15),
      A(15) => D2_IBUF(15),
      A(14) => D2_IBUF(15),
      A(13) => D2_IBUF(15),
      A(12) => D2_IBUF(15),
      A(11) => D2_IBUF(15),
      A(10) => D2_IBUF(15),
      A(9) => D2_IBUF(15),
      A(8) => D2_IBUF(15),
      A(7) => D2_IBUF(15),
      A(6) => D2_IBUF(15),
      A(5) => D2_IBUF(15),
      A(4) => D2_IBUF(15),
      A(3) => D2_IBUF(15),
      A(2) => D2_IBUF(15),
      A(1) => D2_IBUF(15),
      A(0) => D2_IBUF(15),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_ALU_OUT_Internal0__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0011",
      B(17) => D2_IBUF(15),
      B(16) => D2_IBUF(15),
      B(15 downto 0) => D2_IBUF(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_ALU_OUT_Internal0__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47) => D1_IBUF(15),
      C(46) => D1_IBUF(15),
      C(45) => D1_IBUF(15),
      C(44) => D1_IBUF(15),
      C(43) => D1_IBUF(15),
      C(42) => D1_IBUF(15),
      C(41) => D1_IBUF(15),
      C(40) => D1_IBUF(15),
      C(39) => D1_IBUF(15),
      C(38) => D1_IBUF(15),
      C(37) => D1_IBUF(15),
      C(36) => D1_IBUF(15),
      C(35) => D1_IBUF(15),
      C(34) => D1_IBUF(15),
      C(33) => D1_IBUF(15),
      C(32) => D1_IBUF(15),
      C(31) => D1_IBUF(15),
      C(30) => D1_IBUF(15),
      C(29) => D1_IBUF(15),
      C(28) => D1_IBUF(15),
      C(27) => D1_IBUF(15),
      C(26) => D1_IBUF(15),
      C(25) => D1_IBUF(15),
      C(24) => D1_IBUF(15),
      C(23) => D1_IBUF(15),
      C(22) => D1_IBUF(15),
      C(21) => D1_IBUF(15),
      C(20) => D1_IBUF(15),
      C(19) => D1_IBUF(15),
      C(18) => D1_IBUF(15),
      C(17) => D1_IBUF(15),
      C(16) => D1_IBUF(15),
      C(15 downto 0) => D1_IBUF(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_ALU_OUT_Internal0__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_ALU_OUT_Internal0__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_ALU_OUT_Internal0__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0110011",
      OVERFLOW => \NLW_ALU_OUT_Internal0__0_OVERFLOW_UNCONNECTED\,
      P(47 downto 17) => \NLW_ALU_OUT_Internal0__0_P_UNCONNECTED\(47 downto 17),
      P(16) => \ALU_OUT_Internal0__0_n_89\,
      P(15) => \ALU_OUT_Internal0__0_n_90\,
      P(14) => \ALU_OUT_Internal0__0_n_91\,
      P(13) => \ALU_OUT_Internal0__0_n_92\,
      P(12) => \ALU_OUT_Internal0__0_n_93\,
      P(11) => \ALU_OUT_Internal0__0_n_94\,
      P(10) => \ALU_OUT_Internal0__0_n_95\,
      P(9) => \ALU_OUT_Internal0__0_n_96\,
      P(8) => \ALU_OUT_Internal0__0_n_97\,
      P(7) => \ALU_OUT_Internal0__0_n_98\,
      P(6) => \ALU_OUT_Internal0__0_n_99\,
      P(5) => \ALU_OUT_Internal0__0_n_100\,
      P(4) => \ALU_OUT_Internal0__0_n_101\,
      P(3) => \ALU_OUT_Internal0__0_n_102\,
      P(2) => \ALU_OUT_Internal0__0_n_103\,
      P(1) => \ALU_OUT_Internal0__0_n_104\,
      P(0) => \ALU_OUT_Internal0__0_n_105\,
      PATTERNBDETECT => \NLW_ALU_OUT_Internal0__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_ALU_OUT_Internal0__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_ALU_OUT_Internal0__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_ALU_OUT_Internal0__0_UNDERFLOW_UNCONNECTED\
    );
\ALU_OUT_Internal0__1\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => D1_IBUF(15),
      A(28) => D1_IBUF(15),
      A(27) => D1_IBUF(15),
      A(26) => D1_IBUF(15),
      A(25) => D1_IBUF(15),
      A(24) => D1_IBUF(15),
      A(23) => D1_IBUF(15),
      A(22) => D1_IBUF(15),
      A(21) => D1_IBUF(15),
      A(20) => D1_IBUF(15),
      A(19) => D1_IBUF(15),
      A(18) => D1_IBUF(15),
      A(17) => D1_IBUF(15),
      A(16) => D1_IBUF(15),
      A(15 downto 0) => D1_IBUF(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_ALU_OUT_Internal0__1_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => D2_IBUF(15),
      B(16) => D2_IBUF(15),
      B(15 downto 0) => D2_IBUF(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_ALU_OUT_Internal0__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_ALU_OUT_Internal0__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_ALU_OUT_Internal0__1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_ALU_OUT_Internal0__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_ALU_OUT_Internal0__1_OVERFLOW_UNCONNECTED\,
      P(47 downto 17) => \NLW_ALU_OUT_Internal0__1_P_UNCONNECTED\(47 downto 17),
      P(16) => \ALU_OUT_Internal0__1_n_89\,
      P(15) => \ALU_OUT_Internal0__1_n_90\,
      P(14) => \ALU_OUT_Internal0__1_n_91\,
      P(13) => \ALU_OUT_Internal0__1_n_92\,
      P(12) => \ALU_OUT_Internal0__1_n_93\,
      P(11) => \ALU_OUT_Internal0__1_n_94\,
      P(10) => \ALU_OUT_Internal0__1_n_95\,
      P(9) => \ALU_OUT_Internal0__1_n_96\,
      P(8) => \ALU_OUT_Internal0__1_n_97\,
      P(7) => \ALU_OUT_Internal0__1_n_98\,
      P(6) => \ALU_OUT_Internal0__1_n_99\,
      P(5) => \ALU_OUT_Internal0__1_n_100\,
      P(4) => \ALU_OUT_Internal0__1_n_101\,
      P(3) => \ALU_OUT_Internal0__1_n_102\,
      P(2) => \ALU_OUT_Internal0__1_n_103\,
      P(1) => \ALU_OUT_Internal0__1_n_104\,
      P(0) => \ALU_OUT_Internal0__1_n_105\,
      PATTERNBDETECT => \NLW_ALU_OUT_Internal0__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_ALU_OUT_Internal0__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_ALU_OUT_Internal0__1_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_ALU_OUT_Internal0__1_UNDERFLOW_UNCONNECTED\
    );
\ALU_OUT_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(0),
      O => ALU_OUT(0)
    );
\ALU_OUT_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55551110"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[0]_inst_i_3_n_0\,
      I2 => D2_IBUF(4),
      I3 => \ALU_OUT_OBUF[0]_inst_i_4_n_0\,
      I4 => \ALU_OUT_OBUF[0]_inst_i_5_n_0\,
      I5 => \ALU_OUT_OBUF[0]_inst_i_6_n_0\,
      O => ALU_OUT_OBUF(0)
    );
\ALU_OUT_OBUF[0]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => D2_IBUF(0),
      I2 => D1_IBUF(3),
      I3 => D2_IBUF(1),
      I4 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[0]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCECCCFCCCECCCC"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => \ALU_OUT_OBUF[1]_inst_i_6_n_0\,
      I2 => D2_IBUF(2),
      I3 => D2_IBUF(1),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[0]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(7),
      I1 => D1_IBUF(6),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(5),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(4),
      O => \ALU_OUT_OBUF[0]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => \ALU_OUT_Internal0__1_n_105\,
      I2 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[0]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0FFF0EFF0E"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_7_n_0\,
      I1 => D2_IBUF(3),
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_OBUF[0]_inst_i_8_n_0\,
      I4 => \ALU_OUT_OBUF[0]_inst_i_9_n_0\,
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[0]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDD0DDD0DDD0"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => \ALU_OUT_OBUF[8]_inst_i_7_n_0\,
      I2 => \ALU_OUT_OBUF[0]_inst_i_10_n_0\,
      I3 => \ALU_OUT_OBUF[0]_inst_i_11_n_0\,
      I4 => D2_IBUF(2),
      I5 => \ALU_OUT_OBUF[0]_inst_i_12_n_0\,
      O => \ALU_OUT_OBUF[0]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_Internal0__0_n_105\,
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OUT_Internal0_n_105,
      O => \ALU_OUT_OBUF[0]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A0A8A2AA0A020"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(0),
      I3 => D2_IBUF(0),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[0]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D2_IBUF(1),
      I2 => D2_IBUF(0),
      I3 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[0]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_13_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_14_n_0\,
      I2 => D2_IBUF(10),
      I3 => D2_IBUF(6),
      I4 => D2_IBUF(5),
      I5 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[0]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => D2_IBUF(0),
      I2 => D1_IBUF(15),
      I3 => D2_IBUF(1),
      I4 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[0]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(10),
      O => ALU_OUT(10)
    );
\ALU_OUT_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454500"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => \ALU_OUT_Internal0__1_n_95\,
      I2 => ALU_OPP_IBUF(2),
      I3 => \ALU_OUT_OBUF[10]_inst_i_2_n_0\,
      I4 => \ALU_OUT_OBUF[10]_inst_i_3_n_0\,
      I5 => \ALU_OUT_OBUF[10]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(10)
    );
\ALU_OUT_OBUF[10]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000D050D"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => \ALU_OUT_OBUF[10]_inst_i_5_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_8_n_0\,
      I3 => D2_IBUF(3),
      I4 => \ALU_OUT_OBUF[10]_inst_i_6_n_0\,
      I5 => \ALU_OUT_OBUF[10]_inst_i_7_n_0\,
      O => \ALU_OUT_OBUF[10]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_Internal0__0_n_95\,
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OUT_Internal0_n_95,
      O => \ALU_OUT_OBUF[10]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A0A8A2AA0A020"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(10),
      I3 => D2_IBUF(10),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[10]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D48FFFF4D480000"
    )
        port map (
      I0 => D2_IBUF(1),
      I1 => D1_IBUF(15),
      I2 => D2_IBUF(0),
      I3 => D1_IBUF(14),
      I4 => D2_IBUF(2),
      I5 => \ALU_OUT_OBUF[10]_inst_i_8_n_0\,
      O => \ALU_OUT_OBUF[10]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D1_IBUF(2),
      I2 => D2_IBUF(0),
      I3 => D1_IBUF(1),
      I4 => D2_IBUF(1),
      I5 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[10]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010003"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_10_n_0\,
      I1 => ALU_OPP_IBUF(0),
      I2 => D2_IBUF(3),
      I3 => \ALU_OUT_OBUF[14]_inst_i_12_n_0\,
      I4 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[10]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => D1_IBUF(12),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(11),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(10),
      O => \ALU_OUT_OBUF[10]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(11),
      O => ALU_OUT(11)
    );
\ALU_OUT_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454500"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => \ALU_OUT_Internal0__1_n_94\,
      I2 => ALU_OPP_IBUF(2),
      I3 => \ALU_OUT_OBUF[11]_inst_i_2_n_0\,
      I4 => \ALU_OUT_OBUF[11]_inst_i_3_n_0\,
      I5 => \ALU_OUT_OBUF[11]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(11)
    );
\ALU_OUT_OBUF[11]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000D050D"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => \ALU_OUT_OBUF[11]_inst_i_5_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_8_n_0\,
      I3 => D2_IBUF(3),
      I4 => \ALU_OUT_OBUF[11]_inst_i_6_n_0\,
      I5 => \ALU_OUT_OBUF[11]_inst_i_7_n_0\,
      O => \ALU_OUT_OBUF[11]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_Internal0__0_n_94\,
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OUT_Internal0_n_94,
      O => \ALU_OUT_OBUF[11]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A0A8A2AA0A020"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(11),
      I3 => D2_IBUF(11),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[11]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D2_IBUF(1),
      I2 => D2_IBUF(2),
      I3 => \ALU_OUT_OBUF[7]_inst_i_7_n_0\,
      O => \ALU_OUT_OBUF[11]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABFBFFFFABFB"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D1_IBUF(3),
      I2 => D2_IBUF(0),
      I3 => D1_IBUF(2),
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_OBUF[11]_inst_i_8_n_0\,
      O => \ALU_OUT_OBUF[11]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010003"
    )
        port map (
      I0 => \ALU_OUT_OBUF[11]_inst_i_9_n_0\,
      I1 => ALU_OPP_IBUF(0),
      I2 => D2_IBUF(3),
      I3 => \ALU_OUT_OBUF[15]_inst_i_7_n_0\,
      I4 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[11]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D2_IBUF(0),
      I2 => D1_IBUF(1),
      O => \ALU_OUT_OBUF[11]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => D1_IBUF(5),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(6),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(7),
      O => \ALU_OUT_OBUF[11]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(12),
      O => ALU_OUT(12)
    );
\ALU_OUT_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454500"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => \ALU_OUT_Internal0__1_n_93\,
      I2 => ALU_OPP_IBUF(2),
      I3 => \ALU_OUT_OBUF[12]_inst_i_2_n_0\,
      I4 => \ALU_OUT_OBUF[12]_inst_i_3_n_0\,
      I5 => \ALU_OUT_OBUF[12]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(12)
    );
\ALU_OUT_OBUF[12]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(9),
      I1 => D1_IBUF(10),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(11),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(12),
      O => \ALU_OUT_OBUF[12]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D1_IBUF(14),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(13),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(12),
      O => \ALU_OUT_OBUF[12]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_Internal0__0_n_93\,
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OUT_Internal0_n_93,
      O => \ALU_OUT_OBUF[12]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002030300020003"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_5_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_8_n_0\,
      I2 => \ALU_OUT_OBUF[12]_inst_i_6_n_0\,
      I3 => ALU_OPP_IBUF(0),
      I4 => D2_IBUF(3),
      I5 => \ALU_OUT_OBUF[12]_inst_i_7_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A0A8A2AA0A020"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(12),
      I3 => D2_IBUF(12),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[12]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => D1_IBUF(0),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(2),
      I4 => \ALU_OUT_OBUF[12]_inst_i_8_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010003"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_9_n_0\,
      I1 => ALU_OPP_IBUF(0),
      I2 => D2_IBUF(3),
      I3 => \ALU_OUT_OBUF[12]_inst_i_10_n_0\,
      I4 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[12]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => D1_IBUF(15),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(2),
      I4 => \ALU_OUT_OBUF[12]_inst_i_11_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D1_IBUF(2),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(3),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(4),
      O => \ALU_OUT_OBUF[12]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(5),
      I1 => D1_IBUF(6),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(7),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(8),
      O => \ALU_OUT_OBUF[12]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(13),
      O => ALU_OUT(13)
    );
\ALU_OUT_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454500"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => \ALU_OUT_Internal0__1_n_92\,
      I2 => ALU_OPP_IBUF(2),
      I3 => \ALU_OUT_OBUF[13]_inst_i_2_n_0\,
      I4 => \ALU_OUT_OBUF[13]_inst_i_3_n_0\,
      I5 => \ALU_OUT_OBUF[13]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(13)
    );
\ALU_OUT_OBUF[13]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(6),
      I1 => D1_IBUF(7),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(8),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(9),
      O => \ALU_OUT_OBUF[13]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_Internal0__0_n_92\,
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OUT_Internal0_n_92,
      O => \ALU_OUT_OBUF[13]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004F45"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => \ALU_OUT_OBUF[13]_inst_i_5_n_0\,
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_OBUF[13]_inst_i_6_n_0\,
      I4 => \ALU_OUT_OBUF[13]_inst_i_7_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_8_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A0A8A2AA0A020"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(13),
      I3 => D2_IBUF(13),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[13]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => D2_IBUF(0),
      I2 => D1_IBUF(14),
      I3 => D2_IBUF(1),
      I4 => D1_IBUF(15),
      I5 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[13]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D2_IBUF(0),
      I2 => D1_IBUF(0),
      I3 => D2_IBUF(1),
      I4 => D2_IBUF(2),
      I5 => \ALU_OUT_OBUF[13]_inst_i_8_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00011101"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      I3 => D2_IBUF(2),
      I4 => \ALU_OUT_OBUF[13]_inst_i_10_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => D1_IBUF(3),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(4),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(5),
      O => \ALU_OUT_OBUF[13]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(10),
      I1 => D1_IBUF(11),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(12),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(13),
      O => \ALU_OUT_OBUF[13]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(14),
      O => ALU_OUT(14)
    );
\ALU_OUT_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454500"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => \ALU_OUT_Internal0__1_n_91\,
      I2 => ALU_OPP_IBUF(2),
      I3 => \ALU_OUT_OBUF[14]_inst_i_2_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_3_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(14)
    );
\ALU_OUT_OBUF[14]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => D1_IBUF(4),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(5),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(6),
      O => \ALU_OUT_OBUF[14]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(11),
      I1 => D1_IBUF(12),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(13),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(14),
      O => \ALU_OUT_OBUF[14]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(7),
      I1 => D1_IBUF(8),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(9),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(10),
      O => \ALU_OUT_OBUF[14]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => D2_IBUF(13),
      I1 => D2_IBUF(9),
      I2 => D2_IBUF(12),
      I3 => D2_IBUF(7),
      O => \ALU_OUT_OBUF[14]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => D2_IBUF(14),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(11),
      I3 => D2_IBUF(8),
      O => \ALU_OUT_OBUF[14]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => D2_IBUF(10),
      I1 => D2_IBUF(6),
      I2 => D2_IBUF(5),
      O => \ALU_OUT_OBUF[14]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_Internal0__0_n_91\,
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OUT_Internal0_n_91,
      O => \ALU_OUT_OBUF[14]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004F45"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => \ALU_OUT_OBUF[14]_inst_i_5_n_0\,
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_OBUF[14]_inst_i_6_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_7_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_8_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A0A8A2AA0A020"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(14),
      I3 => D2_IBUF(14),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[14]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000030E2"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => D2_IBUF(0),
      I2 => D1_IBUF(15),
      I3 => D2_IBUF(1),
      I4 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[14]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_9_n_0\,
      I1 => D2_IBUF(2),
      I2 => \ALU_OUT_OBUF[14]_inst_i_10_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00011101"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => \ALU_OUT_OBUF[14]_inst_i_11_n_0\,
      I3 => D2_IBUF(2),
      I4 => \ALU_OUT_OBUF[14]_inst_i_12_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_13_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_14_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[14]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D2_IBUF(1),
      I2 => D1_IBUF(1),
      I3 => D2_IBUF(0),
      I4 => D1_IBUF(2),
      O => \ALU_OUT_OBUF[14]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SMALLER_ZERO_FLAG_OBUF,
      O => ALU_OUT(15)
    );
\ALU_OUT_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[15]_inst_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_Internal0__1_n_90\,
      I3 => ALU_OPP_IBUF(2),
      I4 => \ALU_OUT_OBUF[15]_inst_i_3_n_0\,
      O => SMALLER_ZERO_FLAG_OBUF
    );
\ALU_OUT_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"966A556A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(15),
      I3 => D1_IBUF(15),
      I4 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[15]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => ALU_OPP_IBUF(1),
      I1 => \ALU_OUT_Internal0__0_n_90\,
      I2 => ALU_OPP_IBUF(0),
      I3 => ALU_OUT_Internal0_n_90,
      I4 => \ALU_OUT_OBUF[15]_inst_i_4_n_0\,
      I5 => \ALU_OUT_OBUF[15]_inst_i_5_n_0\,
      O => \ALU_OUT_OBUF[15]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00011101"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => \ALU_OUT_OBUF[15]_inst_i_6_n_0\,
      I3 => D2_IBUF(2),
      I4 => \ALU_OUT_OBUF[15]_inst_i_7_n_0\,
      O => \ALU_OUT_OBUF[15]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"550000005D005D00"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => D1_IBUF(15),
      I2 => \ALU_OUT_OBUF[15]_inst_i_8_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_6_n_0\,
      I4 => \ALU_OUT_OBUF[7]_inst_i_10_n_0\,
      I5 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[15]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(12),
      I1 => D1_IBUF(13),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(14),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(15),
      O => \ALU_OUT_OBUF[15]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(8),
      I1 => D1_IBUF(9),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(10),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(11),
      O => \ALU_OUT_OBUF[15]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(1),
      I1 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[15]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(1),
      O => ALU_OUT(1)
    );
\ALU_OUT_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454500"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => \ALU_OUT_Internal0__1_n_104\,
      I2 => ALU_OPP_IBUF(2),
      I3 => \ALU_OUT_OBUF[1]_inst_i_2_n_0\,
      I4 => \ALU_OUT_OBUF[1]_inst_i_3_n_0\,
      I5 => \ALU_OUT_OBUF[1]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(1)
    );
\ALU_OUT_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_Internal0__0_n_104\,
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OUT_Internal0_n_104,
      O => \ALU_OUT_OBUF[1]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044404000440040"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_8_n_0\,
      I1 => \ALU_OUT_OBUF[1]_inst_i_5_n_0\,
      I2 => ALU_OPP_IBUF(0),
      I3 => D2_IBUF(3),
      I4 => \ALU_OUT_OBUF[9]_inst_i_6_n_0\,
      I5 => \ALU_OUT_OBUF[9]_inst_i_5_n_0\,
      O => \ALU_OUT_OBUF[1]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A0A8A2AA0A020"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(1),
      I3 => D2_IBUF(1),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[1]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFFFCFCFC"
    )
        port map (
      I0 => \ALU_OUT_OBUF[5]_inst_i_7_n_0\,
      I1 => \ALU_OUT_OBUF[1]_inst_i_6_n_0\,
      I2 => \ALU_OUT_OBUF[1]_inst_i_7_n_0\,
      I3 => \ALU_OUT_OBUF[1]_inst_i_8_n_0\,
      I4 => D2_IBUF(1),
      I5 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[1]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[1]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D2_IBUF(0),
      I2 => D1_IBUF(2),
      I3 => D2_IBUF(2),
      I4 => D2_IBUF(1),
      O => \ALU_OUT_OBUF[1]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => D2_IBUF(0),
      I2 => D1_IBUF(3),
      O => \ALU_OUT_OBUF[1]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(2),
      O => ALU_OUT(2)
    );
\ALU_OUT_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454500"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => \ALU_OUT_Internal0__1_n_103\,
      I2 => ALU_OPP_IBUF(2),
      I3 => \ALU_OUT_OBUF[2]_inst_i_2_n_0\,
      I4 => \ALU_OUT_OBUF[2]_inst_i_3_n_0\,
      I5 => \ALU_OUT_OBUF[2]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(2)
    );
\ALU_OUT_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_Internal0__0_n_103\,
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OUT_Internal0_n_103,
      O => \ALU_OUT_OBUF[2]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4404000044040404"
    )
        port map (
      I0 => \ALU_OUT_OBUF[2]_inst_i_5_n_0\,
      I1 => \ALU_OUT_OBUF[3]_inst_i_6_n_0\,
      I2 => D2_IBUF(3),
      I3 => \ALU_OUT_OBUF[10]_inst_i_5_n_0\,
      I4 => ALU_OPP_IBUF(0),
      I5 => \ALU_OUT_OBUF[10]_inst_i_6_n_0\,
      O => \ALU_OUT_OBUF[2]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A0A8A2AA0A020"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(2),
      I3 => D2_IBUF(2),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[2]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00022202"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => D2_IBUF(3),
      I2 => \ALU_OUT_OBUF[2]_inst_i_6_n_0\,
      I3 => D2_IBUF(2),
      I4 => \ALU_OUT_OBUF[6]_inst_i_7_n_0\,
      O => \ALU_OUT_OBUF[2]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(5),
      I1 => D1_IBUF(4),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(3),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(2),
      O => \ALU_OUT_OBUF[2]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(3),
      O => ALU_OUT(3)
    );
\ALU_OUT_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454500"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => \ALU_OUT_Internal0__1_n_102\,
      I2 => ALU_OPP_IBUF(2),
      I3 => \ALU_OUT_OBUF[3]_inst_i_2_n_0\,
      I4 => \ALU_OUT_OBUF[3]_inst_i_3_n_0\,
      I5 => \ALU_OUT_OBUF[3]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(3)
    );
\ALU_OUT_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_Internal0__0_n_102\,
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OUT_Internal0_n_102,
      O => \ALU_OUT_OBUF[3]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4404000044040404"
    )
        port map (
      I0 => \ALU_OUT_OBUF[3]_inst_i_5_n_0\,
      I1 => \ALU_OUT_OBUF[3]_inst_i_6_n_0\,
      I2 => D2_IBUF(3),
      I3 => \ALU_OUT_OBUF[11]_inst_i_5_n_0\,
      I4 => ALU_OPP_IBUF(0),
      I5 => \ALU_OUT_OBUF[11]_inst_i_6_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A0A8A2AA0A020"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(3),
      I3 => D2_IBUF(3),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[3]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00022202"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => D2_IBUF(3),
      I2 => \ALU_OUT_OBUF[3]_inst_i_7_n_0\,
      I3 => D2_IBUF(2),
      I4 => \ALU_OUT_OBUF[7]_inst_i_8_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_14_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_13_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(6),
      I1 => D1_IBUF(5),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(4),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(3),
      O => \ALU_OUT_OBUF[3]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(4),
      O => ALU_OUT(4)
    );
\ALU_OUT_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454500"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => \ALU_OUT_Internal0__1_n_101\,
      I2 => ALU_OPP_IBUF(2),
      I3 => \ALU_OUT_OBUF[4]_inst_i_2_n_0\,
      I4 => \ALU_OUT_OBUF[4]_inst_i_3_n_0\,
      I5 => \ALU_OUT_OBUF[4]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(4)
    );
\ALU_OUT_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_Internal0__0_n_101\,
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OUT_Internal0_n_101,
      O => \ALU_OUT_OBUF[4]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000E0000000E"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_5_n_0\,
      I1 => ALU_OPP_IBUF(0),
      I2 => \ALU_OUT_OBUF[14]_inst_i_8_n_0\,
      I3 => \ALU_OUT_OBUF[4]_inst_i_5_n_0\,
      I4 => D2_IBUF(3),
      I5 => \ALU_OUT_OBUF[12]_inst_i_7_n_0\,
      O => \ALU_OUT_OBUF[4]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A0A8A2AA0A020"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(4),
      I3 => D2_IBUF(4),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[4]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00530000"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_8_n_0\,
      I1 => \ALU_OUT_OBUF[0]_inst_i_12_n_0\,
      I2 => D2_IBUF(2),
      I3 => D2_IBUF(3),
      I4 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[4]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(5),
      O => ALU_OUT(5)
    );
\ALU_OUT_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAFB"
    )
        port map (
      I0 => \ALU_OUT_OBUF[5]_inst_i_2_n_0\,
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_OBUF[5]_inst_i_3_n_0\,
      I3 => \ALU_OUT_OBUF[5]_inst_i_4_n_0\,
      I4 => \ALU_OUT_OBUF[5]_inst_i_5_n_0\,
      O => ALU_OUT_OBUF(5)
    );
\ALU_OUT_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => \ALU_OUT_Internal0__1_n_100\,
      I2 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[5]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000C000E0E"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_6_n_0\,
      I1 => ALU_OPP_IBUF(0),
      I2 => \ALU_OUT_OBUF[7]_inst_i_9_n_0\,
      I3 => \ALU_OUT_OBUF[13]_inst_i_5_n_0\,
      I4 => D2_IBUF(3),
      I5 => \ALU_OUT_OBUF[5]_inst_i_6_n_0\,
      O => \ALU_OUT_OBUF[5]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => \ALU_OUT_Internal0__0_n_100\,
      I2 => ALU_OPP_IBUF(0),
      I3 => ALU_OUT_Internal0_n_100,
      I4 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[5]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AA0A020800A0A8A"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(5),
      I3 => D2_IBUF(5),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[5]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00530000"
    )
        port map (
      I0 => \ALU_OUT_OBUF[9]_inst_i_9_n_0\,
      I1 => \ALU_OUT_OBUF[5]_inst_i_7_n_0\,
      I2 => D2_IBUF(2),
      I3 => D2_IBUF(3),
      I4 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[5]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(8),
      I1 => D1_IBUF(7),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(6),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(5),
      O => \ALU_OUT_OBUF[5]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(6),
      O => ALU_OUT(6)
    );
\ALU_OUT_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAFB"
    )
        port map (
      I0 => \ALU_OUT_OBUF[6]_inst_i_2_n_0\,
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_OBUF[6]_inst_i_3_n_0\,
      I3 => \ALU_OUT_OBUF[6]_inst_i_4_n_0\,
      I4 => \ALU_OUT_OBUF[6]_inst_i_5_n_0\,
      O => ALU_OUT_OBUF(6)
    );
\ALU_OUT_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => \ALU_OUT_Internal0__1_n_99\,
      I2 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[6]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000C000E0E"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_6_n_0\,
      I1 => ALU_OPP_IBUF(0),
      I2 => \ALU_OUT_OBUF[7]_inst_i_9_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_5_n_0\,
      I4 => D2_IBUF(3),
      I5 => \ALU_OUT_OBUF[6]_inst_i_6_n_0\,
      O => \ALU_OUT_OBUF[6]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => \ALU_OUT_Internal0__0_n_99\,
      I2 => ALU_OPP_IBUF(0),
      I3 => ALU_OUT_Internal0_n_99,
      I4 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[6]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AA0A020800A0A8A"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(6),
      I3 => D2_IBUF(6),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[6]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00530000"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_8_n_0\,
      I1 => \ALU_OUT_OBUF[6]_inst_i_7_n_0\,
      I2 => D2_IBUF(2),
      I3 => D2_IBUF(3),
      I4 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[6]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(9),
      I1 => D1_IBUF(8),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(7),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(6),
      O => \ALU_OUT_OBUF[6]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(7),
      O => ALU_OUT(7)
    );
\ALU_OUT_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAABBFB"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_2_n_0\,
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_OBUF[7]_inst_i_3_n_0\,
      I3 => \ALU_OUT_OBUF[7]_inst_i_4_n_0\,
      I4 => \ALU_OUT_OBUF[7]_inst_i_5_n_0\,
      I5 => \ALU_OUT_OBUF[7]_inst_i_6_n_0\,
      O => ALU_OUT_OBUF(7)
    );
\ALU_OUT_OBUF[7]_inst_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_11_n_0\,
      I1 => D2_IBUF(2),
      I2 => \ALU_OUT_OBUF[11]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D1_IBUF(1),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(2),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(3),
      O => \ALU_OUT_OBUF[7]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => \ALU_OUT_Internal0__1_n_98\,
      I2 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[7]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFDFFF8F"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => \ALU_OUT_OBUF[7]_inst_i_7_n_0\,
      I2 => ALU_OPP_IBUF(0),
      I3 => D2_IBUF(3),
      I4 => \ALU_OUT_OBUF[7]_inst_i_8_n_0\,
      I5 => \ALU_OUT_OBUF[7]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC0CCCCDDDDDDDD"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_10_n_0\,
      I1 => D2_IBUF(3),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(2),
      I4 => D1_IBUF(15),
      I5 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[7]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => \ALU_OUT_Internal0__0_n_98\,
      I2 => ALU_OPP_IBUF(0),
      I3 => ALU_OUT_Internal0_n_98,
      I4 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[7]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AA0A020800A0A8A"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(7),
      I3 => D2_IBUF(7),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[7]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => D1_IBUF(13),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(12),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(11),
      O => \ALU_OUT_OBUF[7]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(10),
      I1 => D1_IBUF(9),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(8),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(7),
      O => \ALU_OUT_OBUF[7]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => \ALU_OUT_OBUF[14]_inst_i_13_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_14_n_0\,
      I3 => D2_IBUF(10),
      I4 => D2_IBUF(6),
      I5 => D2_IBUF(5),
      O => \ALU_OUT_OBUF[7]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(8),
      O => ALU_OUT(8)
    );
\ALU_OUT_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454500"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => \ALU_OUT_Internal0__1_n_97\,
      I2 => ALU_OPP_IBUF(2),
      I3 => \ALU_OUT_OBUF[8]_inst_i_2_n_0\,
      I4 => \ALU_OUT_OBUF[8]_inst_i_3_n_0\,
      I5 => \ALU_OUT_OBUF[8]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(8)
    );
\ALU_OUT_OBUF[8]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_Internal0__0_n_97\,
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OUT_Internal0_n_97,
      O => \ALU_OUT_OBUF[8]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222202022202"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_5_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_8_n_0\,
      I2 => ALU_OPP_IBUF(0),
      I3 => D2_IBUF(3),
      I4 => \ALU_OUT_OBUF[8]_inst_i_6_n_0\,
      I5 => \ALU_OUT_OBUF[8]_inst_i_7_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A0A8A2AA0A020"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(8),
      I3 => D2_IBUF(8),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[8]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B8FFB8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_8_n_0\,
      I1 => D2_IBUF(2),
      I2 => \ALU_OUT_OBUF[12]_inst_i_9_n_0\,
      I3 => D2_IBUF(3),
      I4 => \ALU_OUT_OBUF[0]_inst_i_7_n_0\,
      I5 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[8]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D2_IBUF(1),
      I2 => D1_IBUF(15),
      I3 => D2_IBUF(0),
      O => \ALU_OUT_OBUF[8]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_11_n_0\,
      I1 => D2_IBUF(2),
      I2 => \ALU_OUT_OBUF[8]_inst_i_8_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(11),
      I1 => D1_IBUF(10),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(9),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(8),
      O => \ALU_OUT_OBUF[8]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(9),
      O => ALU_OUT(9)
    );
\ALU_OUT_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454500"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => \ALU_OUT_Internal0__1_n_96\,
      I2 => ALU_OPP_IBUF(2),
      I3 => \ALU_OUT_OBUF[9]_inst_i_2_n_0\,
      I4 => \ALU_OUT_OBUF[9]_inst_i_3_n_0\,
      I5 => \ALU_OUT_OBUF[9]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(9)
    );
\ALU_OUT_OBUF[9]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005000D0D"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => \ALU_OUT_OBUF[9]_inst_i_5_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_8_n_0\,
      I3 => \ALU_OUT_OBUF[9]_inst_i_6_n_0\,
      I4 => D2_IBUF(3),
      I5 => \ALU_OUT_OBUF[9]_inst_i_7_n_0\,
      O => \ALU_OUT_OBUF[9]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_Internal0__0_n_96\,
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OUT_Internal0_n_96,
      O => \ALU_OUT_OBUF[9]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A0A8A2AA0A020"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(9),
      I3 => D2_IBUF(9),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[9]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[9]_inst_i_8_n_0\,
      I1 => D2_IBUF(2),
      I2 => \ALU_OUT_OBUF[9]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[9]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D2_IBUF(0),
      I2 => D1_IBUF(0),
      I3 => D2_IBUF(2),
      I4 => D2_IBUF(1),
      O => \ALU_OUT_OBUF[9]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010003"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_8_n_0\,
      I1 => ALU_OPP_IBUF(0),
      I2 => D2_IBUF(3),
      I3 => \ALU_OUT_OBUF[13]_inst_i_10_n_0\,
      I4 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[9]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D2_IBUF(1),
      I2 => D1_IBUF(14),
      I3 => D2_IBUF(0),
      I4 => D1_IBUF(13),
      O => \ALU_OUT_OBUF[9]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D1_IBUF(12),
      I1 => D1_IBUF(11),
      I2 => D2_IBUF(1),
      I3 => D1_IBUF(10),
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(9),
      O => \ALU_OUT_OBUF[9]_inst_i_9_n_0\
    );
BIGGER_ZERO_FLAG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => BIGGER_ZERO_FLAG_OBUF,
      O => BIGGER_ZERO_FLAG
    );
BIGGER_ZERO_FLAG_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => ZERO_FLAG_OBUF_inst_i_2_n_0,
      I1 => ZERO_FLAG_OBUF_inst_i_3_n_0,
      I2 => ZERO_FLAG_OBUF_inst_i_4_n_0,
      I3 => ZERO_FLAG_OBUF_inst_i_5_n_0,
      I4 => SMALLER_ZERO_FLAG_OBUF,
      O => BIGGER_ZERO_FLAG_OBUF
    );
CARRY_FLAG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CARRY_FLAG_OBUF,
      O => CARRY_FLAG
    );
CARRY_FLAG_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F2F200F2"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_2_n_0,
      I1 => CARRY_FLAG_OBUF_inst_i_3_n_0,
      I2 => CARRY_FLAG_OBUF_inst_i_4_n_0,
      I3 => ALU_OPP_IBUF(2),
      I4 => \ALU_OUT_Internal0__1_n_89\,
      I5 => ALU_OPP_IBUF(3),
      O => CARRY_FLAG_OBUF
    );
CARRY_FLAG_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF040405F5"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_5_n_0,
      I1 => CARRY_FLAG_OBUF_inst_i_6_n_0,
      I2 => D2_IBUF(4),
      I3 => \ALU_OUT_OBUF[0]_inst_i_7_n_0\,
      I4 => D2_IBUF(3),
      I5 => ALU_OPP_IBUF(0),
      O => CARRY_FLAG_OBUF_inst_i_2_n_0
    );
CARRY_FLAG_OBUF_inst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA8"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => \ALU_OUT_OBUF[0]_inst_i_9_n_0\,
      I2 => D2_IBUF(4),
      I3 => \ALU_OUT_OBUF[0]_inst_i_8_n_0\,
      O => CARRY_FLAG_OBUF_inst_i_3_n_0
    );
CARRY_FLAG_OBUF_inst_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_Internal0__0_n_89\,
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OUT_Internal0_n_89,
      O => CARRY_FLAG_OBUF_inst_i_4_n_0
    );
CARRY_FLAG_OBUF_inst_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000055300000553F"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_10_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_7_n_0,
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(2),
      I4 => D2_IBUF(3),
      I5 => D1_IBUF(15),
      O => CARRY_FLAG_OBUF_inst_i_5_n_0
    );
CARRY_FLAG_OBUF_inst_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_8_n_0\,
      I1 => D2_IBUF(2),
      I2 => \ALU_OUT_OBUF[12]_inst_i_9_n_0\,
      O => CARRY_FLAG_OBUF_inst_i_6_n_0
    );
CARRY_FLAG_OBUF_inst_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => D2_IBUF(0),
      I2 => D1_IBUF(14),
      O => CARRY_FLAG_OBUF_inst_i_7_n_0
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
NOT_ZERO_FLAG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => NOT_ZERO_FLAG_OBUF,
      O => NOT_ZERO_FLAG
    );
NOT_ZERO_FLAG_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ZERO_FLAG_OBUF_inst_i_5_n_0,
      I1 => ZERO_FLAG_OBUF_inst_i_4_n_0,
      I2 => ZERO_FLAG_OBUF_inst_i_3_n_0,
      I3 => ZERO_FLAG_OBUF_inst_i_2_n_0,
      I4 => SMALLER_ZERO_FLAG_OBUF,
      O => NOT_ZERO_FLAG_OBUF
    );
OVERFLOW_FLAG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => OVERFLOW_FLAG_OBUF,
      O => OVERFLOW_FLAG
    );
OVERFLOW_FLAG_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0690"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => D2_IBUF(15),
      I2 => SMALLER_ZERO_FLAG_OBUF,
      I3 => D1_IBUF(15),
      O => OVERFLOW_FLAG_OBUF
    );
RHO_FLAG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => RHO_FLAG_OBUF,
      O => RHO_FLAG
    );
RHO_PIN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RHO_PIN,
      O => RHO_FLAG_OBUF
    );
SMALLER_ZERO_FLAG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => SMALLER_ZERO_FLAG_OBUF,
      O => SMALLER_ZERO_FLAG
    );
ZERO_FLAG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => ZERO_FLAG_OBUF,
      O => ZERO_FLAG
    );
ZERO_FLAG_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_OBUF,
      I1 => ZERO_FLAG_OBUF_inst_i_2_n_0,
      I2 => ZERO_FLAG_OBUF_inst_i_3_n_0,
      I3 => ZERO_FLAG_OBUF_inst_i_4_n_0,
      I4 => ZERO_FLAG_OBUF_inst_i_5_n_0,
      O => ZERO_FLAG_OBUF
    );
ZERO_FLAG_OBUF_inst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALU_OUT_OBUF(12),
      I1 => CARRY_FLAG_OBUF,
      I2 => ALU_OUT_OBUF(14),
      I3 => ALU_OUT_OBUF(13),
      O => ZERO_FLAG_OBUF_inst_i_2_n_0
    );
ZERO_FLAG_OBUF_inst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALU_OUT_OBUF(10),
      I1 => ALU_OUT_OBUF(11),
      I2 => ALU_OUT_OBUF(8),
      I3 => ALU_OUT_OBUF(9),
      O => ZERO_FLAG_OBUF_inst_i_3_n_0
    );
ZERO_FLAG_OBUF_inst_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALU_OUT_OBUF(0),
      I1 => ALU_OUT_OBUF(1),
      I2 => ALU_OUT_OBUF(2),
      I3 => ALU_OUT_OBUF(3),
      O => ZERO_FLAG_OBUF_inst_i_4_n_0
    );
ZERO_FLAG_OBUF_inst_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALU_OUT_OBUF(4),
      I1 => ALU_OUT_OBUF(5),
      I2 => ALU_OUT_OBUF(6),
      I3 => ALU_OUT_OBUF(7),
      O => ZERO_FLAG_OBUF_inst_i_5_n_0
    );
end STRUCTURE;
