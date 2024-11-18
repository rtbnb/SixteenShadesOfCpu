-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Nov 10 19:24:02 2024
-- Host        : DESKTOP-NFG9C79 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Code/VHDL/SixteenShadesOfCpu/ALU_Testing/ALU_Testing.sim/sim_1/impl/func/xsim/ALU_TB_ADDING_func_impl.vhd
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
  attribute ECO_CHECKSUM of ALU : entity is "63cdfff5";
end ALU;

architecture STRUCTURE of ALU is
  signal ALU_OPP_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ALU_OUT_OBUF : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \ALU_OUT_OBUF[0]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
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
  signal \ALU_OUT_OBUF[10]_inst_i_20_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_21_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_22_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_23_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[10]_inst_i_9_n_0\ : STD_LOGIC;
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
  signal \ALU_OUT_OBUF[11]_inst_i_23_n_4\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_23_n_5\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_23_n_6\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_23_n_7\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_24_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_25_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_26_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_27_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_28_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_29_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_30_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_31_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_32_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_33_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_34_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_35_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_36_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_37_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_38_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_39_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_9_n_4\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_9_n_5\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_9_n_6\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[11]_inst_i_9_n_7\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[12]_inst_i_3_n_0\ : STD_LOGIC;
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
  signal \ALU_OUT_OBUF[13]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[13]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[14]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_19_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_20_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_21_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_22_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_23_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_24_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_25_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_26_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_27_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_28_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_29_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_30_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[15]_inst_i_3_n_0\ : STD_LOGIC;
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
  signal \ALU_OUT_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[1]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_11_n_4\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_11_n_5\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_11_n_6\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_11_n_7\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_20_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_21_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_22_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_23_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_25_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_26_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_27_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_28_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_29_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_30_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_31_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_32_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_33_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_34_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_35_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_36_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_37_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_38_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_39_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_40_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_41_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_42_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
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
  signal \ALU_OUT_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[3]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[4]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
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
  signal \ALU_OUT_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
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
  signal \ALU_OUT_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[7]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[8]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT_OBUF[9]_inst_i_9_n_0\ : STD_LOGIC;
  signal BIGGER_ZERO_FLAG_OBUF : STD_LOGIC;
  signal BIGGER_ZERO_FLAG_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal BIGGER_ZERO_FLAG_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal BIGGER_ZERO_FLAG_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal BIGGER_ZERO_FLAG_OBUF_inst_i_5_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_10_n_3 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_11_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_12_n_4 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_12_n_5 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_12_n_6 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_12_n_7 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_13_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_14_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_15_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_16_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_17_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_18_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_23_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_24_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_25_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_26_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_27_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_28_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_29_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_30_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_31_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_32_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_33_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_34_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_35_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_36_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_37_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_38_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_39_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_40_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_41_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_42_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_43_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_44_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_45_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_46_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_47_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_48_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_49_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_50_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_51_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_52_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_53_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_54_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_55_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_56_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_57_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_58_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_59_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_60_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_61_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_62_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_63_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_64_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_65_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_66_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_67_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_68_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_69_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_71_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_72_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_73_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_8_n_0 : STD_LOGIC;
  signal CARRY_FLAG_OBUF_inst_i_9_n_0 : STD_LOGIC;
  signal D1_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal D2_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NOT_ZERO_FLAG_OBUF : STD_LOGIC;
  signal NOT_ZERO_FLAG_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal NOT_ZERO_FLAG_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal OVERFLOW_FLAG_OBUF : STD_LOGIC;
  signal RHO_FLAG_OBUF : STD_LOGIC;
  signal SHIFT_LEFT0 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal SHIFT_LEFT00_in : STD_LOGIC_VECTOR ( 16 to 16 );
  signal SHIFT_LEFT2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal SHIFT_RIGHT0 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal SHIFT_RIGHT4 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SMALLER_ZERO_FLAG_OBUF : STD_LOGIC;
  signal ZERO_FLAG_OBUF : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal ZERO_FLAG_OBUF_inst_i_5_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \data0__0\ : STD_LOGIC_VECTOR ( 16 to 16 );
  signal data1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \data1__0\ : STD_LOGIC_VECTOR ( 16 to 16 );
  signal data2 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal \NLW_ALU_OUT_OBUF[10]_inst_i_13_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[11]_inst_i_23_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[11]_inst_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[11]_inst_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[11]_inst_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[15]_inst_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[15]_inst_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[2]_inst_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[3]_inst_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[3]_inst_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[7]_inst_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_OBUF[7]_inst_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_10_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_10_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_12_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_15_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_15_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_23_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_23_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_34_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_38_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_39_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_39_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_5_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_6_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_CARRY_FLAG_OBUF_inst_i_6_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[0]_inst_i_14\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[0]_inst_i_15\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[0]_inst_i_8\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[10]_inst_i_12\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[10]_inst_i_16\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[10]_inst_i_6\ : label is "soft_lutpair9";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \ALU_OUT_OBUF[11]_inst_i_23\ : label is 35;
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[11]_inst_i_29\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[11]_inst_i_30\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[11]_inst_i_38\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[11]_inst_i_8\ : label is "soft_lutpair9";
  attribute ADDER_THRESHOLD of \ALU_OUT_OBUF[11]_inst_i_9\ : label is 35;
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[12]_inst_i_12\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[12]_inst_i_13\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[12]_inst_i_14\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[13]_inst_i_18\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[13]_inst_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[14]_inst_i_8\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[15]_inst_i_10\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[15]_inst_i_11\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[1]_inst_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[1]_inst_i_12\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[1]_inst_i_4\ : label is "soft_lutpair19";
  attribute ADDER_THRESHOLD of \ALU_OUT_OBUF[2]_inst_i_11\ : label is 35;
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[2]_inst_i_19\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[2]_inst_i_22\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[2]_inst_i_39\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[2]_inst_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[2]_inst_i_40\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[2]_inst_i_41\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[2]_inst_i_42\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[3]_inst_i_24\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[3]_inst_i_25\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[3]_inst_i_26\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[3]_inst_i_27\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[6]_inst_i_16\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[7]_inst_i_22\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[8]_inst_i_12\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[9]_inst_i_12\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALU_OUT_OBUF[9]_inst_i_15\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of BIGGER_ZERO_FLAG_OBUF_inst_i_2 : label is "soft_lutpair8";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of CARRY_FLAG_OBUF_inst_i_10 : label is 11;
  attribute ADDER_THRESHOLD of CARRY_FLAG_OBUF_inst_i_12 : label is 35;
  attribute SOFT_HLUTNM of CARRY_FLAG_OBUF_inst_i_16 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of CARRY_FLAG_OBUF_inst_i_2 : label is "soft_lutpair20";
  attribute COMPARATOR_THRESHOLD of CARRY_FLAG_OBUF_inst_i_23 : label is 11;
  attribute COMPARATOR_THRESHOLD of CARRY_FLAG_OBUF_inst_i_39 : label is 11;
  attribute SOFT_HLUTNM of CARRY_FLAG_OBUF_inst_i_70 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ZERO_FLAG_OBUF_inst_i_5 : label is "soft_lutpair8";
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
\ALU_OUT_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(0),
      O => ALU_OUT(0)
    );
\ALU_OUT_OBUF[0]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[0]_inst_i_3_n_0\,
      O => ALU_OUT_OBUF(0),
      S => ALU_OPP_IBUF(3)
    );
\ALU_OUT_OBUF[0]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[2]_inst_i_35_n_0\,
      I1 => \ALU_OUT_OBUF[2]_inst_i_36_n_0\,
      I2 => p_0_in(1),
      I3 => \ALU_OUT_OBUF[2]_inst_i_34_n_0\,
      I4 => p_0_in(2),
      I5 => \ALU_OUT_OBUF[0]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[0]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => D1_IBUF(0),
      I4 => p_0_in(4),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[0]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFAAFCFC"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2_IBUF(3),
      I2 => D2_IBUF(4),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(15),
      I5 => CARRY_FLAG_OBUF_inst_i_52_n_0,
      O => \ALU_OUT_OBUF[0]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCFAFFFAFC"
    )
        port map (
      I0 => SHIFT_LEFT2(2),
      I1 => D2_IBUF(2),
      I2 => D2_IBUF(0),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(1),
      I5 => SHIFT_LEFT2(1),
      O => \ALU_OUT_OBUF[0]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => D1_IBUF(8),
      I1 => p_0_in(3),
      I2 => D1_IBUF(15),
      I3 => p_0_in(4),
      I4 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[0]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1_IBUF(8),
      I1 => p_0_in(3),
      I2 => D1_IBUF(15),
      I3 => p_0_in(4),
      I4 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[0]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(0),
      I1 => data2(0),
      I2 => ALU_OPP_IBUF(1),
      I3 => data1(0),
      I4 => ALU_OPP_IBUF(0),
      I5 => data0(0),
      O => \ALU_OUT_OBUF[0]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(0),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[0]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(0),
      I1 => \ALU_OUT_OBUF[0]_inst_i_7_n_0\,
      O => data3(0),
      S => D2_IBUF(15)
    );
\ALU_OUT_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_8_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => \ALU_OUT_OBUF[0]_inst_i_9_n_0\,
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[1]_inst_i_11_n_0\,
      O => data2(0)
    );
\ALU_OUT_OBUF[0]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[1]_inst_i_9_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[0]_inst_i_10_n_0\,
      I3 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I4 => D1_IBUF(15),
      O => SHIFT_RIGHT0(0)
    );
\ALU_OUT_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA40404040"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[0]_inst_i_11_n_0\,
      I2 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I3 => \ALU_OUT_OBUF[0]_inst_i_12_n_0\,
      I4 => \ALU_OUT_OBUF[0]_inst_i_13_n_0\,
      I5 => D1_IBUF(0),
      O => \ALU_OUT_OBUF[0]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[1]_inst_i_14_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[0]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[0]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[2]_inst_i_38_n_0\,
      I1 => p_0_in(1),
      I2 => \ALU_OUT_OBUF[4]_inst_i_14_n_0\,
      I3 => p_0_in(2),
      I4 => \ALU_OUT_OBUF[0]_inst_i_14_n_0\,
      O => \ALU_OUT_OBUF[0]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(10),
      O => ALU_OUT(10)
    );
\ALU_OUT_OBUF[10]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[10]_inst_i_3_n_0\,
      O => ALU_OUT_OBUF(10),
      S => ALU_OPP_IBUF(3)
    );
\ALU_OUT_OBUF[10]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_15_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[11]_inst_i_31_n_0\,
      O => \ALU_OUT_OBUF[10]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_16_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[10]_inst_i_17_n_0\,
      O => \ALU_OUT_OBUF[10]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_18_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[12]_inst_i_16_n_0\,
      O => \ALU_OUT_OBUF[10]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ALU_OUT_OBUF[10]_inst_i_13_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[10]_inst_i_13_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \ALU_OUT_OBUF[10]_inst_i_19_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SHIFT_LEFT2(4 downto 1),
      S(3) => \ALU_OUT_OBUF[10]_inst_i_20_n_0\,
      S(2) => \ALU_OUT_OBUF[10]_inst_i_21_n_0\,
      S(1) => \ALU_OUT_OBUF[10]_inst_i_22_n_0\,
      S(0) => \ALU_OUT_OBUF[10]_inst_i_23_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1_IBUF(10),
      I4 => p_0_in(3),
      O => \ALU_OUT_OBUF[10]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1_IBUF(7),
      I4 => p_0_in(3),
      O => \ALU_OUT_OBUF[10]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => D1_IBUF(15),
      I3 => p_0_in(4),
      I4 => D1_IBUF(12),
      O => \ALU_OUT_OBUF[10]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => D1_IBUF(15),
      I4 => p_0_in(4),
      I5 => D1_IBUF(10),
      O => \ALU_OUT_OBUF[10]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => D2_IBUF(2),
      I2 => D2_IBUF(4),
      I3 => D1_IBUF(7),
      I4 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[10]_inst_i_18_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(0),
      O => \ALU_OUT_OBUF[10]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(10),
      I1 => data2(10),
      I2 => ALU_OPP_IBUF(1),
      I3 => data1(10),
      I4 => ALU_OPP_IBUF(0),
      I5 => data0(10),
      O => \ALU_OUT_OBUF[10]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[10]_inst_i_20_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[10]_inst_i_21_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_22\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[10]_inst_i_22_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(1),
      O => \ALU_OUT_OBUF[10]_inst_i_23_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(10),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(10),
      O => \ALU_OUT_OBUF[10]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4FFFFF4E40000"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[10]_inst_i_6_n_0\,
      I2 => D1_IBUF(0),
      I3 => \ALU_OUT_OBUF[11]_inst_i_9_n_6\,
      I4 => D2_IBUF(15),
      I5 => SHIFT_RIGHT0(10),
      O => data3(10)
    );
