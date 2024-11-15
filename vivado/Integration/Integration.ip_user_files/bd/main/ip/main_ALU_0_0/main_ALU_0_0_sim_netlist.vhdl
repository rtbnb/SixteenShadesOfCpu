-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Nov 14 17:52:34 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_ALU_0_0/main_ALU_0_0_sim_netlist.vhdl
-- Design      : main_ALU_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_ALU_0_0_ALU is
  port (
    ALU_OPP_3_sp_1 : out STD_LOGIC;
    \ALU_OPP[3]_0\ : out STD_LOGIC;
    \ALU_OPP[3]_1\ : out STD_LOGIC;
    \ALU_OPP[3]_2\ : out STD_LOGIC;
    \ALU_OPP[3]_3\ : out STD_LOGIC;
    \ALU_OPP[3]_4\ : out STD_LOGIC;
    \ALU_OPP[3]_5\ : out STD_LOGIC;
    \ALU_OPP[3]_6\ : out STD_LOGIC;
    \ALU_OPP[3]_7\ : out STD_LOGIC;
    BIGGER_ZERO_FLAG : out STD_LOGIC;
    \ALU_OPP[3]_8\ : out STD_LOGIC;
    ALU_OPP_1_sp_1 : out STD_LOGIC;
    NOT_ZERO_FLAG : out STD_LOGIC;
    \ALU_OPP[3]_9\ : out STD_LOGIC;
    \ALU_OPP[3]_10\ : out STD_LOGIC;
    \ALU_OPP[3]_11\ : out STD_LOGIC;
    ZERO_FLAG : out STD_LOGIC;
    \ALU_OPP[3]_12\ : out STD_LOGIC;
    ALU_OUT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OVERFLOW_FLAG : out STD_LOGIC;
    ALU_OPP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    D1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_ALU_0_0_ALU : entity is "ALU";
end main_ALU_0_0_ALU;

architecture STRUCTURE of main_ALU_0_0_ALU is
  signal \^alu_opp[3]_0\ : STD_LOGIC;
  signal \^alu_opp[3]_1\ : STD_LOGIC;
  signal \^alu_opp[3]_10\ : STD_LOGIC;
  signal \^alu_opp[3]_11\ : STD_LOGIC;
  signal \^alu_opp[3]_12\ : STD_LOGIC;
  signal \^alu_opp[3]_2\ : STD_LOGIC;
  signal \^alu_opp[3]_3\ : STD_LOGIC;
  signal \^alu_opp[3]_4\ : STD_LOGIC;
  signal \^alu_opp[3]_5\ : STD_LOGIC;
  signal \^alu_opp[3]_6\ : STD_LOGIC;
  signal \^alu_opp[3]_7\ : STD_LOGIC;
  signal \^alu_opp[3]_8\ : STD_LOGIC;
  signal \^alu_opp[3]_9\ : STD_LOGIC;
  signal ALU_OPP_1_sn_1 : STD_LOGIC;
  signal ALU_OPP_3_sn_1 : STD_LOGIC;
  signal \^alu_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ALU_OUT[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__0_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__0_n_1\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__0_n_2\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__0_n_3\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__1_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__1_n_1\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__1_n_2\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__1_n_3\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__2_n_1\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__2_n_2\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__2_n_3\ : STD_LOGIC;
  signal ALU_OUT_Internal0_carry_i_1_n_0 : STD_LOGIC;
  signal ALU_OUT_Internal0_carry_i_2_n_0 : STD_LOGIC;
  signal ALU_OUT_Internal0_carry_i_3_n_0 : STD_LOGIC;
  signal ALU_OUT_Internal0_carry_i_4_n_0 : STD_LOGIC;
  signal ALU_OUT_Internal0_carry_n_0 : STD_LOGIC;
  signal ALU_OUT_Internal0_carry_n_1 : STD_LOGIC;
  signal ALU_OUT_Internal0_carry_n_2 : STD_LOGIC;
  signal ALU_OUT_Internal0_carry_n_3 : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal BIGGER_ZERO_FLAG_INST_0_i_1_n_0 : STD_LOGIC;
  signal BIGGER_ZERO_FLAG_INST_0_i_2_n_0 : STD_LOGIC;
  signal BIGGER_ZERO_FLAG_INST_0_i_3_n_0 : STD_LOGIC;
  signal BIGGER_ZERO_FLAG_INST_0_i_4_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_10_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_11_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_12_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_13_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_14_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_15_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_16_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_17_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_18_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_19_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_1_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_20_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_21_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_5_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_6_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_7_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_8_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_9_n_0 : STD_LOGIC;
  signal NOT_ZERO_FLAG_INST_0_i_1_n_0 : STD_LOGIC;
  signal NOT_ZERO_FLAG_INST_0_i_2_n_0 : STD_LOGIC;
  signal SHIFT_LEFT0 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal SHIFT_LEFT00_in : STD_LOGIC_VECTOR ( 16 to 16 );
  signal SHIFT_LEFT2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal SHIFT_RIGHT0 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \SHIFT_RIGHT2_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \SHIFT_RIGHT2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \SHIFT_RIGHT2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \SHIFT_RIGHT2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \SHIFT_RIGHT2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \SHIFT_RIGHT2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_1\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_2\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_3\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_4\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_5\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_6\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_7\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_1\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_2\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_3\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_4\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_5\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_6\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_7\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_13_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_14_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_1\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_2\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_3\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_4\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_5\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_6\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_7\ : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_2_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_3_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_4_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_5_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_6_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_1 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_2 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_3 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_4 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_5 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_6 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_7 : STD_LOGIC;
  signal SHIFT_RIGHT4 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SMALLER_ZERO_FLAG_INST_0_i_10_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_11_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_12_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_13_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_14_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_15_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_16_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_17_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_18_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_1_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_2_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_5_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_6_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_7_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_8_n_0 : STD_LOGIC;
  signal ZERO_FLAG_INST_0_i_1_n_0 : STD_LOGIC;
  signal ZERO_FLAG_INST_0_i_2_n_0 : STD_LOGIC;
  signal ZERO_FLAG_INST_0_i_3_n_0 : STD_LOGIC;
  signal ZERO_FLAG_INST_0_i_4_n_0 : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \data0__0\ : STD_LOGIC_VECTOR ( 16 to 16 );
  signal data1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \data1__0\ : STD_LOGIC_VECTOR ( 16 to 16 );
  signal data2 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal \NLW_ALU_OUT_Internal0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ALU_OUT_Internal0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ALU_OUT_Internal0_inferred__0/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ALU_OUT_Internal0_inferred__0/i__carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_SHIFT_RIGHT2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SHIFT_RIGHT2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SHIFT_RIGHT2_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_SHIFT_RIGHT2_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SHIFT_RIGHT3_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW__inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALU_OUT[0]_INST_0_i_12\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALU_OUT[0]_INST_0_i_13\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALU_OUT[0]_INST_0_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ALU_OUT[10]_INST_0_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALU_OUT[10]_INST_0_i_14\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALU_OUT[10]_INST_0_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALU_OUT[11]_INST_0_i_12\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALU_OUT[11]_INST_0_i_13\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ALU_OUT[11]_INST_0_i_17\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALU_OUT[11]_INST_0_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALU_OUT[12]_INST_0_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ALU_OUT[12]_INST_0_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALU_OUT[12]_INST_0_i_13\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALU_OUT[13]_INST_0_i_17\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALU_OUT[13]_INST_0_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ALU_OUT[14]_INST_0_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ALU_OUT[1]_INST_0_i_11\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALU_OUT[1]_INST_0_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ALU_OUT[1]_INST_0_i_9\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ALU_OUT[2]_INST_0_i_17\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ALU_OUT[2]_INST_0_i_20\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALU_OUT[2]_INST_0_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ALU_OUT[2]_INST_0_i_32\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALU_OUT[2]_INST_0_i_33\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALU_OUT[2]_INST_0_i_34\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALU_OUT[2]_INST_0_i_35\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALU_OUT[3]_INST_0_i_13\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALU_OUT[3]_INST_0_i_14\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALU_OUT[3]_INST_0_i_15\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALU_OUT[3]_INST_0_i_16\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALU_OUT[6]_INST_0_i_15\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALU_OUT[7]_INST_0_i_11\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ALU_OUT[8]_INST_0_i_11\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ALU_OUT[9]_INST_0_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ALU_OUT[9]_INST_0_i_14\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of BIGGER_ZERO_FLAG_INST_0_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of CARRY_FLAG_INST_0_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of CARRY_FLAG_INST_0_i_10 : label is "soft_lutpair2";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \SHIFT_RIGHT2_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \SHIFT_RIGHT2_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \SHIFT_RIGHT2_inferred__0/i__carry__1\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of SHIFT_RIGHT3_carry : label is 35;
  attribute ADDER_THRESHOLD of \SHIFT_RIGHT3_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \SHIFT_RIGHT3_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \SHIFT_RIGHT3_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \SHIFT_RIGHT3_carry__2_i_11\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of SMALLER_ZERO_FLAG_INST_0_i_7 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of SMALLER_ZERO_FLAG_INST_0_i_8 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of ZERO_FLAG_INST_0_i_4 : label is "soft_lutpair12";
begin
  \ALU_OPP[3]_0\ <= \^alu_opp[3]_0\;
  \ALU_OPP[3]_1\ <= \^alu_opp[3]_1\;
  \ALU_OPP[3]_10\ <= \^alu_opp[3]_10\;
  \ALU_OPP[3]_11\ <= \^alu_opp[3]_11\;
  \ALU_OPP[3]_12\ <= \^alu_opp[3]_12\;
  \ALU_OPP[3]_2\ <= \^alu_opp[3]_2\;
  \ALU_OPP[3]_3\ <= \^alu_opp[3]_3\;
  \ALU_OPP[3]_4\ <= \^alu_opp[3]_4\;
  \ALU_OPP[3]_5\ <= \^alu_opp[3]_5\;
  \ALU_OPP[3]_6\ <= \^alu_opp[3]_6\;
  \ALU_OPP[3]_7\ <= \^alu_opp[3]_7\;
  \ALU_OPP[3]_8\ <= \^alu_opp[3]_8\;
  \ALU_OPP[3]_9\ <= \^alu_opp[3]_9\;
  ALU_OPP_1_sp_1 <= ALU_OPP_1_sn_1;
  ALU_OPP_3_sp_1 <= ALU_OPP_3_sn_1;
  ALU_OUT(1 downto 0) <= \^alu_out\(1 downto 0);
\ALU_OUT[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT[0]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[0]_INST_0_i_2_n_0\,
      O => \^alu_opp[3]_3\,
      S => ALU_OPP(3)
    );
\ALU_OUT[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(0),
      I1 => data2(0),
      I2 => ALU_OPP(1),
      I3 => data1(0),
      I4 => ALU_OPP(0),
      I5 => data0(0),
      O => \ALU_OUT[0]_INST_0_i_1_n_0\
    );
\ALU_OUT[0]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => D2(0),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => D1(0),
      I4 => p_0_in(4),
      I5 => p_0_in(2),
      O => \ALU_OUT[0]_INST_0_i_10_n_0\
    );
\ALU_OUT[0]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCFAFFFAFC"
    )
        port map (
      I0 => SHIFT_LEFT2(2),
      I1 => D2(2),
      I2 => D2(0),
      I3 => D2(15),
      I4 => D2(1),
      I5 => SHIFT_LEFT2(1),
      O => \ALU_OUT[0]_INST_0_i_11_n_0\
    );
\ALU_OUT[0]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => D1(8),
      I1 => p_0_in(3),
      I2 => D1(15),
      I3 => p_0_in(4),
      I4 => D1(0),
      O => \ALU_OUT[0]_INST_0_i_12_n_0\
    );
\ALU_OUT[0]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1(8),
      I1 => p_0_in(3),
      I2 => D1(15),
      I3 => p_0_in(4),
      I4 => D1(0),
      O => \ALU_OUT[0]_INST_0_i_13_n_0\
    );
\ALU_OUT[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(0),
      I3 => ALU_OPP(0),
      I4 => D1(0),
      O => \ALU_OUT[0]_INST_0_i_2_n_0\
    );
\ALU_OUT[0]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(0),
      I1 => \ALU_OUT[0]_INST_0_i_6_n_0\,
      O => data3(0),
      S => D2(15)
    );
\ALU_OUT[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT[0]_INST_0_i_7_n_0\,
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => \ALU_OUT[0]_INST_0_i_8_n_0\,
      I3 => D2(15),
      I4 => D2(0),
      I5 => \ALU_OUT[1]_INST_0_i_10_n_0\,
      O => data2(0)
    );
\ALU_OUT[0]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[1]_INST_0_i_8_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[0]_INST_0_i_9_n_0\,
      I3 => CARRY_FLAG_INST_0_i_5_n_0,
      I4 => D1(15),
      O => SHIFT_RIGHT0(0)
    );
\ALU_OUT[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA40404040"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[0]_INST_0_i_10_n_0\,
      I2 => CARRY_FLAG_INST_0_i_5_n_0,
      I3 => SHIFT_RIGHT3_carry_i_6_n_0,
      I4 => \ALU_OUT[0]_INST_0_i_11_n_0\,
      I5 => D1(0),
      O => \ALU_OUT[0]_INST_0_i_6_n_0\
    );
\ALU_OUT[0]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => D2(15),
      I1 => \ALU_OUT[1]_INST_0_i_13_n_0\,
      I2 => D2(0),
      I3 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[0]_INST_0_i_7_n_0\
    );
\ALU_OUT[0]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT[2]_INST_0_i_31_n_0\,
      I1 => p_0_in(1),
      I2 => \ALU_OUT[4]_INST_0_i_13_n_0\,
      I3 => p_0_in(2),
      I4 => \ALU_OUT[0]_INST_0_i_12_n_0\,
      O => \ALU_OUT[0]_INST_0_i_8_n_0\
    );
\ALU_OUT[0]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT[2]_INST_0_i_28_n_0\,
      I1 => \ALU_OUT[2]_INST_0_i_29_n_0\,
      I2 => p_0_in(1),
      I3 => \ALU_OUT[2]_INST_0_i_27_n_0\,
      I4 => p_0_in(2),
      I5 => \ALU_OUT[0]_INST_0_i_13_n_0\,
      O => \ALU_OUT[0]_INST_0_i_9_n_0\
    );
\ALU_OUT[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT[10]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[10]_INST_0_i_2_n_0\,
      O => \^alu_opp[3]_1\,
      S => ALU_OPP(3)
    );
\ALU_OUT[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(10),
      I1 => data2(10),
      I2 => ALU_OPP(1),
      I3 => data1(10),
      I4 => ALU_OPP(0),
      I5 => data0(10),
      O => \ALU_OUT[10]_INST_0_i_1_n_0\
    );
