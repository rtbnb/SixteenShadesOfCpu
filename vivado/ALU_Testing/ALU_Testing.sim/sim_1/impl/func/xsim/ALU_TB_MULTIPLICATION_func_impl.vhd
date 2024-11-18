-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Mon Nov 18 11:41:01 2024
-- Host        : DESKTOP-NFG9C79 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Code/VHDL/SixteenShadesOfCpu/vivado/ALU_Testing/ALU_Testing.sim/sim_1/impl/func/xsim/ALU_TB_MULTIPLICATION_func_impl.vhd
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
  attribute ECO_CHECKSUM of ALU : entity is "53ae3ec4";
end ALU;

architecture STRUCTURE of ALU is
  signal ALU_OPP_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
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
  signal \ALU_OUT_OBUF[0]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_19_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_19_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_20_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_21_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_22_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_23_n_0\ : STD_LOGIC;
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
  signal \ALU_OUT_OBUF[12]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_13_n_4\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_13_n_5\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_13_n_6\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_13_n_7\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_19_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_24_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_25_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_26_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_27_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_19_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_20_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_21_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_22_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_23_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_24_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_25_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_26_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_27_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_28_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_29_n_0\ : STD_LOGIC;
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
  signal \ALU_OUT_OBUF[14]_inst_i_14_n_3\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_19_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_20_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_21_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_22_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_23_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_24_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_25_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_26_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_27_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_28_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_29_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_30_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_31_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_32_n_4\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_32_n_5\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_32_n_6\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_32_n_7\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_33_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_34_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_35_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_36_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_37_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_38_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_39_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_40_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_41_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_42_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_43_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_44_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_45_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_46_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_47_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_48_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_49_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_50_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_51_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_52_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_53_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_54_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_55_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_56_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_57_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_58_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_59_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_60_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_61_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_62_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_63_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_64_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_65_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_66_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_67_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_68_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_69_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_70_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_72_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_74_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_75_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_76_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_77_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_78_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_79_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_80_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_81_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_82_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_83_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_84_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_85_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_86_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_87_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_88_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_89_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_90_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_91_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_92_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_93_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_94_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_95_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_96_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_19_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_20_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_21_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_22_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_23_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_24_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_25_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_26_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_27_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_28_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_29_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_30_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_31_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_32_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_33_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_34_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_35_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_36_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_37_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_38_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_39_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_40_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_41_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_42_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_13_n_4\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_13_n_5\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_13_n_6\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_13_n_7\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_20_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_21_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_22_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_23_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_19_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_19_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_20_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_21_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_22_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_23_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_24_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_25_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_26_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_27_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_28_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_29_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_30_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_31_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_32_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_33_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_34_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_35_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_10_n_4\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_10_n_5\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_10_n_6\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_10_n_7\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_22_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_23_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_24_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_25_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_26_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_27_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_28_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_29_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_30_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_31_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_9_n_0\ : STD_LOGIC;
  signal BIGGER_ZERO_FLAG_OBUF : STD_LOGIC;
  signal CARRY_FLAG_OBUF : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_10_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_11_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_12_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_13_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_14_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_15_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_16_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_17_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_18_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_19_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_20_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_21_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_22_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_23_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_24_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_25_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_5_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_6_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_7_n_3 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_8_n_3 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_9_n_0 : STD_LOGIC;
  signal D1_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal D2_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NOT_ZERO_FLAG_OBUF : STD_LOGIC;
  signal OVERFLOW_FLAG_OBUF : STD_LOGIC;
  signal RHO_FLAG_OBUF : STD_LOGIC;
  signal SHIFT_LEFT2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal SHIFT_RIGHT4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SMALLER_ZERO_FLAG_OBUF : STD_LOGIC;
  signal ZERO_FLAG_OBUF : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_10_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_11_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_12_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_13_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_14_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_5_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_6_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_7_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_8_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_9_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  signal \NLW_ALU_OUT_OBUF[11]_inst_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[11]_inst_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[12]_inst_i_13_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[14]_inst_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ALU_OUT_OBUF[14]_inst_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ALU_OUT_OBUF[14]_inst_i_17_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[14]_inst_i_18_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[14]_inst_i_24_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[14]_inst_i_25_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[14]_inst_i_28_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[14]_inst_i_32_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ALU_OUT_OBUF[14]_inst_i_33_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[14]_inst_i_33_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ALU_OUT_OBUF[14]_inst_i_45_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[14]_inst_i_45_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ALU_OUT_OBUF[14]_inst_i_78_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[14]_inst_i_78_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ALU_OUT_OBUF[3]_inst_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[3]_inst_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[4]_inst_i_13_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[7]_inst_i_13_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[7]_inst_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[8]_inst_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_7_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_8_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ALU_OUT_Internal0 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[0]_inst_i_11\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[0]_inst_i_14\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[0]_inst_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[10]_inst_i_17\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[10]_inst_i_18\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[10]_inst_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[11]_inst_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[11]_inst_i_6\ : label is "soft_lutpair31";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \ALU_OUT_OBUF[12]_inst_i_13\ : label is 35;
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[12]_inst_i_15\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[12]_inst_i_16\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[12]_inst_i_6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[13]_inst_i_10\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[13]_inst_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[13]_inst_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[13]_inst_i_21\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[13]_inst_i_24\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[13]_inst_i_25\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[13]_inst_i_27\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[13]_inst_i_28\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[13]_inst_i_7\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[13]_inst_i_8\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_12\ : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \ALU_OUT_OBUF[14]_inst_i_14\ : label is 11;
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_16\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_26\ : label is "soft_lutpair21";
  attribute ADDER_THRESHOLD of \ALU_OUT_OBUF[14]_inst_i_32\ : label is 35;
  attribute COMPARATOR_THRESHOLD of \ALU_OUT_OBUF[14]_inst_i_33\ : label is 11;
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_60\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_61\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_62\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_65\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_67\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_68\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_69\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_70\ : label is "soft_lutpair17";
  attribute COMPARATOR_THRESHOLD of \ALU_OUT_OBUF[14]_inst_i_78\ : label is 11;
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_9\ : label is "soft_lutpair7";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \ALU_OUT_OBUF[15]_inst_i_2\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[15]_inst_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[15]_inst_i_9\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[1]_inst_i_16\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[1]_inst_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[2]_inst_i_12\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[2]_inst_i_13\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[3]_inst_i_10\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[3]_inst_i_31\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[3]_inst_i_33\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[3]_inst_i_40\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[3]_inst_i_6\ : label is "soft_lutpair31";
  attribute ADDER_THRESHOLD of \ALU_OUT_OBUF[4]_inst_i_13\ : label is 35;
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[4]_inst_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[4]_inst_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[5]_inst_i_13\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[5]_inst_i_17\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[5]_inst_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[5]_inst_i_7\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[6]_inst_i_15\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[6]_inst_i_18\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[6]_inst_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[6]_inst_i_8\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[7]_inst_i_15\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[7]_inst_i_2\ : label is "soft_lutpair28";
  attribute ADDER_THRESHOLD of \ALU_OUT_OBUF[8]_inst_i_10\ : label is 35;
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[8]_inst_i_12\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[8]_inst_i_13\ : label is "soft_lutpair24";
  attribute OPT_MODIFIED of \ALU_OUT_OBUF[9]_inst_i_2\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[9]_inst_i_3\ : label is "soft_lutpair27";
  attribute OPT_MODIFIED of BIGGER_ZERO_FLAG_OBUF_inst_i_1 : label is "RETARGET";
  attribute SOFT_HLUTNM of CARRY_FLAG_OBUF_inst_i_18 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of CARRY_FLAG_OBUF_inst_i_19 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of CARRY_FLAG_OBUF_inst_i_24 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of CARRY_FLAG_OBUF_inst_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of CARRY_FLAG_OBUF_inst_i_6 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of CARRY_FLAG_OBUF_inst_i_9 : label is "soft_lutpair25";
  attribute OPT_MODIFIED of NOT_ZERO_FLAG_OBUF_inst_i_1 : label is "RETARGET";
  attribute OPT_MODIFIED of OVERFLOW_FLAG_OBUF_inst_i_1 : label is "RETARGET";
  attribute SOFT_HLUTNM of OVERFLOW_FLAG_OBUF_inst_i_1 : label is "soft_lutpair11";
  attribute OPT_MODIFIED of ZERO_FLAG_OBUF_inst_i_1 : label is "RETARGET";
  attribute OPT_MODIFIED of ZERO_FLAG_OBUF_inst_i_2 : label is "RETARGET";
  attribute SOFT_HLUTNM of ZERO_FLAG_OBUF_inst_i_8 : label is "soft_lutpair29";
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
      ACOUT(29 downto 0) => NLW_ALU_OUT_Internal0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => D2_IBUF(15),
      B(16) => D2_IBUF(15),
      B(15 downto 0) => D2_IBUF(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_ALU_OUT_Internal0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
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
      OPMODE(6 downto 0) => B"0000101",
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
\ALU_OUT_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(0),
      O => ALU_OUT(0)
    );
\ALU_OUT_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55551011"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[0]_inst_i_3_n_0\,
      I2 => \ALU_OUT_OBUF[0]_inst_i_4_n_0\,
      I3 => ALU_OPP_IBUF(0),
      I4 => \ALU_OUT_OBUF[0]_inst_i_5_n_0\,
      I5 => \ALU_OUT_OBUF[0]_inst_i_6_n_0\,
      O => ALU_OUT_OBUF(0)
    );
\ALU_OUT_OBUF[0]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000AAA0A000CCC0C"
    )
        port map (
      I0 => D1_IBUF(12),
      I1 => D1_IBUF(4),
      I2 => D2_IBUF(4),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      I5 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      O => \ALU_OUT_OBUF[0]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0ACFC0"
    )
        port map (
      I0 => D1_IBUF(8),
      I1 => D1_IBUF(15),
      I2 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I3 => D1_IBUF(0),
      I4 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      O => \ALU_OUT_OBUF[0]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554005455040004"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_15_n_0\,
      I1 => D1_IBUF(4),
      I2 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I3 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I4 => D1_IBUF(15),
      I5 => D1_IBUF(12),
      O => \ALU_OUT_OBUF[0]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0AA808A000A808"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_16_n_0\,
      I1 => D1_IBUF(0),
      I2 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I3 => D1_IBUF(15),
      I4 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I5 => D1_IBUF(8),
      O => \ALU_OUT_OBUF[0]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D8"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(0),
      O => \ALU_OUT_OBUF[0]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF33F5F5"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => SHIFT_LEFT2(2),
      I2 => D2_IBUF(1),
      I3 => SHIFT_LEFT2(1),
      I4 => D2_IBUF(15),
      I5 => D2_IBUF(0),
      O => \ALU_OUT_OBUF[0]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000503030005"
    )
        port map (
      I0 => D2_IBUF(1),
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(0),
      I3 => D2_IBUF(2),
      I4 => D2_IBUF(15),
      I5 => SHIFT_LEFT2(2),
      O => \ALU_OUT_OBUF[0]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OUT_Internal0_n_105,
      I2 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[0]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55544454FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_7_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_9_n_0\,
      I2 => \ALU_OUT_OBUF[0]_inst_i_8_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[1]_inst_i_10_n_0\,
      I5 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[0]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFE0000EEFEEEFE"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_12_n_0\,
      I1 => \ALU_OUT_OBUF[0]_inst_i_9_n_0\,
      I2 => \ALU_OUT_OBUF[1]_inst_i_8_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_12_n_0\,
      I4 => D1_IBUF(0),
      I5 => D2_IBUF(15),
      O => \ALU_OUT_OBUF[0]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => data1(0),
      I3 => ALU_OPP_IBUF(0),
      I4 => data0(0),
      O => \ALU_OUT_OBUF[0]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"855D7AA200000000"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => ALU_OPP_IBUF(0),
      I2 => D2_IBUF(0),
      I3 => ALU_OPP_IBUF(1),
      I4 => ALU_OPP_IBUF(2),
      I5 => ALU_OPP_IBUF(3),
      O => \ALU_OUT_OBUF[0]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[3]_inst_i_33_n_0\,
      I4 => D1_IBUF(0),
      I5 => D2_IBUF(1),
      O => \ALU_OUT_OBUF[0]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF00055335533"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_10_n_0\,
      I1 => \ALU_OUT_OBUF[0]_inst_i_11_n_0\,
      I2 => \ALU_OUT_OBUF[6]_inst_i_13_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I4 => \ALU_OUT_OBUF[1]_inst_i_13_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      O => \ALU_OUT_OBUF[0]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEFEFE00000000"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_12_n_0\,
      I1 => \ALU_OUT_OBUF[0]_inst_i_13_n_0\,
      I2 => \ALU_OUT_OBUF[0]_inst_i_14_n_0\,
      I3 => \ALU_OUT_OBUF[6]_inst_i_18_n_0\,
      I4 => \ALU_OUT_OBUF[2]_inst_i_14_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[0]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(10),
      O => ALU_OUT(10)
    );
\ALU_OUT_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEEFE"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[10]_inst_i_3_n_0\,
      I2 => \ALU_OUT_OBUF[10]_inst_i_4_n_0\,
      I3 => \ALU_OUT_OBUF[10]_inst_i_5_n_0\,
      I4 => \ALU_OUT_OBUF[10]_inst_i_6_n_0\,
      I5 => \ALU_OUT_OBUF[10]_inst_i_7_n_0\,
      O => ALU_OUT_OBUF(10)
    );