\ALU_OUT_OBUF[10]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_8_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => \ALU_OUT_OBUF[10]_inst_i_9_n_0\,
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[11]_inst_i_12_n_0\,
      O => data2(10)
    );
\ALU_OUT_OBUF[10]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I1 => \ALU_OUT_OBUF[11]_inst_i_22_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[10]_inst_i_10_n_0\,
      O => \ALU_OUT_OBUF[10]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[11]_inst_i_28_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[10]_inst_i_11_n_0\,
      I3 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I4 => D1_IBUF(15),
      O => SHIFT_RIGHT0(10)
    );
\ALU_OUT_OBUF[10]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[10]_inst_i_12_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[11]_inst_i_29_n_0\,
      I4 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[10]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[10]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_13_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[10]_inst_i_14_n_0\,
      O => \ALU_OUT_OBUF[10]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(11),
      O => ALU_OUT(11)
    );
\ALU_OUT_OBUF[11]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT_OBUF[11]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[11]_inst_i_3_n_0\,
      O => ALU_OUT_OBUF(11),
      S => ALU_OPP_IBUF(3)
    );
\ALU_OUT_OBUF[11]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_10_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[11]_inst_i_28_n_0\,
      I3 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I4 => D1_IBUF(15),
      O => SHIFT_RIGHT0(11)
    );
\ALU_OUT_OBUF[11]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[11]_inst_i_29_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[12]_inst_i_12_n_0\,
      I4 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[11]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1_IBUF(13),
      I2 => p_0_in(4),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      I5 => \ALU_OUT_OBUF[11]_inst_i_30_n_0\,
      O => \ALU_OUT_OBUF[11]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(11),
      I1 => D2_IBUF(11),
      O => \ALU_OUT_OBUF[11]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(10),
      I1 => D2_IBUF(10),
      O => \ALU_OUT_OBUF[11]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(9),
      I1 => D2_IBUF(9),
      O => \ALU_OUT_OBUF[11]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(8),
      I1 => D2_IBUF(8),
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
\ALU_OUT_OBUF[11]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(11),
      I1 => data2(11),
      I2 => ALU_OPP_IBUF(1),
      I3 => data1(11),
      I4 => ALU_OPP_IBUF(0),
      I5 => data0(11),
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
\ALU_OUT_OBUF[11]_inst_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[11]_inst_i_31_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[13]_inst_i_16_n_0\,
      O => \ALU_OUT_OBUF[11]_inst_i_21_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[11]_inst_i_32_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[13]_inst_i_14_n_0\,
      O => \ALU_OUT_OBUF[11]_inst_i_22_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[2]_inst_i_11_n_0\,
      CO(3) => \ALU_OUT_OBUF[11]_inst_i_23_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[11]_inst_i_23_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \ALU_OUT_OBUF[11]_inst_i_23_n_4\,
      O(2) => \ALU_OUT_OBUF[11]_inst_i_23_n_5\,
      O(1) => \ALU_OUT_OBUF[11]_inst_i_23_n_6\,
      O(0) => \ALU_OUT_OBUF[11]_inst_i_23_n_7\,
      S(3) => \ALU_OUT_OBUF[11]_inst_i_33_n_0\,
      S(2) => \ALU_OUT_OBUF[11]_inst_i_34_n_0\,
      S(1) => \ALU_OUT_OBUF[11]_inst_i_35_n_0\,
      S(0) => \ALU_OUT_OBUF[11]_inst_i_36_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEFAFFFFFFFF"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_53_n_0,
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[11]_inst_i_24_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBBAFFFFF"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_53_n_0,
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[11]_inst_i_25_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBAF"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_53_n_0,
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[11]_inst_i_26_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBFFBBB"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_53_n_0,
      I1 => D2_IBUF(0),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(1),
      I4 => D2_IBUF(1),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[11]_inst_i_27_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \ALU_OUT_OBUF[11]_inst_i_37_n_0\,
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => D1_IBUF(15),
      I4 => p_0_in(3),
      I5 => \ALU_OUT_OBUF[11]_inst_i_38_n_0\,
      O => \ALU_OUT_OBUF[11]_inst_i_28_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[11]_inst_i_39_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[13]_inst_i_21_n_0\,
      O => \ALU_OUT_OBUF[11]_inst_i_29_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(11),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(11),
      O => \ALU_OUT_OBUF[11]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1_IBUF(11),
      I4 => p_0_in(3),
      O => \ALU_OUT_OBUF[11]_inst_i_30_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(5),
      I1 => p_0_in(2),
      I2 => D1_IBUF(1),
      I3 => p_0_in(3),
      I4 => D1_IBUF(9),
      I5 => p_0_in(4),
      O => \ALU_OUT_OBUF[11]_inst_i_31_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => p_0_in(2),
      I2 => D1_IBUF(0),
      I3 => p_0_in(3),
      I4 => D1_IBUF(8),
      I5 => p_0_in(4),
      O => \ALU_OUT_OBUF[11]_inst_i_32_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEFA"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_53_n_0,
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[11]_inst_i_33_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAFFFFFFFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_12_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[11]_inst_i_34_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBAFFFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_12_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[11]_inst_i_35_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFBBBFFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_12_n_0\,
      I1 => D2_IBUF(0),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(1),
      I4 => D2_IBUF(1),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[11]_inst_i_36_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D2_IBUF(4),
      I2 => SHIFT_LEFT2(4),
      I3 => D2_IBUF(15),
      I4 => D1_IBUF(13),
      O => \ALU_OUT_OBUF[11]_inst_i_37_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D2_IBUF(4),
      I2 => SHIFT_LEFT2(4),
      I3 => D2_IBUF(15),
      I4 => D1_IBUF(11),
      O => \ALU_OUT_OBUF[11]_inst_i_38_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_39\: unisim.vcomponents.LUT6
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
      O => \ALU_OUT_OBUF[11]_inst_i_39_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4FFFFF4E40000"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[11]_inst_i_8_n_0\,
      I2 => D1_IBUF(0),
      I3 => \ALU_OUT_OBUF[11]_inst_i_9_n_5\,
      I4 => D2_IBUF(15),
      I5 => SHIFT_RIGHT0(11),
      O => data3(11)
    );
\ALU_OUT_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT_OBUF[11]_inst_i_11_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => \ALU_OUT_OBUF[11]_inst_i_12_n_0\,
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[12]_inst_i_9_n_0\,
      O => data2(11)
    );
\ALU_OUT_OBUF[11]_inst_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[7]_inst_i_6_n_0\,
      CO(3) => \ALU_OUT_OBUF[11]_inst_i_6_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[11]_inst_i_6_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => D1_IBUF(11 downto 8),
      O(3 downto 0) => data1(11 downto 8),
      S(3) => \ALU_OUT_OBUF[11]_inst_i_13_n_0\,
      S(2) => \ALU_OUT_OBUF[11]_inst_i_14_n_0\,
      S(1) => \ALU_OUT_OBUF[11]_inst_i_15_n_0\,
      S(0) => \ALU_OUT_OBUF[11]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[7]_inst_i_7_n_0\,
      CO(3) => \ALU_OUT_OBUF[11]_inst_i_7_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[11]_inst_i_7_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => D1_IBUF(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \ALU_OUT_OBUF[11]_inst_i_17_n_0\,
      S(2) => \ALU_OUT_OBUF[11]_inst_i_18_n_0\,
      S(1) => \ALU_OUT_OBUF[11]_inst_i_19_n_0\,
      S(0) => \ALU_OUT_OBUF[11]_inst_i_20_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I1 => \ALU_OUT_OBUF[11]_inst_i_21_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[11]_inst_i_22_n_0\,
      O => \ALU_OUT_OBUF[11]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[11]_inst_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[11]_inst_i_23_n_0\,
      CO(3) => \ALU_OUT_OBUF[11]_inst_i_9_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[11]_inst_i_9_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \ALU_OUT_OBUF[11]_inst_i_9_n_4\,
      O(2) => \ALU_OUT_OBUF[11]_inst_i_9_n_5\,
      O(1) => \ALU_OUT_OBUF[11]_inst_i_9_n_6\,
      O(0) => \ALU_OUT_OBUF[11]_inst_i_9_n_7\,
      S(3) => \ALU_OUT_OBUF[11]_inst_i_24_n_0\,
      S(2) => \ALU_OUT_OBUF[11]_inst_i_25_n_0\,
      S(1) => \ALU_OUT_OBUF[11]_inst_i_26_n_0\,
      S(0) => \ALU_OUT_OBUF[11]_inst_i_27_n_0\
    );
\ALU_OUT_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(12),
      O => ALU_OUT(12)
    );
\ALU_OUT_OBUF[12]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[12]_inst_i_3_n_0\,
      O => ALU_OUT_OBUF(12),
      S => ALU_OPP_IBUF(3)
    );
\ALU_OUT_OBUF[12]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_14_n_0\,
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => D1_IBUF(15),
      I4 => p_0_in(3),
      I5 => \ALU_OUT_OBUF[12]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[11]_inst_i_21_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[13]_inst_i_14_n_0\,
      I3 => p_0_in(1),
      I4 => \ALU_OUT_OBUF[13]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_16_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[14]_inst_i_11_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1_IBUF(12),
      I4 => p_0_in(3),
      O => \ALU_OUT_OBUF[12]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D2_IBUF(4),
      I2 => SHIFT_LEFT2(4),
      I3 => D2_IBUF(15),
      I4 => D1_IBUF(14),
      O => \ALU_OUT_OBUF[12]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D2_IBUF(4),
      I2 => SHIFT_LEFT2(4),
      I3 => D2_IBUF(15),
      I4 => D1_IBUF(12),
      O => \ALU_OUT_OBUF[12]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(5),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(1),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(9),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[12]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(12),
      I1 => data2(12),
      I2 => ALU_OPP_IBUF(1),
      I3 => data1(12),
      I4 => ALU_OPP_IBUF(0),
      I5 => data0(12),
      O => \ALU_OUT_OBUF[12]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(12),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(12),
      O => \ALU_OUT_OBUF[12]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(12),
      I1 => \ALU_OUT_OBUF[12]_inst_i_7_n_0\,
      O => data3(12),
      S => D2_IBUF(15)
    );
\ALU_OUT_OBUF[12]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT_OBUF[12]_inst_i_8_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => \ALU_OUT_OBUF[12]_inst_i_9_n_0\,
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[13]_inst_i_12_n_0\,
      O => data2(12)
    );
\ALU_OUT_OBUF[12]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_10_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[12]_inst_i_10_n_0\,
      I3 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I4 => D1_IBUF(15),
      O => SHIFT_RIGHT0(12)
    );
\ALU_OUT_OBUF[12]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[12]_inst_i_11_n_0\,
      I2 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I3 => D1_IBUF(0),
      I4 => \ALU_OUT_OBUF[11]_inst_i_9_n_4\,
      O => \ALU_OUT_OBUF[12]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[12]_inst_i_12_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[13]_inst_i_18_n_0\,
      I4 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[12]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1_IBUF(14),
      I2 => p_0_in(4),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      I5 => \ALU_OUT_OBUF[12]_inst_i_13_n_0\,
      O => \ALU_OUT_OBUF[12]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(13),
      O => ALU_OUT(13)
    );
\ALU_OUT_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_OBUF[13]_inst_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => \ALU_OUT_OBUF[13]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(13)
    );
\ALU_OUT_OBUF[13]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => D1_IBUF(15),
      I4 => p_0_in(4),
      I5 => D1_IBUF(13),
      O => \ALU_OUT_OBUF[13]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[13]_inst_i_18_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[14]_inst_i_8_n_0\,
      I4 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => D1_IBUF(13),
      I4 => p_0_in(4),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[13]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => D1_IBUF(14),
      I4 => p_0_in(4),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[13]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(6),
      I1 => p_0_in(2),
      I2 => D1_IBUF(2),
      I3 => p_0_in(3),
      I4 => D1_IBUF(10),
      I5 => p_0_in(4),
      O => \ALU_OUT_OBUF[13]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => p_0_in(3),
      I2 => D1_IBUF(8),
      I3 => p_0_in(4),
      I4 => p_0_in(2),
      I5 => \ALU_OUT_OBUF[13]_inst_i_19_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(7),
      I1 => p_0_in(2),
      I2 => D1_IBUF(3),
      I3 => p_0_in(3),
      I4 => D1_IBUF(11),
      I5 => p_0_in(4),
      O => \ALU_OUT_OBUF[13]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_20_n_0\,
      I1 => p_0_in(2),
      I2 => D1_IBUF(5),
      I3 => p_0_in(3),
      I4 => D1_IBUF(13),
      I5 => p_0_in(4),
      O => \ALU_OUT_OBUF[13]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_21_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[15]_inst_i_27_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_18_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => p_0_in(3),
      I2 => D1_IBUF(12),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[13]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(13),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(13),
      O => \ALU_OUT_OBUF[13]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => p_0_in(3),
      I2 => D1_IBUF(9),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[13]_inst_i_20_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(6),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(2),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(10),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[13]_inst_i_21_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_5_n_0\,
      I1 => D2_IBUF(15),
      I2 => SHIFT_RIGHT0(13),
      I3 => ALU_OPP_IBUF(0),
      I4 => data2(13),
      O => \ALU_OUT_OBUF[13]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(13),
      I1 => ALU_OPP_IBUF(0),
      I2 => data0(13),
      O => \ALU_OUT_OBUF[13]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[13]_inst_i_8_n_0\,
      I2 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I3 => D1_IBUF(0),
      I4 => CARRY_FLAG_OBUF_inst_i_12_n_7,
      O => \ALU_OUT_OBUF[13]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[13]_inst_i_10_n_0\,
      I3 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I4 => D1_IBUF(15),
      O => SHIFT_RIGHT0(13)
    );