\ALU_OUT[10]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[10]_INST_0_i_14_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[10]_INST_0_i_15_n_0\,
      O => \ALU_OUT[10]_INST_0_i_10_n_0\
    );
\ALU_OUT[10]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT[10]_INST_0_i_16_n_0\,
      I1 => D2(1),
      I2 => \ALU_OUT[12]_INST_0_i_15_n_0\,
      O => \ALU_OUT[10]_INST_0_i_11_n_0\
    );
\ALU_OUT[10]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1(14),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1(10),
      I4 => p_0_in(3),
      O => \ALU_OUT[10]_INST_0_i_12_n_0\
    );
\ALU_OUT[10]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1(3),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1(7),
      I4 => p_0_in(3),
      O => \ALU_OUT[10]_INST_0_i_13_n_0\
    );
\ALU_OUT[10]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => D1(15),
      I3 => p_0_in(4),
      I4 => D1(12),
      O => \ALU_OUT[10]_INST_0_i_14_n_0\
    );
\ALU_OUT[10]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => D1(14),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => D1(15),
      I4 => p_0_in(4),
      I5 => D1(10),
      O => \ALU_OUT[10]_INST_0_i_15_n_0\
    );
\ALU_OUT[10]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1(3),
      I1 => D2(2),
      I2 => D2(4),
      I3 => D1(7),
      I4 => D2(3),
      O => \ALU_OUT[10]_INST_0_i_16_n_0\
    );
\ALU_OUT[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(10),
      I3 => ALU_OPP(0),
      I4 => D1(10),
      O => \ALU_OUT[10]_INST_0_i_2_n_0\
    );
\ALU_OUT[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4FFFFF4E40000"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[10]_INST_0_i_5_n_0\,
      I2 => D1(0),
      I3 => \SHIFT_RIGHT3_carry__1_n_6\,
      I4 => D2(15),
      I5 => SHIFT_RIGHT0(10),
      O => data3(10)
    );
\ALU_OUT[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT[10]_INST_0_i_7_n_0\,
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => \ALU_OUT[10]_INST_0_i_8_n_0\,
      I3 => D2(15),
      I4 => D2(0),
      I5 => \ALU_OUT[11]_INST_0_i_8_n_0\,
      O => data2(10)
    );
\ALU_OUT[10]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => CARRY_FLAG_INST_0_i_5_n_0,
      I1 => \ALU_OUT[11]_INST_0_i_10_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[10]_INST_0_i_9_n_0\,
      O => \ALU_OUT[10]_INST_0_i_5_n_0\
    );
\ALU_OUT[10]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[11]_INST_0_i_11_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[10]_INST_0_i_10_n_0\,
      I3 => CARRY_FLAG_INST_0_i_5_n_0,
      I4 => D1(15),
      O => SHIFT_RIGHT0(10)
    );
\ALU_OUT[10]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2(15),
      I1 => \ALU_OUT[10]_INST_0_i_11_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[11]_INST_0_i_12_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[10]_INST_0_i_7_n_0\
    );
\ALU_OUT[10]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[12]_INST_0_i_12_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[10]_INST_0_i_12_n_0\,
      O => \ALU_OUT[10]_INST_0_i_8_n_0\
    );
\ALU_OUT[10]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[10]_INST_0_i_13_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[11]_INST_0_i_14_n_0\,
      O => \ALU_OUT[10]_INST_0_i_9_n_0\
    );
\ALU_OUT[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT[11]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[11]_INST_0_i_2_n_0\,
      O => \^alu_opp[3]_0\,
      S => ALU_OPP(3)
    );
\ALU_OUT[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(11),
      I1 => data2(11),
      I2 => ALU_OPP(1),
      I3 => data1(11),
      I4 => ALU_OPP(0),
      I5 => data0(11),
      O => \ALU_OUT[11]_INST_0_i_1_n_0\
    );
\ALU_OUT[11]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[11]_INST_0_i_15_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[13]_INST_0_i_13_n_0\,
      O => \ALU_OUT[11]_INST_0_i_10_n_0\
    );
\ALU_OUT[11]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \ALU_OUT[11]_INST_0_i_16_n_0\,
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => D1(15),
      I4 => p_0_in(3),
      I5 => \ALU_OUT[11]_INST_0_i_17_n_0\,
      O => \ALU_OUT[11]_INST_0_i_11_n_0\
    );
\ALU_OUT[11]_INST_0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT[11]_INST_0_i_18_n_0\,
      I1 => D2(1),
      I2 => \ALU_OUT[13]_INST_0_i_20_n_0\,
      O => \ALU_OUT[11]_INST_0_i_12_n_0\
    );
\ALU_OUT[11]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1(15),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1(11),
      I4 => p_0_in(3),
      O => \ALU_OUT[11]_INST_0_i_13_n_0\
    );
\ALU_OUT[11]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1(5),
      I1 => p_0_in(2),
      I2 => D1(1),
      I3 => p_0_in(3),
      I4 => D1(9),
      I5 => p_0_in(4),
      O => \ALU_OUT[11]_INST_0_i_14_n_0\
    );
\ALU_OUT[11]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1(4),
      I1 => p_0_in(2),
      I2 => D1(0),
      I3 => p_0_in(3),
      I4 => D1(8),
      I5 => p_0_in(4),
      O => \ALU_OUT[11]_INST_0_i_15_n_0\
    );
\ALU_OUT[11]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => D1(15),
      I1 => D2(4),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(15),
      I4 => D1(13),
      O => \ALU_OUT[11]_INST_0_i_16_n_0\
    );
\ALU_OUT[11]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => D1(15),
      I1 => D2(4),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(15),
      I4 => D1(11),
      O => \ALU_OUT[11]_INST_0_i_17_n_0\
    );
\ALU_OUT[11]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1(4),
      I1 => D2(2),
      I2 => D1(0),
      I3 => D2(3),
      I4 => D1(8),
      I5 => D2(4),
      O => \ALU_OUT[11]_INST_0_i_18_n_0\
    );
\ALU_OUT[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(11),
      I3 => ALU_OPP(0),
      I4 => D1(11),
      O => \ALU_OUT[11]_INST_0_i_2_n_0\
    );
\ALU_OUT[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4FFFFF4E40000"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[11]_INST_0_i_5_n_0\,
      I2 => D1(0),
      I3 => \SHIFT_RIGHT3_carry__1_n_5\,
      I4 => D2(15),
      I5 => SHIFT_RIGHT0(11),
      O => data3(11)
    );
\ALU_OUT[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT[11]_INST_0_i_7_n_0\,
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => \ALU_OUT[11]_INST_0_i_8_n_0\,
      I3 => D2(15),
      I4 => D2(0),
      I5 => \ALU_OUT[12]_INST_0_i_8_n_0\,
      O => data2(11)
    );
\ALU_OUT[11]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => CARRY_FLAG_INST_0_i_5_n_0,
      I1 => \ALU_OUT[11]_INST_0_i_9_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[11]_INST_0_i_10_n_0\,
      O => \ALU_OUT[11]_INST_0_i_5_n_0\
    );
\ALU_OUT[11]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[12]_INST_0_i_9_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[11]_INST_0_i_11_n_0\,
      I3 => CARRY_FLAG_INST_0_i_5_n_0,
      I4 => D1(15),
      O => SHIFT_RIGHT0(11)
    );
\ALU_OUT[11]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2(15),
      I1 => \ALU_OUT[11]_INST_0_i_12_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[12]_INST_0_i_11_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[11]_INST_0_i_7_n_0\
    );
\ALU_OUT[11]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1(13),
      I2 => p_0_in(4),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      I5 => \ALU_OUT[11]_INST_0_i_13_n_0\,
      O => \ALU_OUT[11]_INST_0_i_8_n_0\
    );
\ALU_OUT[11]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[11]_INST_0_i_14_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[13]_INST_0_i_15_n_0\,
      O => \ALU_OUT[11]_INST_0_i_9_n_0\
    );
\ALU_OUT[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT[12]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[12]_INST_0_i_2_n_0\,
      O => \^alu_opp[3]_11\,
      S => ALU_OPP(3)
    );
\ALU_OUT[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(12),
      I1 => data2(12),
      I2 => ALU_OPP(1),
      I3 => data1(12),
      I4 => ALU_OPP(0),
      I5 => data0(12),
      O => \ALU_OUT[12]_INST_0_i_1_n_0\
    );
\ALU_OUT[12]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT[11]_INST_0_i_9_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[13]_INST_0_i_13_n_0\,
      I3 => p_0_in(1),
      I4 => \ALU_OUT[13]_INST_0_i_14_n_0\,
      O => \ALU_OUT[12]_INST_0_i_10_n_0\
    );
\ALU_OUT[12]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT[12]_INST_0_i_15_n_0\,
      I1 => D2(1),
      I2 => \ALU_OUT[14]_INST_0_i_10_n_0\,
      O => \ALU_OUT[12]_INST_0_i_11_n_0\
    );
\ALU_OUT[12]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1(15),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1(12),
      I4 => p_0_in(3),
      O => \ALU_OUT[12]_INST_0_i_12_n_0\
    );
\ALU_OUT[12]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => D1(15),
      I1 => D2(4),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(15),
      I4 => D1(14),
      O => \ALU_OUT[12]_INST_0_i_13_n_0\
    );
\ALU_OUT[12]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => D1(15),
      I1 => D2(4),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(15),
      I4 => D1(12),
      O => \ALU_OUT[12]_INST_0_i_14_n_0\
    );
\ALU_OUT[12]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1(5),
      I1 => D2(2),
      I2 => D1(1),
      I3 => D2(3),
      I4 => D1(9),
      I5 => D2(4),
      O => \ALU_OUT[12]_INST_0_i_15_n_0\
    );
\ALU_OUT[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(12),
      I3 => ALU_OPP(0),
      I4 => D1(12),
      O => \ALU_OUT[12]_INST_0_i_2_n_0\
    );
\ALU_OUT[12]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(12),
      I1 => \ALU_OUT[12]_INST_0_i_6_n_0\,
      O => data3(12),
      S => D2(15)
    );
\ALU_OUT[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT[12]_INST_0_i_7_n_0\,
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => \ALU_OUT[12]_INST_0_i_8_n_0\,
      I3 => D2(15),
      I4 => D2(0),
      I5 => \ALU_OUT[13]_INST_0_i_11_n_0\,
      O => data2(12)
    );
\ALU_OUT[12]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_9_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[12]_INST_0_i_9_n_0\,
      I3 => CARRY_FLAG_INST_0_i_5_n_0,
      I4 => D1(15),
      O => SHIFT_RIGHT0(12)
    );
\ALU_OUT[12]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[12]_INST_0_i_10_n_0\,
      I2 => CARRY_FLAG_INST_0_i_5_n_0,
      I3 => D1(0),
      I4 => \SHIFT_RIGHT3_carry__1_n_4\,
      O => \ALU_OUT[12]_INST_0_i_6_n_0\
    );
\ALU_OUT[12]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2(15),
      I1 => \ALU_OUT[12]_INST_0_i_11_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[13]_INST_0_i_17_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[12]_INST_0_i_7_n_0\
    );
\ALU_OUT[12]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1(14),
      I2 => p_0_in(4),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      I5 => \ALU_OUT[12]_INST_0_i_12_n_0\,
      O => \ALU_OUT[12]_INST_0_i_8_n_0\
    );
\ALU_OUT[12]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \ALU_OUT[12]_INST_0_i_13_n_0\,
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => D1(15),
      I4 => p_0_in(3),
      I5 => \ALU_OUT[12]_INST_0_i_14_n_0\,
      O => \ALU_OUT[12]_INST_0_i_9_n_0\
    );
\ALU_OUT[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_1_n_0\,
      I1 => ALU_OPP(3),
      I2 => \ALU_OUT[13]_INST_0_i_2_n_0\,
      I3 => ALU_OPP(1),
      I4 => \ALU_OUT[13]_INST_0_i_3_n_0\,
      O => \^alu_opp[3]_10\
    );
\ALU_OUT[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(13),
      I3 => ALU_OPP(0),
      I4 => D1(13),
      O => \ALU_OUT[13]_INST_0_i_1_n_0\
    );
\ALU_OUT[13]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2(15),
      I1 => \ALU_OUT[13]_INST_0_i_17_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[14]_INST_0_i_7_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[13]_INST_0_i_10_n_0\
    );
\ALU_OUT[13]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => D1(15),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => D1(13),
      I4 => p_0_in(4),
      I5 => p_0_in(2),
      O => \ALU_OUT[13]_INST_0_i_11_n_0\
    );
\ALU_OUT[13]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => D1(15),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => D1(14),
      I4 => p_0_in(4),
      I5 => p_0_in(2),
      O => \ALU_OUT[13]_INST_0_i_12_n_0\
    );
\ALU_OUT[13]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1(6),
      I1 => p_0_in(2),
      I2 => D1(2),
      I3 => p_0_in(3),
      I4 => D1(10),
      I5 => p_0_in(4),
      O => \ALU_OUT[13]_INST_0_i_13_n_0\
    );
\ALU_OUT[13]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => D1(0),
      I1 => p_0_in(3),
      I2 => D1(8),
      I3 => p_0_in(4),
      I4 => p_0_in(2),
      I5 => \ALU_OUT[13]_INST_0_i_18_n_0\,
      O => \ALU_OUT[13]_INST_0_i_14_n_0\
    );
\ALU_OUT[13]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1(7),
      I1 => p_0_in(2),
      I2 => D1(3),
      I3 => p_0_in(3),
      I4 => D1(11),
      I5 => p_0_in(4),
      O => \ALU_OUT[13]_INST_0_i_15_n_0\
    );
\ALU_OUT[13]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_19_n_0\,
      I1 => p_0_in(2),
      I2 => D1(5),
      I3 => p_0_in(3),
      I4 => D1(13),
      I5 => p_0_in(4),
      O => \ALU_OUT[13]_INST_0_i_16_n_0\
    );
\ALU_OUT[13]_INST_0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_20_n_0\,
      I1 => D2(1),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_15_n_0,
      O => \ALU_OUT[13]_INST_0_i_17_n_0\
    );
\ALU_OUT[13]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1(4),
      I1 => p_0_in(3),
      I2 => D1(12),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => \ALU_OUT[13]_INST_0_i_18_n_0\
    );
\ALU_OUT[13]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1(1),
      I1 => p_0_in(3),
      I2 => D1(9),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => \ALU_OUT[13]_INST_0_i_19_n_0\
    );
\ALU_OUT[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_4_n_0\,
      I1 => D2(15),
      I2 => SHIFT_RIGHT0(13),
      I3 => ALU_OPP(0),
      I4 => data2(13),
      O => \ALU_OUT[13]_INST_0_i_2_n_0\
    );