\ALU_OUT_OBUF[10]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F7FFFFF4F70000"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I3 => D1_IBUF(7),
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => \ALU_OUT_OBUF[12]_inst_i_14_n_0\,
      O => \ALU_OUT_OBUF[10]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF470047004700"
    )
        port map (
      I0 => \ALU_OUT_OBUF[11]_inst_i_21_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[13]_inst_i_26_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_10_n_0\,
      I4 => \ALU_OUT_OBUF[12]_inst_i_13_n_6\,
      I5 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[10]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEAAAAAAAAA"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      I2 => \ALU_OUT_OBUF[12]_inst_i_16_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_23_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_22_n_0\,
      I5 => D1_IBUF(15),
      O => \ALU_OUT_OBUF[10]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5544554755775547"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I2 => D1_IBUF(11),
      I3 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => D1_IBUF(13),
      O => \ALU_OUT_OBUF[10]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010F0B0001FFFBF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I1 => D1_IBUF(12),
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I4 => D1_IBUF(15),
      I5 => \ALU_OUT_OBUF[10]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[10]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I2 => D1_IBUF(10),
      I3 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I4 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      O => \ALU_OUT_OBUF[10]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABF8A80"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => SHIFT_LEFT2(2),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(2),
      I4 => D1_IBUF(12),
      I5 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      O => \ALU_OUT_OBUF[10]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => D2_IBUF(2),
      I2 => D2_IBUF(3),
      I3 => D1_IBUF(7),
      I4 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[10]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_19_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[13]_inst_i_17_n_0\,
      O => \ALU_OUT_OBUF[10]_inst_i_18_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(0),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(8),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[10]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OUT_Internal0_n_95,
      I2 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[10]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F2FFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[10]_inst_i_8_n_0\,
      I2 => \ALU_OUT_OBUF[10]_inst_i_9_n_0\,
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[10]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F1F1FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_10_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_12_n_0\,
      I2 => \ALU_OUT_OBUF[10]_inst_i_11_n_0\,
      I3 => D1_IBUF(0),
      I4 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I5 => D2_IBUF(15),
      O => \ALU_OUT_OBUF[10]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45554055FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_12_n_0\,
      I1 => \ALU_OUT_OBUF[10]_inst_i_13_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I4 => \ALU_OUT_OBUF[10]_inst_i_14_n_0\,
      I5 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[10]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => data1(10),
      I2 => ALU_OPP_IBUF(0),
      I3 => data0(10),
      I4 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[10]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7AA2855D00000000"
    )
        port map (
      I0 => D1_IBUF(10),
      I1 => ALU_OPP_IBUF(0),
      I2 => D2_IBUF(10),
      I3 => ALU_OPP_IBUF(1),
      I4 => ALU_OPP_IBUF(2),
      I5 => ALU_OPP_IBUF(3),
      O => \ALU_OUT_OBUF[10]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555557F7FFFF57F7"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I1 => \ALU_OUT_OBUF[10]_inst_i_15_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => \ALU_OUT_OBUF[10]_inst_i_16_n_0\,
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[11]_inst_i_23_n_0\,
      O => \ALU_OUT_OBUF[10]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8B8FF00"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_17_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[12]_inst_i_18_n_0\,
      I3 => \ALU_OUT_OBUF[10]_inst_i_18_n_0\,
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[10]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(11),
      O => ALU_OUT(11)
    );
\ALU_OUT_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB8B8B8B88"
    )
        port map (
      I0 => \ALU_OUT_OBUF[11]_inst_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_OBUF[11]_inst_i_3_n_0\,
      I3 => \ALU_OUT_OBUF[11]_inst_i_4_n_0\,
      I4 => \ALU_OUT_OBUF[11]_inst_i_5_n_0\,
      I5 => \ALU_OUT_OBUF[11]_inst_i_6_n_0\,
      O => ALU_OUT_OBUF(11)
    );
\ALU_OUT_OBUF[11]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[11]_inst_i_21_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[13]_inst_i_26_n_0\,
      O => \ALU_OUT_OBUF[11]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55450545FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_12_n_0\,
      I1 => \ALU_OUT_OBUF[10]_inst_i_13_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[12]_inst_i_17_n_0\,
      I5 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[11]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444455544454"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => \ALU_OUT_OBUF[11]_inst_i_22_n_0\,
      I2 => \ALU_OUT_OBUF[11]_inst_i_23_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[12]_inst_i_12_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[11]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(11),
      I1 => D1_IBUF(11),
      O => \ALU_OUT_OBUF[11]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(10),
      I1 => D1_IBUF(10),
      O => \ALU_OUT_OBUF[11]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(9),
      I1 => D1_IBUF(9),
      O => \ALU_OUT_OBUF[11]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(8),
      I1 => D1_IBUF(8),
      O => \ALU_OUT_OBUF[11]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(11),
      I1 => D2_IBUF(11),
      O => \ALU_OUT_OBUF[11]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(10),
      I1 => D2_IBUF(10),
      O => \ALU_OUT_OBUF[11]_inst_i_18_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(9),
      I1 => D2_IBUF(9),
      O => \ALU_OUT_OBUF[11]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(11),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(11),
      O => \ALU_OUT_OBUF[11]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(8),
      I1 => D2_IBUF(8),
      O => \ALU_OUT_OBUF[11]_inst_i_20_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFFF44FFCFFF77"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I2 => D1_IBUF(0),
      I3 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I5 => D1_IBUF(8),
      O => \ALU_OUT_OBUF[11]_inst_i_21_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_18_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[13]_inst_i_15_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[10]_inst_i_18_n_0\,
      I5 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[11]_inst_i_22_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => D1_IBUF(15),
      I3 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I4 => D1_IBUF(11),
      I5 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      O => \ALU_OUT_OBUF[11]_inst_i_23_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => data1(11),
      I2 => ALU_OPP_IBUF(0),
      I3 => data0(11),
      I4 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[11]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000075757577"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_11_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I2 => \ALU_OUT_OBUF[11]_inst_i_9_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_12_n_0\,
      I4 => \ALU_OUT_OBUF[11]_inst_i_10_n_0\,
      I5 => \ALU_OUT_OBUF[11]_inst_i_11_n_0\,
      O => \ALU_OUT_OBUF[11]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ALU_OUT_OBUF[11]_inst_i_12_n_0\,
      I1 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[11]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OUT_Internal0_n_94,
      O => \ALU_OUT_OBUF[11]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[7]_inst_i_13_n_0\,
      CO(3) => \ALU_OUT_OBUF[11]_inst_i_7_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[11]_inst_i_7_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => D1_IBUF(11 downto 8),
      O(3 downto 0) => data1(11 downto 8),
      S(3) => \ALU_OUT_OBUF[11]_inst_i_13_n_0\,
      S(2) => \ALU_OUT_OBUF[11]_inst_i_14_n_0\,
      S(1) => \ALU_OUT_OBUF[11]_inst_i_15_n_0\,
      S(0) => \ALU_OUT_OBUF[11]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[7]_inst_i_14_n_0\,
      CO(3) => \ALU_OUT_OBUF[11]_inst_i_8_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[11]_inst_i_8_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => D1_IBUF(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \ALU_OUT_OBUF[11]_inst_i_17_n_0\,
      S(2) => \ALU_OUT_OBUF[11]_inst_i_18_n_0\,
      S(1) => \ALU_OUT_OBUF[11]_inst_i_19_n_0\,
      S(0) => \ALU_OUT_OBUF[11]_inst_i_20_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF470047004700"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_14_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_27_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_10_n_0\,
      I4 => \ALU_OUT_OBUF[12]_inst_i_13_n_5\,
      I5 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[11]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(12),
      O => ALU_OUT(12)
    );
\ALU_OUT_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB8B8B8B88"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_OBUF[12]_inst_i_3_n_0\,
      I3 => \ALU_OUT_OBUF[12]_inst_i_4_n_0\,
      I4 => \ALU_OUT_OBUF[12]_inst_i_5_n_0\,
      I5 => \ALU_OUT_OBUF[12]_inst_i_6_n_0\,
      O => ALU_OUT_OBUF(12)
    );
\ALU_OUT_OBUF[12]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF474700FF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_18_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[13]_inst_i_15_n_0\,
      I3 => \ALU_OUT_OBUF[13]_inst_i_8_n_0\,
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBABFAAAAAAAA"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_9_n_0\,
      I1 => D1_IBUF(15),
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => D1_IBUF(13),
      I4 => \ALU_OUT_OBUF[12]_inst_i_19_n_0\,
      I5 => D2_IBUF(0),
      O => \ALU_OUT_OBUF[12]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => D1_IBUF(15),
      I3 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I4 => D1_IBUF(12),
      I5 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[8]_inst_i_10_n_0\,
      CO(3) => \ALU_OUT_OBUF[12]_inst_i_13_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[12]_inst_i_13_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => SHIFT_RIGHT4(12 downto 9),
      O(3) => \ALU_OUT_OBUF[12]_inst_i_13_n_4\,
      O(2) => \ALU_OUT_OBUF[12]_inst_i_13_n_5\,
      O(1) => \ALU_OUT_OBUF[12]_inst_i_13_n_6\,
      O(0) => \ALU_OUT_OBUF[12]_inst_i_13_n_7\,
      S(3) => \ALU_OUT_OBUF[12]_inst_i_24_n_0\,
      S(2) => \ALU_OUT_OBUF[12]_inst_i_25_n_0\,
      S(1) => \ALU_OUT_OBUF[12]_inst_i_26_n_0\,
      S(0) => \ALU_OUT_OBUF[12]_inst_i_27_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => D1_IBUF(5),
      I1 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I2 => D1_IBUF(1),
      I3 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I4 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I5 => D1_IBUF(9),
      O => \ALU_OUT_OBUF[12]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002AAAA"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => \ALU_OUT_OBUF[14]_inst_i_22_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_23_n_0\,
      I3 => \ALU_OUT_OBUF[12]_inst_i_16_n_0\,
      I4 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => SHIFT_LEFT2(5),
      I1 => SHIFT_LEFT2(12),
      I2 => SHIFT_LEFT2(9),
      O => \ALU_OUT_OBUF[12]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5544554755775547"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I2 => D1_IBUF(12),
      I3 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => D1_IBUF(14),
      O => \ALU_OUT_OBUF[12]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AFC0A0C"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D1_IBUF(9),
      I2 => D2_IBUF(2),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(5),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[12]_inst_i_18_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFEFFFFAEFEA"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I1 => SHIFT_LEFT2(3),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[12]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(12),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(12),
      O => \ALU_OUT_OBUF[12]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200020202000000"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => SHIFT_LEFT2(2),
      I4 => D2_IBUF(15),
      I5 => D2_IBUF(2),
      O => SHIFT_RIGHT4(12)
    );
\ALU_OUT_OBUF[12]_inst_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => D2_IBUF(0),
      I3 => SHIFT_LEFT2(2),
      I4 => D2_IBUF(15),
      I5 => D2_IBUF(2),
      O => SHIFT_RIGHT4(11)
    );
\ALU_OUT_OBUF[12]_inst_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000080808"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => D2_IBUF(0),
      I3 => SHIFT_LEFT2(2),
      I4 => D2_IBUF(15),
      I5 => D2_IBUF(2),
      O => SHIFT_RIGHT4(10)
    );
\ALU_OUT_OBUF[12]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000202020"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => D2_IBUF(0),
      I3 => SHIFT_LEFT2(2),
      I4 => D2_IBUF(15),
      I5 => D2_IBUF(2),
      O => SHIFT_RIGHT4(9)
    );
\ALU_OUT_OBUF[12]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF1DFFFFFFFF"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(2),
      I3 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_24_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFFFFFFFFFFFFF"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(2),
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_25_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE2FFFFFFFFFFFF"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(2),
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_26_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE2FFFFFFFFFF"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(2),
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_27_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => data1(12),
      I2 => ALU_OPP_IBUF(0),
      I3 => data0(12),
      I4 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[12]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000075757577"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_11_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I2 => \ALU_OUT_OBUF[12]_inst_i_7_n_0\,
      I3 => \ALU_OUT_OBUF[12]_inst_i_8_n_0\,
      I4 => \ALU_OUT_OBUF[13]_inst_i_13_n_0\,
      I5 => \ALU_OUT_OBUF[12]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007775FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_10_n_0\,
      I1 => \ALU_OUT_OBUF[12]_inst_i_11_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[12]_inst_i_12_n_0\,
      I4 => ALU_OPP_IBUF(0),
      I5 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[12]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OUT_Internal0_n_93,
      O => \ALU_OUT_OBUF[12]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888FFF88888888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_13_n_4\,
      I1 => D1_IBUF(0),
      I2 => \ALU_OUT_OBUF[12]_inst_i_14_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_27_n_0\,
      I5 => \ALU_OUT_OBUF[12]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAA"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => \ALU_OUT_OBUF[14]_inst_i_22_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_23_n_0\,
      I3 => \ALU_OUT_OBUF[12]_inst_i_16_n_0\,
      I4 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45554055FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_12_n_0\,
      I1 => \ALU_OUT_OBUF[13]_inst_i_27_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I4 => \ALU_OUT_OBUF[12]_inst_i_17_n_0\,
      I5 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[12]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(13),
      O => ALU_OUT(13)
    );
\ALU_OUT_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAFFEF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[13]_inst_i_3_n_0\,
      I2 => ALU_OPP_IBUF(1),
      I3 => \ALU_OUT_OBUF[13]_inst_i_4_n_0\,
      I4 => \ALU_OUT_OBUF[13]_inst_i_5_n_0\,
      I5 => \ALU_OUT_OBUF[13]_inst_i_6_n_0\,
      O => ALU_OUT_OBUF(13)
    );