\ALU_OUT_OBUF[13]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_11_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => \ALU_OUT_OBUF[13]_inst_i_12_n_0\,
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[13]_inst_i_13_n_0\,
      O => data2(13)
    );
\ALU_OUT_OBUF[13]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88F5F5DD88A0A0"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => \ALU_OUT_OBUF[13]_inst_i_14_n_0\,
      I2 => \ALU_OUT_OBUF[13]_inst_i_15_n_0\,
      I3 => \ALU_OUT_OBUF[13]_inst_i_16_n_0\,
      I4 => p_0_in(1),
      I5 => \ALU_OUT_OBUF[13]_inst_i_17_n_0\,
      O => \ALU_OUT_OBUF[13]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[13]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => D1_IBUF(15),
      I4 => p_0_in(4),
      I5 => D1_IBUF(14),
      O => \ALU_OUT_OBUF[13]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(14),
      O => ALU_OUT(14)
    );
\ALU_OUT_OBUF[14]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[14]_inst_i_3_n_0\,
      O => ALU_OUT_OBUF(14),
      S => ALU_OPP_IBUF(3)
    );
\ALU_OUT_OBUF[14]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88F5F5DD88A0A0"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => \ALU_OUT_OBUF[13]_inst_i_16_n_0\,
      I2 => \ALU_OUT_OBUF[13]_inst_i_17_n_0\,
      I3 => \ALU_OUT_OBUF[13]_inst_i_15_n_0\,
      I4 => p_0_in(1),
      I5 => CARRY_FLAG_OBUF_inst_i_26_n_0,
      O => \ALU_OUT_OBUF[14]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(7),
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(3),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(11),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[14]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400444"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1_IBUF(15),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(4),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[14]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400444"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1_IBUF(14),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(4),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[14]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(14),
      I1 => data2(14),
      I2 => ALU_OPP_IBUF(1),
      I3 => data1(14),
      I4 => ALU_OPP_IBUF(0),
      I5 => data0(14),
      O => \ALU_OUT_OBUF[14]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(14),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(14),
      O => \ALU_OUT_OBUF[14]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(14),
      I1 => \ALU_OUT_OBUF[14]_inst_i_7_n_0\,
      O => data3(14),
      S => D2_IBUF(15)
    );
\ALU_OUT_OBUF[14]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A808FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      I1 => \ALU_OUT_OBUF[15]_inst_i_11_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[14]_inst_i_8_n_0\,
      I4 => D2_IBUF(15),
      I5 => \ALU_OUT_OBUF[14]_inst_i_9_n_0\,
      O => data2(14)
    );
\ALU_OUT_OBUF[14]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => \ALU_OUT_OBUF[13]_inst_i_9_n_0\,
      I2 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I3 => D1_IBUF(15),
      O => SHIFT_RIGHT0(14)
    );
\ALU_OUT_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[14]_inst_i_10_n_0\,
      I2 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I3 => D1_IBUF(0),
      I4 => CARRY_FLAG_OBUF_inst_i_12_n_6,
      O => \ALU_OUT_OBUF[14]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[14]_inst_i_11_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[15]_inst_i_25_n_0\,
      O => \ALU_OUT_OBUF[14]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[14]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF3BBF7FFFFFFFFF"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => D2_IBUF(15),
      I2 => \ALU_OUT_OBUF[14]_inst_i_12_n_0\,
      I3 => p_0_in(1),
      I4 => \ALU_OUT_OBUF[14]_inst_i_13_n_0\,
      I5 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      O => \ALU_OUT_OBUF[14]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SMALLER_ZERO_FLAG_OBUF,
      O => ALU_OUT(15)
    );
\ALU_OUT_OBUF[15]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT_OBUF[15]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[15]_inst_i_3_n_0\,
      O => SMALLER_ZERO_FLAG_OBUF,
      S => ALU_OPP_IBUF(3)
    );
\ALU_OUT_OBUF[15]_inst_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[15]_inst_i_25_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[15]_inst_i_26_n_0\,
      O => \ALU_OUT_OBUF[15]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[15]_inst_i_27_n_0\,
      I1 => D2_IBUF(1),
      I2 => CARRY_FLAG_OBUF_inst_i_14_n_0,
      O => \ALU_OUT_OBUF[15]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => D1_IBUF(15),
      I4 => p_0_in(4),
      I5 => p_0_in(2),
      O => SHIFT_LEFT0(15)
    );
\ALU_OUT_OBUF[15]_inst_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D2_IBUF(15),
      O => \ALU_OUT_OBUF[15]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => D2_IBUF(14),
      O => \ALU_OUT_OBUF[15]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => D2_IBUF(13),
      O => \ALU_OUT_OBUF[15]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(12),
      I1 => D2_IBUF(12),
      O => \ALU_OUT_OBUF[15]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D1_IBUF(15),
      O => \ALU_OUT_OBUF[15]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D2_IBUF(15),
      O => \ALU_OUT_OBUF[15]_inst_i_18_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => D2_IBUF(14),
      O => \ALU_OUT_OBUF[15]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(15),
      I1 => data2(15),
      I2 => ALU_OPP_IBUF(1),
      I3 => data1(15),
      I4 => ALU_OPP_IBUF(0),
      I5 => data0(15),
      O => \ALU_OUT_OBUF[15]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => D2_IBUF(13),
      O => \ALU_OUT_OBUF[15]_inst_i_20_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(12),
      I1 => D2_IBUF(12),
      O => \ALU_OUT_OBUF[15]_inst_i_21_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_15_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => CARRY_FLAG_OBUF_inst_i_26_n_0,
      O => \ALU_OUT_OBUF[15]_inst_i_22_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => D2_IBUF(7),
      I1 => D2_IBUF(8),
      I2 => D2_IBUF(5),
      I3 => D2_IBUF(6),
      O => \ALU_OUT_OBUF[15]_inst_i_23_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => D2_IBUF(11),
      I1 => D2_IBUF(12),
      I2 => D2_IBUF(9),
      I3 => D2_IBUF(10),
      O => \ALU_OUT_OBUF[15]_inst_i_24_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[15]_inst_i_28_n_0\,
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(5),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(13),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[15]_inst_i_25_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[15]_inst_i_29_n_0\,
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(7),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(15),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[15]_inst_i_26_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D2_IBUF(3),
      I2 => D1_IBUF(8),
      I3 => D2_IBUF(4),
      I4 => D2_IBUF(2),
      I5 => \ALU_OUT_OBUF[15]_inst_i_30_n_0\,
      O => \ALU_OUT_OBUF[15]_inst_i_27_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D2_IBUF(3),
      I2 => D1_IBUF(9),
      I3 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[15]_inst_i_28_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => D2_IBUF(3),
      I2 => D1_IBUF(11),
      I3 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[15]_inst_i_29_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(15),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(15),
      O => \ALU_OUT_OBUF[15]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => D2_IBUF(3),
      I2 => D1_IBUF(12),
      I3 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[15]_inst_i_30_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4FFFFF4E40000"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[15]_inst_i_8_n_0\,
      I2 => D1_IBUF(0),
      I3 => CARRY_FLAG_OBUF_inst_i_12_n_5,
      I4 => D2_IBUF(15),
      I5 => D1_IBUF(15),
      O => data3(15)
    );
\ALU_OUT_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000A808A808"
    )
        port map (
      I0 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      I1 => \ALU_OUT_OBUF[15]_inst_i_10_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[15]_inst_i_11_n_0\,
      I4 => SHIFT_LEFT0(15),
      I5 => D2_IBUF(15),
      O => data2(15)
    );
\ALU_OUT_OBUF[15]_inst_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[11]_inst_i_6_n_0\,
      CO(3) => \ALU_OUT_OBUF[15]_inst_i_6_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[15]_inst_i_6_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => D2_IBUF(15),
      DI(2 downto 0) => D1_IBUF(14 downto 12),
      O(3 downto 0) => data1(15 downto 12),
      S(3) => \ALU_OUT_OBUF[15]_inst_i_13_n_0\,
      S(2) => \ALU_OUT_OBUF[15]_inst_i_14_n_0\,
      S(1) => \ALU_OUT_OBUF[15]_inst_i_15_n_0\,
      S(0) => \ALU_OUT_OBUF[15]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[11]_inst_i_7_n_0\,
      CO(3) => \ALU_OUT_OBUF[15]_inst_i_7_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[15]_inst_i_7_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \ALU_OUT_OBUF[15]_inst_i_17_n_0\,
      DI(2 downto 0) => D1_IBUF(14 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \ALU_OUT_OBUF[15]_inst_i_18_n_0\,
      S(2) => \ALU_OUT_OBUF[15]_inst_i_19_n_0\,
      S(1) => \ALU_OUT_OBUF[15]_inst_i_20_n_0\,
      S(0) => \ALU_OUT_OBUF[15]_inst_i_21_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I1 => CARRY_FLAG_OBUF_inst_i_27_n_0,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[15]_inst_i_22_n_0\,
      O => \ALU_OUT_OBUF[15]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[15]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => D2_IBUF(13),
      I2 => D2_IBUF(14),
      I3 => \ALU_OUT_OBUF[15]_inst_i_23_n_0\,
      I4 => \ALU_OUT_OBUF[15]_inst_i_24_n_0\,
      O => \ALU_OUT_OBUF[15]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(1),
      O => ALU_OUT(1)
    );
\ALU_OUT_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[1]_inst_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_OBUF[1]_inst_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => \ALU_OUT_OBUF[1]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(1)
    );
\ALU_OUT_OBUF[1]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[1]_inst_i_14_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[2]_inst_i_37_n_0\,
      I4 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[1]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[3]_inst_i_22_n_0\,
      I1 => p_0_in(1),
      I2 => \ALU_OUT_OBUF[1]_inst_i_15_n_0\,
      I3 => p_0_in(2),
      I4 => \ALU_OUT_OBUF[1]_inst_i_16_n_0\,
      O => \ALU_OUT_OBUF[1]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[1]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1_IBUF(9),
      I1 => p_0_in(3),
      I2 => D1_IBUF(15),
      I3 => p_0_in(4),
      I4 => D1_IBUF(1),
      O => \ALU_OUT_OBUF[1]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D2_IBUF(4),
      I2 => D1_IBUF(0),
      I3 => D2_IBUF(3),
      I4 => D2_IBUF(1),
      O => \ALU_OUT_OBUF[1]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => p_0_in(3),
      I2 => D1_IBUF(5),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[1]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1_IBUF(9),
      I1 => p_0_in(3),
      I2 => D1_IBUF(1),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[1]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(1),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(1),
      O => \ALU_OUT_OBUF[1]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[1]_inst_i_5_n_0\,
      I1 => D2_IBUF(15),
      I2 => SHIFT_RIGHT0(1),
      I3 => ALU_OPP_IBUF(0),
      I4 => data2(1),
      O => \ALU_OUT_OBUF[1]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(1),
      I1 => ALU_OPP_IBUF(0),
      I2 => data0(1),
      O => \ALU_OUT_OBUF[1]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0004AAAE0004"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[1]_inst_i_8_n_0\,
      I2 => \ALU_OUT_OBUF[2]_inst_i_9_n_0\,
      I3 => \ALU_OUT_OBUF[2]_inst_i_10_n_0\,
      I4 => D1_IBUF(0),
      I5 => \ALU_OUT_OBUF[2]_inst_i_11_n_7\,
      O => \ALU_OUT_OBUF[1]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[1]_inst_i_9_n_0\,
      I3 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I4 => D1_IBUF(15),
      O => SHIFT_RIGHT0(1)
    );
\ALU_OUT_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT_OBUF[1]_inst_i_10_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => \ALU_OUT_OBUF[1]_inst_i_11_n_0\,
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[2]_inst_i_15_n_0\,
      O => data2(1)
    );