\ALU_OUT[13]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1(6),
      I1 => D2(2),
      I2 => D1(2),
      I3 => D2(3),
      I4 => D1(10),
      I5 => D2(4),
      O => \ALU_OUT[13]_INST_0_i_20_n_0\
    );
\ALU_OUT[13]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(13),
      I1 => ALU_OPP(0),
      I2 => data0(13),
      O => \ALU_OUT[13]_INST_0_i_3_n_0\
    );
\ALU_OUT[13]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[13]_INST_0_i_7_n_0\,
      I2 => CARRY_FLAG_INST_0_i_5_n_0,
      I3 => D1(0),
      I4 => \SHIFT_RIGHT3_carry__2_n_7\,
      O => \ALU_OUT[13]_INST_0_i_4_n_0\
    );
\ALU_OUT[13]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[13]_INST_0_i_9_n_0\,
      I3 => CARRY_FLAG_INST_0_i_5_n_0,
      I4 => D1(15),
      O => SHIFT_RIGHT0(13)
    );
\ALU_OUT[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_10_n_0\,
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => \ALU_OUT[13]_INST_0_i_11_n_0\,
      I3 => D2(15),
      I4 => D2(0),
      I5 => \ALU_OUT[13]_INST_0_i_12_n_0\,
      O => data2(13)
    );
\ALU_OUT[13]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88F5F5DD88A0A0"
    )
        port map (
      I0 => D2(0),
      I1 => \ALU_OUT[13]_INST_0_i_13_n_0\,
      I2 => \ALU_OUT[13]_INST_0_i_14_n_0\,
      I3 => \ALU_OUT[13]_INST_0_i_15_n_0\,
      I4 => p_0_in(1),
      I5 => \ALU_OUT[13]_INST_0_i_16_n_0\,
      O => \ALU_OUT[13]_INST_0_i_7_n_0\
    );
\ALU_OUT[13]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => D1(15),
      I4 => p_0_in(4),
      I5 => D1(14),
      O => \ALU_OUT[13]_INST_0_i_8_n_0\
    );
\ALU_OUT[13]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => D1(15),
      I4 => p_0_in(4),
      I5 => D1(13),
      O => \ALU_OUT[13]_INST_0_i_9_n_0\
    );
\ALU_OUT[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT[14]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[14]_INST_0_i_2_n_0\,
      O => \^alu_opp[3]_9\,
      S => ALU_OPP(3)
    );
\ALU_OUT[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(14),
      I1 => data2(14),
      I2 => ALU_OPP(1),
      I3 => data1(14),
      I4 => ALU_OPP(0),
      I5 => data0(14),
      O => \ALU_OUT[14]_INST_0_i_1_n_0\
    );
\ALU_OUT[14]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1(7),
      I1 => D2(2),
      I2 => D1(3),
      I3 => D2(3),
      I4 => D1(11),
      I5 => D2(4),
      O => \ALU_OUT[14]_INST_0_i_10_n_0\
    );
\ALU_OUT[14]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400444"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1(15),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(4),
      I5 => p_0_in(2),
      O => \ALU_OUT[14]_INST_0_i_11_n_0\
    );
\ALU_OUT[14]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400444"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1(14),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(4),
      I5 => p_0_in(2),
      O => \ALU_OUT[14]_INST_0_i_12_n_0\
    );
\ALU_OUT[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(14),
      I3 => ALU_OPP(0),
      I4 => D1(14),
      O => \ALU_OUT[14]_INST_0_i_2_n_0\
    );
\ALU_OUT[14]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(14),
      I1 => \ALU_OUT[14]_INST_0_i_6_n_0\,
      O => data3(14),
      S => D2(15)
    );
\ALU_OUT[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A808FFFFFFFF"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_8_n_0,
      I2 => D2(0),
      I3 => \ALU_OUT[14]_INST_0_i_7_n_0\,
      I4 => D2(15),
      I5 => \ALU_OUT[14]_INST_0_i_8_n_0\,
      O => data2(14)
    );
\ALU_OUT[14]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => D2(0),
      I1 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I2 => CARRY_FLAG_INST_0_i_5_n_0,
      I3 => D1(15),
      O => SHIFT_RIGHT0(14)
    );
\ALU_OUT[14]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[14]_INST_0_i_9_n_0\,
      I2 => CARRY_FLAG_INST_0_i_5_n_0,
      I3 => D1(0),
      I4 => \SHIFT_RIGHT3_carry__2_n_6\,
      O => \ALU_OUT[14]_INST_0_i_6_n_0\
    );
\ALU_OUT[14]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT[14]_INST_0_i_10_n_0\,
      I1 => D2(1),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_13_n_0,
      O => \ALU_OUT[14]_INST_0_i_7_n_0\
    );
\ALU_OUT[14]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF3BBF7FFFFFFFFF"
    )
        port map (
      I0 => D2(0),
      I1 => D2(15),
      I2 => \ALU_OUT[14]_INST_0_i_11_n_0\,
      I3 => p_0_in(1),
      I4 => \ALU_OUT[14]_INST_0_i_12_n_0\,
      I5 => CARRY_FLAG_INST_0_i_5_n_0,
      O => \ALU_OUT[14]_INST_0_i_8_n_0\
    );
\ALU_OUT[14]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88F5F5DD88A0A0"
    )
        port map (
      I0 => D2(0),
      I1 => \ALU_OUT[13]_INST_0_i_15_n_0\,
      I2 => \ALU_OUT[13]_INST_0_i_16_n_0\,
      I3 => \ALU_OUT[13]_INST_0_i_14_n_0\,
      I4 => p_0_in(1),
      I5 => CARRY_FLAG_INST_0_i_14_n_0,
      O => \ALU_OUT[14]_INST_0_i_9_n_0\
    );
\ALU_OUT[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT[1]_INST_0_i_1_n_0\,
      I1 => ALU_OPP(3),
      I2 => \ALU_OUT[1]_INST_0_i_2_n_0\,
      I3 => ALU_OPP(1),
      I4 => \ALU_OUT[1]_INST_0_i_3_n_0\,
      O => \^alu_opp[3]_4\
    );
\ALU_OUT[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(1),
      I3 => ALU_OPP(0),
      I4 => D1(1),
      O => \ALU_OUT[1]_INST_0_i_1_n_0\
    );
\ALU_OUT[1]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT[3]_INST_0_i_11_n_0\,
      I1 => p_0_in(1),
      I2 => \ALU_OUT[1]_INST_0_i_14_n_0\,
      I3 => p_0_in(2),
      I4 => \ALU_OUT[1]_INST_0_i_15_n_0\,
      O => \ALU_OUT[1]_INST_0_i_10_n_0\
    );
\ALU_OUT[1]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1(1),
      I1 => D2(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(4),
      O => \ALU_OUT[1]_INST_0_i_11_n_0\
    );
\ALU_OUT[1]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1(9),
      I1 => p_0_in(3),
      I2 => D1(15),
      I3 => p_0_in(4),
      I4 => D1(1),
      O => \ALU_OUT[1]_INST_0_i_12_n_0\
    );
\ALU_OUT[1]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => D2(2),
      I1 => D2(4),
      I2 => D1(0),
      I3 => D2(3),
      I4 => D2(1),
      O => \ALU_OUT[1]_INST_0_i_13_n_0\
    );
\ALU_OUT[1]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1(13),
      I1 => p_0_in(3),
      I2 => D1(5),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => \ALU_OUT[1]_INST_0_i_14_n_0\
    );
\ALU_OUT[1]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1(9),
      I1 => p_0_in(3),
      I2 => D1(1),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => \ALU_OUT[1]_INST_0_i_15_n_0\
    );
\ALU_OUT[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[1]_INST_0_i_4_n_0\,
      I1 => D2(15),
      I2 => SHIFT_RIGHT0(1),
      I3 => ALU_OPP(0),
      I4 => data2(1),
      O => \ALU_OUT[1]_INST_0_i_2_n_0\
    );
\ALU_OUT[1]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(1),
      I1 => ALU_OPP(0),
      I2 => data0(1),
      O => \ALU_OUT[1]_INST_0_i_3_n_0\
    );
\ALU_OUT[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0004AAAE0004"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[1]_INST_0_i_7_n_0\,
      I2 => \ALU_OUT[2]_INST_0_i_8_n_0\,
      I3 => \ALU_OUT[2]_INST_0_i_9_n_0\,
      I4 => D1(0),
      I5 => SHIFT_RIGHT3_carry_n_7,
      O => \ALU_OUT[1]_INST_0_i_4_n_0\
    );
\ALU_OUT[1]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[2]_INST_0_i_11_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[1]_INST_0_i_8_n_0\,
      I3 => CARRY_FLAG_INST_0_i_5_n_0,
      I4 => D1(15),
      O => SHIFT_RIGHT0(1)
    );
\ALU_OUT[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT[1]_INST_0_i_9_n_0\,
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => \ALU_OUT[1]_INST_0_i_10_n_0\,
      I3 => D2(15),
      I4 => D2(0),
      I5 => \ALU_OUT[2]_INST_0_i_13_n_0\,
      O => data2(1)
    );
\ALU_OUT[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008080D08"
    )
        port map (
      I0 => D2(0),
      I1 => \ALU_OUT[2]_INST_0_i_15_n_0\,
      I2 => p_0_in(2),
      I3 => \ALU_OUT[1]_INST_0_i_11_n_0\,
      I4 => p_0_in(3),
      I5 => p_0_in(1),
      O => \ALU_OUT[1]_INST_0_i_7_n_0\
    );
\ALU_OUT[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT[2]_INST_0_i_24_n_0\,
      I1 => \ALU_OUT[2]_INST_0_i_25_n_0\,
      I2 => p_0_in(1),
      I3 => \ALU_OUT[2]_INST_0_i_23_n_0\,
      I4 => p_0_in(2),
      I5 => \ALU_OUT[1]_INST_0_i_12_n_0\,
      O => \ALU_OUT[1]_INST_0_i_8_n_0\
    );
\ALU_OUT[1]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2(15),
      I1 => \ALU_OUT[1]_INST_0_i_13_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[2]_INST_0_i_30_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[1]_INST_0_i_9_n_0\
    );
\ALU_OUT[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT[2]_INST_0_i_1_n_0\,
      I1 => ALU_OPP(3),
      I2 => \ALU_OUT[2]_INST_0_i_2_n_0\,
      I3 => ALU_OPP(1),
      I4 => \ALU_OUT[2]_INST_0_i_3_n_0\,
      O => \^alu_opp[3]_5\
    );
\ALU_OUT[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(2),
      I3 => ALU_OPP(0),
      I4 => D1(2),
      O => \ALU_OUT[2]_INST_0_i_1_n_0\
    );
\ALU_OUT[2]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT[2]_INST_0_i_22_n_0\,
      I1 => \ALU_OUT[2]_INST_0_i_23_n_0\,
      I2 => p_0_in(1),
      I3 => \ALU_OUT[2]_INST_0_i_24_n_0\,
      I4 => p_0_in(2),
      I5 => \ALU_OUT[2]_INST_0_i_25_n_0\,
      O => \ALU_OUT[2]_INST_0_i_10_n_0\
    );
\ALU_OUT[2]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT[2]_INST_0_i_26_n_0\,
      I1 => \ALU_OUT[2]_INST_0_i_27_n_0\,
      I2 => p_0_in(1),
      I3 => \ALU_OUT[2]_INST_0_i_28_n_0\,
      I4 => p_0_in(2),
      I5 => \ALU_OUT[2]_INST_0_i_29_n_0\,
      O => \ALU_OUT[2]_INST_0_i_11_n_0\
    );
\ALU_OUT[2]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2(15),
      I1 => \ALU_OUT[2]_INST_0_i_30_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[3]_INST_0_i_10_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[2]_INST_0_i_12_n_0\
    );
\ALU_OUT[2]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[4]_INST_0_i_12_n_0\,
      I1 => p_0_in(2),
      I2 => \ALU_OUT[4]_INST_0_i_13_n_0\,
      I3 => p_0_in(1),
      I4 => \ALU_OUT[2]_INST_0_i_31_n_0\,
      O => \ALU_OUT[2]_INST_0_i_13_n_0\
    );
\ALU_OUT[2]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000300000503050"
    )
        port map (
      I0 => D2(4),
      I1 => SHIFT_LEFT2(4),
      I2 => D1(1),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(3),
      I5 => D2(3),
      O => \ALU_OUT[2]_INST_0_i_14_n_0\
    );
\ALU_OUT[2]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000300000503050"
    )
        port map (
      I0 => D2(4),
      I1 => SHIFT_LEFT2(4),
      I2 => D1(0),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(3),
      I5 => D2(3),
      O => \ALU_OUT[2]_INST_0_i_15_n_0\
    );
\ALU_OUT[2]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000300000503050"
    )
        port map (
      I0 => D2(4),
      I1 => SHIFT_LEFT2(4),
      I2 => D1(2),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(3),
      I5 => D2(3),
      O => \ALU_OUT[2]_INST_0_i_16_n_0\
    );
\ALU_OUT[2]_INST_0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D2(13),
      I1 => SHIFT_LEFT2(13),
      I2 => D2(15),
      O => p_0_in(13)
    );
\ALU_OUT[2]_INST_0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(10),
      I1 => D2(10),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(9),
      I4 => D2(9),
      O => \ALU_OUT[2]_INST_0_i_18_n_0\
    );
\ALU_OUT[2]_INST_0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(12),
      I1 => D2(12),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(11),
      I4 => D2(11),
      O => \ALU_OUT[2]_INST_0_i_19_n_0\
    );
\ALU_OUT[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[2]_INST_0_i_4_n_0\,
      I1 => D2(15),
      I2 => SHIFT_RIGHT0(2),
      I3 => ALU_OPP(0),
      I4 => data2(2),
      O => \ALU_OUT[2]_INST_0_i_2_n_0\
    );
\ALU_OUT[2]_INST_0_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(6),
      I1 => D2(6),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(5),
      I4 => D2(5),
      O => \ALU_OUT[2]_INST_0_i_20_n_0\
    );
\ALU_OUT[2]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(8),
      I1 => D2(8),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(7),
      I4 => D2(7),
      O => \ALU_OUT[2]_INST_0_i_21_n_0\
    );
\ALU_OUT[2]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDDCDCDCC88C8C8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1(15),
      I2 => D2(4),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(15),
      I5 => D1(9),
      O => \ALU_OUT[2]_INST_0_i_22_n_0\
    );
\ALU_OUT[2]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1(13),
      I1 => p_0_in(3),
      I2 => D1(15),
      I3 => p_0_in(4),
      I4 => D1(5),
      O => \ALU_OUT[2]_INST_0_i_23_n_0\
    );