\ALU_OUT_OBUF[13]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47FFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_24_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[13]_inst_i_25_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I4 => D2_IBUF(15),
      O => \ALU_OUT_OBUF[13]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I2 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[13]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF470047004700"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_27_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_29_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_10_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_32_n_7\,
      I5 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[13]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_26_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[14]_inst_i_30_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45554055FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_12_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_16_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I4 => \ALU_OUT_OBUF[13]_inst_i_27_n_0\,
      I5 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[13]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033B800B8"
    )
        port map (
      I0 => D1_IBUF(7),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(11),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(3),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[13]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => D2_IBUF(3),
      I2 => D1_IBUF(5),
      I3 => D2_IBUF(2),
      I4 => \ALU_OUT_OBUF[13]_inst_i_28_n_0\,
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[13]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AFC0A0C"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => D1_IBUF(10),
      I2 => D2_IBUF(2),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(6),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[13]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D2_IBUF(3),
      I2 => D1_IBUF(8),
      I3 => D2_IBUF(4),
      I4 => D2_IBUF(2),
      I5 => \ALU_OUT_OBUF[13]_inst_i_29_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_18_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(6),
      I1 => D2_IBUF(7),
      O => \ALU_OUT_OBUF[13]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OUT_Internal0_n_92,
      I2 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[13]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(10),
      I1 => D2_IBUF(11),
      O => \ALU_OUT_OBUF[13]_inst_i_20_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => D2_IBUF(14),
      O => \ALU_OUT_OBUF[13]_inst_i_21_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(8),
      I1 => D2_IBUF(9),
      O => \ALU_OUT_OBUF[13]_inst_i_22_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(12),
      I1 => D2_IBUF(13),
      O => \ALU_OUT_OBUF[13]_inst_i_23_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => D1_IBUF(14),
      I3 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_24_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => D1_IBUF(13),
      I3 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_25_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => D1_IBUF(6),
      I1 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I2 => D1_IBUF(2),
      I3 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I4 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I5 => D1_IBUF(10),
      O => \ALU_OUT_OBUF[13]_inst_i_26_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55545557"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I4 => D1_IBUF(13),
      O => \ALU_OUT_OBUF[13]_inst_i_27_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D2_IBUF(3),
      I2 => D1_IBUF(9),
      O => \ALU_OUT_OBUF[13]_inst_i_28_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => D2_IBUF(3),
      I2 => D1_IBUF(12),
      I3 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[13]_inst_i_29_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000540455555555"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => \ALU_OUT_OBUF[13]_inst_i_7_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[13]_inst_i_8_n_0\,
      I4 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      I5 => \ALU_OUT_OBUF[13]_inst_i_10_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000075757577"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_11_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I2 => \ALU_OUT_OBUF[13]_inst_i_12_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_12_n_0\,
      I4 => \ALU_OUT_OBUF[13]_inst_i_13_n_0\,
      I5 => \ALU_OUT_OBUF[13]_inst_i_14_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => data1(13),
      I2 => ALU_OPP_IBUF(0),
      I3 => data0(13),
      I4 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[13]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7AA2855D00000000"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => ALU_OPP_IBUF(0),
      I2 => D2_IBUF(13),
      I3 => ALU_OPP_IBUF(1),
      I4 => ALU_OPP_IBUF(2),
      I5 => ALU_OPP_IBUF(3),
      O => \ALU_OUT_OBUF[13]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_15_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[13]_inst_i_16_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_17_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[13]_inst_i_18_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_19_n_0\,
      I1 => D2_IBUF(5),
      I2 => \ALU_OUT_OBUF[13]_inst_i_20_n_0\,
      I3 => \ALU_OUT_OBUF[13]_inst_i_21_n_0\,
      I4 => \ALU_OUT_OBUF[13]_inst_i_22_n_0\,
      I5 => \ALU_OUT_OBUF[13]_inst_i_23_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(14),
      O => ALU_OUT(14)
    );
\ALU_OUT_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEEFE"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_3_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_4_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_5_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_6_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_7_n_0\,
      O => ALU_OUT_OBUF(14)
    );
\ALU_OUT_OBUF[14]_inst_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_7_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[14]_inst_i_26_n_0\,
      I3 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_27_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[14]_inst_i_29_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I1 => D2_IBUF(0),
      O => \ALU_OUT_OBUF[14]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF470047004700"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_30_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_31_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_10_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_32_n_6\,
      I5 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[14]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[14]_inst_i_33_n_0\,
      CO(3 downto 1) => \NLW_ALU_OUT_OBUF[14]_inst_i_14_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ALU_OUT_OBUF[14]_inst_i_14_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \ALU_OUT_OBUF[14]_inst_i_34_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555557"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      I1 => SHIFT_LEFT2(9),
      I2 => SHIFT_LEFT2(12),
      I3 => SHIFT_LEFT2(5),
      I4 => \ALU_OUT_OBUF[14]_inst_i_23_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_22_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333335"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => D1_IBUF(15),
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[11]_inst_i_7_n_0\,
      CO(3) => \ALU_OUT_OBUF[14]_inst_i_17_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[14]_inst_i_17_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \ALU_OUT_OBUF[14]_inst_i_35_n_0\,
      DI(2 downto 0) => D1_IBUF(14 downto 12),
      O(3 downto 0) => data1(15 downto 12),
      S(3) => \ALU_OUT_OBUF[14]_inst_i_36_n_0\,
      S(2) => \ALU_OUT_OBUF[14]_inst_i_37_n_0\,
      S(1) => \ALU_OUT_OBUF[14]_inst_i_38_n_0\,
      S(0) => \ALU_OUT_OBUF[14]_inst_i_39_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[11]_inst_i_8_n_0\,
      CO(3) => \ALU_OUT_OBUF[14]_inst_i_18_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[14]_inst_i_18_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \ALU_OUT_OBUF[14]_inst_i_40_n_0\,
      DI(2 downto 0) => D1_IBUF(14 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \ALU_OUT_OBUF[14]_inst_i_41_n_0\,
      S(2) => \ALU_OUT_OBUF[14]_inst_i_42_n_0\,
      S(1) => \ALU_OUT_OBUF[14]_inst_i_43_n_0\,
      S(0) => \ALU_OUT_OBUF[14]_inst_i_44_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D2_IBUF(1),
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(15),
      O => \ALU_OUT_OBUF[14]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OUT_Internal0_n_91,
      I2 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[14]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => SHIFT_LEFT2(4),
      I2 => D2_IBUF(3),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(3),
      O => \ALU_OUT_OBUF[14]_inst_i_20_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SHIFT_LEFT2(2),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[14]_inst_i_21_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_45_n_0\,
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(6),
      I3 => SHIFT_LEFT2(8),
      I4 => SHIFT_LEFT2(10),
      I5 => SHIFT_LEFT2(14),
      O => \ALU_OUT_OBUF[14]_inst_i_22_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => SHIFT_LEFT2(15),
      I1 => SHIFT_LEFT2(7),
      I2 => SHIFT_LEFT2(13),
      I3 => SHIFT_LEFT2(11),
      O => \ALU_OUT_OBUF[14]_inst_i_23_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[14]_inst_i_28_n_0\,
      CO(3) => \ALU_OUT_OBUF[14]_inst_i_24_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[14]_inst_i_24_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SHIFT_LEFT2(8 downto 5),
      S(3) => \ALU_OUT_OBUF[14]_inst_i_46_n_0\,
      S(2) => \ALU_OUT_OBUF[14]_inst_i_47_n_0\,
      S(1) => \ALU_OUT_OBUF[14]_inst_i_48_n_0\,
      S(0) => \ALU_OUT_OBUF[14]_inst_i_49_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_25\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[14]_inst_i_24_n_0\,
      CO(3) => \ALU_OUT_OBUF[14]_inst_i_25_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[14]_inst_i_25_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SHIFT_LEFT2(12 downto 9),
      S(3) => \ALU_OUT_OBUF[14]_inst_i_50_n_0\,
      S(2) => \ALU_OUT_OBUF[14]_inst_i_51_n_0\,
      S(1) => \ALU_OUT_OBUF[14]_inst_i_52_n_0\,
      S(0) => \ALU_OUT_OBUF[14]_inst_i_53_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_18_n_0\,
      I1 => D2_IBUF(1),
      I2 => CARRY_FLAG_OBUF_inst_i_22_n_0,
      O => \ALU_OUT_OBUF[14]_inst_i_26_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => D1_IBUF(7),
      I1 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I2 => D1_IBUF(3),
      I3 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I4 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I5 => D1_IBUF(11),
      O => \ALU_OUT_OBUF[14]_inst_i_27_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_28\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ALU_OUT_OBUF[14]_inst_i_28_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[14]_inst_i_28_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \ALU_OUT_OBUF[14]_inst_i_55_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SHIFT_LEFT2(4 downto 1),
      S(3) => \ALU_OUT_OBUF[14]_inst_i_56_n_0\,
      S(2) => \ALU_OUT_OBUF[14]_inst_i_57_n_0\,
      S(1) => \ALU_OUT_OBUF[14]_inst_i_58_n_0\,
      S(0) => \ALU_OUT_OBUF[14]_inst_i_59_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0C0C0A0AFCFCF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_60_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_61_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_62_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_63_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_29_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F2FFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_8_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_9_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_10_n_0\,
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[14]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303010103F3F101F"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => \ALU_OUT_OBUF[14]_inst_i_64_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I3 => D1_IBUF(4),
      I4 => \ALU_OUT_OBUF[14]_inst_i_65_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_66_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_30_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_67_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_68_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_69_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_70_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_31_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_32\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[12]_inst_i_13_n_0\,
      CO(3 downto 0) => \NLW_ALU_OUT_OBUF[14]_inst_i_32_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => SHIFT_RIGHT4(15),
      DI(1) => \ALU_OUT_OBUF[14]_inst_i_72_n_0\,
      DI(0) => SHIFT_RIGHT4(13),
      O(3) => \ALU_OUT_OBUF[14]_inst_i_32_n_4\,
      O(2) => \ALU_OUT_OBUF[14]_inst_i_32_n_5\,
      O(1) => \ALU_OUT_OBUF[14]_inst_i_32_n_6\,
      O(0) => \ALU_OUT_OBUF[14]_inst_i_32_n_7\,
      S(3) => \ALU_OUT_OBUF[14]_inst_i_74_n_0\,
      S(2) => \ALU_OUT_OBUF[14]_inst_i_75_n_0\,
      S(1) => \ALU_OUT_OBUF[14]_inst_i_76_n_0\,
      S(0) => \ALU_OUT_OBUF[14]_inst_i_77_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_33\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[14]_inst_i_78_n_0\,
      CO(3) => \ALU_OUT_OBUF[14]_inst_i_33_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[14]_inst_i_33_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \ALU_OUT_OBUF[14]_inst_i_79_n_0\,
      DI(2) => \ALU_OUT_OBUF[14]_inst_i_80_n_0\,
      DI(1) => \ALU_OUT_OBUF[14]_inst_i_81_n_0\,
      DI(0) => \ALU_OUT_OBUF[14]_inst_i_82_n_0\,
      O(3 downto 0) => \NLW_ALU_OUT_OBUF[14]_inst_i_33_O_UNCONNECTED\(3 downto 0),
      S(3) => \ALU_OUT_OBUF[14]_inst_i_83_n_0\,
      S(2) => \ALU_OUT_OBUF[14]_inst_i_84_n_0\,
      S(1) => \ALU_OUT_OBUF[14]_inst_i_85_n_0\,
      S(0) => \ALU_OUT_OBUF[14]_inst_i_86_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_34\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(15),
      O => \ALU_OUT_OBUF[14]_inst_i_34_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_35\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D1_IBUF(15),
      O => \ALU_OUT_OBUF[14]_inst_i_35_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => D1_IBUF(15),
      O => \ALU_OUT_OBUF[14]_inst_i_36_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(14),
      I1 => D1_IBUF(14),
      O => \ALU_OUT_OBUF[14]_inst_i_37_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(13),
      I1 => D1_IBUF(13),
      O => \ALU_OUT_OBUF[14]_inst_i_38_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(12),
      I1 => D1_IBUF(12),
      O => \ALU_OUT_OBUF[14]_inst_i_39_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F1F1FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_11_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_12_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_13_n_0\,
      I3 => D1_IBUF(0),
      I4 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I5 => D2_IBUF(15),
      O => \ALU_OUT_OBUF[14]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_40\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D1_IBUF(15),
      O => \ALU_OUT_OBUF[14]_inst_i_40_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D2_IBUF(15),
      O => \ALU_OUT_OBUF[14]_inst_i_41_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_42\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => D2_IBUF(14),
      O => \ALU_OUT_OBUF[14]_inst_i_42_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_43\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => D2_IBUF(13),
      O => \ALU_OUT_OBUF[14]_inst_i_43_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_44\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(12),
      I1 => D2_IBUF(12),
      O => \ALU_OUT_OBUF[14]_inst_i_44_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_45\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[14]_inst_i_25_n_0\,
      CO(3) => \ALU_OUT_OBUF[14]_inst_i_45_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[14]_inst_i_45_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0100",
      O(3) => \NLW_ALU_OUT_OBUF[14]_inst_i_45_O_UNCONNECTED\(3),
      O(2 downto 0) => SHIFT_LEFT2(15 downto 13),
      S(3) => '1',
      S(2) => \ALU_OUT_OBUF[14]_inst_i_87_n_0\,
      S(1) => \ALU_OUT_OBUF[14]_inst_i_88_n_0\,
      S(0) => \ALU_OUT_OBUF[14]_inst_i_89_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_46\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(8),
      O => \ALU_OUT_OBUF[14]_inst_i_46_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_47\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(7),
      O => \ALU_OUT_OBUF[14]_inst_i_47_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_48\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(6),
      O => \ALU_OUT_OBUF[14]_inst_i_48_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_49\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(5),
      O => \ALU_OUT_OBUF[14]_inst_i_49_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15111011FFFFFFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => D1_IBUF(15),
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_16_n_0\,
      I5 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[14]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_50\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(12),
      O => \ALU_OUT_OBUF[14]_inst_i_50_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_51\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(11),
      O => \ALU_OUT_OBUF[14]_inst_i_51_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_52\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(10),
      O => \ALU_OUT_OBUF[14]_inst_i_52_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_53\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(9),
      O => \ALU_OUT_OBUF[14]_inst_i_53_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_54\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[14]_inst_i_54_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_55\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(0),
      O => \ALU_OUT_OBUF[14]_inst_i_55_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_56\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[14]_inst_i_56_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_57\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[14]_inst_i_57_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_58\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[14]_inst_i_58_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_59\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(1),
      O => \ALU_OUT_OBUF[14]_inst_i_59_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => data1(14),
      I2 => ALU_OPP_IBUF(0),
      I3 => data0(14),
      I4 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[14]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_60\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D1_IBUF(1),
      O => \ALU_OUT_OBUF[14]_inst_i_60_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_61\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D1_IBUF(9),
      O => \ALU_OUT_OBUF[14]_inst_i_61_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_62\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => D1_IBUF(5),
      I1 => D2_IBUF(4),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(4),
      O => \ALU_OUT_OBUF[14]_inst_i_62_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => SHIFT_LEFT2(4),
      I1 => D2_IBUF(4),
      I2 => D1_IBUF(13),
      I3 => D2_IBUF(3),
      I4 => D2_IBUF(15),
      I5 => SHIFT_LEFT2(3),
      O => \ALU_OUT_OBUF[14]_inst_i_63_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => D1_IBUF(8),
      I1 => SHIFT_LEFT2(3),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[14]_inst_i_64_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_65\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => SHIFT_LEFT2(4),
      I2 => D2_IBUF(3),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(3),
      O => \ALU_OUT_OBUF[14]_inst_i_65_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => D1_IBUF(12),
      I1 => SHIFT_LEFT2(3),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[14]_inst_i_66_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_67\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D1_IBUF(2),
      O => \ALU_OUT_OBUF[14]_inst_i_67_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_68\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D1_IBUF(10),
      O => \ALU_OUT_OBUF[14]_inst_i_68_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_69\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D1_IBUF(6),
      O => \ALU_OUT_OBUF[14]_inst_i_69_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7AA2855D00000000"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => ALU_OPP_IBUF(0),
      I2 => D2_IBUF(14),
      I3 => ALU_OPP_IBUF(1),
      I4 => ALU_OPP_IBUF(2),
      I5 => ALU_OPP_IBUF(3),
      O => \ALU_OUT_OBUF[14]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_70\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D1_IBUF(14),
      O => \ALU_OUT_OBUF[14]_inst_i_70_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808080000000"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => D2_IBUF(0),
      I3 => SHIFT_LEFT2(2),
      I4 => D2_IBUF(15),
      I5 => D2_IBUF(2),
      O => SHIFT_RIGHT4(15)
    );