\ALU_OUT_OBUF[1]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008080D08"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => \ALU_OUT_OBUF[2]_inst_i_17_n_0\,
      I2 => p_0_in(2),
      I3 => \ALU_OUT_OBUF[1]_inst_i_12_n_0\,
      I4 => p_0_in(3),
      I5 => p_0_in(1),
      O => \ALU_OUT_OBUF[1]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[1]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[2]_inst_i_31_n_0\,
      I1 => \ALU_OUT_OBUF[2]_inst_i_32_n_0\,
      I2 => p_0_in(1),
      I3 => \ALU_OUT_OBUF[2]_inst_i_30_n_0\,
      I4 => p_0_in(2),
      I5 => \ALU_OUT_OBUF[1]_inst_i_13_n_0\,
      O => \ALU_OUT_OBUF[1]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(2),
      O => ALU_OUT(2)
    );
\ALU_OUT_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[2]_inst_i_2_n_0\,
      I1 => ALU_OPP_IBUF(3),
      I2 => \ALU_OUT_OBUF[2]_inst_i_3_n_0\,
      I3 => ALU_OPP_IBUF(1),
      I4 => \ALU_OUT_OBUF[2]_inst_i_4_n_0\,
      O => ALU_OUT_OBUF(2)
    );
\ALU_OUT_OBUF[2]_inst_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ALU_OUT_OBUF[2]_inst_i_20_n_0\,
      I1 => \ALU_OUT_OBUF[2]_inst_i_21_n_0\,
      I2 => \ALU_OUT_OBUF[2]_inst_i_22_n_0\,
      I3 => \ALU_OUT_OBUF[2]_inst_i_23_n_0\,
      O => \ALU_OUT_OBUF[2]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ALU_OUT_OBUF[2]_inst_i_11_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[2]_inst_i_11_CO_UNCONNECTED\(2 downto 0),
      CYINIT => SHIFT_RIGHT4(0),
      DI(3 downto 0) => B"1111",
      O(3) => \ALU_OUT_OBUF[2]_inst_i_11_n_4\,
      O(2) => \ALU_OUT_OBUF[2]_inst_i_11_n_5\,
      O(1) => \ALU_OUT_OBUF[2]_inst_i_11_n_6\,
      O(0) => \ALU_OUT_OBUF[2]_inst_i_11_n_7\,
      S(3) => \ALU_OUT_OBUF[2]_inst_i_25_n_0\,
      S(2) => \ALU_OUT_OBUF[2]_inst_i_26_n_0\,
      S(1) => \ALU_OUT_OBUF[2]_inst_i_27_n_0\,
      S(0) => \ALU_OUT_OBUF[2]_inst_i_28_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[2]_inst_i_29_n_0\,
      I1 => \ALU_OUT_OBUF[2]_inst_i_30_n_0\,
      I2 => p_0_in(1),
      I3 => \ALU_OUT_OBUF[2]_inst_i_31_n_0\,
      I4 => p_0_in(2),
      I5 => \ALU_OUT_OBUF[2]_inst_i_32_n_0\,
      O => \ALU_OUT_OBUF[2]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[2]_inst_i_33_n_0\,
      I1 => \ALU_OUT_OBUF[2]_inst_i_34_n_0\,
      I2 => p_0_in(1),
      I3 => \ALU_OUT_OBUF[2]_inst_i_35_n_0\,
      I4 => p_0_in(2),
      I5 => \ALU_OUT_OBUF[2]_inst_i_36_n_0\,
      O => \ALU_OUT_OBUF[2]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[2]_inst_i_37_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[3]_inst_i_21_n_0\,
      I4 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[2]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[4]_inst_i_13_n_0\,
      I1 => p_0_in(2),
      I2 => \ALU_OUT_OBUF[4]_inst_i_14_n_0\,
      I3 => p_0_in(1),
      I4 => \ALU_OUT_OBUF[2]_inst_i_38_n_0\,
      O => \ALU_OUT_OBUF[2]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000300000503050"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => SHIFT_LEFT2(4),
      I2 => D1_IBUF(1),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(3),
      I5 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[2]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000300000503050"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => SHIFT_LEFT2(4),
      I2 => D1_IBUF(0),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(3),
      I5 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[2]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000300000503050"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => SHIFT_LEFT2(4),
      I2 => D1_IBUF(2),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(3),
      I5 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[2]_inst_i_18_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D2_IBUF(13),
      I1 => SHIFT_LEFT2(13),
      I2 => D2_IBUF(15),
      O => p_0_in(13)
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
\ALU_OUT_OBUF[2]_inst_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(10),
      I1 => D2_IBUF(10),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(9),
      I4 => D2_IBUF(9),
      O => \ALU_OUT_OBUF[2]_inst_i_20_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(12),
      I1 => D2_IBUF(12),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(11),
      I4 => D2_IBUF(11),
      O => \ALU_OUT_OBUF[2]_inst_i_21_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(6),
      I1 => D2_IBUF(6),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(5),
      I4 => D2_IBUF(5),
      O => \ALU_OUT_OBUF[2]_inst_i_22_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(8),
      I1 => D2_IBUF(8),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(7),
      I4 => D2_IBUF(7),
      O => \ALU_OUT_OBUF[2]_inst_i_23_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001105"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_12_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => p_0_in(2),
      O => SHIFT_RIGHT4(0)
    );
\ALU_OUT_OBUF[2]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEFAFFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_12_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[2]_inst_i_25_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBBAFFFFF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_12_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[2]_inst_i_26_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBAF"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_12_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[2]_inst_i_27_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBFFBBB"
    )
        port map (
      I0 => \ALU_OUT_OBUF[0]_inst_i_12_n_0\,
      I1 => D2_IBUF(0),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(1),
      I4 => D2_IBUF(1),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[2]_inst_i_28_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDDCDCDCC88C8C8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1_IBUF(15),
      I2 => D2_IBUF(4),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(15),
      I5 => D1_IBUF(9),
      O => \ALU_OUT_OBUF[2]_inst_i_29_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[2]_inst_i_5_n_0\,
      I1 => D2_IBUF(15),
      I2 => SHIFT_RIGHT0(2),
      I3 => ALU_OPP_IBUF(0),
      I4 => data2(2),
      O => \ALU_OUT_OBUF[2]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => p_0_in(3),
      I2 => D1_IBUF(15),
      I3 => p_0_in(4),
      I4 => D1_IBUF(5),
      O => \ALU_OUT_OBUF[2]_inst_i_30_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDDCDCDCC88C8C8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1_IBUF(15),
      I2 => D2_IBUF(4),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(15),
      I5 => D1_IBUF(7),
      O => \ALU_OUT_OBUF[2]_inst_i_31_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1_IBUF(11),
      I1 => p_0_in(3),
      I2 => D1_IBUF(15),
      I3 => p_0_in(4),
      I4 => D1_IBUF(3),
      O => \ALU_OUT_OBUF[2]_inst_i_32_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDDCDCDCC88C8C8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1_IBUF(15),
      I2 => D2_IBUF(4),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(15),
      I5 => D1_IBUF(8),
      O => \ALU_OUT_OBUF[2]_inst_i_33_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1_IBUF(12),
      I1 => p_0_in(3),
      I2 => D1_IBUF(15),
      I3 => p_0_in(4),
      I4 => D1_IBUF(4),
      O => \ALU_OUT_OBUF[2]_inst_i_34_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => p_0_in(3),
      I2 => D1_IBUF(15),
      I3 => p_0_in(4),
      I4 => D1_IBUF(6),
      O => \ALU_OUT_OBUF[2]_inst_i_35_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1_IBUF(10),
      I1 => p_0_in(3),
      I2 => D1_IBUF(15),
      I3 => p_0_in(4),
      I4 => D1_IBUF(2),
      O => \ALU_OUT_OBUF[2]_inst_i_36_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D2_IBUF(4),
      I2 => D1_IBUF(1),
      I3 => D2_IBUF(3),
      I4 => D2_IBUF(1),
      O => \ALU_OUT_OBUF[2]_inst_i_37_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[2]_inst_i_39_n_0\,
      I1 => \ALU_OUT_OBUF[2]_inst_i_40_n_0\,
      I2 => p_0_in(2),
      I3 => \ALU_OUT_OBUF[2]_inst_i_41_n_0\,
      I4 => p_0_in(3),
      I5 => \ALU_OUT_OBUF[2]_inst_i_42_n_0\,
      O => \ALU_OUT_OBUF[2]_inst_i_38_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1_IBUF(14),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[2]_inst_i_39_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(2),
      I1 => ALU_OPP_IBUF(0),
      I2 => data0(2),
      O => \ALU_OUT_OBUF[2]_inst_i_4_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1_IBUF(6),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[2]_inst_i_40_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1_IBUF(10),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[2]_inst_i_41_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[2]_inst_i_42_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0004AAAE0004"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[2]_inst_i_8_n_0\,
      I2 => \ALU_OUT_OBUF[2]_inst_i_9_n_0\,
      I3 => \ALU_OUT_OBUF[2]_inst_i_10_n_0\,
      I4 => D1_IBUF(0),
      I5 => \ALU_OUT_OBUF[2]_inst_i_11_n_6\,
      O => \ALU_OUT_OBUF[2]_inst_i_5_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[2]_inst_i_12_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[2]_inst_i_13_n_0\,
      I3 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I4 => D1_IBUF(15),
      O => SHIFT_RIGHT0(2)
    );
\ALU_OUT_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT_OBUF[2]_inst_i_14_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => \ALU_OUT_OBUF[2]_inst_i_15_n_0\,
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[3]_inst_i_11_n_0\,
      O => data2(2)
    );
\ALU_OUT_OBUF[2]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050DD5088"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => \ALU_OUT_OBUF[2]_inst_i_16_n_0\,
      I2 => \ALU_OUT_OBUF[2]_inst_i_17_n_0\,
      I3 => p_0_in(1),
      I4 => \ALU_OUT_OBUF[2]_inst_i_18_n_0\,
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[2]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[2]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAFCFCFFFFFCFC"
    )
        port map (
      I0 => SHIFT_LEFT2(14),
      I1 => D2_IBUF(14),
      I2 => p_0_in(13),
      I3 => SHIFT_LEFT2(15),
      I4 => D2_IBUF(15),
      I5 => CARRY_FLAG_OBUF_inst_i_15_n_0,
      O => \ALU_OUT_OBUF[2]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(3),
      O => ALU_OUT(3)
    );
\ALU_OUT_OBUF[3]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT_OBUF[3]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[3]_inst_i_3_n_0\,
      O => ALU_OUT_OBUF(3),
      S => ALU_OPP_IBUF(3)
    );
\ALU_OUT_OBUF[3]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[3]_inst_i_21_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[4]_inst_i_12_n_0\,
      I4 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[5]_inst_i_13_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[3]_inst_i_22_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[3]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[3]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D2_IBUF(1),
      O => \ALU_OUT_OBUF[3]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D2_IBUF(0),
      O => \ALU_OUT_OBUF[3]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[3]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[3]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D2_IBUF(1),
      O => \ALU_OUT_OBUF[3]_inst_i_18_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D2_IBUF(0),
      O => \ALU_OUT_OBUF[3]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(3),
      I1 => data2(3),
      I2 => ALU_OPP_IBUF(1),
      I3 => data1(3),
      I4 => ALU_OPP_IBUF(0),
      I5 => data0(3),
      O => \ALU_OUT_OBUF[3]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[3]_inst_i_23_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[4]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_20_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D2_IBUF(1),
      I2 => D2_IBUF(3),
      I3 => D1_IBUF(2),
      I4 => D2_IBUF(4),
      I5 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[3]_inst_i_21_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[3]_inst_i_24_n_0\,
      I1 => \ALU_OUT_OBUF[3]_inst_i_25_n_0\,
      I2 => p_0_in(2),
      I3 => \ALU_OUT_OBUF[3]_inst_i_26_n_0\,
      I4 => p_0_in(3),
      I5 => \ALU_OUT_OBUF[3]_inst_i_27_n_0\,
      O => \ALU_OUT_OBUF[3]_inst_i_22_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => D1_IBUF(2),
      I4 => p_0_in(4),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[3]_inst_i_23_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[3]_inst_i_24_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1_IBUF(7),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[3]_inst_i_25_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1_IBUF(11),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[3]_inst_i_26_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[3]_inst_i_27_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(3),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(3),
      O => \ALU_OUT_OBUF[3]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(3),
      I1 => \ALU_OUT_OBUF[3]_inst_i_9_n_0\,
      O => data3(3),
      S => D2_IBUF(15)
    );