\ALU_OUT[2]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDDCDCDCC88C8C8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1(15),
      I2 => D2(4),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(15),
      I5 => D1(7),
      O => \ALU_OUT[2]_INST_0_i_24_n_0\
    );
\ALU_OUT[2]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1(11),
      I1 => p_0_in(3),
      I2 => D1(15),
      I3 => p_0_in(4),
      I4 => D1(3),
      O => \ALU_OUT[2]_INST_0_i_25_n_0\
    );
\ALU_OUT[2]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDDCDCDCC88C8C8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1(15),
      I2 => D2(4),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(15),
      I5 => D1(8),
      O => \ALU_OUT[2]_INST_0_i_26_n_0\
    );
\ALU_OUT[2]_INST_0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1(12),
      I1 => p_0_in(3),
      I2 => D1(15),
      I3 => p_0_in(4),
      I4 => D1(4),
      O => \ALU_OUT[2]_INST_0_i_27_n_0\
    );
\ALU_OUT[2]_INST_0_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1(14),
      I1 => p_0_in(3),
      I2 => D1(15),
      I3 => p_0_in(4),
      I4 => D1(6),
      O => \ALU_OUT[2]_INST_0_i_28_n_0\
    );
\ALU_OUT[2]_INST_0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => D1(10),
      I1 => p_0_in(3),
      I2 => D1(15),
      I3 => p_0_in(4),
      I4 => D1(2),
      O => \ALU_OUT[2]_INST_0_i_29_n_0\
    );
\ALU_OUT[2]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(2),
      I1 => ALU_OPP(0),
      I2 => data0(2),
      O => \ALU_OUT[2]_INST_0_i_3_n_0\
    );
\ALU_OUT[2]_INST_0_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => D2(2),
      I1 => D2(4),
      I2 => D1(1),
      I3 => D2(3),
      I4 => D2(1),
      O => \ALU_OUT[2]_INST_0_i_30_n_0\
    );
\ALU_OUT[2]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT[2]_INST_0_i_32_n_0\,
      I1 => \ALU_OUT[2]_INST_0_i_33_n_0\,
      I2 => p_0_in(2),
      I3 => \ALU_OUT[2]_INST_0_i_34_n_0\,
      I4 => p_0_in(3),
      I5 => \ALU_OUT[2]_INST_0_i_35_n_0\,
      O => \ALU_OUT[2]_INST_0_i_31_n_0\
    );
\ALU_OUT[2]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1(14),
      I1 => D2(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(4),
      O => \ALU_OUT[2]_INST_0_i_32_n_0\
    );
\ALU_OUT[2]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1(6),
      I1 => D2(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(4),
      O => \ALU_OUT[2]_INST_0_i_33_n_0\
    );
\ALU_OUT[2]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1(10),
      I1 => D2(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(4),
      O => \ALU_OUT[2]_INST_0_i_34_n_0\
    );
\ALU_OUT[2]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1(2),
      I1 => D2(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(4),
      O => \ALU_OUT[2]_INST_0_i_35_n_0\
    );
\ALU_OUT[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0004AAAE0004"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[2]_INST_0_i_7_n_0\,
      I2 => \ALU_OUT[2]_INST_0_i_8_n_0\,
      I3 => \ALU_OUT[2]_INST_0_i_9_n_0\,
      I4 => D1(0),
      I5 => SHIFT_RIGHT3_carry_n_6,
      O => \ALU_OUT[2]_INST_0_i_4_n_0\
    );
\ALU_OUT[2]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[2]_INST_0_i_10_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[2]_INST_0_i_11_n_0\,
      I3 => CARRY_FLAG_INST_0_i_5_n_0,
      I4 => D1(15),
      O => SHIFT_RIGHT0(2)
    );
\ALU_OUT[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT[2]_INST_0_i_12_n_0\,
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => \ALU_OUT[2]_INST_0_i_13_n_0\,
      I3 => D2(15),
      I4 => D2(0),
      I5 => \ALU_OUT[3]_INST_0_i_8_n_0\,
      O => data2(2)
    );
\ALU_OUT[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050DD5088"
    )
        port map (
      I0 => D2(0),
      I1 => \ALU_OUT[2]_INST_0_i_14_n_0\,
      I2 => \ALU_OUT[2]_INST_0_i_15_n_0\,
      I3 => p_0_in(1),
      I4 => \ALU_OUT[2]_INST_0_i_16_n_0\,
      I5 => p_0_in(2),
      O => \ALU_OUT[2]_INST_0_i_7_n_0\
    );
\ALU_OUT[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAFCFCFFFFFCFC"
    )
        port map (
      I0 => SHIFT_LEFT2(14),
      I1 => D2(14),
      I2 => p_0_in(13),
      I3 => SHIFT_LEFT2(15),
      I4 => D2(15),
      I5 => \_inferred__0/i__carry__2_n_0\,
      O => \ALU_OUT[2]_INST_0_i_8_n_0\
    );
\ALU_OUT[2]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ALU_OUT[2]_INST_0_i_18_n_0\,
      I1 => \ALU_OUT[2]_INST_0_i_19_n_0\,
      I2 => \ALU_OUT[2]_INST_0_i_20_n_0\,
      I3 => \ALU_OUT[2]_INST_0_i_21_n_0\,
      O => \ALU_OUT[2]_INST_0_i_9_n_0\
    );
\ALU_OUT[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT[3]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[3]_INST_0_i_2_n_0\,
      O => \^alu_opp[3]_2\,
      S => ALU_OPP(3)
    );
\ALU_OUT[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(3),
      I1 => data2(3),
      I2 => ALU_OPP(1),
      I3 => data1(3),
      I4 => ALU_OPP(0),
      I5 => data0(3),
      O => \ALU_OUT[3]_INST_0_i_1_n_0\
    );
\ALU_OUT[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => D1(0),
      I1 => D2(1),
      I2 => D2(3),
      I3 => D1(2),
      I4 => D2(4),
      I5 => D2(2),
      O => \ALU_OUT[3]_INST_0_i_10_n_0\
    );
\ALU_OUT[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT[3]_INST_0_i_13_n_0\,
      I1 => \ALU_OUT[3]_INST_0_i_14_n_0\,
      I2 => p_0_in(2),
      I3 => \ALU_OUT[3]_INST_0_i_15_n_0\,
      I4 => p_0_in(3),
      I5 => \ALU_OUT[3]_INST_0_i_16_n_0\,
      O => \ALU_OUT[3]_INST_0_i_11_n_0\
    );
\ALU_OUT[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => D1(0),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => D1(2),
      I4 => p_0_in(4),
      I5 => p_0_in(2),
      O => \ALU_OUT[3]_INST_0_i_12_n_0\
    );
\ALU_OUT[3]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1(15),
      I1 => D2(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(4),
      O => \ALU_OUT[3]_INST_0_i_13_n_0\
    );
\ALU_OUT[3]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1(7),
      I1 => D2(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(4),
      O => \ALU_OUT[3]_INST_0_i_14_n_0\
    );
\ALU_OUT[3]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1(11),
      I1 => D2(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(4),
      O => \ALU_OUT[3]_INST_0_i_15_n_0\
    );
\ALU_OUT[3]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1(3),
      I1 => D2(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(4),
      O => \ALU_OUT[3]_INST_0_i_16_n_0\
    );
\ALU_OUT[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(3),
      I3 => ALU_OPP(0),
      I4 => D1(3),
      O => \ALU_OUT[3]_INST_0_i_2_n_0\
    );
\ALU_OUT[3]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(3),
      I1 => \ALU_OUT[3]_INST_0_i_6_n_0\,
      O => data3(3),
      S => D2(15)
    );
\ALU_OUT[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT[3]_INST_0_i_7_n_0\,
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => \ALU_OUT[3]_INST_0_i_8_n_0\,
      I3 => D2(15),
      I4 => D2(0),
      I5 => \ALU_OUT[4]_INST_0_i_8_n_0\,
      O => data2(3)
    );
\ALU_OUT[3]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[4]_INST_0_i_9_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[2]_INST_0_i_10_n_0\,
      I3 => CARRY_FLAG_INST_0_i_5_n_0,
      I4 => D1(15),
      O => SHIFT_RIGHT0(3)
    );
\ALU_OUT[3]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[3]_INST_0_i_9_n_0\,
      I2 => CARRY_FLAG_INST_0_i_5_n_0,
      I3 => D1(0),
      I4 => SHIFT_RIGHT3_carry_n_5,
      O => \ALU_OUT[3]_INST_0_i_6_n_0\
    );
\ALU_OUT[3]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2(15),
      I1 => \ALU_OUT[3]_INST_0_i_10_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[4]_INST_0_i_11_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[3]_INST_0_i_7_n_0\
    );
\ALU_OUT[3]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[5]_INST_0_i_12_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[3]_INST_0_i_11_n_0\,
      O => \ALU_OUT[3]_INST_0_i_8_n_0\
    );
\ALU_OUT[3]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT[3]_INST_0_i_12_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[4]_INST_0_i_14_n_0\,
      O => \ALU_OUT[3]_INST_0_i_9_n_0\
    );
\ALU_OUT[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT[4]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[4]_INST_0_i_2_n_0\,
      O => \^alu_opp[3]_7\,
      S => ALU_OPP(3)
    );
\ALU_OUT[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(4),
      I1 => data2(4),
      I2 => ALU_OPP(1),
      I3 => data1(4),
      I4 => ALU_OPP(0),
      I5 => data0(4),
      O => \ALU_OUT[4]_INST_0_i_1_n_0\
    );
\ALU_OUT[4]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT[4]_INST_0_i_14_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[5]_INST_0_i_13_n_0\,
      I3 => p_0_in(1),
      I4 => \ALU_OUT[7]_INST_0_i_14_n_0\,
      O => \ALU_OUT[4]_INST_0_i_10_n_0\
    );
\ALU_OUT[4]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => D1(1),
      I1 => D2(1),
      I2 => D2(3),
      I3 => D1(3),
      I4 => D2(4),
      I5 => D2(2),
      O => \ALU_OUT[4]_INST_0_i_11_n_0\
    );
\ALU_OUT[4]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1(15),
      I1 => p_0_in(3),
      I2 => D1(8),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => \ALU_OUT[4]_INST_0_i_12_n_0\
    );
\ALU_OUT[4]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1(12),
      I1 => p_0_in(3),
      I2 => D1(4),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => \ALU_OUT[4]_INST_0_i_13_n_0\
    );
\ALU_OUT[4]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => D1(1),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => D1(3),
      I4 => p_0_in(4),
      I5 => p_0_in(2),
      O => \ALU_OUT[4]_INST_0_i_14_n_0\
    );
\ALU_OUT[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(4),
      I3 => ALU_OPP(0),
      I4 => D1(4),
      O => \ALU_OUT[4]_INST_0_i_2_n_0\
    );
\ALU_OUT[4]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(4),
      I1 => \ALU_OUT[4]_INST_0_i_6_n_0\,
      O => data3(4),
      S => D2(15)
    );
\ALU_OUT[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT[4]_INST_0_i_7_n_0\,
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => \ALU_OUT[4]_INST_0_i_8_n_0\,
      I3 => D2(15),
      I4 => D2(0),
      I5 => \ALU_OUT[5]_INST_0_i_8_n_0\,
      O => data2(4)
    );
\ALU_OUT[4]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[5]_INST_0_i_9_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[4]_INST_0_i_9_n_0\,
      I3 => CARRY_FLAG_INST_0_i_5_n_0,
      I4 => D1(15),
      O => SHIFT_RIGHT0(4)
    );
\ALU_OUT[4]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[4]_INST_0_i_10_n_0\,
      I2 => CARRY_FLAG_INST_0_i_5_n_0,
      I3 => D1(0),
      I4 => SHIFT_RIGHT3_carry_n_4,
      O => \ALU_OUT[4]_INST_0_i_6_n_0\
    );
\ALU_OUT[4]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2(15),
      I1 => \ALU_OUT[4]_INST_0_i_11_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[5]_INST_0_i_11_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[4]_INST_0_i_7_n_0\
    );
\ALU_OUT[4]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT[6]_INST_0_i_12_n_0\,
      I1 => p_0_in(1),
      I2 => \ALU_OUT[4]_INST_0_i_12_n_0\,
      I3 => p_0_in(2),
      I4 => \ALU_OUT[4]_INST_0_i_13_n_0\,
      O => \ALU_OUT[4]_INST_0_i_8_n_0\
    );
\ALU_OUT[4]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT[6]_INST_0_i_13_n_0\,
      I1 => \ALU_OUT[2]_INST_0_i_28_n_0\,
      I2 => p_0_in(1),
      I3 => \ALU_OUT[2]_INST_0_i_26_n_0\,
      I4 => p_0_in(2),
      I5 => \ALU_OUT[2]_INST_0_i_27_n_0\,
      O => \ALU_OUT[4]_INST_0_i_9_n_0\
    );
\ALU_OUT[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT[5]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[5]_INST_0_i_2_n_0\,
      O => \^alu_opp[3]_6\,
      S => ALU_OPP(3)
    );
\ALU_OUT[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(5),
      I1 => data2(5),
      I2 => ALU_OPP(1),
      I3 => data1(5),
      I4 => ALU_OPP(0),
      I5 => data0(5),
      O => \ALU_OUT[5]_INST_0_i_1_n_0\
    );
\ALU_OUT[5]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[5]_INST_0_i_13_n_0\,
      I1 => p_0_in(1),
      I2 => \ALU_OUT[7]_INST_0_i_14_n_0\,
      I3 => D2(0),
      I4 => \ALU_OUT[6]_INST_0_i_14_n_0\,
      O => \ALU_OUT[5]_INST_0_i_10_n_0\
    );
\ALU_OUT[5]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => D2(3),
      I1 => D1(2),
      I2 => D2(4),
      I3 => D2(2),
      I4 => D2(1),
      I5 => \ALU_OUT[7]_INST_0_i_15_n_0\,
      O => \ALU_OUT[5]_INST_0_i_11_n_0\
    );
\ALU_OUT[5]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1(9),
      I1 => p_0_in(2),
      I2 => D1(13),
      I3 => p_0_in(3),
      I4 => D1(5),
      I5 => p_0_in(4),
      O => \ALU_OUT[5]_INST_0_i_12_n_0\
    );
\ALU_OUT[5]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400444"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1(2),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(4),
      I5 => p_0_in(2),
      O => \ALU_OUT[5]_INST_0_i_13_n_0\
    );
\ALU_OUT[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(5),
      I3 => ALU_OPP(0),
      I4 => D1(5),
      O => \ALU_OUT[5]_INST_0_i_2_n_0\
    );
\ALU_OUT[5]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(5),
      I1 => \ALU_OUT[5]_INST_0_i_6_n_0\,
      O => data3(5),
      S => D2(15)
    );