\ALU_OUT_OBUF[14]_inst_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008A800000"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      I1 => SHIFT_LEFT2(2),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(2),
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => D2_IBUF(0),
      O => \ALU_OUT_OBUF[14]_inst_i_72_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008A8000000000"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      I1 => SHIFT_LEFT2(2),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(2),
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => D2_IBUF(0),
      O => SHIFT_RIGHT4(13)
    );
\ALU_OUT_OBUF[14]_inst_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I4 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_74_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DFFFFFFFFFFFFFF"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(2),
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_75_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFFFBFFFFFFFFF"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => D2_IBUF(2),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(2),
      I5 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_76_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFFFDFFFFFFFFF"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => D2_IBUF(2),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(2),
      I5 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_77_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_78\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ALU_OUT_OBUF[14]_inst_i_78_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[14]_inst_i_78_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => \ALU_OUT_OBUF[14]_inst_i_91_n_0\,
      DI(2) => D2_IBUF(5),
      DI(1) => \ALU_OUT_OBUF[14]_inst_i_92_n_0\,
      DI(0) => D2_IBUF(1),
      O(3 downto 0) => \NLW_ALU_OUT_OBUF[14]_inst_i_78_O_UNCONNECTED\(3 downto 0),
      S(3) => \ALU_OUT_OBUF[14]_inst_i_93_n_0\,
      S(2) => \ALU_OUT_OBUF[14]_inst_i_94_n_0\,
      S(1) => \ALU_OUT_OBUF[14]_inst_i_95_n_0\,
      S(0) => \ALU_OUT_OBUF[14]_inst_i_96_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_79\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => D2_IBUF(14),
      O => \ALU_OUT_OBUF[14]_inst_i_79_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004D48"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => D1_IBUF(15),
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => D1_IBUF(14),
      I4 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_80\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(12),
      I1 => D2_IBUF(13),
      O => \ALU_OUT_OBUF[14]_inst_i_80_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_81\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(10),
      I1 => D2_IBUF(11),
      O => \ALU_OUT_OBUF[14]_inst_i_81_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_82\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(8),
      I1 => D2_IBUF(9),
      O => \ALU_OUT_OBUF[14]_inst_i_82_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_83\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(14),
      I1 => D2_IBUF(15),
      O => \ALU_OUT_OBUF[14]_inst_i_83_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_84\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(13),
      I1 => D2_IBUF(12),
      O => \ALU_OUT_OBUF[14]_inst_i_84_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_85\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(11),
      I1 => D2_IBUF(10),
      O => \ALU_OUT_OBUF[14]_inst_i_85_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_86\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(9),
      I1 => D2_IBUF(8),
      O => \ALU_OUT_OBUF[14]_inst_i_86_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_87\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(15),
      O => \ALU_OUT_OBUF[14]_inst_i_87_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_88\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(14),
      O => \ALU_OUT_OBUF[14]_inst_i_88_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_89\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(13),
      O => \ALU_OUT_OBUF[14]_inst_i_89_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_22_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_23_n_0\,
      I2 => SHIFT_LEFT2(5),
      I3 => SHIFT_LEFT2(12),
      I4 => SHIFT_LEFT2(9),
      O => \ALU_OUT_OBUF[14]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000080800A008A80"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I1 => SHIFT_LEFT2(3),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[14]_inst_i_90_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_91\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(6),
      I1 => D2_IBUF(7),
      O => \ALU_OUT_OBUF[14]_inst_i_91_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_92\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[14]_inst_i_92_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_93\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(7),
      I1 => D2_IBUF(6),
      O => \ALU_OUT_OBUF[14]_inst_i_93_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_94\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => D2_IBUF(5),
      O => \ALU_OUT_OBUF[14]_inst_i_94_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_95\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[14]_inst_i_95_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_96\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => D2_IBUF(1),
      O => \ALU_OUT_OBUF[14]_inst_i_96_n_0\
    );
\ALU_OUT_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SMALLER_ZERO_FLAG_OBUF,
      O => ALU_OUT(15)
    );
\ALU_OUT_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000B8BB"
    )
        port map (
      I0 => ALU_OUT_Internal0_n_90,
      I1 => ALU_OPP_IBUF(2),
      I2 => \ALU_OUT_OBUF[15]_inst_i_3_n_0\,
      I3 => \ALU_OUT_OBUF[15]_inst_i_4_n_0\,
      I4 => ALU_OPP_IBUF(3),
      I5 => \ALU_OUT_OBUF[15]_inst_i_5_n_0\,
      O => SMALLER_ZERO_FLAG_OBUF
    );
\ALU_OUT_OBUF[15]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => data0(15),
      I1 => ALU_OPP_IBUF(0),
      I2 => data1(15),
      I3 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[15]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8D00FFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[15]_inst_i_6_n_0\,
      I2 => D1_IBUF(15),
      I3 => ALU_OPP_IBUF(0),
      I4 => ALU_OPP_IBUF(1),
      I5 => \ALU_OUT_OBUF[15]_inst_i_7_n_0\,
      O => \ALU_OUT_OBUF[15]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A0A8A2AA0A020"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OPP_IBUF(0),
      I2 => D1_IBUF(15),
      I3 => D2_IBUF(15),
      I4 => ALU_OPP_IBUF(1),
      I5 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[15]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFCAFF"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_0,
      I1 => \ALU_OUT_OBUF[15]_inst_i_8_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I5 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[15]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ABFB0000"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_19_n_0,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[14]_inst_i_26_n_0\,
      I4 => CARRY_FLAG_OBUF_inst_i_14_n_0,
      I5 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[15]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_30_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[14]_inst_i_31_n_0\,
      O => \ALU_OUT_OBUF[15]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_32_n_5\,
      O => \ALU_OUT_OBUF[15]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(1),
      O => ALU_OUT(1)
    );
\ALU_OUT_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAFFFB"
    )
        port map (
      I0 => \ALU_OUT_OBUF[1]_inst_i_2_n_0\,
      I1 => ALU_OPP_IBUF(1),
      I2 => \ALU_OUT_OBUF[1]_inst_i_3_n_0\,
      I3 => \ALU_OUT_OBUF[1]_inst_i_4_n_0\,
      I4 => \ALU_OUT_OBUF[1]_inst_i_5_n_0\,
      I5 => \ALU_OUT_OBUF[1]_inst_i_6_n_0\,
      O => ALU_OUT_OBUF(1)
    );
\ALU_OUT_OBUF[1]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF7474"
    )
        port map (
      I0 => \ALU_OUT_OBUF[1]_inst_i_15_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I2 => \ALU_OUT_OBUF[1]_inst_i_14_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_34_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      O => \ALU_OUT_OBUF[1]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B8B88BB"
    )
        port map (
      I0 => \ALU_OUT_OBUF[3]_inst_i_36_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[6]_inst_i_13_n_0\,
      I3 => \ALU_OUT_OBUF[1]_inst_i_13_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      O => \ALU_OUT_OBUF[1]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEFFEFFFFFFFEF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      I1 => D2_IBUF(1),
      I2 => D1_IBUF(1),
      I3 => \ALU_OUT_OBUF[3]_inst_i_33_n_0\,
      I4 => D2_IBUF(0),
      I5 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[1]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF444F4FFF777F7"
    )
        port map (
      I0 => D1_IBUF(10),
      I1 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I2 => D2_IBUF(4),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D1_IBUF(2),
      O => \ALU_OUT_OBUF[1]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF444F4FFF777F7"
    )
        port map (
      I0 => D1_IBUF(9),
      I1 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I2 => D2_IBUF(4),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D1_IBUF(1),
      O => \ALU_OUT_OBUF[1]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000B8B8B800B8"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I2 => D1_IBUF(5),
      I3 => D2_IBUF(4),
      I4 => D2_IBUF(15),
      I5 => SHIFT_LEFT2(4),
      O => \ALU_OUT_OBUF[1]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C8FF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[4]_inst_i_13_n_7\,
      I1 => D1_IBUF(0),
      I2 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I3 => D2_IBUF(15),
      O => \ALU_OUT_OBUF[1]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFDDFFCF"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I2 => D1_IBUF(1),
      I3 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      O => \ALU_OUT_OBUF[1]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OUT_Internal0_n_104,
      I2 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[1]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF70FF40"
    )
        port map (
      I0 => \ALU_OUT_OBUF[1]_inst_i_7_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I3 => \ALU_OUT_OBUF[10]_inst_i_12_n_0\,
      I4 => \ALU_OUT_OBUF[1]_inst_i_8_n_0\,
      I5 => \ALU_OUT_OBUF[1]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[1]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0501000155555555"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => \ALU_OUT_OBUF[1]_inst_i_10_n_0\,
      I2 => \ALU_OUT_OBUF[6]_inst_i_8_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[1]_inst_i_11_n_0\,
      I5 => \ALU_OUT_OBUF[1]_inst_i_12_n_0\,
      O => \ALU_OUT_OBUF[1]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => data1(1),
      I2 => ALU_OPP_IBUF(0),
      I3 => data0(1),
      I4 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[1]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7AA2855D00000000"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => ALU_OPP_IBUF(0),
      I2 => D2_IBUF(1),
      I3 => ALU_OPP_IBUF(1),
      I4 => ALU_OPP_IBUF(2),
      I5 => ALU_OPP_IBUF(3),
      O => \ALU_OUT_OBUF[1]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B888888888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[3]_inst_i_26_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[1]_inst_i_13_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I4 => \ALU_OUT_OBUF[6]_inst_i_13_n_0\,
      I5 => \ALU_OUT_OBUF[6]_inst_i_18_n_0\,
      O => \ALU_OUT_OBUF[1]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F757FFFFF757"
    )
        port map (
      I0 => \ALU_OUT_OBUF[6]_inst_i_18_n_0\,
      I1 => \ALU_OUT_OBUF[1]_inst_i_14_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I3 => \ALU_OUT_OBUF[1]_inst_i_15_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => \ALU_OUT_OBUF[3]_inst_i_29_n_0\,
      O => \ALU_OUT_OBUF[1]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5545FFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[1]_inst_i_16_n_0\,
      I1 => \ALU_OUT_OBUF[1]_inst_i_17_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I4 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[1]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(2),
      O => ALU_OUT(2)
    );
\ALU_OUT_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8B8BBB8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[2]_inst_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_OBUF[2]_inst_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => \ALU_OUT_OBUF[2]_inst_i_4_n_0\,
      I5 => \ALU_OUT_OBUF[2]_inst_i_5_n_0\,
      O => ALU_OUT_OBUF(2)
    );