\ALU_OUT_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT_OBUF[3]_inst_i_10_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => \ALU_OUT_OBUF[3]_inst_i_11_n_0\,
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[4]_inst_i_9_n_0\,
      O => data2(3)
    );
\ALU_OUT_OBUF[3]_inst_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ALU_OUT_OBUF[3]_inst_i_6_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[3]_inst_i_6_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => D1_IBUF(3 downto 0),
      O(3 downto 0) => data1(3 downto 0),
      S(3) => \ALU_OUT_OBUF[3]_inst_i_12_n_0\,
      S(2) => \ALU_OUT_OBUF[3]_inst_i_13_n_0\,
      S(1) => \ALU_OUT_OBUF[3]_inst_i_14_n_0\,
      S(0) => \ALU_OUT_OBUF[3]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ALU_OUT_OBUF[3]_inst_i_7_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[3]_inst_i_7_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => D1_IBUF(3 downto 0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => \ALU_OUT_OBUF[3]_inst_i_16_n_0\,
      S(2) => \ALU_OUT_OBUF[3]_inst_i_17_n_0\,
      S(1) => \ALU_OUT_OBUF[3]_inst_i_18_n_0\,
      S(0) => \ALU_OUT_OBUF[3]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[3]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[4]_inst_i_10_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[2]_inst_i_12_n_0\,
      I3 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I4 => D1_IBUF(15),
      O => SHIFT_RIGHT0(3)
    );
\ALU_OUT_OBUF[3]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[3]_inst_i_20_n_0\,
      I2 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I3 => D1_IBUF(0),
      I4 => \ALU_OUT_OBUF[2]_inst_i_11_n_5\,
      O => \ALU_OUT_OBUF[3]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(4),
      O => ALU_OUT(4)
    );
\ALU_OUT_OBUF[4]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT_OBUF[4]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[4]_inst_i_3_n_0\,
      O => ALU_OUT_OBUF(4),
      S => ALU_OPP_IBUF(3)
    );
\ALU_OUT_OBUF[4]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT_OBUF[6]_inst_i_14_n_0\,
      I1 => \ALU_OUT_OBUF[2]_inst_i_35_n_0\,
      I2 => p_0_in(1),
      I3 => \ALU_OUT_OBUF[2]_inst_i_33_n_0\,
      I4 => p_0_in(2),
      I5 => \ALU_OUT_OBUF[2]_inst_i_34_n_0\,
      O => \ALU_OUT_OBUF[4]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[4]_inst_i_15_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[5]_inst_i_14_n_0\,
      I3 => p_0_in(1),
      I4 => \ALU_OUT_OBUF[7]_inst_i_25_n_0\,
      O => \ALU_OUT_OBUF[4]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D2_IBUF(1),
      I2 => D2_IBUF(3),
      I3 => D1_IBUF(3),
      I4 => D2_IBUF(4),
      I5 => D2_IBUF(2),
      O => \ALU_OUT_OBUF[4]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1_IBUF(15),
      I1 => p_0_in(3),
      I2 => D1_IBUF(8),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[4]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1_IBUF(12),
      I1 => p_0_in(3),
      I2 => D1_IBUF(4),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[4]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => D1_IBUF(3),
      I4 => p_0_in(4),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[4]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(4),
      I1 => data2(4),
      I2 => ALU_OPP_IBUF(1),
      I3 => data1(4),
      I4 => ALU_OPP_IBUF(0),
      I5 => data0(4),
      O => \ALU_OUT_OBUF[4]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(4),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(4),
      O => \ALU_OUT_OBUF[4]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(4),
      I1 => \ALU_OUT_OBUF[4]_inst_i_7_n_0\,
      O => data3(4),
      S => D2_IBUF(15)
    );
\ALU_OUT_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT_OBUF[4]_inst_i_8_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => \ALU_OUT_OBUF[4]_inst_i_9_n_0\,
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[5]_inst_i_9_n_0\,
      O => data2(4)
    );
\ALU_OUT_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[5]_inst_i_10_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[4]_inst_i_10_n_0\,
      I3 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I4 => D1_IBUF(15),
      O => SHIFT_RIGHT0(4)
    );
\ALU_OUT_OBUF[4]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[4]_inst_i_11_n_0\,
      I2 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I3 => D1_IBUF(0),
      I4 => \ALU_OUT_OBUF[2]_inst_i_11_n_4\,
      O => \ALU_OUT_OBUF[4]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[4]_inst_i_12_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[5]_inst_i_12_n_0\,
      I4 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[4]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[4]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[6]_inst_i_13_n_0\,
      I1 => p_0_in(1),
      I2 => \ALU_OUT_OBUF[4]_inst_i_13_n_0\,
      I3 => p_0_in(2),
      I4 => \ALU_OUT_OBUF[4]_inst_i_14_n_0\,
      O => \ALU_OUT_OBUF[4]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(5),
      O => ALU_OUT(5)
    );
\ALU_OUT_OBUF[5]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT_OBUF[5]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[5]_inst_i_3_n_0\,
      O => ALU_OUT_OBUF(5),
      S => ALU_OPP_IBUF(3)
    );
\ALU_OUT_OBUF[5]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_24_n_0\,
      I1 => p_0_in(1),
      I2 => \ALU_OUT_OBUF[2]_inst_i_29_n_0\,
      I3 => p_0_in(2),
      I4 => \ALU_OUT_OBUF[2]_inst_i_30_n_0\,
      O => \ALU_OUT_OBUF[5]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[5]_inst_i_14_n_0\,
      I1 => p_0_in(1),
      I2 => \ALU_OUT_OBUF[7]_inst_i_25_n_0\,
      I3 => D2_IBUF(0),
      I4 => \ALU_OUT_OBUF[6]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[5]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => D1_IBUF(2),
      I2 => D2_IBUF(4),
      I3 => D2_IBUF(2),
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_OBUF[7]_inst_i_26_n_0\,
      O => \ALU_OUT_OBUF[5]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(9),
      I1 => p_0_in(2),
      I2 => D1_IBUF(13),
      I3 => p_0_in(3),
      I4 => D1_IBUF(5),
      I5 => p_0_in(4),
      O => \ALU_OUT_OBUF[5]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400444"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1_IBUF(2),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(4),
      I5 => p_0_in(2),
      O => \ALU_OUT_OBUF[5]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(5),
      I1 => data2(5),
      I2 => ALU_OPP_IBUF(1),
      I3 => data1(5),
      I4 => ALU_OPP_IBUF(0),
      I5 => data0(5),
      O => \ALU_OUT_OBUF[5]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(5),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(5),
      O => \ALU_OUT_OBUF[5]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(5),
      I1 => \ALU_OUT_OBUF[5]_inst_i_7_n_0\,
      O => data3(5),
      S => D2_IBUF(15)
    );
\ALU_OUT_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT_OBUF[5]_inst_i_8_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => \ALU_OUT_OBUF[5]_inst_i_9_n_0\,
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[6]_inst_i_9_n_0\,
      O => data2(5)
    );
\ALU_OUT_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[6]_inst_i_10_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[5]_inst_i_10_n_0\,
      I3 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I4 => D1_IBUF(15),
      O => SHIFT_RIGHT0(5)
    );
\ALU_OUT_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[5]_inst_i_11_n_0\,
      I2 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I3 => D1_IBUF(0),
      I4 => \ALU_OUT_OBUF[11]_inst_i_23_n_7\,
      O => \ALU_OUT_OBUF[5]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[5]_inst_i_12_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[6]_inst_i_12_n_0\,
      I4 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[5]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[5]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_23_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[5]_inst_i_13_n_0\,
      O => \ALU_OUT_OBUF[5]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(6),
      O => ALU_OUT(6)
    );
\ALU_OUT_OBUF[6]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT_OBUF[6]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[6]_inst_i_3_n_0\,
      O => ALU_OUT_OBUF(6),
      S => ALU_OPP_IBUF(3)
    );
\ALU_OUT_OBUF[6]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_14_n_0\,
      I1 => p_0_in(1),
      I2 => \ALU_OUT_OBUF[6]_inst_i_14_n_0\,
      I3 => p_0_in(2),
      I4 => \ALU_OUT_OBUF[2]_inst_i_35_n_0\,
      O => \ALU_OUT_OBUF[6]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[6]_inst_i_15_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[7]_inst_i_25_n_0\,
      I3 => p_0_in(1),
      I4 => \ALU_OUT_OBUF[9]_inst_i_14_n_0\,
      O => \ALU_OUT_OBUF[6]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => D1_IBUF(3),
      I2 => D2_IBUF(4),
      I3 => D2_IBUF(2),
      I4 => D2_IBUF(1),
      I5 => \ALU_OUT_OBUF[8]_inst_i_16_n_0\,
      O => \ALU_OUT_OBUF[6]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(10),
      I1 => p_0_in(2),
      I2 => D1_IBUF(14),
      I3 => p_0_in(3),
      I4 => D1_IBUF(6),
      I5 => p_0_in(4),
      O => \ALU_OUT_OBUF[6]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDDCDCDCC88C8C8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1_IBUF(15),
      I2 => D2_IBUF(4),
      I3 => SHIFT_LEFT2(4),
      I4 => D2_IBUF(15),
      I5 => D1_IBUF(10),
      O => \ALU_OUT_OBUF[6]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[3]_inst_i_27_n_0\,
      I1 => p_0_in(1),
      I2 => \ALU_OUT_OBUF[1]_inst_i_12_n_0\,
      I3 => p_0_in(2),
      I4 => \ALU_OUT_OBUF[6]_inst_i_16_n_0\,
      I5 => p_0_in(3),
      O => \ALU_OUT_OBUF[6]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1_IBUF(5),
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[6]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(6),
      I1 => data2(6),
      I2 => ALU_OPP_IBUF(1),
      I3 => data1(6),
      I4 => ALU_OPP_IBUF(0),
      I5 => data0(6),
      O => \ALU_OUT_OBUF[6]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(6),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(6),
      O => \ALU_OUT_OBUF[6]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(6),
      I1 => \ALU_OUT_OBUF[6]_inst_i_7_n_0\,
      O => data3(6),
      S => D2_IBUF(15)
    );
\ALU_OUT_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT_OBUF[6]_inst_i_8_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => \ALU_OUT_OBUF[6]_inst_i_9_n_0\,
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[7]_inst_i_11_n_0\,
      O => data2(6)
    );
\ALU_OUT_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_20_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[6]_inst_i_10_n_0\,
      I3 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I4 => D1_IBUF(15),
      O => SHIFT_RIGHT0(6)
    );
\ALU_OUT_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[6]_inst_i_11_n_0\,
      I2 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I3 => D1_IBUF(0),
      I4 => \ALU_OUT_OBUF[11]_inst_i_23_n_6\,
      O => \ALU_OUT_OBUF[6]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[6]_inst_i_12_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[7]_inst_i_22_n_0\,
      I4 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[6]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[6]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_13_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[6]_inst_i_13_n_0\,
      O => \ALU_OUT_OBUF[6]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(7),
      O => ALU_OUT(7)
    );
\ALU_OUT_OBUF[7]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[7]_inst_i_3_n_0\,
      O => ALU_OUT_OBUF(7),
      S => ALU_OPP_IBUF(3)
    );
\ALU_OUT_OBUF[7]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[7]_inst_i_22_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[8]_inst_i_12_n_0\,
      I4 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[9]_inst_i_13_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[7]_inst_i_23_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(7),
      I1 => D2_IBUF(7),
      O => \ALU_OUT_OBUF[7]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(6),
      I1 => D2_IBUF(6),
      O => \ALU_OUT_OBUF[7]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(5),
      I1 => D2_IBUF(5),
      O => \ALU_OUT_OBUF[7]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[7]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(7),
      I1 => D2_IBUF(7),
      O => \ALU_OUT_OBUF[7]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(6),
      I1 => D2_IBUF(6),
      O => \ALU_OUT_OBUF[7]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(5),
      I1 => D2_IBUF(5),
      O => \ALU_OUT_OBUF[7]_inst_i_18_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => D2_IBUF(4),
      O => \ALU_OUT_OBUF[7]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(7),
      I1 => data2(7),
      I2 => ALU_OPP_IBUF(1),
      I3 => data1(7),
      I4 => ALU_OPP_IBUF(0),
      I5 => data0(7),
      O => \ALU_OUT_OBUF[7]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[9]_inst_i_16_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[7]_inst_i_24_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_20_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88F5F5DD88A0A0"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => \ALU_OUT_OBUF[7]_inst_i_25_n_0\,
      I2 => \ALU_OUT_OBUF[9]_inst_i_14_n_0\,
      I3 => \ALU_OUT_OBUF[8]_inst_i_15_n_0\,
      I4 => p_0_in(1),
      I5 => \ALU_OUT_OBUF[10]_inst_i_15_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_21_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_26_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[9]_inst_i_17_n_0\,
      O => \ALU_OUT_OBUF[7]_inst_i_22_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(11),
      I1 => p_0_in(2),
      I2 => D1_IBUF(15),
      I3 => p_0_in(3),
      I4 => D1_IBUF(7),
      I5 => p_0_in(4),
      O => \ALU_OUT_OBUF[7]_inst_i_23_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => D1_IBUF(11),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => D1_IBUF(15),
      I4 => p_0_in(4),
      I5 => D1_IBUF(7),
      O => \ALU_OUT_OBUF[7]_inst_i_24_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1_IBUF(4),
      I4 => p_0_in(3),
      O => \ALU_OUT_OBUF[7]_inst_i_25_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(0),
      I1 => D2_IBUF(2),
      I2 => D2_IBUF(4),
      I3 => D1_IBUF(4),
      I4 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[7]_inst_i_26_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(7),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(7),
      O => \ALU_OUT_OBUF[7]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(7),
      I1 => \ALU_OUT_OBUF[7]_inst_i_9_n_0\,
      O => data3(7),
      S => D2_IBUF(15)
    );