\ALU_OUT[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT[5]_INST_0_i_7_n_0\,
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => \ALU_OUT[5]_INST_0_i_8_n_0\,
      I3 => D2(15),
      I4 => D2(0),
      I5 => \ALU_OUT[6]_INST_0_i_8_n_0\,
      O => data2(5)
    );
\ALU_OUT[5]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[6]_INST_0_i_9_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[5]_INST_0_i_9_n_0\,
      I3 => CARRY_FLAG_INST_0_i_5_n_0,
      I4 => D1(15),
      O => SHIFT_RIGHT0(5)
    );
\ALU_OUT[5]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[5]_INST_0_i_10_n_0\,
      I2 => CARRY_FLAG_INST_0_i_5_n_0,
      I3 => D1(0),
      I4 => \SHIFT_RIGHT3_carry__0_n_7\,
      O => \ALU_OUT[5]_INST_0_i_6_n_0\
    );
\ALU_OUT[5]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2(15),
      I1 => \ALU_OUT[5]_INST_0_i_11_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[6]_INST_0_i_11_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[5]_INST_0_i_7_n_0\
    );
\ALU_OUT[5]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[7]_INST_0_i_12_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[5]_INST_0_i_12_n_0\,
      O => \ALU_OUT[5]_INST_0_i_8_n_0\
    );
\ALU_OUT[5]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT[7]_INST_0_i_13_n_0\,
      I1 => p_0_in(1),
      I2 => \ALU_OUT[2]_INST_0_i_22_n_0\,
      I3 => p_0_in(2),
      I4 => \ALU_OUT[2]_INST_0_i_23_n_0\,
      O => \ALU_OUT[5]_INST_0_i_9_n_0\
    );
\ALU_OUT[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT[6]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[6]_INST_0_i_2_n_0\,
      O => \^alu_out\(0),
      S => ALU_OPP(3)
    );
\ALU_OUT[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(6),
      I1 => data2(6),
      I2 => ALU_OPP(1),
      I3 => data1(6),
      I4 => ALU_OPP(0),
      I5 => data0(6),
      O => \ALU_OUT[6]_INST_0_i_1_n_0\
    );
\ALU_OUT[6]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT[6]_INST_0_i_14_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[7]_INST_0_i_14_n_0\,
      I3 => p_0_in(1),
      I4 => \ALU_OUT[9]_INST_0_i_13_n_0\,
      O => \ALU_OUT[6]_INST_0_i_10_n_0\
    );
\ALU_OUT[6]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => D2(3),
      I1 => D1(3),
      I2 => D2(4),
      I3 => D2(2),
      I4 => D2(1),
      I5 => \ALU_OUT[8]_INST_0_i_15_n_0\,
      O => \ALU_OUT[6]_INST_0_i_11_n_0\
    );
\ALU_OUT[6]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1(10),
      I1 => p_0_in(2),
      I2 => D1(14),
      I3 => p_0_in(3),
      I4 => D1(6),
      I5 => p_0_in(4),
      O => \ALU_OUT[6]_INST_0_i_12_n_0\
    );
\ALU_OUT[6]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDDCDCDCC88C8C8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D1(15),
      I2 => D2(4),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(15),
      I5 => D1(10),
      O => \ALU_OUT[6]_INST_0_i_13_n_0\
    );
\ALU_OUT[6]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \ALU_OUT[3]_INST_0_i_16_n_0\,
      I1 => p_0_in(1),
      I2 => \ALU_OUT[1]_INST_0_i_11_n_0\,
      I3 => p_0_in(2),
      I4 => \ALU_OUT[6]_INST_0_i_15_n_0\,
      I5 => p_0_in(3),
      O => \ALU_OUT[6]_INST_0_i_14_n_0\
    );
\ALU_OUT[6]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => D1(5),
      I1 => D2(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(4),
      O => \ALU_OUT[6]_INST_0_i_15_n_0\
    );
\ALU_OUT[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(6),
      I3 => ALU_OPP(0),
      I4 => D1(6),
      O => \ALU_OUT[6]_INST_0_i_2_n_0\
    );
\ALU_OUT[6]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(6),
      I1 => \ALU_OUT[6]_INST_0_i_6_n_0\,
      O => data3(6),
      S => D2(15)
    );
\ALU_OUT[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT[6]_INST_0_i_7_n_0\,
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => \ALU_OUT[6]_INST_0_i_8_n_0\,
      I3 => D2(15),
      I4 => D2(0),
      I5 => \ALU_OUT[7]_INST_0_i_8_n_0\,
      O => data2(6)
    );
\ALU_OUT[6]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[7]_INST_0_i_9_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[6]_INST_0_i_9_n_0\,
      I3 => CARRY_FLAG_INST_0_i_5_n_0,
      I4 => D1(15),
      O => SHIFT_RIGHT0(6)
    );
\ALU_OUT[6]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[6]_INST_0_i_10_n_0\,
      I2 => CARRY_FLAG_INST_0_i_5_n_0,
      I3 => D1(0),
      I4 => \SHIFT_RIGHT3_carry__0_n_6\,
      O => \ALU_OUT[6]_INST_0_i_6_n_0\
    );
\ALU_OUT[6]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2(15),
      I1 => \ALU_OUT[6]_INST_0_i_11_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[7]_INST_0_i_11_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[6]_INST_0_i_7_n_0\
    );
\ALU_OUT[6]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[8]_INST_0_i_12_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[6]_INST_0_i_12_n_0\,
      O => \ALU_OUT[6]_INST_0_i_8_n_0\
    );
\ALU_OUT[6]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT[8]_INST_0_i_13_n_0\,
      I1 => p_0_in(1),
      I2 => \ALU_OUT[6]_INST_0_i_13_n_0\,
      I3 => p_0_in(2),
      I4 => \ALU_OUT[2]_INST_0_i_28_n_0\,
      O => \ALU_OUT[6]_INST_0_i_9_n_0\
    );
\ALU_OUT[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT[7]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[7]_INST_0_i_2_n_0\,
      O => \^alu_opp[3]_12\,
      S => ALU_OPP(3)
    );
\ALU_OUT[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(7),
      I1 => data2(7),
      I2 => ALU_OPP(1),
      I3 => data1(7),
      I4 => ALU_OPP(0),
      I5 => data0(7),
      O => \ALU_OUT[7]_INST_0_i_1_n_0\
    );
\ALU_OUT[7]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88F5F5DD88A0A0"
    )
        port map (
      I0 => D2(0),
      I1 => \ALU_OUT[7]_INST_0_i_14_n_0\,
      I2 => \ALU_OUT[9]_INST_0_i_13_n_0\,
      I3 => \ALU_OUT[8]_INST_0_i_14_n_0\,
      I4 => p_0_in(1),
      I5 => \ALU_OUT[10]_INST_0_i_13_n_0\,
      O => \ALU_OUT[7]_INST_0_i_10_n_0\
    );
\ALU_OUT[7]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT[7]_INST_0_i_15_n_0\,
      I1 => D2(1),
      I2 => \ALU_OUT[9]_INST_0_i_16_n_0\,
      O => \ALU_OUT[7]_INST_0_i_11_n_0\
    );
\ALU_OUT[7]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1(11),
      I1 => p_0_in(2),
      I2 => D1(15),
      I3 => p_0_in(3),
      I4 => D1(7),
      I5 => p_0_in(4),
      O => \ALU_OUT[7]_INST_0_i_12_n_0\
    );
\ALU_OUT[7]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => D1(11),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => D1(15),
      I4 => p_0_in(4),
      I5 => D1(7),
      O => \ALU_OUT[7]_INST_0_i_13_n_0\
    );
\ALU_OUT[7]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1(0),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1(4),
      I4 => p_0_in(3),
      O => \ALU_OUT[7]_INST_0_i_14_n_0\
    );
\ALU_OUT[7]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1(0),
      I1 => D2(2),
      I2 => D2(4),
      I3 => D1(4),
      I4 => D2(3),
      O => \ALU_OUT[7]_INST_0_i_15_n_0\
    );
\ALU_OUT[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(7),
      I3 => ALU_OPP(0),
      I4 => D1(7),
      O => \ALU_OUT[7]_INST_0_i_2_n_0\
    );
\ALU_OUT[7]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(7),
      I1 => \ALU_OUT[7]_INST_0_i_6_n_0\,
      O => data3(7),
      S => D2(15)
    );
\ALU_OUT[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT[7]_INST_0_i_7_n_0\,
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => \ALU_OUT[7]_INST_0_i_8_n_0\,
      I3 => D2(15),
      I4 => D2(0),
      I5 => \ALU_OUT[8]_INST_0_i_8_n_0\,
      O => data2(7)
    );
\ALU_OUT[7]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[8]_INST_0_i_9_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[7]_INST_0_i_9_n_0\,
      I3 => CARRY_FLAG_INST_0_i_5_n_0,
      I4 => D1(15),
      O => SHIFT_RIGHT0(7)
    );
\ALU_OUT[7]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[7]_INST_0_i_10_n_0\,
      I2 => CARRY_FLAG_INST_0_i_5_n_0,
      I3 => D1(0),
      I4 => \SHIFT_RIGHT3_carry__0_n_5\,
      O => \ALU_OUT[7]_INST_0_i_6_n_0\
    );
\ALU_OUT[7]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2(15),
      I1 => \ALU_OUT[7]_INST_0_i_11_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[8]_INST_0_i_11_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[7]_INST_0_i_7_n_0\
    );
\ALU_OUT[7]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[9]_INST_0_i_12_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[7]_INST_0_i_12_n_0\,
      O => \ALU_OUT[7]_INST_0_i_8_n_0\
    );
\ALU_OUT[7]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[9]_INST_0_i_15_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[7]_INST_0_i_13_n_0\,
      O => \ALU_OUT[7]_INST_0_i_9_n_0\
    );
\ALU_OUT[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT[8]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[8]_INST_0_i_2_n_0\,
      O => \^alu_out\(1),
      S => ALU_OPP(3)
    );
\ALU_OUT[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(8),
      I1 => data2(8),
      I2 => ALU_OPP(1),
      I3 => data1(8),
      I4 => ALU_OPP(0),
      I5 => data0(8),
      O => \ALU_OUT[8]_INST_0_i_1_n_0\
    );
\ALU_OUT[8]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88F5F5DD88A0A0"
    )
        port map (
      I0 => D2(0),
      I1 => \ALU_OUT[8]_INST_0_i_14_n_0\,
      I2 => \ALU_OUT[10]_INST_0_i_13_n_0\,
      I3 => \ALU_OUT[9]_INST_0_i_13_n_0\,
      I4 => p_0_in(1),
      I5 => \ALU_OUT[11]_INST_0_i_15_n_0\,
      O => \ALU_OUT[8]_INST_0_i_10_n_0\
    );
\ALU_OUT[8]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT[8]_INST_0_i_15_n_0\,
      I1 => D2(1),
      I2 => \ALU_OUT[10]_INST_0_i_16_n_0\,
      O => \ALU_OUT[8]_INST_0_i_11_n_0\
    );
\ALU_OUT[8]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1(12),
      I1 => p_0_in(2),
      I2 => D1(15),
      I3 => p_0_in(3),
      I4 => D1(8),
      I5 => p_0_in(4),
      O => \ALU_OUT[8]_INST_0_i_12_n_0\
    );
\ALU_OUT[8]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => D1(12),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => D1(15),
      I4 => p_0_in(4),
      I5 => D1(8),
      O => \ALU_OUT[8]_INST_0_i_13_n_0\
    );
\ALU_OUT[8]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1(1),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1(5),
      I4 => p_0_in(3),
      O => \ALU_OUT[8]_INST_0_i_14_n_0\
    );
\ALU_OUT[8]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1(1),
      I1 => D2(2),
      I2 => D2(4),
      I3 => D1(5),
      I4 => D2(3),
      O => \ALU_OUT[8]_INST_0_i_15_n_0\
    );
\ALU_OUT[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(8),
      I3 => ALU_OPP(0),
      I4 => D1(8),
      O => \ALU_OUT[8]_INST_0_i_2_n_0\
    );
\ALU_OUT[8]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => SHIFT_RIGHT0(8),
      I1 => \ALU_OUT[8]_INST_0_i_6_n_0\,
      O => data3(8),
      S => D2(15)
    );
\ALU_OUT[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT[8]_INST_0_i_7_n_0\,
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => \ALU_OUT[8]_INST_0_i_8_n_0\,
      I3 => D2(15),
      I4 => D2(0),
      I5 => \ALU_OUT[9]_INST_0_i_8_n_0\,
      O => data2(8)
    );
\ALU_OUT[8]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[9]_INST_0_i_10_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[8]_INST_0_i_9_n_0\,
      I3 => CARRY_FLAG_INST_0_i_5_n_0,
      I4 => D1(15),
      O => SHIFT_RIGHT0(8)
    );
\ALU_OUT[8]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40EA40"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[8]_INST_0_i_10_n_0\,
      I2 => CARRY_FLAG_INST_0_i_5_n_0,
      I3 => D1(0),
      I4 => \SHIFT_RIGHT3_carry__0_n_4\,
      O => \ALU_OUT[8]_INST_0_i_6_n_0\
    );
\ALU_OUT[8]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2(15),
      I1 => \ALU_OUT[8]_INST_0_i_11_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[9]_INST_0_i_11_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[8]_INST_0_i_7_n_0\
    );
\ALU_OUT[8]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[10]_INST_0_i_12_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[8]_INST_0_i_12_n_0\,
      O => \ALU_OUT[8]_INST_0_i_8_n_0\
    );
\ALU_OUT[8]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[10]_INST_0_i_15_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[8]_INST_0_i_13_n_0\,
      O => \ALU_OUT[8]_INST_0_i_9_n_0\
    );
\ALU_OUT[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT[9]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[9]_INST_0_i_2_n_0\,
      O => ALU_OPP_3_sn_1,
      S => ALU_OPP(3)
    );
\ALU_OUT[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(9),
      I1 => data2(9),
      I2 => ALU_OPP(1),
      I3 => data1(9),
      I4 => ALU_OPP(0),
      I5 => data0(9),
      O => \ALU_OUT[9]_INST_0_i_1_n_0\
    );
\ALU_OUT[9]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[9]_INST_0_i_14_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[9]_INST_0_i_15_n_0\,
      O => \ALU_OUT[9]_INST_0_i_10_n_0\
    );
\ALU_OUT[9]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT[9]_INST_0_i_16_n_0\,
      I1 => D2(1),
      I2 => \ALU_OUT[11]_INST_0_i_18_n_0\,
      O => \ALU_OUT[9]_INST_0_i_11_n_0\
    );
\ALU_OUT[9]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1(13),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1(9),
      I4 => p_0_in(3),
      O => \ALU_OUT[9]_INST_0_i_12_n_0\
    );