\ALU_OUT_OBUF[2]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4540"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_9_n_0\,
      I1 => \ALU_OUT_OBUF[3]_inst_i_36_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => \ALU_OUT_OBUF[2]_inst_i_16_n_0\,
      I4 => \ALU_OUT_OBUF[3]_inst_i_37_n_0\,
      I5 => D2_IBUF(0),
      O => \ALU_OUT_OBUF[2]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000001FF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_22_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_23_n_0\,
      I2 => \ALU_OUT_OBUF[12]_inst_i_16_n_0\,
      I3 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      I4 => \ALU_OUT_OBUF[8]_inst_i_14_n_0\,
      I5 => \ALU_OUT_OBUF[2]_inst_i_17_n_0\,
      O => \ALU_OUT_OBUF[2]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => \ALU_OUT_OBUF[4]_inst_i_13_n_6\,
      O => \ALU_OUT_OBUF[2]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SHIFT_LEFT2(4),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[2]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_70_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_69_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_68_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_67_n_0\,
      O => \ALU_OUT_OBUF[2]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      I1 => D2_IBUF(1),
      I2 => D1_IBUF(1),
      I3 => D2_IBUF(3),
      I4 => D2_IBUF(4),
      I5 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[2]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_70_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_69_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_68_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_67_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      O => \ALU_OUT_OBUF[2]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCFCFFFAFFFAF"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => SHIFT_LEFT2(2),
      I2 => D2_IBUF(0),
      I3 => D2_IBUF(1),
      I4 => SHIFT_LEFT2(1),
      I5 => D2_IBUF(15),
      O => \ALU_OUT_OBUF[2]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(2),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(2),
      O => \ALU_OUT_OBUF[2]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => data1(2),
      I3 => ALU_OPP_IBUF(0),
      I4 => data0(2),
      O => \ALU_OUT_OBUF[2]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFAE00AEFFAEFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[2]_inst_i_6_n_0\,
      I1 => \ALU_OUT_OBUF[2]_inst_i_7_n_0\,
      I2 => \ALU_OUT_OBUF[2]_inst_i_8_n_0\,
      I3 => ALU_OPP_IBUF(0),
      I4 => \ALU_OUT_OBUF[2]_inst_i_9_n_0\,
      I5 => \ALU_OUT_OBUF[2]_inst_i_10_n_0\,
      O => \ALU_OUT_OBUF[2]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OUT_Internal0_n_103,
      O => \ALU_OUT_OBUF[2]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA000000A8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_11_n_0\,
      I1 => \ALU_OUT_OBUF[3]_inst_i_32_n_0\,
      I2 => \ALU_OUT_OBUF[12]_inst_i_8_n_0\,
      I3 => \ALU_OUT_OBUF[2]_inst_i_11_n_0\,
      I4 => \ALU_OUT_OBUF[2]_inst_i_12_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      O => \ALU_OUT_OBUF[2]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFAAAAAABFAA"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_8_n_0\,
      I1 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I2 => D1_IBUF(15),
      I3 => \ALU_OUT_OBUF[2]_inst_i_14_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => \ALU_OUT_OBUF[3]_inst_i_26_n_0\,
      O => \ALU_OUT_OBUF[2]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFAAAAAAAAAAAA"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_12_n_0\,
      I1 => \ALU_OUT_OBUF[5]_inst_i_15_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_29_n_0\,
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[2]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABF0000"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_9_n_0\,
      I1 => \ALU_OUT_OBUF[5]_inst_i_12_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_34_n_0\,
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[2]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[2]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(3),
      O => ALU_OUT(3)
    );
\ALU_OUT_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB8B8B8B88"
    )
        port map (
      I0 => \ALU_OUT_OBUF[3]_inst_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_OBUF[3]_inst_i_3_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_4_n_0\,
      I4 => \ALU_OUT_OBUF[3]_inst_i_5_n_0\,
      I5 => \ALU_OUT_OBUF[3]_inst_i_6_n_0\,
      O => ALU_OUT_OBUF(3)
    );
\ALU_OUT_OBUF[3]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005557"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      I1 => \ALU_OUT_OBUF[12]_inst_i_16_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_23_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_22_n_0\,
      I4 => D2_IBUF(0),
      O => \ALU_OUT_OBUF[3]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_20_n_0\,
      I1 => \ALU_OUT_OBUF[3]_inst_i_27_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_28_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => \ALU_OUT_OBUF[3]_inst_i_29_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555001055555010"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I1 => \ALU_OUT_OBUF[3]_inst_i_30_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[3]_inst_i_31_n_0\,
      I5 => \ALU_OUT_OBUF[3]_inst_i_32_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABBBAAABA"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      I2 => D1_IBUF(3),
      I3 => D2_IBUF(1),
      I4 => D1_IBUF(1),
      I5 => \ALU_OUT_OBUF[3]_inst_i_33_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0415F7D5"
    )
        port map (
      I0 => \ALU_OUT_OBUF[3]_inst_i_34_n_0\,
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(1),
      I4 => \ALU_OUT_OBUF[5]_inst_i_12_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B8FFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[3]_inst_i_35_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[3]_inst_i_36_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_9_n_0\,
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[3]_inst_i_37_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => D1_IBUF(3),
      O => \ALU_OUT_OBUF[3]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D1_IBUF(2),
      O => \ALU_OUT_OBUF[3]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(1),
      I1 => D1_IBUF(1),
      O => \ALU_OUT_OBUF[3]_inst_i_18_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[3]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(3),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(3),
      O => \ALU_OUT_OBUF[3]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[3]_inst_i_20_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[3]_inst_i_21_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D2_IBUF(1),
      O => \ALU_OUT_OBUF[3]_inst_i_22_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D2_IBUF(0),
      O => \ALU_OUT_OBUF[3]_inst_i_23_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005530553F"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D1_IBUF(14),
      I2 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I3 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I4 => D1_IBUF(6),
      I5 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_24_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5300535353000000"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D1_IBUF(10),
      I2 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I3 => SHIFT_LEFT2(2),
      I4 => D2_IBUF(15),
      I5 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[3]_inst_i_25_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20202020202020"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_20_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_64_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_38_n_0\,
      I4 => \ALU_OUT_OBUF[6]_inst_i_18_n_0\,
      I5 => \ALU_OUT_OBUF[7]_inst_i_33_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_26_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => D1_IBUF(9),
      I1 => SHIFT_LEFT2(3),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[3]_inst_i_27_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F440F77"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I2 => D1_IBUF(15),
      I3 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I4 => D1_IBUF(5),
      O => \ALU_OUT_OBUF[3]_inst_i_28_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_20_n_0\,
      I1 => \ALU_OUT_OBUF[8]_inst_i_17_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_39_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I5 => \ALU_OUT_OBUF[3]_inst_i_40_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_29_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => data1(3),
      I2 => ALU_OPP_IBUF(0),
      I3 => data0(3),
      I4 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[3]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4FFF7"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I4 => D1_IBUF(3),
      O => \ALU_OUT_OBUF[3]_inst_i_30_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => \ALU_OUT_OBUF[4]_inst_i_13_n_5\,
      O => \ALU_OUT_OBUF[3]_inst_i_31_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF4F7"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I3 => D1_IBUF(2),
      I4 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_32_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => D2_IBUF(4),
      I2 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[3]_inst_i_33_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0EFEFEFE0"
    )
        port map (
      I0 => D1_IBUF(7),
      I1 => \ALU_OUT_OBUF[3]_inst_i_41_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_42_n_0\,
      I4 => D1_IBUF(3),
      I5 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_34_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F00000AACC"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => D1_IBUF(6),
      I2 => D1_IBUF(10),
      I3 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I4 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_35_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFA0AFEFEFE0EF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[3]_inst_i_41_n_0\,
      I1 => D1_IBUF(8),
      I2 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_38_n_0\,
      I4 => D1_IBUF(4),
      I5 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_36_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003210"
    )
        port map (
      I0 => D2_IBUF(1),
      I1 => \ALU_OUT_OBUF[3]_inst_i_33_n_0\,
      I2 => D1_IBUF(2),
      I3 => D1_IBUF(0),
      I4 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_37_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDF5FFFFFFF5FF"
    )
        port map (
      I0 => D1_IBUF(12),
      I1 => SHIFT_LEFT2(4),
      I2 => D2_IBUF(4),
      I3 => D2_IBUF(3),
      I4 => D2_IBUF(15),
      I5 => SHIFT_LEFT2(3),
      O => \ALU_OUT_OBUF[3]_inst_i_38_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33355535"
    )
        port map (
      I0 => D1_IBUF(11),
      I1 => D1_IBUF(15),
      I2 => D2_IBUF(4),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      O => \ALU_OUT_OBUF[3]_inst_i_39_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE00AE000000AE00"
    )
        port map (
      I0 => \ALU_OUT_OBUF[3]_inst_i_9_n_0\,
      I1 => \ALU_OUT_OBUF[3]_inst_i_10_n_0\,
      I2 => \ALU_OUT_OBUF[3]_inst_i_11_n_0\,
      I3 => ALU_OPP_IBUF(0),
      I4 => \ALU_OUT_OBUF[13]_inst_i_11_n_0\,
      I5 => \ALU_OUT_OBUF[3]_inst_i_12_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33355535"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => D1_IBUF(15),
      I2 => D2_IBUF(4),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      O => \ALU_OUT_OBUF[3]_inst_i_40_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A0888800A0"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => SHIFT_LEFT2(3),
      I2 => D2_IBUF(3),
      I3 => D2_IBUF(4),
      I4 => D2_IBUF(15),
      I5 => SHIFT_LEFT2(4),
      O => \ALU_OUT_OBUF[3]_inst_i_41_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0000000C0A0A0"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => SHIFT_LEFT2(3),
      I2 => D1_IBUF(11),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(15),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[3]_inst_i_42_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4500FFFF"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => \ALU_OUT_OBUF[3]_inst_i_13_n_0\,
      I2 => \ALU_OUT_OBUF[3]_inst_i_14_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_15_n_0\,
      I4 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[3]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OUT_Internal0_n_102,
      O => \ALU_OUT_OBUF[3]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ALU_OUT_OBUF[3]_inst_i_7_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[3]_inst_i_7_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => D1_IBUF(3 downto 0),
      O(3 downto 0) => data1(3 downto 0),
      S(3) => \ALU_OUT_OBUF[3]_inst_i_16_n_0\,
      S(2) => \ALU_OUT_OBUF[3]_inst_i_17_n_0\,
      S(1) => \ALU_OUT_OBUF[3]_inst_i_18_n_0\,
      S(0) => \ALU_OUT_OBUF[3]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ALU_OUT_OBUF[3]_inst_i_8_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[3]_inst_i_8_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => D1_IBUF(3 downto 0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => \ALU_OUT_OBUF[3]_inst_i_20_n_0\,
      S(2) => \ALU_OUT_OBUF[3]_inst_i_21_n_0\,
      S(1) => \ALU_OUT_OBUF[3]_inst_i_22_n_0\,
      S(0) => \ALU_OUT_OBUF[3]_inst_i_23_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAABFFAAAAAAAA"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_12_n_0\,
      I1 => \ALU_OUT_OBUF[3]_inst_i_24_n_0\,
      I2 => \ALU_OUT_OBUF[3]_inst_i_25_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I4 => \ALU_OUT_OBUF[3]_inst_i_26_n_0\,
      I5 => \ALU_OUT_OBUF[12]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(4),
      O => ALU_OUT(4)
    );
\ALU_OUT_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAEAFFEA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OUT_Internal0_n_101,
      I2 => ALU_OPP_IBUF(2),
      I3 => \ALU_OUT_OBUF[4]_inst_i_2_n_0\,
      I4 => \ALU_OUT_OBUF[4]_inst_i_3_n_0\,
      I5 => \ALU_OUT_OBUF[4]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(4)
    );
\ALU_OUT_OBUF[4]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => \ALU_OUT_OBUF[6]_inst_i_17_n_0\,
      I1 => \ALU_OUT_OBUF[6]_inst_i_18_n_0\,
      I2 => \ALU_OUT_OBUF[6]_inst_i_19_n_0\,
      I3 => \ALU_OUT_OBUF[7]_inst_i_20_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => \ALU_OUT_OBUF[3]_inst_i_26_n_0\,
      O => \ALU_OUT_OBUF[4]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_22_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[7]_inst_i_20_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_27_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I5 => \ALU_OUT_OBUF[3]_inst_i_28_n_0\,
      O => \ALU_OUT_OBUF[4]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A000800000008"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_15_n_0\,
      I1 => D1_IBUF(3),
      I2 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => D1_IBUF(1),
      O => \ALU_OUT_OBUF[4]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ALU_OUT_OBUF[4]_inst_i_13_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[4]_inst_i_13_CO_UNCONNECTED\(2 downto 0),
      CYINIT => SHIFT_RIGHT4(0),
      DI(3 downto 0) => SHIFT_RIGHT4(4 downto 1),
      O(3) => \ALU_OUT_OBUF[4]_inst_i_13_n_4\,
      O(2) => \ALU_OUT_OBUF[4]_inst_i_13_n_5\,
      O(1) => \ALU_OUT_OBUF[4]_inst_i_13_n_6\,
      O(0) => \ALU_OUT_OBUF[4]_inst_i_13_n_7\,
      S(3) => \ALU_OUT_OBUF[4]_inst_i_20_n_0\,
      S(2) => \ALU_OUT_OBUF[4]_inst_i_21_n_0\,
      S(1) => \ALU_OUT_OBUF[4]_inst_i_22_n_0\,
      S(0) => \ALU_OUT_OBUF[4]_inst_i_23_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => D2_IBUF(1),
      I2 => D1_IBUF(1),
      I3 => D2_IBUF(2),
      I4 => D2_IBUF(4),
      I5 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[4]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000047"
    )
        port map (
      I0 => SHIFT_LEFT2(2),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(2),
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => \ALU_OUT_OBUF[8]_inst_i_29_n_0\,
      O => SHIFT_RIGHT4(0)
    );
\ALU_OUT_OBUF[4]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010111000"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => SHIFT_LEFT2(2),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(2),
      I5 => \ALU_OUT_OBUF[8]_inst_i_29_n_0\,
      O => SHIFT_RIGHT4(4)
    );
\ALU_OUT_OBUF[4]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I1 => D2_IBUF(0),
      I2 => SHIFT_LEFT2(2),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(2),
      I5 => \ALU_OUT_OBUF[8]_inst_i_29_n_0\,
      O => SHIFT_RIGHT4(3)
    );