\ALU_OUT_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT_OBUF[7]_inst_i_10_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => \ALU_OUT_OBUF[7]_inst_i_11_n_0\,
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[8]_inst_i_9_n_0\,
      O => data2(7)
    );
\ALU_OUT_OBUF[7]_inst_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[3]_inst_i_6_n_0\,
      CO(3) => \ALU_OUT_OBUF[7]_inst_i_6_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[7]_inst_i_6_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => D1_IBUF(7 downto 4),
      O(3 downto 0) => data1(7 downto 4),
      S(3) => \ALU_OUT_OBUF[7]_inst_i_12_n_0\,
      S(2) => \ALU_OUT_OBUF[7]_inst_i_13_n_0\,
      S(1) => \ALU_OUT_OBUF[7]_inst_i_14_n_0\,
      S(0) => \ALU_OUT_OBUF[7]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[3]_inst_i_7_n_0\,
      CO(3) => \ALU_OUT_OBUF[7]_inst_i_7_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_OBUF[7]_inst_i_7_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => D1_IBUF(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \ALU_OUT_OBUF[7]_inst_i_16_n_0\,
      S(2) => \ALU_OUT_OBUF[7]_inst_i_17_n_0\,
      S(1) => \ALU_OUT_OBUF[7]_inst_i_18_n_0\,
      S(0) => \ALU_OUT_OBUF[7]_inst_i_19_n_0\
    );
\ALU_OUT_OBUF[7]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_10_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[7]_inst_i_20_n_0\,
      I3 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I4 => D1_IBUF(15),
      O => SHIFT_RIGHT0(7)
    );
\ALU_OUT_OBUF[7]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[7]_inst_i_21_n_0\,
      I2 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I3 => D1_IBUF(0),
      I4 => \ALU_OUT_OBUF[11]_inst_i_23_n_5\,
      O => \ALU_OUT_OBUF[7]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(8),
      O => ALU_OUT(8)
    );
\ALU_OUT_OBUF[8]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[8]_inst_i_3_n_0\,
      O => ALU_OUT_OBUF(8),
      S => ALU_OPP_IBUF(3)
    );
\ALU_OUT_OBUF[8]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_17_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[8]_inst_i_14_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88F5F5DD88A0A0"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => \ALU_OUT_OBUF[8]_inst_i_15_n_0\,
      I2 => \ALU_OUT_OBUF[10]_inst_i_15_n_0\,
      I3 => \ALU_OUT_OBUF[9]_inst_i_14_n_0\,
      I4 => p_0_in(1),
      I5 => \ALU_OUT_OBUF[11]_inst_i_32_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_16_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[10]_inst_i_18_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1_IBUF(12),
      I1 => p_0_in(2),
      I2 => D1_IBUF(15),
      I3 => p_0_in(3),
      I4 => D1_IBUF(8),
      I5 => p_0_in(4),
      O => \ALU_OUT_OBUF[8]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => D1_IBUF(12),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => D1_IBUF(15),
      I4 => p_0_in(4),
      I5 => D1_IBUF(8),
      O => \ALU_OUT_OBUF[8]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1_IBUF(5),
      I4 => p_0_in(3),
      O => \ALU_OUT_OBUF[8]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(1),
      I1 => D2_IBUF(2),
      I2 => D2_IBUF(4),
      I3 => D1_IBUF(5),
      I4 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[8]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(8),
      I1 => data2(8),
      I2 => ALU_OPP_IBUF(1),
      I3 => data1(8),
      I4 => ALU_OPP_IBUF(0),
      I5 => data0(8),
      O => \ALU_OUT_OBUF[8]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(8),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(8),
      O => \ALU_OUT_OBUF[8]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(8),
      I1 => \ALU_OUT_OBUF[8]_inst_i_7_n_0\,
      O => data3(8),
      S => D2_IBUF(15)
    );
\ALU_OUT_OBUF[8]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT_OBUF[8]_inst_i_8_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => \ALU_OUT_OBUF[8]_inst_i_9_n_0\,
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[9]_inst_i_9_n_0\,
      O => data2(8)
    );
\ALU_OUT_OBUF[8]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[9]_inst_i_11_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[8]_inst_i_10_n_0\,
      I3 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I4 => D1_IBUF(15),
      O => SHIFT_RIGHT0(8)
    );
\ALU_OUT_OBUF[8]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[8]_inst_i_11_n_0\,
      I2 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I3 => D1_IBUF(0),
      I4 => \ALU_OUT_OBUF[11]_inst_i_23_n_4\,
      O => \ALU_OUT_OBUF[8]_inst_i_7_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[8]_inst_i_12_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[9]_inst_i_12_n_0\,
      I4 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[8]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_14_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[8]_inst_i_13_n_0\,
      O => \ALU_OUT_OBUF[8]_inst_i_9_n_0\
    );
\ALU_OUT_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALU_OUT_OBUF(9),
      O => ALU_OUT(9)
    );
\ALU_OUT_OBUF[9]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT_OBUF[9]_inst_i_2_n_0\,
      I1 => \ALU_OUT_OBUF[9]_inst_i_3_n_0\,
      O => ALU_OUT_OBUF(9),
      S => ALU_OPP_IBUF(3)
    );
\ALU_OUT_OBUF[9]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[9]_inst_i_14_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[11]_inst_i_32_n_0\,
      O => \ALU_OUT_OBUF[9]_inst_i_10_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[9]_inst_i_15_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[9]_inst_i_16_n_0\,
      O => \ALU_OUT_OBUF[9]_inst_i_11_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT_OBUF[9]_inst_i_17_n_0\,
      I1 => D2_IBUF(1),
      I2 => \ALU_OUT_OBUF[11]_inst_i_39_n_0\,
      O => \ALU_OUT_OBUF[9]_inst_i_12_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1_IBUF(9),
      I4 => p_0_in(3),
      O => \ALU_OUT_OBUF[9]_inst_i_13_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1_IBUF(6),
      I4 => p_0_in(3),
      O => \ALU_OUT_OBUF[9]_inst_i_14_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => D1_IBUF(15),
      I3 => p_0_in(4),
      I4 => D1_IBUF(11),
      O => \ALU_OUT_OBUF[9]_inst_i_15_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => D1_IBUF(13),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => D1_IBUF(15),
      I4 => p_0_in(4),
      I5 => D1_IBUF(9),
      O => \ALU_OUT_OBUF[9]_inst_i_16_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => D2_IBUF(2),
      I2 => D2_IBUF(4),
      I3 => D1_IBUF(6),
      I4 => D2_IBUF(3),
      O => \ALU_OUT_OBUF[9]_inst_i_17_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(9),
      I1 => data2(9),
      I2 => ALU_OPP_IBUF(1),
      I3 => data1(9),
      I4 => ALU_OPP_IBUF(0),
      I5 => data0(9),
      O => \ALU_OUT_OBUF[9]_inst_i_2_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP_IBUF(2),
      I1 => ALU_OPP_IBUF(1),
      I2 => D2_IBUF(9),
      I3 => ALU_OPP_IBUF(0),
      I4 => D1_IBUF(9),
      O => \ALU_OUT_OBUF[9]_inst_i_3_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4FFFFF4E40000"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => \ALU_OUT_OBUF[9]_inst_i_6_n_0\,
      I2 => D1_IBUF(0),
      I3 => \ALU_OUT_OBUF[11]_inst_i_9_n_7\,
      I4 => D2_IBUF(15),
      I5 => SHIFT_RIGHT0(9),
      O => data3(9)
    );
\ALU_OUT_OBUF[9]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT_OBUF[9]_inst_i_8_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => \ALU_OUT_OBUF[9]_inst_i_9_n_0\,
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[10]_inst_i_9_n_0\,
      O => data2(9)
    );
\ALU_OUT_OBUF[9]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I1 => \ALU_OUT_OBUF[10]_inst_i_10_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[9]_inst_i_10_n_0\,
      O => \ALU_OUT_OBUF[9]_inst_i_6_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT_OBUF[10]_inst_i_11_n_0\,
      I1 => D2_IBUF(0),
      I2 => \ALU_OUT_OBUF[9]_inst_i_11_n_0\,
      I3 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I4 => D1_IBUF(15),
      O => SHIFT_RIGHT0(9)
    );
\ALU_OUT_OBUF[9]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2_IBUF(15),
      I1 => \ALU_OUT_OBUF[9]_inst_i_12_n_0\,
      I2 => D2_IBUF(0),
      I3 => \ALU_OUT_OBUF[10]_inst_i_12_n_0\,
      I4 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      O => \ALU_OUT_OBUF[9]_inst_i_8_n_0\
    );
\ALU_OUT_OBUF[9]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT_OBUF[11]_inst_i_30_n_0\,
      I1 => D2_IBUF(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2_IBUF(15),
      I4 => \ALU_OUT_OBUF[9]_inst_i_13_n_0\,
      O => \ALU_OUT_OBUF[9]_inst_i_9_n_0\
    );
BIGGER_ZERO_FLAG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => BIGGER_ZERO_FLAG_OBUF,
      O => BIGGER_ZERO_FLAG
    );
BIGGER_ZERO_FLAG_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => BIGGER_ZERO_FLAG_OBUF_inst_i_2_n_0,
      I1 => BIGGER_ZERO_FLAG_OBUF_inst_i_3_n_0,
      I2 => BIGGER_ZERO_FLAG_OBUF_inst_i_4_n_0,
      I3 => SMALLER_ZERO_FLAG_OBUF,
      O => BIGGER_ZERO_FLAG_OBUF
    );
BIGGER_ZERO_FLAG_OBUF_inst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALU_OUT_OBUF(10),
      I1 => ALU_OUT_OBUF(11),
      I2 => ALU_OUT_OBUF(8),
      I3 => ALU_OUT_OBUF(9),
      O => BIGGER_ZERO_FLAG_OBUF_inst_i_2_n_0
    );
BIGGER_ZERO_FLAG_OBUF_inst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALU_OUT_OBUF(14),
      I1 => CARRY_FLAG_OBUF,
      I2 => ALU_OUT_OBUF(12),
      I3 => ALU_OUT_OBUF(13),
      O => BIGGER_ZERO_FLAG_OBUF_inst_i_3_n_0
    );
BIGGER_ZERO_FLAG_OBUF_inst_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ALU_OUT_OBUF(5),
      I1 => ALU_OUT_OBUF(4),
      I2 => ALU_OUT_OBUF(7),
      I3 => ALU_OUT_OBUF(6),
      I4 => BIGGER_ZERO_FLAG_OBUF_inst_i_5_n_0,
      O => BIGGER_ZERO_FLAG_OBUF_inst_i_4_n_0
    );
BIGGER_ZERO_FLAG_OBUF_inst_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALU_OUT_OBUF(2),
      I1 => ALU_OUT_OBUF(3),
      I2 => ALU_OUT_OBUF(0),
      I3 => ALU_OUT_OBUF(1),
      O => BIGGER_ZERO_FLAG_OBUF_inst_i_5_n_0
    );
CARRY_FLAG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CARRY_FLAG_OBUF,
      O => CARRY_FLAG
    );
CARRY_FLAG_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_2_n_0,
      I1 => ALU_OPP_IBUF(1),
      I2 => data2(16),
      I3 => ALU_OPP_IBUF(0),
      I4 => data3(16),
      I5 => ALU_OPP_IBUF(3),
      O => CARRY_FLAG_OBUF
    );
CARRY_FLAG_OBUF_inst_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => CARRY_FLAG_OBUF_inst_i_23_n_0,
      CO(3 downto 1) => NLW_CARRY_FLAG_OBUF_inst_i_10_CO_UNCONNECTED(3 downto 1),
      CO(0) => CARRY_FLAG_OBUF_inst_i_10_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY_FLAG_OBUF_inst_i_10_O_UNCONNECTED(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => CARRY_FLAG_OBUF_inst_i_24_n_0
    );