\ALU_OUT[9]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1(2),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => D1(6),
      I4 => p_0_in(3),
      O => \ALU_OUT[9]_INST_0_i_13_n_0\
    );
\ALU_OUT[9]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => D1(15),
      I3 => p_0_in(4),
      I4 => D1(11),
      O => \ALU_OUT[9]_INST_0_i_14_n_0\
    );
\ALU_OUT[9]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => D1(13),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => D1(15),
      I4 => p_0_in(4),
      I5 => D1(9),
      O => \ALU_OUT[9]_INST_0_i_15_n_0\
    );
\ALU_OUT[9]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1(2),
      I1 => D2(2),
      I2 => D2(4),
      I3 => D1(6),
      I4 => D2(3),
      O => \ALU_OUT[9]_INST_0_i_16_n_0\
    );
\ALU_OUT[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(9),
      I3 => ALU_OPP(0),
      I4 => D1(9),
      O => \ALU_OUT[9]_INST_0_i_2_n_0\
    );
\ALU_OUT[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4FFFFF4E40000"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[9]_INST_0_i_5_n_0\,
      I2 => D1(0),
      I3 => \SHIFT_RIGHT3_carry__1_n_7\,
      I4 => D2(15),
      I5 => SHIFT_RIGHT0(9),
      O => data3(9)
    );
\ALU_OUT[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55D5555555D555"
    )
        port map (
      I0 => \ALU_OUT[9]_INST_0_i_7_n_0\,
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => \ALU_OUT[9]_INST_0_i_8_n_0\,
      I3 => D2(15),
      I4 => D2(0),
      I5 => \ALU_OUT[10]_INST_0_i_8_n_0\,
      O => data2(9)
    );
\ALU_OUT[9]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => CARRY_FLAG_INST_0_i_5_n_0,
      I1 => \ALU_OUT[10]_INST_0_i_9_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[9]_INST_0_i_9_n_0\,
      O => \ALU_OUT[9]_INST_0_i_5_n_0\
    );
\ALU_OUT[9]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[10]_INST_0_i_10_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[9]_INST_0_i_10_n_0\,
      I3 => CARRY_FLAG_INST_0_i_5_n_0,
      I4 => D1(15),
      O => SHIFT_RIGHT0(9)
    );
\ALU_OUT[9]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => D2(15),
      I1 => \ALU_OUT[9]_INST_0_i_11_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[10]_INST_0_i_11_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[9]_INST_0_i_7_n_0\
    );
\ALU_OUT[9]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[11]_INST_0_i_13_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[9]_INST_0_i_12_n_0\,
      O => \ALU_OUT[9]_INST_0_i_8_n_0\
    );
\ALU_OUT[9]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[9]_INST_0_i_13_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[11]_INST_0_i_15_n_0\,
      O => \ALU_OUT[9]_INST_0_i_9_n_0\
    );
ALU_OUT_Internal0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ALU_OUT_Internal0_carry_n_0,
      CO(2) => ALU_OUT_Internal0_carry_n_1,
      CO(1) => ALU_OUT_Internal0_carry_n_2,
      CO(0) => ALU_OUT_Internal0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => D1(3 downto 0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => ALU_OUT_Internal0_carry_i_1_n_0,
      S(2) => ALU_OUT_Internal0_carry_i_2_n_0,
      S(1) => ALU_OUT_Internal0_carry_i_3_n_0,
      S(0) => ALU_OUT_Internal0_carry_i_4_n_0
    );
\ALU_OUT_Internal0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ALU_OUT_Internal0_carry_n_0,
      CO(3) => \ALU_OUT_Internal0_carry__0_n_0\,
      CO(2) => \ALU_OUT_Internal0_carry__0_n_1\,
      CO(1) => \ALU_OUT_Internal0_carry__0_n_2\,
      CO(0) => \ALU_OUT_Internal0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D1(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \ALU_OUT_Internal0_carry__0_i_1_n_0\,
      S(2) => \ALU_OUT_Internal0_carry__0_i_2_n_0\,
      S(1) => \ALU_OUT_Internal0_carry__0_i_3_n_0\,
      S(0) => \ALU_OUT_Internal0_carry__0_i_4_n_0\
    );
\ALU_OUT_Internal0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(7),
      I1 => D2(7),
      O => \ALU_OUT_Internal0_carry__0_i_1_n_0\
    );
\ALU_OUT_Internal0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(6),
      I1 => D2(6),
      O => \ALU_OUT_Internal0_carry__0_i_2_n_0\
    );
\ALU_OUT_Internal0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(5),
      I1 => D2(5),
      O => \ALU_OUT_Internal0_carry__0_i_3_n_0\
    );
\ALU_OUT_Internal0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(4),
      I1 => D2(4),
      O => \ALU_OUT_Internal0_carry__0_i_4_n_0\
    );
\ALU_OUT_Internal0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_Internal0_carry__0_n_0\,
      CO(3) => \ALU_OUT_Internal0_carry__1_n_0\,
      CO(2) => \ALU_OUT_Internal0_carry__1_n_1\,
      CO(1) => \ALU_OUT_Internal0_carry__1_n_2\,
      CO(0) => \ALU_OUT_Internal0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D1(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \ALU_OUT_Internal0_carry__1_i_1_n_0\,
      S(2) => \ALU_OUT_Internal0_carry__1_i_2_n_0\,
      S(1) => \ALU_OUT_Internal0_carry__1_i_3_n_0\,
      S(0) => \ALU_OUT_Internal0_carry__1_i_4_n_0\
    );
\ALU_OUT_Internal0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(11),
      I1 => D2(11),
      O => \ALU_OUT_Internal0_carry__1_i_1_n_0\
    );
\ALU_OUT_Internal0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(10),
      I1 => D2(10),
      O => \ALU_OUT_Internal0_carry__1_i_2_n_0\
    );
\ALU_OUT_Internal0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(9),
      I1 => D2(9),
      O => \ALU_OUT_Internal0_carry__1_i_3_n_0\
    );
\ALU_OUT_Internal0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(8),
      I1 => D2(8),
      O => \ALU_OUT_Internal0_carry__1_i_4_n_0\
    );
\ALU_OUT_Internal0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_Internal0_carry__1_n_0\,
      CO(3) => \ALU_OUT_Internal0_carry__2_n_0\,
      CO(2) => \ALU_OUT_Internal0_carry__2_n_1\,
      CO(1) => \ALU_OUT_Internal0_carry__2_n_2\,
      CO(0) => \ALU_OUT_Internal0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \ALU_OUT_Internal0_carry__2_i_1_n_0\,
      DI(2 downto 0) => D1(14 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \ALU_OUT_Internal0_carry__2_i_2_n_0\,
      S(2) => \ALU_OUT_Internal0_carry__2_i_3_n_0\,
      S(1) => \ALU_OUT_Internal0_carry__2_i_4_n_0\,
      S(0) => \ALU_OUT_Internal0_carry__2_i_5_n_0\
    );
\ALU_OUT_Internal0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D1(15),
      O => \ALU_OUT_Internal0_carry__2_i_1_n_0\
    );
\ALU_OUT_Internal0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(15),
      I1 => D2(15),
      O => \ALU_OUT_Internal0_carry__2_i_2_n_0\
    );
\ALU_OUT_Internal0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(14),
      I1 => D2(14),
      O => \ALU_OUT_Internal0_carry__2_i_3_n_0\
    );
\ALU_OUT_Internal0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(13),
      I1 => D2(13),
      O => \ALU_OUT_Internal0_carry__2_i_4_n_0\
    );
\ALU_OUT_Internal0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(12),
      I1 => D2(12),
      O => \ALU_OUT_Internal0_carry__2_i_5_n_0\
    );
\ALU_OUT_Internal0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_Internal0_carry__2_n_0\,
      CO(3 downto 0) => \NLW_ALU_OUT_Internal0_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_ALU_OUT_Internal0_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => \data0__0\(16),
      S(3 downto 0) => B"0001"
    );
ALU_OUT_Internal0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(3),
      I1 => D2(3),
      O => ALU_OUT_Internal0_carry_i_1_n_0
    );
ALU_OUT_Internal0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(2),
      I1 => D2(2),
      O => ALU_OUT_Internal0_carry_i_2_n_0
    );
ALU_OUT_Internal0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(1),
      I1 => D2(1),
      O => ALU_OUT_Internal0_carry_i_3_n_0
    );
ALU_OUT_Internal0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D1(0),
      I1 => D2(0),
      O => ALU_OUT_Internal0_carry_i_4_n_0
    );
\ALU_OUT_Internal0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ALU_OUT_Internal0_inferred__0/i__carry_n_0\,
      CO(2) => \ALU_OUT_Internal0_inferred__0/i__carry_n_1\,
      CO(1) => \ALU_OUT_Internal0_inferred__0/i__carry_n_2\,
      CO(0) => \ALU_OUT_Internal0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => D1(3 downto 0),
      O(3 downto 0) => data1(3 downto 0),
      S(3) => \i__carry_i_1__1_n_0\,
      S(2) => \i__carry_i_2__1_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\ALU_OUT_Internal0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_Internal0_inferred__0/i__carry_n_0\,
      CO(3) => \ALU_OUT_Internal0_inferred__0/i__carry__0_n_0\,
      CO(2) => \ALU_OUT_Internal0_inferred__0/i__carry__0_n_1\,
      CO(1) => \ALU_OUT_Internal0_inferred__0/i__carry__0_n_2\,
      CO(0) => \ALU_OUT_Internal0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D1(7 downto 4),
      O(3 downto 0) => data1(7 downto 4),
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__1_n_0\,
      S(1) => \i__carry__0_i_3__1_n_0\,
      S(0) => \i__carry__0_i_4__1_n_0\
    );
\ALU_OUT_Internal0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_Internal0_inferred__0/i__carry__0_n_0\,
      CO(3) => \ALU_OUT_Internal0_inferred__0/i__carry__1_n_0\,
      CO(2) => \ALU_OUT_Internal0_inferred__0/i__carry__1_n_1\,
      CO(1) => \ALU_OUT_Internal0_inferred__0/i__carry__1_n_2\,
      CO(0) => \ALU_OUT_Internal0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D1(11 downto 8),
      O(3 downto 0) => data1(11 downto 8),
      S(3) => \i__carry__1_i_1__1_n_0\,
      S(2) => \i__carry__1_i_2__0_n_0\,
      S(1) => \i__carry__1_i_3__0_n_0\,
      S(0) => \i__carry__1_i_4__0_n_0\
    );
\ALU_OUT_Internal0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_Internal0_inferred__0/i__carry__1_n_0\,
      CO(3) => \ALU_OUT_Internal0_inferred__0/i__carry__2_n_0\,
      CO(2) => \ALU_OUT_Internal0_inferred__0/i__carry__2_n_1\,
      CO(1) => \ALU_OUT_Internal0_inferred__0/i__carry__2_n_2\,
      CO(0) => \ALU_OUT_Internal0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => D2(15),
      DI(2 downto 0) => D1(14 downto 12),
      O(3 downto 0) => data1(15 downto 12),
      S(3) => \i__carry__2_i_1__0_n_0\,
      S(2) => \i__carry__2_i_2__0_n_0\,
      S(1) => \i__carry__2_i_3__0_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\ALU_OUT_Internal0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_Internal0_inferred__0/i__carry__2_n_0\,
      CO(3 downto 0) => \NLW_ALU_OUT_Internal0_inferred__0/i__carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_ALU_OUT_Internal0_inferred__0/i__carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => \data1__0\(16),
      S(3 downto 0) => B"0001"
    );
BIGGER_ZERO_FLAG_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => BIGGER_ZERO_FLAG_INST_0_i_1_n_0,
      I1 => BIGGER_ZERO_FLAG_INST_0_i_2_n_0,
      I2 => BIGGER_ZERO_FLAG_INST_0_i_3_n_0,
      I3 => \^alu_opp[3]_8\,
      O => BIGGER_ZERO_FLAG
    );
BIGGER_ZERO_FLAG_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^alu_opp[3]_1\,
      I1 => \^alu_opp[3]_0\,
      I2 => \^alu_out\(1),
      I3 => ALU_OPP_3_sn_1,
      O => BIGGER_ZERO_FLAG_INST_0_i_1_n_0
    );
BIGGER_ZERO_FLAG_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^alu_opp[3]_9\,
      I1 => ALU_OPP_1_sn_1,
      I2 => \^alu_opp[3]_11\,
      I3 => \^alu_opp[3]_10\,
      O => BIGGER_ZERO_FLAG_INST_0_i_2_n_0
    );
BIGGER_ZERO_FLAG_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^alu_opp[3]_6\,
      I1 => \^alu_opp[3]_7\,
      I2 => \^alu_opp[3]_12\,
      I3 => \^alu_out\(0),
      I4 => BIGGER_ZERO_FLAG_INST_0_i_4_n_0,
      O => BIGGER_ZERO_FLAG_INST_0_i_3_n_0
    );
BIGGER_ZERO_FLAG_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^alu_opp[3]_5\,
      I1 => \^alu_opp[3]_2\,
      I2 => \^alu_opp[3]_3\,
      I3 => \^alu_opp[3]_4\,
      O => BIGGER_ZERO_FLAG_INST_0_i_4_n_0
    );
CARRY_FLAG_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => CARRY_FLAG_INST_0_i_1_n_0,
      I1 => ALU_OPP(1),
      I2 => data2(16),
      I3 => ALU_OPP(0),
      I4 => data3(16),
      I5 => ALU_OPP(3),
      O => ALU_OPP_1_sn_1
    );
CARRY_FLAG_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data1__0\(16),
      I1 => ALU_OPP(0),
      I2 => \data0__0\(16),
      O => CARRY_FLAG_INST_0_i_1_n_0
    );
CARRY_FLAG_INST_0_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(14),
      I1 => D2(14),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(13),
      I4 => D2(13),
      O => CARRY_FLAG_INST_0_i_10_n_0
    );
CARRY_FLAG_INST_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFACFCA"
    )
        port map (
      I0 => D2(7),
      I1 => SHIFT_LEFT2(7),
      I2 => D2(15),
      I3 => D2(8),
      I4 => SHIFT_LEFT2(8),
      I5 => \ALU_OUT[2]_INST_0_i_20_n_0\,
      O => CARRY_FLAG_INST_0_i_11_n_0
    );
CARRY_FLAG_INST_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFACFCA"
    )
        port map (
      I0 => D2(11),
      I1 => SHIFT_LEFT2(11),
      I2 => D2(15),
      I3 => D2(12),
      I4 => SHIFT_LEFT2(12),
      I5 => \ALU_OUT[2]_INST_0_i_18_n_0\,
      O => CARRY_FLAG_INST_0_i_12_n_0
    );