\ALU_OUT_OBUF[4]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000222"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I1 => D2_IBUF(0),
      I2 => SHIFT_LEFT2(2),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(2),
      I5 => \ALU_OUT_OBUF[8]_inst_i_29_n_0\,
      O => SHIFT_RIGHT4(2)
    );
\ALU_OUT_OBUF[4]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000444"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I1 => D2_IBUF(0),
      I2 => SHIFT_LEFT2(2),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(2),
      I5 => \ALU_OUT_OBUF[8]_inst_i_29_n_0\,
      O => SHIFT_RIGHT4(1)
    );
\ALU_OUT_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E2FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[4]_inst_i_5_n_0\,
      I1 => ALU_OPP_IBUF(0),
      I2 => \ALU_OUT_OBUF[4]_inst_i_6_n_0\,
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[4]_inst_i_7_n_0\,
      I5 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[4]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFABFB"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_29_n_0\,
      I1 => D2_IBUF(2),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(2),
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => D2_IBUF(0),
      O => \ALU_OUT_OBUF[4]_inst_i_20_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAEFFFFFFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_29_n_0\,
      I1 => D2_IBUF(2),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(2),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      O => \ALU_OUT_OBUF[4]_inst_i_21_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEFFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_29_n_0\,
      I1 => D2_IBUF(2),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(2),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      O => \ALU_OUT_OBUF[4]_inst_i_22_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEAEFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_29_n_0\,
      I1 => D2_IBUF(2),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(2),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      O => \ALU_OUT_OBUF[4]_inst_i_23_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => data1(4),
      I2 => ALU_OPP_IBUF(0),
      I3 => data0(4),
      I4 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[4]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7AA2855D00000000"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => ALU_OPP_IBUF(0),
      I2 => D2_IBUF(4),
      I3 => ALU_OPP_IBUF(1),
      I4 => ALU_OPP_IBUF(2),
      I5 => ALU_OPP_IBUF(3),
      O => \ALU_OUT_OBUF[4]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80008088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I1 => D2_IBUF(15),
      I2 => \ALU_OUT_OBUF[5]_inst_i_8_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[4]_inst_i_8_n_0\,
      I5 => \ALU_OUT_OBUF[4]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[4]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"37F704C4"
    )
        port map (
      I0 => \ALU_OUT_OBUF[4]_inst_i_10_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[4]_inst_i_11_n_0\,
      I4 => D1_IBUF(15),
      O => \ALU_OUT_OBUF[4]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5510FFBA5510"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I1 => \ALU_OUT_OBUF[5]_inst_i_14_n_0\,
      I2 => \ALU_OUT_OBUF[3]_inst_i_10_n_0\,
      I3 => \ALU_OUT_OBUF[4]_inst_i_12_n_0\,
      I4 => D1_IBUF(0),
      I5 => \ALU_OUT_OBUF[4]_inst_i_13_n_4\,
      O => \ALU_OUT_OBUF[4]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3AA0000F3AAFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[6]_inst_i_13_n_0\,
      I1 => D1_IBUF(10),
      I2 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => \ALU_OUT_OBUF[3]_inst_i_36_n_0\,
      O => \ALU_OUT_OBUF[4]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[4]_inst_i_14_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[5]_inst_i_11_n_0\,
      I3 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[4]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(5),
      O => ALU_OUT(5)
    );
\ALU_OUT_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55555100"
    )
        port map (
      I0 => \ALU_OUT_OBUF[5]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[5]_inst_i_3_n_0\,
      I2 => \ALU_OUT_OBUF[5]_inst_i_4_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => \ALU_OUT_OBUF[5]_inst_i_5_n_0\,
      I5 => \ALU_OUT_OBUF[5]_inst_i_6_n_0\,
      O => ALU_OUT_OBUF(5)
    );
\ALU_OUT_OBUF[5]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABABFAAAA"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_12_n_0\,
      I1 => \ALU_OUT_OBUF[7]_inst_i_22_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => \ALU_OUT_OBUF[5]_inst_i_15_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I5 => D2_IBUF(0),
      O => \ALU_OUT_OBUF[5]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => D2_IBUF(2),
      I2 => D2_IBUF(4),
      I3 => D2_IBUF(3),
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_OBUF[7]_inst_i_31_n_0\,
      O => \ALU_OUT_OBUF[5]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(9),
      I1 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I2 => D1_IBUF(13),
      I3 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I4 => D1_IBUF(5),
      I5 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      O => \ALU_OUT_OBUF[5]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => \ALU_OUT_OBUF[8]_inst_i_10_n_7\,
      O => \ALU_OUT_OBUF[5]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => D1_IBUF(0),
      I3 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I5 => D1_IBUF(4),
      O => \ALU_OUT_OBUF[5]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_20_n_0\,
      I1 => \ALU_OUT_OBUF[3]_inst_i_27_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I3 => \ALU_OUT_OBUF[5]_inst_i_16_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I5 => \ALU_OUT_OBUF[5]_inst_i_17_n_0\,
      O => \ALU_OUT_OBUF[5]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4540757F"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => SHIFT_LEFT2(4),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(4),
      I4 => D1_IBUF(13),
      O => \ALU_OUT_OBUF[5]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4540757F"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => SHIFT_LEFT2(4),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(4),
      I4 => D1_IBUF(5),
      O => \ALU_OUT_OBUF[5]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OUT_Internal0_n_100,
      I2 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[5]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBAAABBBAB"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => \ALU_OUT_OBUF[5]_inst_i_7_n_0\,
      I2 => \ALU_OUT_OBUF[5]_inst_i_8_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[6]_inst_i_7_n_0\,
      I5 => \ALU_OUT_OBUF[6]_inst_i_8_n_0\,
      O => \ALU_OUT_OBUF[5]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0D0000000D0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_11_n_0\,
      I1 => \ALU_OUT_OBUF[5]_inst_i_9_n_0\,
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_OBUF[6]_inst_i_11_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_12_n_0\,
      I5 => \ALU_OUT_OBUF[5]_inst_i_10_n_0\,
      O => \ALU_OUT_OBUF[5]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => data1(5),
      I3 => ALU_OPP_IBUF(0),
      I4 => data0(5),
      O => \ALU_OUT_OBUF[5]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"855D7AA200000000"
    )
        port map (
      I0 => D1_IBUF(5),
      I1 => ALU_OPP_IBUF(0),
      I2 => D2_IBUF(5),
      I3 => ALU_OPP_IBUF(1),
      I4 => ALU_OPP_IBUF(2),
      I5 => ALU_OPP_IBUF(3),
      O => \ALU_OUT_OBUF[5]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \ALU_OUT_OBUF[6]_inst_i_14_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[5]_inst_i_11_n_0\,
      I3 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[5]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_18_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[5]_inst_i_12_n_0\,
      O => \ALU_OUT_OBUF[5]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555001055555010"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I1 => \ALU_OUT_OBUF[6]_inst_i_16_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[5]_inst_i_13_n_0\,
      I5 => \ALU_OUT_OBUF[5]_inst_i_14_n_0\,
      O => \ALU_OUT_OBUF[5]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(6),
      O => ALU_OUT(6)
    );
\ALU_OUT_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55555100"
    )
        port map (
      I0 => \ALU_OUT_OBUF[6]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[6]_inst_i_3_n_0\,
      I2 => \ALU_OUT_OBUF[6]_inst_i_4_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => \ALU_OUT_OBUF[6]_inst_i_5_n_0\,
      I5 => \ALU_OUT_OBUF[6]_inst_i_6_n_0\,
      O => ALU_OUT_OBUF(6)
    );
\ALU_OUT_OBUF[6]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555001055555010"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I1 => \ALU_OUT_OBUF[7]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[6]_inst_i_15_n_0\,
      I5 => \ALU_OUT_OBUF[6]_inst_i_16_n_0\,
      O => \ALU_OUT_OBUF[6]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB8B888B888B88"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_21_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[6]_inst_i_17_n_0\,
      I3 => \ALU_OUT_OBUF[6]_inst_i_18_n_0\,
      I4 => \ALU_OUT_OBUF[6]_inst_i_19_n_0\,
      I5 => \ALU_OUT_OBUF[7]_inst_i_20_n_0\,
      O => \ALU_OUT_OBUF[6]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFBFFAAAAAAAA"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_12_n_0\,
      I1 => \ALU_OUT_OBUF[7]_inst_i_20_n_0\,
      I2 => \ALU_OUT_OBUF[7]_inst_i_17_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I4 => \ALU_OUT_OBUF[7]_inst_i_22_n_0\,
      I5 => \ALU_OUT_OBUF[12]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[6]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF444F4FFF777F7"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I2 => D2_IBUF(4),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D1_IBUF(6),
      O => \ALU_OUT_OBUF[6]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010FFFF00100000"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(3),
      I3 => D2_IBUF(4),
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_OBUF[8]_inst_i_28_n_0\,
      O => \ALU_OUT_OBUF[6]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => \ALU_OUT_OBUF[8]_inst_i_10_n_6\,
      O => \ALU_OUT_OBUF[6]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => D1_IBUF(1),
      I3 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I5 => D1_IBUF(5),
      O => \ALU_OUT_OBUF[6]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFAEAAAE"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I1 => D1_IBUF(6),
      I2 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I4 => D1_IBUF(14),
      O => \ALU_OUT_OBUF[6]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D2_IBUF(4),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(4),
      O => \ALU_OUT_OBUF[6]_inst_i_18_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E200E2E2"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(2),
      I3 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I4 => D1_IBUF(10),
      O => \ALU_OUT_OBUF[6]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OUT_Internal0_n_99,
      I2 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[6]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFBAAAAAAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => \ALU_OUT_OBUF[6]_inst_i_7_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[7]_inst_i_9_n_0\,
      I4 => \ALU_OUT_OBUF[6]_inst_i_8_n_0\,
      I5 => \ALU_OUT_OBUF[6]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[6]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0D0000000D0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_11_n_0\,
      I1 => \ALU_OUT_OBUF[6]_inst_i_10_n_0\,
      I2 => ALU_OPP_IBUF(0),
      I3 => \ALU_OUT_OBUF[6]_inst_i_11_n_0\,
      I4 => \ALU_OUT_OBUF[12]_inst_i_8_n_0\,
      I5 => \ALU_OUT_OBUF[6]_inst_i_12_n_0\,
      O => \ALU_OUT_OBUF[6]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => data1(6),
      I3 => ALU_OPP_IBUF(0),
      I4 => data0(6),
      O => \ALU_OUT_OBUF[6]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"855D7AA200000000"
    )
        port map (
      I0 => D1_IBUF(6),
      I1 => ALU_OPP_IBUF(0),
      I2 => D2_IBUF(6),
      I3 => ALU_OPP_IBUF(1),
      I4 => ALU_OPP_IBUF(2),
      I5 => ALU_OPP_IBUF(3),
      O => \ALU_OUT_OBUF[6]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888BB888B8B8B8B"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_16_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[6]_inst_i_13_n_0\,
      I3 => D1_IBUF(10),
      I4 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      O => \ALU_OUT_OBUF[6]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[6]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF1D"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_15_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[6]_inst_i_14_n_0\,
      I3 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[6]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(7),
      O => ALU_OUT(7)
    );
\ALU_OUT_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55551011"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[7]_inst_i_3_n_0\,
      I2 => \ALU_OUT_OBUF[7]_inst_i_4_n_0\,
      I3 => ALU_OPP_IBUF(0),
      I4 => \ALU_OUT_OBUF[7]_inst_i_5_n_0\,
      I5 => \ALU_OUT_OBUF[7]_inst_i_6_n_0\,
      O => ALU_OUT_OBUF(7)
    );