CARRY_FLAG_OBUF_inst_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC888C844400040"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => CARRY_FLAG_OBUF_inst_i_25_n_0,
      I3 => p_0_in(1),
      I4 => CARRY_FLAG_OBUF_inst_i_26_n_0,
      I5 => CARRY_FLAG_OBUF_inst_i_27_n_0,
      O => CARRY_FLAG_OBUF_inst_i_11_n_0
    );
CARRY_FLAG_OBUF_inst_i_12: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[11]_inst_i_9_n_0\,
      CO(3 downto 0) => NLW_CARRY_FLAG_OBUF_inst_i_12_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3) => CARRY_FLAG_OBUF_inst_i_12_n_4,
      O(2) => CARRY_FLAG_OBUF_inst_i_12_n_5,
      O(1) => CARRY_FLAG_OBUF_inst_i_12_n_6,
      O(0) => CARRY_FLAG_OBUF_inst_i_12_n_7,
      S(3) => CARRY_FLAG_OBUF_inst_i_28_n_0,
      S(2) => CARRY_FLAG_OBUF_inst_i_29_n_0,
      S(1) => CARRY_FLAG_OBUF_inst_i_30_n_0,
      S(0) => CARRY_FLAG_OBUF_inst_i_31_n_0
    );
CARRY_FLAG_OBUF_inst_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => D2_IBUF(3),
      I2 => D1_IBUF(12),
      I3 => D2_IBUF(4),
      I4 => D2_IBUF(2),
      I5 => CARRY_FLAG_OBUF_inst_i_32_n_0,
      O => CARRY_FLAG_OBUF_inst_i_13_n_0
    );
CARRY_FLAG_OBUF_inst_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_33_n_0,
      I1 => D2_IBUF(2),
      I2 => D1_IBUF(6),
      I3 => D2_IBUF(3),
      I4 => D1_IBUF(14),
      I5 => D2_IBUF(4),
      O => CARRY_FLAG_OBUF_inst_i_14_n_0
    );
CARRY_FLAG_OBUF_inst_i_15: unisim.vcomponents.CARRY4
     port map (
      CI => CARRY_FLAG_OBUF_inst_i_34_n_0,
      CO(3) => CARRY_FLAG_OBUF_inst_i_15_n_0,
      CO(2 downto 0) => NLW_CARRY_FLAG_OBUF_inst_i_15_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0100",
      O(3) => NLW_CARRY_FLAG_OBUF_inst_i_15_O_UNCONNECTED(3),
      O(2 downto 0) => SHIFT_LEFT2(15 downto 13),
      S(3) => '1',
      S(2) => CARRY_FLAG_OBUF_inst_i_35_n_0,
      S(1) => CARRY_FLAG_OBUF_inst_i_36_n_0,
      S(0) => CARRY_FLAG_OBUF_inst_i_37_n_0
    );
CARRY_FLAG_OBUF_inst_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(14),
      I1 => D2_IBUF(14),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(13),
      I4 => D2_IBUF(13),
      O => CARRY_FLAG_OBUF_inst_i_16_n_0
    );
CARRY_FLAG_OBUF_inst_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFACFCA"
    )
        port map (
      I0 => D2_IBUF(7),
      I1 => SHIFT_LEFT2(7),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(8),
      I4 => SHIFT_LEFT2(8),
      I5 => \ALU_OUT_OBUF[2]_inst_i_22_n_0\,
      O => CARRY_FLAG_OBUF_inst_i_17_n_0
    );
CARRY_FLAG_OBUF_inst_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFACFCA"
    )
        port map (
      I0 => D2_IBUF(11),
      I1 => SHIFT_LEFT2(11),
      I2 => D2_IBUF(15),
      I3 => D2_IBUF(12),
      I4 => SHIFT_LEFT2(12),
      I5 => \ALU_OUT_OBUF[2]_inst_i_20_n_0\,
      O => CARRY_FLAG_OBUF_inst_i_18_n_0
    );
CARRY_FLAG_OBUF_inst_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => SHIFT_LEFT2(2),
      I2 => D2_IBUF(15),
      O => p_0_in(2)
    );
CARRY_FLAG_OBUF_inst_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data1__0\(16),
      I1 => ALU_OPP_IBUF(0),
      I2 => \data0__0\(16),
      O => CARRY_FLAG_OBUF_inst_i_2_n_0
    );
CARRY_FLAG_OBUF_inst_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => SHIFT_LEFT2(4),
      I2 => D2_IBUF(15),
      O => p_0_in(4)
    );
CARRY_FLAG_OBUF_inst_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D2_IBUF(3),
      I1 => SHIFT_LEFT2(3),
      I2 => D2_IBUF(15),
      O => p_0_in(3)
    );
CARRY_FLAG_OBUF_inst_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D2_IBUF(1),
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(15),
      O => p_0_in(1)
    );
CARRY_FLAG_OBUF_inst_i_23: unisim.vcomponents.CARRY4
     port map (
      CI => CARRY_FLAG_OBUF_inst_i_39_n_0,
      CO(3) => CARRY_FLAG_OBUF_inst_i_23_n_0,
      CO(2 downto 0) => NLW_CARRY_FLAG_OBUF_inst_i_23_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3) => CARRY_FLAG_OBUF_inst_i_40_n_0,
      DI(2) => CARRY_FLAG_OBUF_inst_i_41_n_0,
      DI(1) => CARRY_FLAG_OBUF_inst_i_42_n_0,
      DI(0) => CARRY_FLAG_OBUF_inst_i_43_n_0,
      O(3 downto 0) => NLW_CARRY_FLAG_OBUF_inst_i_23_O_UNCONNECTED(3 downto 0),
      S(3) => CARRY_FLAG_OBUF_inst_i_44_n_0,
      S(2) => CARRY_FLAG_OBUF_inst_i_45_n_0,
      S(1) => CARRY_FLAG_OBUF_inst_i_46_n_0,
      S(0) => CARRY_FLAG_OBUF_inst_i_47_n_0
    );
CARRY_FLAG_OBUF_inst_i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(15),
      O => CARRY_FLAG_OBUF_inst_i_24_n_0
    );
CARRY_FLAG_OBUF_inst_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => D1_IBUF(4),
      I1 => p_0_in(3),
      I2 => D1_IBUF(12),
      I3 => p_0_in(4),
      I4 => p_0_in(2),
      I5 => CARRY_FLAG_OBUF_inst_i_48_n_0,
      O => CARRY_FLAG_OBUF_inst_i_25_n_0
    );
CARRY_FLAG_OBUF_inst_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_49_n_0,
      I1 => p_0_in(2),
      I2 => D1_IBUF(6),
      I3 => p_0_in(3),
      I4 => D1_IBUF(14),
      I5 => p_0_in(4),
      O => CARRY_FLAG_OBUF_inst_i_26_n_0
    );
CARRY_FLAG_OBUF_inst_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT_OBUF[13]_inst_i_17_n_0\,
      I1 => p_0_in(1),
      I2 => CARRY_FLAG_OBUF_inst_i_50_n_0,
      I3 => p_0_in(2),
      I4 => CARRY_FLAG_OBUF_inst_i_51_n_0,
      O => CARRY_FLAG_OBUF_inst_i_27_n_0
    );
CARRY_FLAG_OBUF_inst_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => p_0_in(4),
      I2 => CARRY_FLAG_OBUF_inst_i_52_n_0,
      I3 => p_0_in(3),
      I4 => p_0_in(1),
      I5 => p_0_in(2),
      O => CARRY_FLAG_OBUF_inst_i_28_n_0
    );
CARRY_FLAG_OBUF_inst_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAFFFFFFFFFFFFF"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_53_n_0,
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => p_0_in(2),
      O => CARRY_FLAG_OBUF_inst_i_29_n_0
    );
CARRY_FLAG_OBUF_inst_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CAA00AA"
    )
        port map (
      I0 => SHIFT_LEFT00_in(16),
      I1 => CARRY_FLAG_OBUF_inst_i_8_n_0,
      I2 => D2_IBUF(0),
      I3 => D2_IBUF(15),
      I4 => CARRY_FLAG_OBUF_inst_i_9_n_0,
      O => data2(16)
    );
CARRY_FLAG_OBUF_inst_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBAFFFFFFFFF"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_53_n_0,
      I1 => SHIFT_LEFT2(1),
      I2 => D2_IBUF(1),
      I3 => D2_IBUF(15),
      I4 => D2_IBUF(0),
      I5 => p_0_in(2),
      O => CARRY_FLAG_OBUF_inst_i_30_n_0
    );
CARRY_FLAG_OBUF_inst_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFBBBFFFFFFFF"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_53_n_0,
      I1 => D2_IBUF(0),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(1),
      I4 => D2_IBUF(1),
      I5 => p_0_in(2),
      O => CARRY_FLAG_OBUF_inst_i_31_n_0
    );
CARRY_FLAG_OBUF_inst_i_32: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => D1_IBUF(8),
      I1 => D2_IBUF(3),
      I2 => D1_IBUF(0),
      I3 => D2_IBUF(4),
      I4 => D1_IBUF(15),
      O => CARRY_FLAG_OBUF_inst_i_32_n_0
    );
CARRY_FLAG_OBUF_inst_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => D2_IBUF(3),
      I2 => D1_IBUF(10),
      I3 => D2_IBUF(4),
      O => CARRY_FLAG_OBUF_inst_i_33_n_0
    );
CARRY_FLAG_OBUF_inst_i_34: unisim.vcomponents.CARRY4
     port map (
      CI => CARRY_FLAG_OBUF_inst_i_38_n_0,
      CO(3) => CARRY_FLAG_OBUF_inst_i_34_n_0,
      CO(2 downto 0) => NLW_CARRY_FLAG_OBUF_inst_i_34_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SHIFT_LEFT2(12 downto 9),
      S(3) => CARRY_FLAG_OBUF_inst_i_54_n_0,
      S(2) => CARRY_FLAG_OBUF_inst_i_55_n_0,
      S(1) => CARRY_FLAG_OBUF_inst_i_56_n_0,
      S(0) => CARRY_FLAG_OBUF_inst_i_57_n_0
    );
CARRY_FLAG_OBUF_inst_i_35: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(15),
      O => CARRY_FLAG_OBUF_inst_i_35_n_0
    );
CARRY_FLAG_OBUF_inst_i_36: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(14),
      O => CARRY_FLAG_OBUF_inst_i_36_n_0
    );
CARRY_FLAG_OBUF_inst_i_37: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(13),
      O => CARRY_FLAG_OBUF_inst_i_37_n_0
    );
CARRY_FLAG_OBUF_inst_i_38: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[10]_inst_i_13_n_0\,
      CO(3) => CARRY_FLAG_OBUF_inst_i_38_n_0,
      CO(2 downto 0) => NLW_CARRY_FLAG_OBUF_inst_i_38_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SHIFT_LEFT2(8 downto 5),
      S(3) => CARRY_FLAG_OBUF_inst_i_58_n_0,
      S(2) => CARRY_FLAG_OBUF_inst_i_59_n_0,
      S(1) => CARRY_FLAG_OBUF_inst_i_60_n_0,
      S(0) => CARRY_FLAG_OBUF_inst_i_61_n_0
    );
CARRY_FLAG_OBUF_inst_i_39: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CARRY_FLAG_OBUF_inst_i_39_n_0,
      CO(2 downto 0) => NLW_CARRY_FLAG_OBUF_inst_i_39_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3) => CARRY_FLAG_OBUF_inst_i_62_n_0,
      DI(2) => D2_IBUF(5),
      DI(1) => CARRY_FLAG_OBUF_inst_i_63_n_0,
      DI(0) => D2_IBUF(1),
      O(3 downto 0) => NLW_CARRY_FLAG_OBUF_inst_i_39_O_UNCONNECTED(3 downto 0),
      S(3) => CARRY_FLAG_OBUF_inst_i_64_n_0,
      S(2) => CARRY_FLAG_OBUF_inst_i_65_n_0,
      S(1) => CARRY_FLAG_OBUF_inst_i_66_n_0,
      S(0) => CARRY_FLAG_OBUF_inst_i_67_n_0
    );
CARRY_FLAG_OBUF_inst_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4FFFFF4E40000"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_10_n_3,
      I1 => CARRY_FLAG_OBUF_inst_i_11_n_0,
      I2 => D1_IBUF(0),
      I3 => CARRY_FLAG_OBUF_inst_i_12_n_4,
      I4 => D2_IBUF(15),
      I5 => D1_IBUF(15),
      O => data3(16)
    );