CARRY_FLAG_INST_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => D1(4),
      I1 => p_0_in(3),
      I2 => D1(12),
      I3 => p_0_in(4),
      I4 => p_0_in(2),
      I5 => CARRY_FLAG_INST_0_i_18_n_0,
      O => CARRY_FLAG_INST_0_i_13_n_0
    );
CARRY_FLAG_INST_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => CARRY_FLAG_INST_0_i_19_n_0,
      I1 => p_0_in(2),
      I2 => D1(6),
      I3 => p_0_in(3),
      I4 => D1(14),
      I5 => p_0_in(4),
      O => CARRY_FLAG_INST_0_i_14_n_0
    );
CARRY_FLAG_INST_0_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_16_n_0\,
      I1 => p_0_in(1),
      I2 => CARRY_FLAG_INST_0_i_20_n_0,
      I3 => p_0_in(2),
      I4 => CARRY_FLAG_INST_0_i_21_n_0,
      O => CARRY_FLAG_INST_0_i_15_n_0
    );
CARRY_FLAG_INST_0_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => D1(8),
      I1 => D2(3),
      I2 => D1(0),
      I3 => D2(4),
      I4 => D1(15),
      O => CARRY_FLAG_INST_0_i_16_n_0
    );
CARRY_FLAG_INST_0_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => D1(2),
      I1 => D2(3),
      I2 => D1(10),
      I3 => D2(4),
      O => CARRY_FLAG_INST_0_i_17_n_0
    );
CARRY_FLAG_INST_0_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => D1(8),
      I1 => p_0_in(3),
      I2 => D1(0),
      I3 => p_0_in(4),
      I4 => D1(15),
      O => CARRY_FLAG_INST_0_i_18_n_0
    );
CARRY_FLAG_INST_0_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1(2),
      I1 => p_0_in(3),
      I2 => D1(10),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => CARRY_FLAG_INST_0_i_19_n_0
    );
CARRY_FLAG_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CAA00AA"
    )
        port map (
      I0 => SHIFT_LEFT00_in(16),
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => D2(0),
      I3 => D2(15),
      I4 => CARRY_FLAG_INST_0_i_6_n_0,
      O => data2(16)
    );
CARRY_FLAG_INST_0_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1(3),
      I1 => p_0_in(3),
      I2 => D1(11),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => CARRY_FLAG_INST_0_i_20_n_0
    );
CARRY_FLAG_INST_0_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000B8B8B8"
    )
        port map (
      I0 => D1(7),
      I1 => p_0_in(3),
      I2 => D1(15),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => CARRY_FLAG_INST_0_i_21_n_0
    );
CARRY_FLAG_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4FFFFF4E40000"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => CARRY_FLAG_INST_0_i_7_n_0,
      I2 => D1(0),
      I3 => \SHIFT_RIGHT3_carry__2_n_4\,
      I4 => D2(15),
      I5 => D1(15),
      O => data3(16)
    );
CARRY_FLAG_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I1 => CARRY_FLAG_INST_0_i_8_n_0,
      I2 => D2(1),
      I3 => CARRY_FLAG_INST_0_i_9_n_0,
      I4 => D2(0),
      I5 => SMALLER_ZERO_FLAG_INST_0_i_7_n_0,
      O => SHIFT_LEFT00_in(16)
    );
CARRY_FLAG_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000003B"
    )
        port map (
      I0 => \_inferred__0/i__carry__2_n_0\,
      I1 => D2(15),
      I2 => SHIFT_LEFT2(15),
      I3 => CARRY_FLAG_INST_0_i_10_n_0,
      I4 => CARRY_FLAG_INST_0_i_11_n_0,
      I5 => CARRY_FLAG_INST_0_i_12_n_0,
      O => CARRY_FLAG_INST_0_i_5_n_0
    );
CARRY_FLAG_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(4),
      I2 => D1(15),
      I3 => p_0_in(3),
      I4 => p_0_in(1),
      O => CARRY_FLAG_INST_0_i_6_n_0
    );
CARRY_FLAG_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC888C844400040"
    )
        port map (
      I0 => D2(0),
      I1 => CARRY_FLAG_INST_0_i_5_n_0,
      I2 => CARRY_FLAG_INST_0_i_13_n_0,
      I3 => p_0_in(1),
      I4 => CARRY_FLAG_INST_0_i_14_n_0,
      I5 => CARRY_FLAG_INST_0_i_15_n_0,
      O => CARRY_FLAG_INST_0_i_7_n_0
    );
CARRY_FLAG_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => D1(4),
      I1 => D2(3),
      I2 => D1(12),
      I3 => D2(4),
      I4 => D2(2),
      I5 => CARRY_FLAG_INST_0_i_16_n_0,
      O => CARRY_FLAG_INST_0_i_8_n_0
    );
CARRY_FLAG_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => CARRY_FLAG_INST_0_i_17_n_0,
      I1 => D2(2),
      I2 => D1(6),
      I3 => D2(3),
      I4 => D1(14),
      I5 => D2(4),
      O => CARRY_FLAG_INST_0_i_9_n_0
    );
NOT_ZERO_FLAG_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^alu_opp[3]_9\,
      I1 => \^alu_opp[3]_10\,
      I2 => \^alu_opp[3]_11\,
      I3 => ALU_OPP_1_sn_1,
      I4 => NOT_ZERO_FLAG_INST_0_i_1_n_0,
      I5 => \^alu_opp[3]_8\,
      O => NOT_ZERO_FLAG
    );
NOT_ZERO_FLAG_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ZERO_FLAG_INST_0_i_4_n_0,
      I1 => NOT_ZERO_FLAG_INST_0_i_2_n_0,
      I2 => ZERO_FLAG_INST_0_i_2_n_0,
      I3 => \^alu_opp[3]_0\,
      I4 => \^alu_opp[3]_1\,
      I5 => ALU_OPP_3_sn_1,
      O => NOT_ZERO_FLAG_INST_0_i_1_n_0
    );
NOT_ZERO_FLAG_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^alu_opp[3]_5\,
      I1 => \^alu_opp[3]_4\,
      I2 => \^alu_opp[3]_3\,
      I3 => \^alu_opp[3]_6\,
      I4 => \^alu_opp[3]_7\,
      I5 => \^alu_opp[3]_2\,
      O => NOT_ZERO_FLAG_INST_0_i_2_n_0
    );
OVERFLOW_FLAG_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1482"
    )
        port map (
      I0 => \^alu_opp[3]_8\,
      I1 => D2(15),
      I2 => ALU_OPP(0),
      I3 => D1(15),
      O => OVERFLOW_FLAG
    );
\SHIFT_RIGHT2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \SHIFT_RIGHT2_inferred__0/i__carry_n_0\,
      CO(2) => \SHIFT_RIGHT2_inferred__0/i__carry_n_1\,
      CO(1) => \SHIFT_RIGHT2_inferred__0/i__carry_n_2\,
      CO(0) => \SHIFT_RIGHT2_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => D2(5),
      DI(1) => \i__carry_i_2_n_0\,
      DI(0) => D2(1),
      O(3 downto 0) => \NLW_SHIFT_RIGHT2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_3__1_n_0\,
      S(2) => \i__carry_i_4__1_n_0\,
      S(1) => \i__carry_i_5__0_n_0\,
      S(0) => \i__carry_i_6_n_0\
    );
\SHIFT_RIGHT2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \SHIFT_RIGHT2_inferred__0/i__carry_n_0\,
      CO(3) => \SHIFT_RIGHT2_inferred__0/i__carry__0_n_0\,
      CO(2) => \SHIFT_RIGHT2_inferred__0/i__carry__0_n_1\,
      CO(1) => \SHIFT_RIGHT2_inferred__0/i__carry__0_n_2\,
      CO(0) => \SHIFT_RIGHT2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_SHIFT_RIGHT2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\SHIFT_RIGHT2_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SHIFT_RIGHT2_inferred__0/i__carry__0_n_0\,
      CO(3 downto 1) => \NLW_SHIFT_RIGHT2_inferred__0/i__carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_SHIFT_RIGHT2_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__1_i_1_n_0\
    );
SHIFT_RIGHT3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => SHIFT_RIGHT3_carry_n_0,
      CO(2) => SHIFT_RIGHT3_carry_n_1,
      CO(1) => SHIFT_RIGHT3_carry_n_2,
      CO(0) => SHIFT_RIGHT3_carry_n_3,
      CYINIT => SHIFT_RIGHT4(0),
      DI(3 downto 0) => B"1111",
      O(3) => SHIFT_RIGHT3_carry_n_4,
      O(2) => SHIFT_RIGHT3_carry_n_5,
      O(1) => SHIFT_RIGHT3_carry_n_6,
      O(0) => SHIFT_RIGHT3_carry_n_7,
      S(3) => SHIFT_RIGHT3_carry_i_2_n_0,
      S(2) => SHIFT_RIGHT3_carry_i_3_n_0,
      S(1) => SHIFT_RIGHT3_carry_i_4_n_0,
      S(0) => SHIFT_RIGHT3_carry_i_5_n_0
    );
\SHIFT_RIGHT3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => SHIFT_RIGHT3_carry_n_0,
      CO(3) => \SHIFT_RIGHT3_carry__0_n_0\,
      CO(2) => \SHIFT_RIGHT3_carry__0_n_1\,
      CO(1) => \SHIFT_RIGHT3_carry__0_n_2\,
      CO(0) => \SHIFT_RIGHT3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \SHIFT_RIGHT3_carry__0_n_4\,
      O(2) => \SHIFT_RIGHT3_carry__0_n_5\,
      O(1) => \SHIFT_RIGHT3_carry__0_n_6\,
      O(0) => \SHIFT_RIGHT3_carry__0_n_7\,
      S(3) => \SHIFT_RIGHT3_carry__0_i_1_n_0\,
      S(2) => \SHIFT_RIGHT3_carry__0_i_2_n_0\,
      S(1) => \SHIFT_RIGHT3_carry__0_i_3_n_0\,
      S(0) => \SHIFT_RIGHT3_carry__0_i_4_n_0\
    );
\SHIFT_RIGHT3_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEFA"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_5_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => D2(0),
      I5 => p_0_in(2),
      O => \SHIFT_RIGHT3_carry__0_i_1_n_0\
    );
\SHIFT_RIGHT3_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAFFFFFFFFFFFFF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_6_n_0,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => D2(0),
      I5 => p_0_in(2),
      O => \SHIFT_RIGHT3_carry__0_i_2_n_0\
    );
\SHIFT_RIGHT3_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBAFFFFFFFFF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_6_n_0,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => D2(0),
      I5 => p_0_in(2),
      O => \SHIFT_RIGHT3_carry__0_i_3_n_0\
    );
\SHIFT_RIGHT3_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFBBBFFFFFFFF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_6_n_0,
      I1 => D2(0),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(1),
      I4 => D2(1),
      I5 => p_0_in(2),
      O => \SHIFT_RIGHT3_carry__0_i_4_n_0\
    );
\SHIFT_RIGHT3_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBEAFFEEFBFBFFFF"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__2_i_6_n_0\,
      I1 => D2(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(4),
      I4 => SHIFT_LEFT2(3),
      I5 => D2(3),
      O => \SHIFT_RIGHT3_carry__0_i_5_n_0\
    );
\SHIFT_RIGHT3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SHIFT_RIGHT3_carry__0_n_0\,
      CO(3) => \SHIFT_RIGHT3_carry__1_n_0\,
      CO(2) => \SHIFT_RIGHT3_carry__1_n_1\,
      CO(1) => \SHIFT_RIGHT3_carry__1_n_2\,
      CO(0) => \SHIFT_RIGHT3_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \SHIFT_RIGHT3_carry__1_n_4\,
      O(2) => \SHIFT_RIGHT3_carry__1_n_5\,
      O(1) => \SHIFT_RIGHT3_carry__1_n_6\,
      O(0) => \SHIFT_RIGHT3_carry__1_n_7\,
      S(3) => \SHIFT_RIGHT3_carry__1_i_1_n_0\,
      S(2) => \SHIFT_RIGHT3_carry__1_i_2_n_0\,
      S(1) => \SHIFT_RIGHT3_carry__1_i_3_n_0\,
      S(0) => \SHIFT_RIGHT3_carry__1_i_4_n_0\
    );
\SHIFT_RIGHT3_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEFAFFFFFFFF"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_5_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => D2(0),
      I5 => p_0_in(2),
      O => \SHIFT_RIGHT3_carry__1_i_1_n_0\
    );
\SHIFT_RIGHT3_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBBAFFFFF"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_5_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => D2(0),
      I5 => p_0_in(2),
      O => \SHIFT_RIGHT3_carry__1_i_2_n_0\
    );
\SHIFT_RIGHT3_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBAF"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_5_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => D2(0),
      I5 => p_0_in(2),
      O => \SHIFT_RIGHT3_carry__1_i_3_n_0\
    );
\SHIFT_RIGHT3_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBFFBBB"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_5_n_0\,
      I1 => D2(0),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(1),
      I4 => D2(1),
      I5 => p_0_in(2),
      O => \SHIFT_RIGHT3_carry__1_i_4_n_0\
    );
\SHIFT_RIGHT3_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \SHIFT_RIGHT3_carry__1_n_0\,
      CO(3) => \NLW_SHIFT_RIGHT3_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \SHIFT_RIGHT3_carry__2_n_1\,
      CO(1) => \SHIFT_RIGHT3_carry__2_n_2\,
      CO(0) => \SHIFT_RIGHT3_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3) => \SHIFT_RIGHT3_carry__2_n_4\,
      O(2) => \SHIFT_RIGHT3_carry__2_n_5\,
      O(1) => \SHIFT_RIGHT3_carry__2_n_6\,
      O(0) => \SHIFT_RIGHT3_carry__2_n_7\,
      S(3) => \SHIFT_RIGHT3_carry__2_i_1_n_0\,
      S(2) => \SHIFT_RIGHT3_carry__2_i_2_n_0\,
      S(1) => \SHIFT_RIGHT3_carry__2_i_3_n_0\,
      S(0) => \SHIFT_RIGHT3_carry__2_i_4_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => D2(0),
      I1 => p_0_in(4),
      I2 => \SHIFT_RIGHT3_carry__2_i_6_n_0\,
      I3 => p_0_in(3),
      I4 => p_0_in(1),
      I5 => p_0_in(2),
      O => \SHIFT_RIGHT3_carry__2_i_1_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(8),
      I1 => D2(8),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(9),
      I4 => D2(9),
      O => \SHIFT_RIGHT3_carry__2_i_10_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D2(5),
      I1 => SHIFT_LEFT2(5),
      I2 => D2(15),
      O => p_0_in(5)
    );