\ALU_OUT_OBUF[7]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A3F3F3F2A003F3F"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_19_n_0\,
      I1 => D1_IBUF(0),
      I2 => \ALU_OUT_OBUF[8]_inst_i_10_n_5\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I5 => \ALU_OUT_OBUF[8]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFBFFAAAAAAAA"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_12_n_0\,
      I1 => \ALU_OUT_OBUF[7]_inst_i_20_n_0\,
      I2 => \ALU_OUT_OBUF[10]_inst_i_15_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I4 => \ALU_OUT_OBUF[7]_inst_i_21_n_0\,
      I5 => \ALU_OUT_OBUF[12]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07FF0700"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I1 => D1_IBUF(15),
      I2 => \ALU_OUT_OBUF[7]_inst_i_17_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I4 => \ALU_OUT_OBUF[7]_inst_i_22_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[3]_inst_i_7_n_0\,
      CO(3) => \ALU_OUT_OBUF[7]_inst_i_13_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[7]_inst_i_13_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => D1_IBUF(7 downto 4),
      O(3 downto 0) => data1(7 downto 4),
      S(3) => \ALU_OUT_OBUF[7]_inst_i_23_n_0\,
      S(2) => \ALU_OUT_OBUF[7]_inst_i_24_n_0\,
      S(1) => \ALU_OUT_OBUF[7]_inst_i_25_n_0\,
      S(0) => \ALU_OUT_OBUF[7]_inst_i_26_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[3]_inst_i_8_n_0\,
      CO(3) => \ALU_OUT_OBUF[7]_inst_i_14_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[7]_inst_i_14_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => D1_IBUF(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \ALU_OUT_OBUF[7]_inst_i_27_n_0\,
      S(2) => \ALU_OUT_OBUF[7]_inst_i_28_n_0\,
      S(1) => \ALU_OUT_OBUF[7]_inst_i_29_n_0\,
      S(0) => \ALU_OUT_OBUF[7]_inst_i_30_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_31_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[8]_inst_i_27_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003000BB00300088"
    )
        port map (
      I0 => D1_IBUF(12),
      I1 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I2 => D1_IBUF(15),
      I3 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I5 => D1_IBUF(8),
      O => \ALU_OUT_OBUF[7]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I2 => D1_IBUF(9),
      I3 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I4 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003300B8000000B8"
    )
        port map (
      I0 => D1_IBUF(11),
      I1 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I2 => D1_IBUF(7),
      I3 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I5 => D1_IBUF(15),
      O => \ALU_OUT_OBUF[7]_inst_i_18_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_32_n_0\,
      I1 => \ALU_OUT_OBUF[7]_inst_i_33_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => \ALU_OUT_OBUF[7]_inst_i_34_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I5 => \ALU_OUT_OBUF[7]_inst_i_35_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OUT_Internal0_n_98,
      I2 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[7]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55557575555F757F"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => SHIFT_LEFT2(3),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[7]_inst_i_20_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44477747"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I2 => D1_IBUF(8),
      I3 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I4 => D1_IBUF(12),
      O => \ALU_OUT_OBUF[7]_inst_i_21_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44477747"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I2 => D1_IBUF(7),
      I3 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I4 => D1_IBUF(11),
      O => \ALU_OUT_OBUF[7]_inst_i_22_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(7),
      I1 => D1_IBUF(7),
      O => \ALU_OUT_OBUF[7]_inst_i_23_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(6),
      I1 => D1_IBUF(6),
      O => \ALU_OUT_OBUF[7]_inst_i_24_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(5),
      I1 => D1_IBUF(5),
      O => \ALU_OUT_OBUF[7]_inst_i_25_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => D1_IBUF(4),
      O => \ALU_OUT_OBUF[7]_inst_i_26_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(7),
      I1 => D2_IBUF(7),
      O => \ALU_OUT_OBUF[7]_inst_i_27_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(6),
      I1 => D2_IBUF(6),
      O => \ALU_OUT_OBUF[7]_inst_i_28_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(5),
      I1 => D2_IBUF(5),
      O => \ALU_OUT_OBUF[7]_inst_i_29_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55551015FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_7_n_0\,
      I1 => \ALU_OUT_OBUF[7]_inst_i_8_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[7]_inst_i_9_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_9_n_0\,
      I5 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[7]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[7]_inst_i_30_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D2_IBUF(2),
      I2 => D2_IBUF(4),
      I3 => D1_IBUF(4),
      I4 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[7]_inst_i_31_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(4),
      I5 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[7]_inst_i_32_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(4),
      I5 => D1_IBUF(4),
      O => \ALU_OUT_OBUF[7]_inst_i_33_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(4),
      I5 => D1_IBUF(2),
      O => \ALU_OUT_OBUF[7]_inst_i_34_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(4),
      I5 => D1_IBUF(6),
      O => \ALU_OUT_OBUF[7]_inst_i_35_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5700570057005757"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_11_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I2 => \ALU_OUT_OBUF[7]_inst_i_10_n_0\,
      I3 => \ALU_OUT_OBUF[7]_inst_i_11_n_0\,
      I4 => \ALU_OUT_OBUF[12]_inst_i_8_n_0\,
      I5 => \ALU_OUT_OBUF[7]_inst_i_12_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => data1(7),
      I3 => ALU_OPP_IBUF(0),
      I4 => data0(7),
      O => \ALU_OUT_OBUF[7]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"855D7AA200000000"
    )
        port map (
      I0 => D1_IBUF(7),
      I1 => ALU_OPP_IBUF(0),
      I2 => D2_IBUF(7),
      I3 => ALU_OPP_IBUF(1),
      I4 => ALU_OPP_IBUF(2),
      I5 => ALU_OPP_IBUF(3),
      O => \ALU_OUT_OBUF[7]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      I2 => \ALU_OUT_OBUF[7]_inst_i_15_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[8]_inst_i_13_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_15_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[7]_inst_i_16_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_17_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[7]_inst_i_18_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(8),
      O => ALU_OUT(8)
    );
\ALU_OUT_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444744474447477"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => ALU_OUT_Internal0_n_97,
      I3 => ALU_OPP_IBUF(2),
      I4 => \ALU_OUT_OBUF[8]_inst_i_3_n_0\,
      I5 => \ALU_OUT_OBUF[8]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(8)
    );
\ALU_OUT_OBUF[8]_inst_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[4]_inst_i_13_n_0\,
      CO(3) => \ALU_OUT_OBUF[8]_inst_i_10_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[8]_inst_i_10_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \ALU_OUT_OBUF[8]_inst_i_18_n_0\,
      DI(2 downto 0) => SHIFT_RIGHT4(7 downto 5),
      O(3) => \ALU_OUT_OBUF[8]_inst_i_10_n_4\,
      O(2) => \ALU_OUT_OBUF[8]_inst_i_10_n_5\,
      O(1) => \ALU_OUT_OBUF[8]_inst_i_10_n_6\,
      O(0) => \ALU_OUT_OBUF[8]_inst_i_10_n_7\,
      S(3) => \ALU_OUT_OBUF[8]_inst_i_22_n_0\,
      S(2) => \ALU_OUT_OBUF[8]_inst_i_23_n_0\,
      S(1) => \ALU_OUT_OBUF[8]_inst_i_24_n_0\,
      S(0) => \ALU_OUT_OBUF[8]_inst_i_25_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_15_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[7]_inst_i_16_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[8]_inst_i_26_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_27_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[10]_inst_i_19_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_28_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[10]_inst_i_17_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(4),
      I5 => D1_IBUF(1),
      O => \ALU_OUT_OBUF[8]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(4),
      I5 => D1_IBUF(5),
      O => \ALU_OUT_OBUF[8]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(4),
      I5 => D1_IBUF(3),
      O => \ALU_OUT_OBUF[8]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(4),
      I5 => D1_IBUF(7),
      O => \ALU_OUT_OBUF[8]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000202A"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      I1 => SHIFT_LEFT2(2),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(2),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_18_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I1 => D2_IBUF(0),
      I2 => SHIFT_LEFT2(2),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(2),
      I5 => \ALU_OUT_OBUF[8]_inst_i_29_n_0\,
      O => SHIFT_RIGHT4(7)
    );
\ALU_OUT_OBUF[8]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F889077"
    )
        port map (
      I0 => ALU_OPP_IBUF(1),
      I1 => D2_IBUF(8),
      I2 => ALU_OPP_IBUF(0),
      I3 => D1_IBUF(8),
      I4 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[8]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000B800"
    )
        port map (
      I0 => SHIFT_LEFT2(2),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(2),
      I3 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[8]_inst_i_29_n_0\,
      O => SHIFT_RIGHT4(6)
    );
\ALU_OUT_OBUF[8]_inst_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000B80000"
    )
        port map (
      I0 => SHIFT_LEFT2(2),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(2),
      I3 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[8]_inst_i_29_n_0\,
      O => SHIFT_RIGHT4(5)
    );
\ALU_OUT_OBUF[8]_inst_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEFEFFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I1 => D2_IBUF(0),
      I2 => D2_IBUF(2),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(2),
      I5 => \ALU_OUT_OBUF[14]_inst_i_90_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_22_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_29_n_0\,
      I1 => D2_IBUF(2),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(2),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_23_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFFFFFFFEFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_29_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => D2_IBUF(2),
      I4 => D2_IBUF(15),
      I5 => SHIFT_LEFT2(2),
      O => \ALU_OUT_OBUF[8]_inst_i_24_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFFFFFFFBFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_29_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => D2_IBUF(2),
      I4 => D2_IBUF(15),
      I5 => SHIFT_LEFT2(2),
      O => \ALU_OUT_OBUF[8]_inst_i_25_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_30_n_0\,
      I1 => \ALU_OUT_OBUF[8]_inst_i_31_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_63_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I5 => \ALU_OUT_OBUF[3]_inst_i_27_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_26_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => D2_IBUF(2),
      I2 => D2_IBUF(3),
      I3 => D1_IBUF(6),
      I4 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[8]_inst_i_27_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D2_IBUF(2),
      I2 => D2_IBUF(3),
      I3 => D1_IBUF(5),
      I4 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[8]_inst_i_28_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2_IBUF(15),
      I2 => D2_IBUF(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(4),
      I5 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_29_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEA0000"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_5_n_0\,
      I1 => \ALU_OUT_OBUF[13]_inst_i_11_n_0\,
      I2 => \ALU_OUT_OBUF[8]_inst_i_6_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I4 => ALU_OPP_IBUF(1),
      I5 => \ALU_OUT_OBUF[8]_inst_i_7_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => SHIFT_LEFT2(3),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[8]_inst_i_30_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => D1_IBUF(11),
      I1 => SHIFT_LEFT2(3),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[8]_inst_i_31_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0151"
    )
        port map (
      I0 => ALU_OPP_IBUF(1),
      I1 => data0(8),
      I2 => ALU_OPP_IBUF(0),
      I3 => data1(8),
      O => \ALU_OUT_OBUF[8]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45554055FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_12_n_0\,
      I1 => \ALU_OUT_OBUF[9]_inst_i_11_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I4 => \ALU_OUT_OBUF[8]_inst_i_8_n_0\,
      I5 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[8]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FB3BFB3BFB3B"
    )
        port map (
      I0 => \ALU_OUT_OBUF[9]_inst_i_12_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[8]_inst_i_9_n_0\,
      I4 => D1_IBUF(0),
      I5 => \ALU_OUT_OBUF[8]_inst_i_10_n_4\,
      O => \ALU_OUT_OBUF[8]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444455544454"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => \ALU_OUT_OBUF[8]_inst_i_11_n_0\,
      I2 => \ALU_OUT_OBUF[8]_inst_i_12_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[8]_inst_i_13_n_0\,
      I5 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040407070704070"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_15_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[7]_inst_i_20_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_64_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_66_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_14_n_0\,
      I1 => \ALU_OUT_OBUF[8]_inst_i_15_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => \ALU_OUT_OBUF[8]_inst_i_16_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I5 => \ALU_OUT_OBUF[8]_inst_i_17_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(9),
      O => ALU_OUT(9)
    );
\ALU_OUT_OBUF[9]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_17_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[12]_inst_i_18_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[8]_inst_i_12_n_0\,
      I5 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[9]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010F0B0001FFFBF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I1 => D1_IBUF(11),
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I4 => D1_IBUF(15),
      I5 => \ALU_OUT_OBUF[7]_inst_i_17_n_0\,
      O => \ALU_OUT_OBUF[9]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F7FFFFF4F70000"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I3 => D1_IBUF(6),
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => \ALU_OUT_OBUF[11]_inst_i_21_n_0\,
      O => \ALU_OUT_OBUF[9]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF470047004700"
    )
        port map (
      I0 => \ALU_OUT_OBUF[9]_inst_i_15_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => \ALU_OUT_OBUF[12]_inst_i_14_n_0\,
      I3 => \ALU_OUT_OBUF[3]_inst_i_10_n_0\,
      I4 => \ALU_OUT_OBUF[12]_inst_i_13_n_7\,
      I5 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[9]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABF8A80"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => SHIFT_LEFT2(2),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(2),
      I4 => D1_IBUF(11),
      I5 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      O => \ALU_OUT_OBUF[9]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4540FFFF757F"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => SHIFT_LEFT2(2),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(2),
      I4 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I5 => D1_IBUF(7),
      O => \ALU_OUT_OBUF[9]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEFEE"
    )
        port map (
      I0 => \ALU_OUT_OBUF[9]_inst_i_3_n_0\,
      I1 => \ALU_OUT_OBUF[9]_inst_i_4_n_0\,
      I2 => \ALU_OUT_OBUF[9]_inst_i_5_n_0\,
      I3 => \ALU_OUT_OBUF[9]_inst_i_6_n_0\,
      I4 => \ALU_OUT_OBUF[9]_inst_i_7_n_0\,
      I5 => \ALU_OUT_OBUF[9]_inst_i_8_n_0\,
      O => ALU_OUT_OBUF(9)
    );
\ALU_OUT_OBUF[9]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OUT_Internal0_n_96,
      I2 => ALU_OPP_IBUF(2),
      O => \ALU_OUT_OBUF[9]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF80FFFFFFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I2 => \ALU_OUT_OBUF[9]_inst_i_9_n_0\,
      I3 => \ALU_OUT_OBUF[9]_inst_i_10_n_0\,
      I4 => ALU_OPP_IBUF(0),
      I5 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[9]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55450545FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_12_n_0\,
      I1 => \ALU_OUT_OBUF[9]_inst_i_11_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[10]_inst_i_14_n_0\,
      I5 => ALU_OPP_IBUF(0),
      O => \ALU_OUT_OBUF[9]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F1F1FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[9]_inst_i_12_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_12_n_0\,
      I2 => \ALU_OUT_OBUF[9]_inst_i_13_n_0\,
      I3 => D1_IBUF(0),
      I4 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I5 => D2_IBUF(15),
      O => \ALU_OUT_OBUF[9]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => data1(9),
      I2 => ALU_OPP_IBUF(0),
      I3 => data0(9),
      I4 => ALU_OPP_IBUF(1),
      O => \ALU_OUT_OBUF[9]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7AA2855D00000000"
    )
        port map (
      I0 => D1_IBUF(9),
      I1 => ALU_OPP_IBUF(0),
      I2 => D2_IBUF(9),
      I3 => ALU_OPP_IBUF(1),
      I4 => ALU_OPP_IBUF(2),
      I5 => ALU_OPP_IBUF(3),
      O => \ALU_OUT_OBUF[9]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_16_n_0\,
      I1 => \ALU_OUT_OBUF[10]_inst_i_15_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[9]_inst_i_14_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I5 => \ALU_OUT_OBUF[7]_inst_i_17_n_0\,
      O => \ALU_OUT_OBUF[9]_inst_i_9_n_0\
    );
BIGGER_ZERO_FLAG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => BIGGER_ZERO_FLAG_OBUF,
      O => BIGGER_ZERO_FLAG
    );