CARRY_FLAG_OBUF_inst_i_40: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(14),
      I1 => D2_IBUF(15),
      O => CARRY_FLAG_OBUF_inst_i_40_n_0
    );
CARRY_FLAG_OBUF_inst_i_41: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(12),
      I1 => D2_IBUF(13),
      O => CARRY_FLAG_OBUF_inst_i_41_n_0
    );
CARRY_FLAG_OBUF_inst_i_42: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(10),
      I1 => D2_IBUF(11),
      O => CARRY_FLAG_OBUF_inst_i_42_n_0
    );
CARRY_FLAG_OBUF_inst_i_43: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(8),
      I1 => D2_IBUF(9),
      O => CARRY_FLAG_OBUF_inst_i_43_n_0
    );
CARRY_FLAG_OBUF_inst_i_44: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(14),
      I1 => D2_IBUF(15),
      O => CARRY_FLAG_OBUF_inst_i_44_n_0
    );
CARRY_FLAG_OBUF_inst_i_45: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(12),
      I1 => D2_IBUF(13),
      O => CARRY_FLAG_OBUF_inst_i_45_n_0
    );
CARRY_FLAG_OBUF_inst_i_46: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(10),
      I1 => D2_IBUF(11),
      O => CARRY_FLAG_OBUF_inst_i_46_n_0
    );
CARRY_FLAG_OBUF_inst_i_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(8),
      I1 => D2_IBUF(9),
      O => CARRY_FLAG_OBUF_inst_i_47_n_0
    );
CARRY_FLAG_OBUF_inst_i_48: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => D1_IBUF(8),
      I1 => p_0_in(3),
      I2 => D1_IBUF(0),
      I3 => p_0_in(4),
      I4 => D1_IBUF(15),
      O => CARRY_FLAG_OBUF_inst_i_48_n_0
    );
CARRY_FLAG_OBUF_inst_i_49: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1_IBUF(2),
      I1 => p_0_in(3),
      I2 => D1_IBUF(10),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => CARRY_FLAG_OBUF_inst_i_49_n_0
    );
CARRY_FLAG_OBUF_inst_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[15]_inst_i_6_n_0\,
      CO(3 downto 0) => NLW_CARRY_FLAG_OBUF_inst_i_5_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_CARRY_FLAG_OBUF_inst_i_5_O_UNCONNECTED(3 downto 1),
      O(0) => \data1__0\(16),
      S(3 downto 0) => B"0001"
    );
CARRY_FLAG_OBUF_inst_i_50: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1_IBUF(3),
      I1 => p_0_in(3),
      I2 => D1_IBUF(11),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => CARRY_FLAG_OBUF_inst_i_50_n_0
    );
CARRY_FLAG_OBUF_inst_i_51: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1_IBUF(7),
      I1 => p_0_in(3),
      I2 => D1_IBUF(15),
      I3 => D2_IBUF(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2_IBUF(4),
      O => CARRY_FLAG_OBUF_inst_i_51_n_0
    );
CARRY_FLAG_OBUF_inst_i_52: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_68_n_0,
      I1 => CARRY_FLAG_OBUF_inst_i_69_n_0,
      I2 => p_0_in(5),
      I3 => CARRY_FLAG_OBUF_inst_i_71_n_0,
      I4 => CARRY_FLAG_OBUF_inst_i_72_n_0,
      I5 => CARRY_FLAG_OBUF_inst_i_73_n_0,
      O => CARRY_FLAG_OBUF_inst_i_52_n_0
    );
CARRY_FLAG_OBUF_inst_i_53: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBEAFFEEFBFBFFFF"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_52_n_0,
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2_IBUF(4),
      I4 => SHIFT_LEFT2(3),
      I5 => D2_IBUF(3),
      O => CARRY_FLAG_OBUF_inst_i_53_n_0
    );
CARRY_FLAG_OBUF_inst_i_54: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(12),
      O => CARRY_FLAG_OBUF_inst_i_54_n_0
    );
CARRY_FLAG_OBUF_inst_i_55: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(11),
      O => CARRY_FLAG_OBUF_inst_i_55_n_0
    );
CARRY_FLAG_OBUF_inst_i_56: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(10),
      O => CARRY_FLAG_OBUF_inst_i_56_n_0
    );
CARRY_FLAG_OBUF_inst_i_57: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(9),
      O => CARRY_FLAG_OBUF_inst_i_57_n_0
    );
CARRY_FLAG_OBUF_inst_i_58: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(8),
      O => CARRY_FLAG_OBUF_inst_i_58_n_0
    );
CARRY_FLAG_OBUF_inst_i_59: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(7),
      O => CARRY_FLAG_OBUF_inst_i_59_n_0
    );
CARRY_FLAG_OBUF_inst_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_OBUF[15]_inst_i_7_n_0\,
      CO(3 downto 0) => NLW_CARRY_FLAG_OBUF_inst_i_6_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_CARRY_FLAG_OBUF_inst_i_6_O_UNCONNECTED(3 downto 1),
      O(0) => \data0__0\(16),
      S(3 downto 0) => B"0001"
    );
CARRY_FLAG_OBUF_inst_i_60: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(6),
      O => CARRY_FLAG_OBUF_inst_i_60_n_0
    );
CARRY_FLAG_OBUF_inst_i_61: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(5),
      O => CARRY_FLAG_OBUF_inst_i_61_n_0
    );
CARRY_FLAG_OBUF_inst_i_62: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(6),
      I1 => D2_IBUF(7),
      O => CARRY_FLAG_OBUF_inst_i_62_n_0
    );
CARRY_FLAG_OBUF_inst_i_63: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D2_IBUF(3),
      O => CARRY_FLAG_OBUF_inst_i_63_n_0
    );
CARRY_FLAG_OBUF_inst_i_64: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(6),
      I1 => D2_IBUF(7),
      O => CARRY_FLAG_OBUF_inst_i_64_n_0
    );
CARRY_FLAG_OBUF_inst_i_65: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => D2_IBUF(4),
      I1 => D2_IBUF(5),
      O => CARRY_FLAG_OBUF_inst_i_65_n_0
    );
CARRY_FLAG_OBUF_inst_i_66: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2_IBUF(2),
      I1 => D2_IBUF(3),
      O => CARRY_FLAG_OBUF_inst_i_66_n_0
    );
CARRY_FLAG_OBUF_inst_i_67: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => D2_IBUF(0),
      I1 => D2_IBUF(1),
      O => CARRY_FLAG_OBUF_inst_i_67_n_0
    );
CARRY_FLAG_OBUF_inst_i_68: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(6),
      I1 => D2_IBUF(6),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(7),
      I4 => D2_IBUF(7),
      O => CARRY_FLAG_OBUF_inst_i_68_n_0
    );
CARRY_FLAG_OBUF_inst_i_69: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(8),
      I1 => D2_IBUF(8),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(9),
      I4 => D2_IBUF(9),
      O => CARRY_FLAG_OBUF_inst_i_69_n_0
    );
CARRY_FLAG_OBUF_inst_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \ALU_OUT_OBUF[15]_inst_i_9_n_0\,
      I1 => CARRY_FLAG_OBUF_inst_i_13_n_0,
      I2 => D2_IBUF(1),
      I3 => CARRY_FLAG_OBUF_inst_i_14_n_0,
      I4 => D2_IBUF(0),
      I5 => \ALU_OUT_OBUF[15]_inst_i_10_n_0\,
      O => SHIFT_LEFT00_in(16)
    );
CARRY_FLAG_OBUF_inst_i_70: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D2_IBUF(5),
      I1 => SHIFT_LEFT2(5),
      I2 => D2_IBUF(15),
      O => p_0_in(5)
    );
CARRY_FLAG_OBUF_inst_i_71: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACCFFCC"
    )
        port map (
      I0 => SHIFT_LEFT2(15),
      I1 => D2_IBUF(14),
      I2 => SHIFT_LEFT2(14),
      I3 => D2_IBUF(15),
      I4 => CARRY_FLAG_OBUF_inst_i_15_n_0,
      O => CARRY_FLAG_OBUF_inst_i_71_n_0
    );
CARRY_FLAG_OBUF_inst_i_72: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(10),
      I1 => D2_IBUF(10),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(11),
      I4 => D2_IBUF(11),
      O => CARRY_FLAG_OBUF_inst_i_72_n_0
    );
CARRY_FLAG_OBUF_inst_i_73: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(12),
      I1 => D2_IBUF(12),
      I2 => D2_IBUF(15),
      I3 => SHIFT_LEFT2(13),
      I4 => D2_IBUF(13),
      O => CARRY_FLAG_OBUF_inst_i_73_n_0
    );
CARRY_FLAG_OBUF_inst_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000003B"
    )
        port map (
      I0 => CARRY_FLAG_OBUF_inst_i_15_n_0,
      I1 => D2_IBUF(15),
      I2 => SHIFT_LEFT2(15),
      I3 => CARRY_FLAG_OBUF_inst_i_16_n_0,
      I4 => CARRY_FLAG_OBUF_inst_i_17_n_0,
      I5 => CARRY_FLAG_OBUF_inst_i_18_n_0,
      O => CARRY_FLAG_OBUF_inst_i_8_n_0
    );
CARRY_FLAG_OBUF_inst_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(4),
      I2 => D1_IBUF(15),
      I3 => p_0_in(3),
      I4 => p_0_in(1),
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
      I0 => ALU_OUT_OBUF(14),
      I1 => ALU_OUT_OBUF(13),
      I2 => ALU_OUT_OBUF(12),
      I3 => CARRY_FLAG_OBUF,
      I4 => NOT_ZERO_FLAG_OBUF_inst_i_2_n_0,
      I5 => SMALLER_ZERO_FLAG_OBUF,
      O => NOT_ZERO_FLAG_OBUF
    );
NOT_ZERO_FLAG_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ZERO_FLAG_OBUF_inst_i_5_n_0,
      I1 => NOT_ZERO_FLAG_OBUF_inst_i_3_n_0,
      I2 => ZERO_FLAG_OBUF_inst_i_3_n_0,
      I3 => ALU_OUT_OBUF(11),
      I4 => ALU_OUT_OBUF(10),
      I5 => ALU_OUT_OBUF(9),
      O => NOT_ZERO_FLAG_OBUF_inst_i_2_n_0
    );
NOT_ZERO_FLAG_OBUF_inst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ALU_OUT_OBUF(2),
      I1 => ALU_OUT_OBUF(1),
      I2 => ALU_OUT_OBUF(0),
      I3 => ALU_OUT_OBUF(5),
      I4 => ALU_OUT_OBUF(4),
      I5 => ALU_OUT_OBUF(3),
      O => NOT_ZERO_FLAG_OBUF_inst_i_3_n_0
    );
OVERFLOW_FLAG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => OVERFLOW_FLAG_OBUF,
      O => OVERFLOW_FLAG
    );
OVERFLOW_FLAG_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1482"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_OBUF,
      I1 => D2_IBUF(15),
      I2 => ALU_OPP_IBUF(0),
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
      INIT => X"0000000000010000"
    )
        port map (
      I0 => ALU_OUT_OBUF(14),
      I1 => ALU_OUT_OBUF(13),
      I2 => ALU_OUT_OBUF(12),
      I3 => SMALLER_ZERO_FLAG_OBUF,
      I4 => ZERO_FLAG_OBUF_inst_i_2_n_0,
      I5 => CARRY_FLAG_OBUF,
      O => ZERO_FLAG_OBUF
    );
ZERO_FLAG_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => ALU_OUT_OBUF(9),
      I1 => ZERO_FLAG_OBUF_inst_i_3_n_0,
      I2 => ZERO_FLAG_OBUF_inst_i_4_n_0,
      I3 => ZERO_FLAG_OBUF_inst_i_5_n_0,
      I4 => ALU_OUT_OBUF(11),
      I5 => ALU_OUT_OBUF(10),
      O => ZERO_FLAG_OBUF_inst_i_2_n_0
    );
ZERO_FLAG_OBUF_inst_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ALU_OUT_OBUF(8),
      I1 => ALU_OUT_OBUF(7),
      I2 => ALU_OUT_OBUF(6),
      O => ZERO_FLAG_OBUF_inst_i_3_n_0
    );
ZERO_FLAG_OBUF_inst_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => ALU_OUT_OBUF(3),
      I1 => ALU_OUT_OBUF(0),
      I2 => ALU_OUT_OBUF(1),
      I3 => ALU_OUT_OBUF(2),
      I4 => ALU_OUT_OBUF(5),
      I5 => ALU_OUT_OBUF(4),
      O => ZERO_FLAG_OBUF_inst_i_4_n_0
    );
ZERO_FLAG_OBUF_inst_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ALU_OUT_OBUF(7),
      I1 => ALU_OUT_OBUF(8),
      O => ZERO_FLAG_OBUF_inst_i_5_n_0
    );
end STRUCTURE;