\SHIFT_RIGHT3_carry__2_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACCFFCC"
    )
        port map (
      I0 => SHIFT_LEFT2(15),
      I1 => D2(14),
      I2 => SHIFT_LEFT2(14),
      I3 => D2(15),
      I4 => \_inferred__0/i__carry__2_n_0\,
      O => \SHIFT_RIGHT3_carry__2_i_12_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(10),
      I1 => D2(10),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(11),
      I4 => D2(11),
      O => \SHIFT_RIGHT3_carry__2_i_13_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(12),
      I1 => D2(12),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(13),
      I4 => D2(13),
      O => \SHIFT_RIGHT3_carry__2_i_14_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAFFFFFFFFFFFFF"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_5_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => D2(0),
      I5 => p_0_in(2),
      O => \SHIFT_RIGHT3_carry__2_i_2_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBAFFFFFFFFF"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_5_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => D2(0),
      I5 => p_0_in(2),
      O => \SHIFT_RIGHT3_carry__2_i_3_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFBBBFFFFFFFF"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_5_n_0\,
      I1 => D2(0),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(1),
      I4 => D2(1),
      I5 => p_0_in(2),
      O => \SHIFT_RIGHT3_carry__2_i_4_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D2(4),
      I1 => SHIFT_LEFT2(4),
      I2 => D2(15),
      O => p_0_in(4)
    );
\SHIFT_RIGHT3_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__2_i_9_n_0\,
      I1 => \SHIFT_RIGHT3_carry__2_i_10_n_0\,
      I2 => p_0_in(5),
      I3 => \SHIFT_RIGHT3_carry__2_i_12_n_0\,
      I4 => \SHIFT_RIGHT3_carry__2_i_13_n_0\,
      I5 => \SHIFT_RIGHT3_carry__2_i_14_n_0\,
      O => \SHIFT_RIGHT3_carry__2_i_6_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D2(3),
      I1 => SHIFT_LEFT2(3),
      I2 => D2(15),
      O => p_0_in(3)
    );
\SHIFT_RIGHT3_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D2(1),
      I1 => SHIFT_LEFT2(1),
      I2 => D2(15),
      O => p_0_in(1)
    );
\SHIFT_RIGHT3_carry__2_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFFCAC"
    )
        port map (
      I0 => SHIFT_LEFT2(6),
      I1 => D2(6),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(7),
      I4 => D2(7),
      O => \SHIFT_RIGHT3_carry__2_i_9_n_0\
    );
SHIFT_RIGHT3_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001105"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_6_n_0,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => D2(0),
      I5 => p_0_in(2),
      O => SHIFT_RIGHT4(0)
    );
SHIFT_RIGHT3_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEFAFFFFFFFF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_6_n_0,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => D2(0),
      I5 => p_0_in(2),
      O => SHIFT_RIGHT3_carry_i_2_n_0
    );
SHIFT_RIGHT3_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBBAFFFFF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_6_n_0,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => D2(0),
      I5 => p_0_in(2),
      O => SHIFT_RIGHT3_carry_i_3_n_0
    );
SHIFT_RIGHT3_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBAF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_6_n_0,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => D2(0),
      I5 => p_0_in(2),
      O => SHIFT_RIGHT3_carry_i_4_n_0
    );
SHIFT_RIGHT3_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBFFBBB"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_6_n_0,
      I1 => D2(0),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(1),
      I4 => D2(1),
      I5 => p_0_in(2),
      O => SHIFT_RIGHT3_carry_i_5_n_0
    );
SHIFT_RIGHT3_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFAAFCFC"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2(3),
      I2 => D2(4),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(15),
      I5 => \SHIFT_RIGHT3_carry__2_i_6_n_0\,
      O => SHIFT_RIGHT3_carry_i_6_n_0
    );
SHIFT_RIGHT3_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D2(2),
      I1 => SHIFT_LEFT2(2),
      I2 => D2(15),
      O => p_0_in(2)
    );
SMALLER_ZERO_FLAG_INST_0: unisim.vcomponents.MUXF7
     port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_1_n_0,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_2_n_0,
      O => \^alu_opp[3]_8\,
      S => ALU_OPP(3)
    );
SMALLER_ZERO_FLAG_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(15),
      I1 => data2(15),
      I2 => ALU_OPP(1),
      I3 => data1(15),
      I4 => ALU_OPP(0),
      I5 => data0(15),
      O => SMALLER_ZERO_FLAG_INST_0_i_1_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBA088"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_14_n_0\,
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(15),
      I4 => CARRY_FLAG_INST_0_i_14_n_0,
      O => SMALLER_ZERO_FLAG_INST_0_i_10_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => D2(7),
      I1 => D2(8),
      I2 => D2(5),
      I3 => D2(6),
      O => SMALLER_ZERO_FLAG_INST_0_i_11_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => D2(11),
      I1 => D2(12),
      I2 => D2(9),
      I3 => D2(10),
      O => SMALLER_ZERO_FLAG_INST_0_i_12_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_16_n_0,
      I1 => D2(2),
      I2 => D1(5),
      I3 => D2(3),
      I4 => D1(13),
      I5 => D2(4),
      O => SMALLER_ZERO_FLAG_INST_0_i_13_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_17_n_0,
      I1 => D2(2),
      I2 => D1(7),
      I3 => D2(3),
      I4 => D1(15),
      I5 => D2(4),
      O => SMALLER_ZERO_FLAG_INST_0_i_14_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => D1(0),
      I1 => D2(3),
      I2 => D1(8),
      I3 => D2(4),
      I4 => D2(2),
      I5 => SMALLER_ZERO_FLAG_INST_0_i_18_n_0,
      O => SMALLER_ZERO_FLAG_INST_0_i_15_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => D1(1),
      I1 => D2(3),
      I2 => D1(9),
      I3 => D2(4),
      O => SMALLER_ZERO_FLAG_INST_0_i_16_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => D1(3),
      I1 => D2(3),
      I2 => D1(11),
      I3 => D2(4),
      O => SMALLER_ZERO_FLAG_INST_0_i_17_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => D1(4),
      I1 => D2(3),
      I2 => D1(12),
      I3 => D2(4),
      O => SMALLER_ZERO_FLAG_INST_0_i_18_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96556A6A"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => ALU_OPP(1),
      I2 => D2(15),
      I3 => ALU_OPP(0),
      I4 => D1(15),
      O => SMALLER_ZERO_FLAG_INST_0_i_2_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4FFFFF4E40000"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_5_n_0,
      I2 => D1(0),
      I3 => \SHIFT_RIGHT3_carry__2_n_5\,
      I4 => D2(15),
      I5 => D1(15),
      O => data3(15)
    );
SMALLER_ZERO_FLAG_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000A808A808"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_7_n_0,
      I2 => D2(0),
      I3 => SMALLER_ZERO_FLAG_INST_0_i_8_n_0,
      I4 => SHIFT_LEFT0(15),
      I5 => D2(15),
      O => data2(15)
    );
SMALLER_ZERO_FLAG_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => CARRY_FLAG_INST_0_i_5_n_0,
      I1 => CARRY_FLAG_INST_0_i_15_n_0,
      I2 => D2(0),
      I3 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      O => SMALLER_ZERO_FLAG_INST_0_i_5_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => D2(15),
      I1 => D2(13),
      I2 => D2(14),
      I3 => SMALLER_ZERO_FLAG_INST_0_i_11_n_0,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_12_n_0,
      O => SMALLER_ZERO_FLAG_INST_0_i_6_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_13_n_0,
      I1 => D2(1),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_14_n_0,
      O => SMALLER_ZERO_FLAG_INST_0_i_7_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_15_n_0,
      I1 => D2(1),
      I2 => CARRY_FLAG_INST_0_i_9_n_0,
      O => SMALLER_ZERO_FLAG_INST_0_i_8_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => CARRY_FLAG_INST_0_i_5_n_0,
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => D1(15),
      I4 => p_0_in(4),
      I5 => p_0_in(2),
      O => SHIFT_LEFT0(15)
    );
ZERO_FLAG_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^alu_opp[3]_9\,
      I1 => \^alu_opp[3]_10\,
      I2 => \^alu_opp[3]_11\,
      I3 => \^alu_opp[3]_8\,
      I4 => ZERO_FLAG_INST_0_i_1_n_0,
      I5 => ALU_OPP_1_sn_1,
      O => ZERO_FLAG
    );
ZERO_FLAG_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => ALU_OPP_3_sn_1,
      I1 => ZERO_FLAG_INST_0_i_2_n_0,
      I2 => ZERO_FLAG_INST_0_i_3_n_0,
      I3 => ZERO_FLAG_INST_0_i_4_n_0,
      I4 => \^alu_opp[3]_0\,
      I5 => \^alu_opp[3]_1\,
      O => ZERO_FLAG_INST_0_i_1_n_0
    );
ZERO_FLAG_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^alu_out\(1),
      I1 => \^alu_opp[3]_12\,
      I2 => \^alu_out\(0),
      O => ZERO_FLAG_INST_0_i_2_n_0
    );
ZERO_FLAG_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^alu_opp[3]_2\,
      I1 => \^alu_opp[3]_3\,
      I2 => \^alu_opp[3]_4\,
      I3 => \^alu_opp[3]_5\,
      I4 => \^alu_opp[3]_6\,
      I5 => \^alu_opp[3]_7\,
      O => ZERO_FLAG_INST_0_i_3_n_0
    );
ZERO_FLAG_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^alu_opp[3]_12\,
      I1 => \^alu_out\(1),
      O => ZERO_FLAG_INST_0_i_4_n_0
    );
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => \i__carry_i_1__0_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SHIFT_LEFT2(4 downto 1),
      S(3) => \i__carry_i_2__0_n_0\,
      S(2) => \i__carry_i_3_n_0\,
      S(1) => \i__carry_i_4_n_0\,
      S(0) => \i__carry_i_5_n_0\
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3) => \_inferred__0/i__carry__0_n_0\,
      CO(2) => \_inferred__0/i__carry__0_n_1\,
      CO(1) => \_inferred__0/i__carry__0_n_2\,
      CO(0) => \_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SHIFT_LEFT2(8 downto 5),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__0_n_0\,
      CO(3) => \_inferred__0/i__carry__1_n_0\,
      CO(2) => \_inferred__0/i__carry__1_n_1\,
      CO(1) => \_inferred__0/i__carry__1_n_2\,
      CO(0) => \_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SHIFT_LEFT2(12 downto 9),
      S(3) => \i__carry__1_i_1__0_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__1_n_0\,
      CO(3) => \_inferred__0/i__carry__2_n_0\,
      CO(2) => \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\(2),
      CO(1) => \_inferred__0/i__carry__2_n_2\,
      CO(0) => \_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0100",
      O(3) => \NLW__inferred__0/i__carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => SHIFT_LEFT2(15 downto 13),
      S(3) => '1',
      S(2) => \i__carry__2_i_1_n_0\,
      S(1) => \i__carry__2_i_2_n_0\,
      S(0) => \i__carry__2_i_3_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(7),
      I1 => D2(7),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(14),
      I1 => D2(15),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(12),
      I1 => D2(13),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(7),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(6),
      I1 => D2(6),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(10),
      I1 => D2(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(6),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(5),
      I1 => D2(5),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(8),
      I1 => D2(9),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(5),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(4),
      I1 => D2(4),
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(14),
      I1 => D2(15),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(12),
      I1 => D2(13),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(10),
      I1 => D2(11),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(8),
      I1 => D2(9),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(15),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(12),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(11),
      I1 => D2(11),
      O => \i__carry__1_i_1__1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(11),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(10),
      I1 => D2(10),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(10),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(9),
      I1 => D2(9),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(9),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(8),
      I1 => D2(8),
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(15),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(15),
      I1 => D2(15),
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(14),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(14),
      I1 => D2(14),
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(13),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(13),
      I1 => D2(13),
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(12),
      I1 => D2(12),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(6),
      I1 => D2(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(0),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(3),
      I1 => D2(3),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(2),
      I1 => D2(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(4),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(2),
      I1 => D2(2),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(1),
      I1 => D2(1),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(6),
      I1 => D2(7),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(2),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D1(0),
      I1 => D2(0),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => D2(4),
      I1 => D2(5),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(1),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(2),
      I1 => D2(3),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => D2(0),
      I1 => D2(1),
      O => \i__carry_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_ALU_0_0 is
  port (
    D1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    D2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ALU_OPP : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
  attribute NotValidForBitStream of main_ALU_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_ALU_0_0 : entity is "main_ALU_0_0,ALU,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_ALU_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_ALU_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_ALU_0_0 : entity is "ALU,Vivado 2024.1";
end main_ALU_0_0;

architecture STRUCTURE of main_ALU_0_0 is
  signal \^alu_out\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \^rho_pin\ : STD_LOGIC;
  signal \^smaller_zero_flag\ : STD_LOGIC;
begin
  ALU_OUT(15) <= \^smaller_zero_flag\;
  ALU_OUT(14 downto 0) <= \^alu_out\(14 downto 0);
  RHO_FLAG <= \^rho_pin\;
  SMALLER_ZERO_FLAG <= \^smaller_zero_flag\;
  \^rho_pin\ <= RHO_PIN;
U0: entity work.main_ALU_0_0_ALU
     port map (
      ALU_OPP(3 downto 0) => ALU_OPP(3 downto 0),
      \ALU_OPP[3]_0\ => \^alu_out\(11),
      \ALU_OPP[3]_1\ => \^alu_out\(10),
      \ALU_OPP[3]_10\ => \^alu_out\(13),
      \ALU_OPP[3]_11\ => \^alu_out\(12),
      \ALU_OPP[3]_12\ => \^alu_out\(7),
      \ALU_OPP[3]_2\ => \^alu_out\(3),
      \ALU_OPP[3]_3\ => \^alu_out\(0),
      \ALU_OPP[3]_4\ => \^alu_out\(1),
      \ALU_OPP[3]_5\ => \^alu_out\(2),
      \ALU_OPP[3]_6\ => \^alu_out\(5),
      \ALU_OPP[3]_7\ => \^alu_out\(4),
      \ALU_OPP[3]_8\ => \^smaller_zero_flag\,
      \ALU_OPP[3]_9\ => \^alu_out\(14),
      ALU_OPP_1_sp_1 => CARRY_FLAG,
      ALU_OPP_3_sp_1 => \^alu_out\(9),
      ALU_OUT(1) => \^alu_out\(8),
      ALU_OUT(0) => \^alu_out\(6),
      BIGGER_ZERO_FLAG => BIGGER_ZERO_FLAG,
      D1(15 downto 0) => D1(15 downto 0),
      D2(15 downto 0) => D2(15 downto 0),
      NOT_ZERO_FLAG => NOT_ZERO_FLAG,
      OVERFLOW_FLAG => OVERFLOW_FLAG,
      ZERO_FLAG => ZERO_FLAG
    );
end STRUCTURE;