BIGGER_ZERO_FLAG_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555554"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_OBUF,
      I1 => ZERO_FLAG_OBUF_inst_i_2_n_0,
      I2 => ZERO_FLAG_OBUF_inst_i_3_n_0,
      I3 => ZERO_FLAG_OBUF_inst_i_4_n_0,
      I4 => ZERO_FLAG_OBUF_inst_i_5_n_0,
      I5 => ZERO_FLAG_OBUF_inst_i_6_n_0,
      O => BIGGER_ZERO_FLAG_OBUF
    );
CARRY_FLAG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CARRY_FLAG_OBUF,
      O => CARRY_FLAG
    );
CARRY_FLAG_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEEFE"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_2_n_0,
      I1 => CARRY_FLAG_OBUF_inst_i_3_n_0,
      I2 => D2_IBUF(15),
      I3 => CARRY_FLAG_OBUF_inst_i_4_n_0,
      I4 => CARRY_FLAG_OBUF_inst_i_5_n_0,
      I5 => CARRY_FLAG_OBUF_inst_i_6_n_0,
      O => CARRY_FLAG_OBUF
    );
CARRY_FLAG_OBUF_inst_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_29_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => CARRY_FLAG_OBUF_inst_i_15_n_0,
      I3 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I4 => CARRY_FLAG_OBUF_inst_i_16_n_0,
      O => CARRY_FLAG_OBUF_inst_i_10_n_0
    );
CARRY_FLAG_OBUF_inst_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_31_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => CARRY_FLAG_OBUF_inst_i_17_n_0,
      I3 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      I4 => CARRY_FLAG_OBUF_inst_i_18_n_0,
      O => CARRY_FLAG_OBUF_inst_i_11_n_0
    );
CARRY_FLAG_OBUF_inst_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => ALU_OPP_IBUF(0),
      I1 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      I2 => D2_IBUF(0),
      I3 => CARRY_FLAG_OBUF_inst_i_19_n_0,
      O => CARRY_FLAG_OBUF_inst_i_12_n_0
    );
CARRY_FLAG_OBUF_inst_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EE0E"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_20_n_0,
      I1 => CARRY_FLAG_OBUF_inst_i_21_n_0,
      I2 => D2_IBUF(1),
      I3 => CARRY_FLAG_OBUF_inst_i_22_n_0,
      I4 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      O => CARRY_FLAG_OBUF_inst_i_13_n_0
    );
CARRY_FLAG_OBUF_inst_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_9_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I2 => D1_IBUF(15),
      I3 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I4 => \ALU_OUT_OBUF[14]_inst_i_21_n_0\,
      O => CARRY_FLAG_OBUF_inst_i_14_n_0
    );
CARRY_FLAG_OBUF_inst_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF444F4FFF777F7"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I2 => D2_IBUF(4),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D1_IBUF(11),
      O => CARRY_FLAG_OBUF_inst_i_15_n_0
    );
CARRY_FLAG_OBUF_inst_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DFC0CFD5DFFFF"
    )
        port map (
      I0 => D1_IBUF(7),
      I1 => D2_IBUF(4),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(4),
      I4 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I5 => D1_IBUF(15),
      O => CARRY_FLAG_OBUF_inst_i_16_n_0
    );
CARRY_FLAG_OBUF_inst_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DFC0CFD5DFFFF"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => D2_IBUF(4),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(4),
      I4 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I5 => D1_IBUF(12),
      O => CARRY_FLAG_OBUF_inst_i_17_n_0
    );
CARRY_FLAG_OBUF_inst_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F053FF53"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D1_IBUF(15),
      I2 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I3 => \ALU_OUT_OBUF[14]_inst_i_54_n_0\,
      I4 => D1_IBUF(8),
      O => CARRY_FLAG_OBUF_inst_i_18_n_0
    );
CARRY_FLAG_OBUF_inst_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_16_n_0\,
      I1 => D2_IBUF(1),
      I2 => CARRY_FLAG_OBUF_inst_i_23_n_0,
      O => CARRY_FLAG_OBUF_inst_i_19_n_0
    );
CARRY_FLAG_OBUF_inst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => CARRY_FLAG_OBUF_inst_i_7_n_3,
      I2 => ALU_OPP_IBUF(0),
      I3 => CARRY_FLAG_OBUF_inst_i_8_n_3,
      I4 => ALU_OPP_IBUF(1),
      O => CARRY_FLAG_OBUF_inst_i_2_n_0
    );
CARRY_FLAG_OBUF_inst_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA3A0A0A0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_29_n_0\,
      I1 => D2_IBUF(3),
      I2 => D2_IBUF(2),
      I3 => D1_IBUF(0),
      I4 => D2_IBUF(4),
      I5 => D2_IBUF(1),
      O => CARRY_FLAG_OBUF_inst_i_20_n_0
    );
CARRY_FLAG_OBUF_inst_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005404"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => D1_IBUF(15),
      I2 => D2_IBUF(3),
      I3 => D1_IBUF(8),
      I4 => D2_IBUF(2),
      O => CARRY_FLAG_OBUF_inst_i_21_n_0
    );
CARRY_FLAG_OBUF_inst_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => D2_IBUF(3),
      I2 => D1_IBUF(6),
      I3 => D2_IBUF(2),
      I4 => CARRY_FLAG_OBUF_inst_i_24_n_0,
      I5 => D2_IBUF(4),
      O => CARRY_FLAG_OBUF_inst_i_22_n_0
    );
CARRY_FLAG_OBUF_inst_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BB888888B888B8"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_25_n_0,
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(15),
      I3 => D2_IBUF(4),
      I4 => D1_IBUF(7),
      I5 => D2_IBUF(3),
      O => CARRY_FLAG_OBUF_inst_i_23_n_0
    );
CARRY_FLAG_OBUF_inst_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => D2_IBUF(3),
      I2 => D1_IBUF(10),
      O => CARRY_FLAG_OBUF_inst_i_24_n_0
    );
CARRY_FLAG_OBUF_inst_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => D1_IBUF(11),
      I1 => D2_IBUF(3),
      I2 => D1_IBUF(3),
      I3 => D2_IBUF(4),
      O => CARRY_FLAG_OBUF_inst_i_25_n_0
    );
CARRY_FLAG_OBUF_inst_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => D1_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
      O => CARRY_FLAG_OBUF_inst_i_3_n_0
    );
CARRY_FLAG_OBUF_inst_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A80AAAAAAAA"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_9_n_0,
      I1 => CARRY_FLAG_OBUF_inst_i_10_n_0,
      I2 => D2_IBUF(0),
      I3 => CARRY_FLAG_OBUF_inst_i_11_n_0,
      I4 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I5 => \ALU_OUT_OBUF[14]_inst_i_15_n_0\,
      O => CARRY_FLAG_OBUF_inst_i_4_n_0
    );
CARRY_FLAG_OBUF_inst_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4544FFFF"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_12_n_0,
      I1 => D2_IBUF(0),
      I2 => CARRY_FLAG_OBUF_inst_i_13_n_0,
      I3 => CARRY_FLAG_OBUF_inst_i_14_n_0,
      I4 => ALU_OPP_IBUF(1),
      O => CARRY_FLAG_OBUF_inst_i_5_n_0
    );
CARRY_FLAG_OBUF_inst_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OUT_Internal0_n_89,
      I2 => ALU_OPP_IBUF(2),
      O => CARRY_FLAG_OBUF_inst_i_6_n_0
    );
CARRY_FLAG_OBUF_inst_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[14]_inst_i_17_n_0\,
      CO(3 downto 1) => NLW_CARRY_FLAG_OBUF_inst_i_7_CO_UNCONNECTED(3 downto 1),
      CO(0) => CARRY_FLAG_OBUF_inst_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY_FLAG_OBUF_inst_i_7_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
CARRY_FLAG_OBUF_inst_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[14]_inst_i_18_n_0\,
      CO(3 downto 1) => NLW_CARRY_FLAG_OBUF_inst_i_8_CO_UNCONNECTED(3 downto 1),
      CO(0) => CARRY_FLAG_OBUF_inst_i_8_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY_FLAG_OBUF_inst_i_8_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
CARRY_FLAG_OBUF_inst_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_32_n_4\,
      I2 => D1_IBUF(0),
      O => CARRY_FLAG_OBUF_inst_i_9_n_0
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
NOT_ZERO_FLAG_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ZERO_FLAG_OBUF_inst_i_6_n_0,
      I1 => ZERO_FLAG_OBUF_inst_i_5_n_0,
      I2 => ZERO_FLAG_OBUF_inst_i_4_n_0,
      I3 => ZERO_FLAG_OBUF_inst_i_3_n_0,
      I4 => ZERO_FLAG_OBUF_inst_i_2_n_0,
      I5 => SMALLER_ZERO_FLAG_OBUF,
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
ZERO_FLAG_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_OBUF,
      I1 => ZERO_FLAG_OBUF_inst_i_2_n_0,
      I2 => ZERO_FLAG_OBUF_inst_i_3_n_0,
      I3 => ZERO_FLAG_OBUF_inst_i_4_n_0,
      I4 => ZERO_FLAG_OBUF_inst_i_5_n_0,
      I5 => ZERO_FLAG_OBUF_inst_i_6_n_0,
      O => ZERO_FLAG_OBUF
    );
ZERO_FLAG_OBUF_inst_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444440000CCC0"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D2_IBUF(15),
      I2 => \ALU_OUT_OBUF[9]_inst_i_12_n_0\,
      I3 => \ALU_OUT_OBUF[12]_inst_i_8_n_0\,
      I4 => ZERO_FLAG_OBUF_inst_i_13_n_0,
      I5 => \ALU_OUT_OBUF[14]_inst_i_14_n_3\,
      O => ZERO_FLAG_OBUF_inst_i_10_n_0
    );
ZERO_FLAG_OBUF_inst_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF1D"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_12_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[8]_inst_i_13_n_0\,
      I3 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      O => ZERO_FLAG_OBUF_inst_i_11_n_0
    );
ZERO_FLAG_OBUF_inst_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_9_n_0\,
      I1 => \ALU_OUT_OBUF[9]_inst_i_14_n_0\,
      I2 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I3 => \ALU_OUT_OBUF[7]_inst_i_17_n_0\,
      I4 => D2_IBUF(0),
      O => ZERO_FLAG_OBUF_inst_i_12_n_0
    );
ZERO_FLAG_OBUF_inst_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888FFF88888888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_10_n_4\,
      I1 => D1_IBUF(0),
      I2 => ZERO_FLAG_OBUF_inst_i_14_n_0,
      I3 => \ALU_OUT_OBUF[14]_inst_i_19_n_0\,
      I4 => \ALU_OUT_OBUF[9]_inst_i_15_n_0\,
      I5 => \ALU_OUT_OBUF[12]_inst_i_15_n_0\,
      O => ZERO_FLAG_OBUF_inst_i_13_n_0
    );
ZERO_FLAG_OBUF_inst_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4540FFFF757F"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => SHIFT_LEFT2(2),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(2),
      I4 => \ALU_OUT_OBUF[14]_inst_i_20_n_0\,
      I5 => D1_IBUF(5),
      O => ZERO_FLAG_OBUF_inst_i_14_n_0
    );
ZERO_FLAG_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEEEFFF"
    )
        port map (
      I0 => ALU_OUT_OBUF(10),
      I1 => ALU_OUT_OBUF(11),
      I2 => \ALU_OUT_OBUF[8]_inst_i_2_n_0\,
      I3 => ALU_OPP_IBUF(3),
      I4 => ZERO_FLAG_OBUF_inst_i_7_n_0,
      I5 => ALU_OUT_OBUF(9),
      O => ZERO_FLAG_OBUF_inst_i_2_n_0
    );
ZERO_FLAG_OBUF_inst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALU_OUT_OBUF(12),
      I1 => ALU_OUT_OBUF(13),
      I2 => ALU_OUT_OBUF(14),
      I3 => CARRY_FLAG_OBUF,
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
ZERO_FLAG_OBUF_inst_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ALU_OUT_OBUF(7),
      I1 => ALU_OUT_OBUF(6),
      O => ZERO_FLAG_OBUF_inst_i_5_n_0
    );
ZERO_FLAG_OBUF_inst_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBABAA"
    )
        port map (
      I0 => ALU_OUT_OBUF(5),
      I1 => \ALU_OUT_OBUF[4]_inst_i_4_n_0\,
      I2 => \ALU_OUT_OBUF[4]_inst_i_3_n_0\,
      I3 => \ALU_OUT_OBUF[4]_inst_i_2_n_0\,
      I4 => ZERO_FLAG_OBUF_inst_i_8_n_0,
      O => ZERO_FLAG_OBUF_inst_i_6_n_0
    );
ZERO_FLAG_OBUF_inst_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777747474744"
    )
        port map (
      I0 => ALU_OUT_Internal0_n_97,
      I1 => ALU_OPP_IBUF(2),
      I2 => ZERO_FLAG_OBUF_inst_i_9_n_0,
      I3 => ZERO_FLAG_OBUF_inst_i_10_n_0,
      I4 => \ALU_OUT_OBUF[8]_inst_i_5_n_0\,
      I5 => \ALU_OUT_OBUF[8]_inst_i_4_n_0\,
      O => ZERO_FLAG_OBUF_inst_i_7_n_0
    );
ZERO_FLAG_OBUF_inst_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ALU_OPP_IBUF(3),
      I1 => ALU_OUT_Internal0_n_101,
      I2 => ALU_OPP_IBUF(2),
      O => ZERO_FLAG_OBUF_inst_i_8_n_0
    );
ZERO_FLAG_OBUF_inst_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007775FFFFFFFF"
    )
        port map (
      I0 => ZERO_FLAG_OBUF_inst_i_11_n_0,
      I1 => ZERO_FLAG_OBUF_inst_i_12_n_0,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[7]_inst_i_8_n_0\,
      I4 => ALU_OPP_IBUF(0),
      I5 => ALU_OPP_IBUF(1),
      O => ZERO_FLAG_OBUF_inst_i_9_n_0
    );
end STRUCTURE;
