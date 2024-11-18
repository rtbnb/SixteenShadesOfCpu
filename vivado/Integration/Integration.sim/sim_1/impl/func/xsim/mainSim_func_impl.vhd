-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Nov 15 23:36:21 2024
-- Host        : DESKTOP-7KK7962 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Programmieren/Projekte/FPGA_CPU/SixteenShadesOfCpu/vivado/Integration/Integration.sim/sim_1/impl/func/xsim/mainSim_func_impl.vhd
-- Design      : main_wrapper
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
    CARRY_FLAG : out STD_LOGIC;
    BIGGER_ZERO_FLAG : out STD_LOGIC;
    \immediate_s_reg[1]\ : out STD_LOGIC;
    NOT_ZERO_FLAG : out STD_LOGIC;
    ZERO_FLAG : out STD_LOGIC;
    ALU_OUT : out STD_LOGIC_VECTOR ( 14 downto 0 );
    OVERFLOW_FLAG : out STD_LOGIC;
    D2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    D1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ALU_OPP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Operand2_out[0]_repN_alias\ : in STD_LOGIC;
    \WriteDataSel_out[0]_alias\ : in STD_LOGIC;
    \WriteDataSel_out[1]_alias\ : in STD_LOGIC;
    \ManipulatedImmidiate[6]_alias\ : in STD_LOGIC;
    O_alias : in STD_LOGIC;
    \ALU_OUT[6]_INST_0_i_4_n_0_alias\ : out STD_LOGIC;
    \ALU_OUT[6]_INST_0_i_3_n_0_alias\ : out STD_LOGIC;
    \ALU_OUT[6]_INST_0_i_2_n_0_alias\ : out STD_LOGIC;
    \ALU_OUT[6]_repN_2_alias\ : out STD_LOGIC
  );
end ALU;

architecture STRUCTURE of ALU is
  signal \^alu_out\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \ALU_OUT[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[0]_INST_0_i_5_n_0\ : STD_LOGIC;
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
  signal \ALU_OUT[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_3_n_0_repN\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[11]_repN\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[12]_INST_0_i_5_n_0\ : STD_LOGIC;
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
  signal \ALU_OUT[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_3_n_0_repN\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[13]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[14]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[1]_repN\ : STD_LOGIC;
  signal \ALU_OUT[1]_repN_1\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_3_n_0_repN\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[2]_INST_0_i_6_n_0\ : STD_LOGIC;
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
  signal \ALU_OUT[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_3_n_0_repN\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_3_n_0_repN\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_7_n_0_repN\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[6]_repN\ : STD_LOGIC;
  signal \ALU_OUT[6]_repN_1\ : STD_LOGIC;
  signal \ALU_OUT[6]_repN_2\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_3_n_0_repN\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ALU_OUT[9]_repN\ : STD_LOGIC;
  signal \ALU_OUT[9]_repN_1\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__0_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__1_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_carry__2_n_0\ : STD_LOGIC;
  signal ALU_OUT_Internal0_carry_i_1_n_0 : STD_LOGIC;
  signal ALU_OUT_Internal0_carry_i_2_n_0 : STD_LOGIC;
  signal ALU_OUT_Internal0_carry_i_3_n_0 : STD_LOGIC;
  signal ALU_OUT_Internal0_carry_i_4_n_0 : STD_LOGIC;
  signal ALU_OUT_Internal0_carry_n_0 : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \ALU_OUT_Internal0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_10_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_11_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_12_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_13_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_14_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_15_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_16_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_17_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_1_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_2_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_3_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_4_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_5_n_3 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_6_n_3 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_7_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_8_n_0 : STD_LOGIC;
  signal CARRY_FLAG_INST_0_i_9_n_0 : STD_LOGIC;
  signal CARRY_FLAG_repN : STD_LOGIC;
  signal CARRY_FLAG_repN_1 : STD_LOGIC;
  signal SHIFT_LEFT2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \SHIFT_RIGHT2_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \SHIFT_RIGHT2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_4\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_5\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_6\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_7\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_4\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_5\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_6\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_7\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_4\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_5\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_6\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_7\ : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_10_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_11_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_12_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_6_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_7_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_8_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_9_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_4 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_5 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_6 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_7 : STD_LOGIC;
  signal SHIFT_RIGHT4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SMALLER_ZERO_FLAG_INST_0_i_10_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_11_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_12_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_13_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_14_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_15_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_16_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_17_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_18_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_19_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_1_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_20_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_21_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_22_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_23_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_24_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_25_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_26_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_27_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_28_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_29_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_2_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_30_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_31_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_32_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_33_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_34_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_35_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_36_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_37_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_38_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_39_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_3_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_40_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_41_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_4_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_5_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_6_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_7_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_8_n_0 : STD_LOGIC;
  signal SMALLER_ZERO_FLAG_INST_0_i_9_n_0 : STD_LOGIC;
  signal ZERO_FLAG_INST_0_i_1_n_0 : STD_LOGIC;
  signal ZERO_FLAG_INST_0_i_2_n_0 : STD_LOGIC;
  signal ZERO_FLAG_INST_0_i_3_n_0 : STD_LOGIC;
  signal ZERO_FLAG_INST_0_i_4_n_0 : STD_LOGIC;
  signal ZERO_FLAG_INST_0_i_5_n_0 : STD_LOGIC;
  signal ZERO_FLAG_INST_0_i_6_n_0 : STD_LOGIC;
  signal ZERO_FLAG_INST_0_i_6_n_0_repN : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
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
  signal \^immediate_s_reg[1]\ : STD_LOGIC;
  signal NLW_ALU_OUT_Internal0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_Internal0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_Internal0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_Internal0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_Internal0_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_Internal0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_Internal0_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ALU_OUT_Internal0_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_CARRY_FLAG_INST_0_i_5_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_CARRY_FLAG_INST_0_i_5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_CARRY_FLAG_INST_0_i_6_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_CARRY_FLAG_INST_0_i_6_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SHIFT_RIGHT2_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_SHIFT_RIGHT2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SHIFT_RIGHT2_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_SHIFT_RIGHT2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SHIFT_RIGHT2_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_SHIFT_RIGHT2_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SHIFT_RIGHT3_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_SHIFT_RIGHT3_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_SHIFT_RIGHT3_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_SHIFT_RIGHT3_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW__inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW__inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW__inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute PHYS_OPT_MODIFIED : string;
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[10]_INST_0_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[10]_INST_0_i_3_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[10]_INST_0_i_3_comp_1\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[11]_INST_0_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[13]_INST_0_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[13]_INST_0_i_3_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[13]_INST_0_i_3_comp_1\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[1]_INST_0_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[1]_INST_0_comp_1\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[2]_INST_0_comp_1\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[2]_INST_0_i_3_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[2]_INST_0_i_3_comp_1\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[2]_INST_0_i_9_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[3]_INST_0_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[3]_INST_0_i_3_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[3]_INST_0_i_3_comp_1\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[5]_INST_0_comp_1\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[5]_INST_0_i_3_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[5]_INST_0_i_3_comp_1\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[5]_INST_0_i_7_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[5]_INST_0_i_7_comp_1\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[6]_INST_0_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[6]_INST_0_comp_1\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[6]_INST_0_comp_2\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[6]_INST_0_comp_3\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[7]_INST_0_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[7]_INST_0_i_3_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[7]_INST_0_i_3_comp_1\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[9]_INST_0_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ALU_OUT[9]_INST_0_comp_1\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of BIGGER_ZERO_FLAG_INST_0 : label is "CRITICAL_CELL_OPT PIN_SWAP";
  attribute PHYS_OPT_SKIPPED : string;
  attribute PHYS_OPT_SKIPPED of BIGGER_ZERO_FLAG_INST_0 : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_MODIFIED of CARRY_FLAG_INST_0_comp : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of CARRY_FLAG_INST_0_comp_1 : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of NOT_ZERO_FLAG_INST_0 : label is "REWIRE CRITICAL_CELL_OPT";
  attribute PHYS_OPT_SKIPPED of NOT_ZERO_FLAG_INST_0 : label is "CRITICAL_CELL_OPT";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \SHIFT_RIGHT2_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \SHIFT_RIGHT2_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \SHIFT_RIGHT2_inferred__0/i__carry__1\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of SHIFT_RIGHT3_carry : label is 35;
  attribute ADDER_THRESHOLD of \SHIFT_RIGHT3_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \SHIFT_RIGHT3_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \SHIFT_RIGHT3_carry__2\ : label is 35;
  attribute PHYS_OPT_MODIFIED of ZERO_FLAG_INST_0 : label is "REWIRE CRITICAL_CELL_OPT PIN_SWAP";
  attribute PHYS_OPT_SKIPPED of ZERO_FLAG_INST_0 : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_MODIFIED of ZERO_FLAG_INST_0_i_1_comp : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of ZERO_FLAG_INST_0_i_2_comp : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of ZERO_FLAG_INST_0_i_3_comp : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of ZERO_FLAG_INST_0_i_4_comp_1 : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of ZERO_FLAG_INST_0_i_5_comp : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of ZERO_FLAG_INST_0_i_6_comp : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of ZERO_FLAG_INST_0_i_6_comp_1 : label is "RESTRUCT_OPT";
begin
  ALU_OUT(14 downto 0) <= \^alu_out\(14 downto 0);
  \ALU_OUT[6]_INST_0_i_2_n_0_alias\ <= \ALU_OUT[6]_INST_0_i_2_n_0\;
  \ALU_OUT[6]_INST_0_i_3_n_0_alias\ <= \ALU_OUT[6]_INST_0_i_3_n_0\;
  \ALU_OUT[6]_INST_0_i_4_n_0_alias\ <= \ALU_OUT[6]_INST_0_i_4_n_0\;
  \ALU_OUT[6]_repN_2_alias\ <= \ALU_OUT[6]_repN_2\;
  \immediate_s_reg[1]\ <= \^immediate_s_reg[1]\;
\ALU_OUT[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55551151"
    )
        port map (
      I0 => \ALU_OUT[0]_INST_0_i_1_n_0\,
      I1 => ALU_OPP(1),
      I2 => \ALU_OUT[0]_INST_0_i_2_n_0\,
      I3 => \ALU_OUT[0]_INST_0_i_3_n_0\,
      I4 => \ALU_OUT[0]_INST_0_i_4_n_0\,
      I5 => \ALU_OUT[0]_INST_0_i_5_n_0\,
      O => \^alu_out\(0)
    );
\ALU_OUT[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => data1(0),
      I2 => ALU_OPP(0),
      I3 => data0(0),
      I4 => ALU_OPP(1),
      O => \ALU_OUT[0]_INST_0_i_1_n_0\
    );
\ALU_OUT[0]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000305050003"
    )
        port map (
      I0 => SHIFT_LEFT2(1),
      I1 => D2(1),
      I2 => D2(0),
      I3 => D2(2),
      I4 => D2(15),
      I5 => SHIFT_LEFT2(2),
      O => \ALU_OUT[0]_INST_0_i_10_n_0\
    );
\ALU_OUT[0]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => D2(4),
      I1 => SHIFT_LEFT2(4),
      I2 => D2(3),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(3),
      O => \ALU_OUT[0]_INST_0_i_11_n_0\
    );
\ALU_OUT[0]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2(15),
      I2 => D2(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(4),
      I5 => D1(0),
      O => \ALU_OUT[0]_INST_0_i_12_n_0\
    );
\ALU_OUT[0]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEFFCECFCEFCCECC"
    )
        port map (
      I0 => D1(8),
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => \SHIFT_RIGHT3_carry__2_i_8_n_0\,
      I3 => \SHIFT_RIGHT3_carry__2_i_9_n_0\,
      I4 => D1(15),
      I5 => D1(0),
      O => \ALU_OUT[0]_INST_0_i_13_n_0\
    );
\ALU_OUT[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFDFCFDFCFFFCFD"
    )
        port map (
      I0 => \ALU_OUT[0]_INST_0_i_6_n_0\,
      I1 => \ALU_OUT[13]_INST_0_i_6_n_0\,
      I2 => \ALU_OUT[0]_INST_0_i_7_n_0\,
      I3 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I4 => D2(0),
      I5 => \ALU_OUT[1]_INST_0_i_6_n_0\,
      O => \ALU_OUT[0]_INST_0_i_2_n_0\
    );
\ALU_OUT[0]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => D1(0),
      I1 => D2(15),
      I2 => ALU_OPP(0),
      O => \ALU_OUT[0]_INST_0_i_3_n_0\
    );
\ALU_OUT[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000554055555555"
    )
        port map (
      I0 => ALU_OPP(0),
      I1 => D2(0),
      I2 => \ALU_OUT[1]_INST_0_i_9_n_0\,
      I3 => \ALU_OUT[0]_INST_0_i_8_n_0\,
      I4 => \ALU_OUT[14]_INST_0_i_11_n_0\,
      I5 => \ALU_OUT[0]_INST_0_i_9_n_0\,
      O => \ALU_OUT[0]_INST_0_i_4_n_0\
    );
\ALU_OUT[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"802220AA2A888A00"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => D2(0),
      I2 => ALU_OPP(0),
      I3 => D1(0),
      I4 => ALU_OPP(1),
      I5 => ALU_OPP(2),
      O => \ALU_OUT[0]_INST_0_i_5_n_0\
    );
\ALU_OUT[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF440CFFFF44FF"
    )
        port map (
      I0 => \ALU_OUT[2]_INST_0_i_11_n_0\,
      I1 => \ALU_OUT[3]_INST_0_i_18_n_0\,
      I2 => \ALU_OUT[3]_INST_0_i_19_n_0\,
      I3 => SHIFT_RIGHT3_carry_i_12_n_0,
      I4 => D2(0),
      I5 => SHIFT_RIGHT3_carry_i_10_n_0,
      O => \ALU_OUT[0]_INST_0_i_6_n_0\
    );
\ALU_OUT[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400444444444444"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I1 => \ALU_OUT[0]_INST_0_i_10_n_0\,
      I2 => \ALU_OUT[0]_INST_0_i_11_n_0\,
      I3 => D1(8),
      I4 => \ALU_OUT[3]_INST_0_i_18_n_0\,
      I5 => \ALU_OUT[0]_INST_0_i_12_n_0\,
      O => \ALU_OUT[0]_INST_0_i_7_n_0\
    );
\ALU_OUT[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AACF0000AA00"
    )
        port map (
      I0 => \ALU_OUT[2]_INST_0_i_11_n_0\,
      I1 => \ALU_OUT[3]_INST_0_i_19_n_0\,
      I2 => SHIFT_RIGHT3_carry_i_10_n_0,
      I3 => SHIFT_RIGHT3_carry_i_12_n_0,
      I4 => D2(0),
      I5 => \ALU_OUT[0]_INST_0_i_13_n_0\,
      O => \ALU_OUT[0]_INST_0_i_8_n_0\
    );
\ALU_OUT[0]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      I1 => D2(0),
      I2 => D2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[1]_INST_0_i_12_n_0\,
      O => \ALU_OUT[0]_INST_0_i_9_n_0\
    );
\ALU_OUT[10]_INST_0_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAABAAFFFFABFF"
    )
        port map (
      I0 => \ALU_OUT[10]_INST_0_i_5_n_0\,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I2 => \ALU_OUT[11]_INST_0_i_7_n_0\,
      I3 => \ALU_OUT[10]_INST_0_i_3_n_0\,
      I4 => \ALU_OUT[10]_INST_0_i_7_n_0\,
      I5 => \ALU_OUT[10]_INST_0_i_3_n_0_repN\,
      O => \^alu_out\(10)
    );
\ALU_OUT[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => data1(10),
      I2 => ALU_OPP(0),
      I3 => data0(10),
      I4 => ALU_OPP(1),
      O => \ALU_OUT[10]_INST_0_i_1_n_0\
    );
\ALU_OUT[10]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT[10]_INST_0_i_16_n_0\,
      I1 => D2(1),
      I2 => \ALU_OUT[12]_INST_0_i_11_n_0\,
      O => \ALU_OUT[10]_INST_0_i_10_n_0\
    );
\ALU_OUT[10]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABF8A80"
    )
        port map (
      I0 => D1(14),
      I1 => SHIFT_LEFT2(2),
      I2 => D2(15),
      I3 => D2(2),
      I4 => D1(10),
      I5 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      O => \ALU_OUT[10]_INST_0_i_11_n_0\
    );
\ALU_OUT[10]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4540FFFF757F"
    )
        port map (
      I0 => D1(3),
      I1 => SHIFT_LEFT2(2),
      I2 => D2(15),
      I3 => D2(2),
      I4 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I5 => D1(7),
      O => \ALU_OUT[10]_INST_0_i_12_n_0\
    );
\ALU_OUT[10]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABF8A80"
    )
        port map (
      I0 => D1(15),
      I1 => SHIFT_LEFT2(2),
      I2 => D2(15),
      I3 => D2(2),
      I4 => D1(12),
      I5 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      O => \ALU_OUT[10]_INST_0_i_13_n_0\
    );
\ALU_OUT[10]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033000000B800B8"
    )
        port map (
      I0 => D1(4),
      I1 => D2(2),
      I2 => D1(8),
      I3 => D2(4),
      I4 => D1(0),
      I5 => D2(3),
      O => \ALU_OUT[10]_INST_0_i_14_n_0\
    );
\ALU_OUT[10]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F0A0C00000A0C"
    )
        port map (
      I0 => D1(2),
      I1 => D1(10),
      I2 => D2(4),
      I3 => D2(3),
      I4 => D2(2),
      I5 => D1(6),
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
\ALU_OUT[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45454500FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_6_n_0\,
      I1 => \ALU_OUT[11]_INST_0_i_6_n_0\,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I4 => \ALU_OUT[10]_INST_0_i_6_n_0\,
      I5 => ALU_OPP(0),
      O => \ALU_OUT[10]_INST_0_i_2_n_0\
    );
\ALU_OUT[10]_INST_0_i_3_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => ALU_OPP(1),
      I1 => D2(15),
      I2 => \ALU_OUT[10]_INST_0_i_1_n_0\,
      I3 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I4 => \ALU_OUT[10]_INST_0_i_2_n_0\,
      I5 => \ALU_OUT[10]_INST_0_i_4_n_0\,
      O => \ALU_OUT[10]_INST_0_i_3_n_0\
    );
\ALU_OUT[10]_INST_0_i_3_comp_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FFAAFF20"
    )
        port map (
      I0 => ALU_OPP(1),
      I1 => D1(0),
      I2 => D2(15),
      I3 => \ALU_OUT[10]_INST_0_i_1_n_0\,
      I4 => \ALU_OUT[10]_INST_0_i_2_n_0\,
      I5 => \ALU_OUT[10]_INST_0_i_4_n_0\,
      O => \ALU_OUT[10]_INST_0_i_3_n_0_repN\
    );
\ALU_OUT[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444455544454"
    )
        port map (
      I0 => ALU_OPP(0),
      I1 => \ALU_OUT[10]_INST_0_i_8_n_0\,
      I2 => \ALU_OUT[10]_INST_0_i_9_n_0\,
      I3 => D2(0),
      I4 => \ALU_OUT[10]_INST_0_i_10_n_0\,
      I5 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      O => \ALU_OUT[10]_INST_0_i_4_n_0\
    );
\ALU_OUT[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A08AA2AA0A200"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => ALU_OPP(0),
      I2 => D2(10),
      I3 => D1(10),
      I4 => ALU_OPP(1),
      I5 => ALU_OPP(2),
      O => \ALU_OUT[10]_INST_0_i_5_n_0\
    );
\ALU_OUT[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010F0B0001FFFBF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_10_n_0,
      I1 => D1(12),
      I2 => SHIFT_RIGHT3_carry_i_12_n_0,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I4 => D1(15),
      I5 => \ALU_OUT[10]_INST_0_i_11_n_0\,
      O => \ALU_OUT[10]_INST_0_i_6_n_0\
    );
\ALU_OUT[10]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF470047004700"
    )
        port map (
      I0 => \ALU_OUT[10]_INST_0_i_12_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => \ALU_OUT[12]_INST_0_i_10_n_0\,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I4 => \SHIFT_RIGHT3_carry__1_n_6\,
      I5 => D1(0),
      O => \ALU_OUT[10]_INST_0_i_7_n_0\
    );
\ALU_OUT[10]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \ALU_OUT[10]_INST_0_i_13_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => \ALU_OUT[10]_INST_0_i_11_n_0\,
      I3 => D2(0),
      I4 => \ALU_OUT[11]_INST_0_i_9_n_0\,
      I5 => \ALU_OUT[14]_INST_0_i_11_n_0\,
      O => \ALU_OUT[10]_INST_0_i_8_n_0\
    );
\ALU_OUT[10]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT[10]_INST_0_i_14_n_0\,
      I1 => D2(1),
      I2 => \ALU_OUT[10]_INST_0_i_15_n_0\,
      O => \ALU_OUT[10]_INST_0_i_9_n_0\
    );
\ALU_OUT[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBABAABBBB"
    )
        port map (
      I0 => \ALU_OUT[11]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[11]_INST_0_i_2_n_0\,
      I2 => \ALU_OUT[11]_INST_0_i_3_n_0\,
      I3 => \ALU_OUT[11]_INST_0_i_4_n_0\,
      I4 => ALU_OPP(1),
      I5 => \ALU_OUT[11]_INST_0_i_5_n_0\,
      O => \^alu_out\(11)
    );
\ALU_OUT[11]_INST_0_comp\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => ALU_OPP(1),
      I1 => \ALU_OUT[11]_INST_0_i_5_n_0\,
      O => \ALU_OUT[11]_repN\
    );
\ALU_OUT[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A08AA2AA0A200"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => ALU_OPP(0),
      I2 => D2(11),
      I3 => D1(11),
      I4 => ALU_OPP(1),
      I5 => ALU_OPP(2),
      O => \ALU_OUT[11]_INST_0_i_1_n_0\
    );
\ALU_OUT[11]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00FF4747"
    )
        port map (
      I0 => \ALU_OUT[12]_INST_0_i_11_n_0\,
      I1 => D2(1),
      I2 => \ALU_OUT[14]_INST_0_i_14_n_0\,
      I3 => \ALU_OUT[10]_INST_0_i_9_n_0\,
      I4 => D2(0),
      I5 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      O => \ALU_OUT[11]_INST_0_i_10_n_0\
    );
\ALU_OUT[11]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF47CC44FF47FF47"
    )
        port map (
      I0 => D1(4),
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => D1(8),
      I3 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I4 => \ALU_OUT[0]_INST_0_i_11_n_0\,
      I5 => D1(0),
      O => \ALU_OUT[11]_INST_0_i_11_n_0\
    );
\ALU_OUT[11]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000155555555"
    )
        port map (
      I0 => D2(0),
      I1 => SHIFT_LEFT2(5),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_14_n_0,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_15_n_0,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_16_n_0,
      I5 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      O => \ALU_OUT[11]_INST_0_i_12_n_0\
    );
\ALU_OUT[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => data1(11),
      I2 => ALU_OPP(0),
      I3 => data0(11),
      I4 => ALU_OPP(1),
      O => \ALU_OUT[11]_INST_0_i_2_n_0\
    );
\ALU_OUT[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45454500FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_6_n_0\,
      I1 => \ALU_OUT[12]_INST_0_i_6_n_0\,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I4 => \ALU_OUT[11]_INST_0_i_6_n_0\,
      I5 => ALU_OPP(0),
      O => \ALU_OUT[11]_INST_0_i_3_n_0\
    );
\ALU_OUT[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDFFFF55F5"
    )
        port map (
      I0 => D2(15),
      I1 => D1(0),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I3 => \ALU_OUT[11]_INST_0_i_7_n_0\,
      I4 => \ALU_OUT[11]_INST_0_i_8_n_0\,
      I5 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      O => \ALU_OUT[11]_INST_0_i_4_n_0\
    );
\ALU_OUT[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000454055555555"
    )
        port map (
      I0 => ALU_OPP(0),
      I1 => \ALU_OUT[12]_INST_0_i_8_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[11]_INST_0_i_9_n_0\,
      I4 => \ALU_OUT[14]_INST_0_i_11_n_0\,
      I5 => \ALU_OUT[11]_INST_0_i_10_n_0\,
      O => \ALU_OUT[11]_INST_0_i_5_n_0\
    );
\ALU_OUT[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF04F400FF07F7"
    )
        port map (
      I0 => D1(13),
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => SHIFT_RIGHT3_carry_i_10_n_0,
      I3 => D1(15),
      I4 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I5 => D1(11),
      O => \ALU_OUT[11]_INST_0_i_6_n_0\
    );
\ALU_OUT[11]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \ALU_OUT[11]_INST_0_i_11_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[13]_INST_0_i_15_n_0\,
      O => \ALU_OUT[11]_INST_0_i_7_n_0\
    );
\ALU_OUT[11]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888FFF88888888"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__1_n_5\,
      I1 => D1(0),
      I2 => \ALU_OUT[12]_INST_0_i_10_n_0\,
      I3 => SHIFT_RIGHT3_carry_i_12_n_0,
      I4 => \ALU_OUT[14]_INST_0_i_13_n_0\,
      I5 => \ALU_OUT[11]_INST_0_i_12_n_0\,
      O => \ALU_OUT[11]_INST_0_i_8_n_0\
    );
\ALU_OUT[11]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1(13),
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => D1(15),
      I3 => SHIFT_RIGHT3_carry_i_10_n_0,
      I4 => D1(11),
      I5 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      O => \ALU_OUT[11]_INST_0_i_9_n_0\
    );
\ALU_OUT[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55551055"
    )
        port map (
      I0 => \ALU_OUT[12]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[12]_INST_0_i_2_n_0\,
      I2 => \ALU_OUT[12]_INST_0_i_3_n_0\,
      I3 => ALU_OPP(1),
      I4 => \ALU_OUT[12]_INST_0_i_4_n_0\,
      I5 => \ALU_OUT[12]_INST_0_i_5_n_0\,
      O => \^alu_out\(12)
    );
\ALU_OUT[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => data1(12),
      I2 => ALU_OPP(0),
      I3 => data0(12),
      I4 => ALU_OPP(1),
      O => \ALU_OUT[12]_INST_0_i_1_n_0\
    );
\ALU_OUT[12]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => D1(5),
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => D1(1),
      I3 => \SHIFT_RIGHT3_carry__2_i_9_n_0\,
      I4 => \SHIFT_RIGHT3_carry__2_i_8_n_0\,
      I5 => D1(9),
      O => \ALU_OUT[12]_INST_0_i_10_n_0\
    );
\ALU_OUT[12]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000A0AFC0C"
    )
        port map (
      I0 => D1(1),
      I1 => D1(9),
      I2 => D2(2),
      I3 => D1(5),
      I4 => D2(3),
      I5 => D2(4),
      O => \ALU_OUT[12]_INST_0_i_11_n_0\
    );
\ALU_OUT[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545504FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_6_n_0\,
      I1 => \ALU_OUT[12]_INST_0_i_6_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I4 => \ALU_OUT[13]_INST_0_i_7_n_0\,
      I5 => ALU_OPP(0),
      O => \ALU_OUT[12]_INST_0_i_2_n_0\
    );
\ALU_OUT[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDFFFF555F"
    )
        port map (
      I0 => D2(15),
      I1 => D1(0),
      I2 => \ALU_OUT[13]_INST_0_i_10_n_0\,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I4 => \ALU_OUT[12]_INST_0_i_7_n_0\,
      I5 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      O => \ALU_OUT[12]_INST_0_i_3_n_0\
    );
\ALU_OUT[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000540455555555"
    )
        port map (
      I0 => ALU_OPP(0),
      I1 => \ALU_OUT[12]_INST_0_i_8_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[13]_INST_0_i_13_n_0\,
      I4 => \ALU_OUT[14]_INST_0_i_11_n_0\,
      I5 => \ALU_OUT[12]_INST_0_i_9_n_0\,
      O => \ALU_OUT[12]_INST_0_i_4_n_0\
    );
\ALU_OUT[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A08AA2AA0A200"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => ALU_OPP(0),
      I2 => D2(12),
      I3 => D1(12),
      I4 => ALU_OPP(1),
      I5 => ALU_OPP(2),
      O => \ALU_OUT[12]_INST_0_i_5_n_0\
    );
\ALU_OUT[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454545757575457"
    )
        port map (
      I0 => D1(15),
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I3 => D1(12),
      I4 => SHIFT_RIGHT3_carry_i_12_n_0,
      I5 => D1(14),
      O => \ALU_OUT[12]_INST_0_i_6_n_0\
    );
\ALU_OUT[12]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF470047004700"
    )
        port map (
      I0 => \ALU_OUT[12]_INST_0_i_10_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => \ALU_OUT[14]_INST_0_i_13_n_0\,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I4 => \SHIFT_RIGHT3_carry__1_n_4\,
      I5 => D1(0),
      O => \ALU_OUT[12]_INST_0_i_7_n_0\
    );
\ALU_OUT[12]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => D1(14),
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => D1(15),
      I3 => SHIFT_RIGHT3_carry_i_10_n_0,
      I4 => D1(12),
      I5 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      O => \ALU_OUT[12]_INST_0_i_8_n_0\
    );
\ALU_OUT[12]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF470047FF"
    )
        port map (
      I0 => \ALU_OUT[12]_INST_0_i_11_n_0\,
      I1 => D2(1),
      I2 => \ALU_OUT[14]_INST_0_i_14_n_0\,
      I3 => D2(0),
      I4 => \ALU_OUT[13]_INST_0_i_16_n_0\,
      I5 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      O => \ALU_OUT[12]_INST_0_i_9_n_0\
    );
\ALU_OUT[13]_INST_0_comp\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAFE"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_5_n_0\,
      I1 => \ALU_OUT[13]_INST_0_i_3_n_0\,
      I2 => \ALU_OUT[13]_INST_0_i_9_n_0\,
      I3 => \ALU_OUT[13]_INST_0_i_3_n_0_repN\,
      O => \^alu_out\(13)
    );
\ALU_OUT[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => data1(13),
      I2 => ALU_OPP(0),
      I3 => data0(13),
      I4 => ALU_OPP(1),
      O => \ALU_OUT[13]_INST_0_i_1_n_0\
    );
\ALU_OUT[13]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_15_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => SMALLER_ZERO_FLAG_INST_0_i_17_n_0,
      O => \ALU_OUT[13]_INST_0_i_10_n_0\
    );
\ALU_OUT[13]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00FF4747"
    )
        port map (
      I0 => \ALU_OUT[14]_INST_0_i_14_n_0\,
      I1 => D2(1),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_30_n_0,
      I3 => \ALU_OUT[13]_INST_0_i_16_n_0\,
      I4 => D2(0),
      I5 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      O => \ALU_OUT[13]_INST_0_i_11_n_0\
    );
\ALU_OUT[13]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFBFFAAAAAAAA"
    )
        port map (
      I0 => \ALU_OUT[14]_INST_0_i_11_n_0\,
      I1 => \ALU_OUT[13]_INST_0_i_17_n_0\,
      I2 => SHIFT_RIGHT3_carry_i_10_n_0,
      I3 => SHIFT_RIGHT3_carry_i_12_n_0,
      I4 => \ALU_OUT[13]_INST_0_i_18_n_0\,
      I5 => D2(0),
      O => \ALU_OUT[13]_INST_0_i_12_n_0\
    );
\ALU_OUT[13]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => D1(15),
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => D1(13),
      I3 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I4 => SHIFT_RIGHT3_carry_i_10_n_0,
      O => \ALU_OUT[13]_INST_0_i_13_n_0\
    );
\ALU_OUT[13]_INST_0_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => SHIFT_LEFT2(5),
      I1 => SHIFT_LEFT2(9),
      I2 => SHIFT_LEFT2(12),
      O => \ALU_OUT[13]_INST_0_i_14_n_0\
    );
\ALU_OUT[13]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => D1(6),
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => D1(2),
      I3 => \SHIFT_RIGHT3_carry__2_i_9_n_0\,
      I4 => \SHIFT_RIGHT3_carry__2_i_8_n_0\,
      I5 => D1(10),
      O => \ALU_OUT[13]_INST_0_i_15_n_0\
    );
\ALU_OUT[13]_INST_0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALU_OUT[10]_INST_0_i_15_n_0\,
      I1 => D2(1),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_28_n_0,
      O => \ALU_OUT[13]_INST_0_i_16_n_0\
    );
\ALU_OUT[13]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => D1(15),
      I1 => SHIFT_LEFT2(3),
      I2 => D2(15),
      I3 => D2(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => \ALU_OUT[13]_INST_0_i_17_n_0\
    );
\ALU_OUT[13]_INST_0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00044404"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I1 => D1(14),
      I2 => D2(2),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(2),
      O => \ALU_OUT[13]_INST_0_i_18_n_0\
    );
\ALU_OUT[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B0B00FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT[14]_INST_0_i_7_n_0\,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I2 => \ALU_OUT[13]_INST_0_i_6_n_0\,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I4 => \ALU_OUT[13]_INST_0_i_7_n_0\,
      I5 => ALU_OPP(0),
      O => \ALU_OUT[13]_INST_0_i_2_n_0\
    );
\ALU_OUT[13]_INST_0_i_3_comp\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFAE"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_1_n_0\,
      I1 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I2 => \ALU_OUT[14]_INST_0_i_3_n_0\,
      I3 => \ALU_OUT[13]_INST_0_i_2_n_0\,
      I4 => \ALU_OUT[13]_INST_0_i_4_n_0\,
      O => \ALU_OUT[13]_INST_0_i_3_n_0_repN\
    );
\ALU_OUT[13]_INST_0_i_3_comp_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCCCECDCF"
    )
        port map (
      I0 => D2(0),
      I1 => \ALU_OUT[14]_INST_0_i_3_n_0\,
      I2 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I3 => \ALU_OUT[13]_INST_0_i_10_n_0\,
      I4 => \ALU_OUT[14]_INST_0_i_9_n_0\,
      I5 => \ALU_OUT[13]_INST_0_i_4_n_0\,
      O => \ALU_OUT[13]_INST_0_i_3_n_0\
    );
\ALU_OUT[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007775FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_11_n_0\,
      I1 => \ALU_OUT[13]_INST_0_i_12_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[13]_INST_0_i_13_n_0\,
      I4 => ALU_OPP(0),
      I5 => ALU_OPP(1),
      O => \ALU_OUT[13]_INST_0_i_4_n_0\
    );
\ALU_OUT[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"855D7AA200000000"
    )
        port map (
      I0 => D1(13),
      I1 => ALU_OPP(0),
      I2 => D2(13),
      I3 => ALU_OPP(1),
      I4 => ALU_OPP(2),
      I5 => ALU_OPP(3),
      O => \ALU_OUT[13]_INST_0_i_5_n_0\
    );
\ALU_OUT[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEAAAAAAAAA"
    )
        port map (
      I0 => D2(15),
      I1 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_16_n_0,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_15_n_0,
      I4 => \ALU_OUT[13]_INST_0_i_14_n_0\,
      I5 => D1(15),
      O => \ALU_OUT[13]_INST_0_i_6_n_0\
    );
\ALU_OUT[13]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0E0F1F"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_12_n_0,
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => D1(15),
      I3 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I4 => D1(13),
      O => \ALU_OUT[13]_INST_0_i_7_n_0\
    );
\ALU_OUT[13]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_16_n_0,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_15_n_0,
      I3 => SHIFT_LEFT2(12),
      I4 => SHIFT_LEFT2(9),
      I5 => SHIFT_LEFT2(5),
      O => \ALU_OUT[13]_INST_0_i_8_n_0\
    );
\ALU_OUT[13]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => D1(0),
      I1 => \SHIFT_RIGHT3_carry__2_n_7\,
      O => \ALU_OUT[13]_INST_0_i_9_n_0\
    );
\ALU_OUT[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55551110"
    )
        port map (
      I0 => \ALU_OUT[14]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[14]_INST_0_i_2_n_0\,
      I2 => \ALU_OUT[14]_INST_0_i_3_n_0\,
      I3 => \ALU_OUT[14]_INST_0_i_4_n_0\,
      I4 => \ALU_OUT[14]_INST_0_i_5_n_0\,
      I5 => \ALU_OUT[14]_INST_0_i_6_n_0\,
      O => \^alu_out\(14)
    );
\ALU_OUT[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => data1(14),
      I2 => ALU_OPP(0),
      I3 => data0(14),
      I4 => ALU_OPP(1),
      O => \ALU_OUT[14]_INST_0_i_1_n_0\
    );
\ALU_OUT[14]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF47FFFFFF47FF00"
    )
        port map (
      I0 => \ALU_OUT[14]_INST_0_i_14_n_0\,
      I1 => D2(1),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_30_n_0,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      I4 => D2(0),
      I5 => SMALLER_ZERO_FLAG_INST_0_i_11_n_0,
      O => \ALU_OUT[14]_INST_0_i_10_n_0\
    );
\ALU_OUT[14]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => SHIFT_LEFT2(5),
      I1 => SHIFT_LEFT2(9),
      I2 => SHIFT_LEFT2(12),
      I3 => SMALLER_ZERO_FLAG_INST_0_i_15_n_0,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_16_n_0,
      O => \ALU_OUT[14]_INST_0_i_11_n_0\
    );
\ALU_OUT[14]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000004D0048"
    )
        port map (
      I0 => D2(0),
      I1 => D1(15),
      I2 => SHIFT_RIGHT3_carry_i_12_n_0,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I4 => D1(14),
      I5 => SHIFT_RIGHT3_carry_i_10_n_0,
      O => \ALU_OUT[14]_INST_0_i_12_n_0\
    );
\ALU_OUT[14]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCF4444FFCF7747"
    )
        port map (
      I0 => D1(7),
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => D1(3),
      I3 => \ALU_OUT[0]_INST_0_i_11_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I5 => D1(11),
      O => \ALU_OUT[14]_INST_0_i_13_n_0\
    );
\ALU_OUT[14]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033B800B8"
    )
        port map (
      I0 => D1(7),
      I1 => D2(2),
      I2 => D1(11),
      I3 => D2(3),
      I4 => D1(3),
      I5 => D2(4),
      O => \ALU_OUT[14]_INST_0_i_14_n_0\
    );
\ALU_OUT[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1510FFFF"
    )
        port map (
      I0 => D2(15),
      I1 => D1(15),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I3 => \ALU_OUT[14]_INST_0_i_7_n_0\,
      I4 => ALU_OPP(0),
      O => \ALU_OUT[14]_INST_0_i_2_n_0\
    );
\ALU_OUT[14]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => D1(0),
      I2 => D2(15),
      O => \ALU_OUT[14]_INST_0_i_3_n_0\
    );
\ALU_OUT[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4544454445445555"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[14]_INST_0_i_8_n_0\,
      I2 => \ALU_OUT[14]_INST_0_i_9_n_0\,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I5 => SMALLER_ZERO_FLAG_INST_0_i_7_n_0,
      O => \ALU_OUT[14]_INST_0_i_4_n_0\
    );
\ALU_OUT[14]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0075FFFF"
    )
        port map (
      I0 => \ALU_OUT[14]_INST_0_i_10_n_0\,
      I1 => \ALU_OUT[14]_INST_0_i_11_n_0\,
      I2 => \ALU_OUT[14]_INST_0_i_12_n_0\,
      I3 => ALU_OPP(0),
      I4 => ALU_OPP(1),
      O => \ALU_OUT[14]_INST_0_i_5_n_0\
    );
\ALU_OUT[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A08AA2AA0A200"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => ALU_OPP(0),
      I2 => D2(14),
      I3 => D1(14),
      I4 => ALU_OPP(1),
      I5 => ALU_OPP(2),
      O => \ALU_OUT[14]_INST_0_i_6_n_0\
    );
\ALU_OUT[14]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFB"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_10_n_0,
      I1 => D1(14),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I3 => SHIFT_RIGHT3_carry_i_12_n_0,
      I4 => D1(15),
      O => \ALU_OUT[14]_INST_0_i_7_n_0\
    );
\ALU_OUT[14]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => D1(0),
      I1 => \SHIFT_RIGHT3_carry__2_n_6\,
      O => \ALU_OUT[14]_INST_0_i_8_n_0\
    );
\ALU_OUT[14]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ALU_OUT[14]_INST_0_i_13_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_20_n_0,
      I3 => SHIFT_RIGHT3_carry_i_10_n_0,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_21_n_0,
      O => \ALU_OUT[14]_INST_0_i_9_n_0\
    );
\ALU_OUT[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBABABBBAB"
    )
        port map (
      I0 => \ALU_OUT[1]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[1]_INST_0_i_2_n_0\,
      I2 => ALU_OPP(1),
      I3 => \ALU_OUT[1]_INST_0_i_3_n_0\,
      I4 => \ALU_OUT[1]_INST_0_i_4_n_0\,
      I5 => \ALU_OUT[1]_INST_0_i_5_n_0\,
      O => \^alu_out\(1)
    );
\ALU_OUT[1]_INST_0_comp\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CFCD"
    )
        port map (
      I0 => ALU_OPP(1),
      I1 => \ALU_OUT[1]_INST_0_i_1_n_0\,
      I2 => \ALU_OUT[1]_INST_0_i_2_n_0\,
      I3 => \ALU_OUT[1]_INST_0_i_5_n_0\,
      O => \ALU_OUT[1]_repN\
    );
\ALU_OUT[1]_INST_0_comp_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ALU_OUT[1]_INST_0_i_2_n_0\,
      I1 => \ALU_OUT[1]_INST_0_i_3_n_0\,
      O => \ALU_OUT[1]_repN_1\
    );
\ALU_OUT[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A08AA2AA0A200"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => ALU_OPP(0),
      I2 => D2(1),
      I3 => D1(1),
      I4 => ALU_OPP(1),
      I5 => ALU_OPP(2),
      O => \ALU_OUT[1]_INST_0_i_1_n_0\
    );
\ALU_OUT[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFFEFFFFFFFEF"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      I1 => D2(1),
      I2 => D1(1),
      I3 => \ALU_OUT[2]_INST_0_i_10_n_0\,
      I4 => D2(0),
      I5 => \ALU_OUT[1]_INST_0_i_12_n_0\,
      O => \ALU_OUT[1]_INST_0_i_10_n_0\
    );
\ALU_OUT[1]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02020F02"
    )
        port map (
      I0 => D1(1),
      I1 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I2 => SHIFT_RIGHT3_carry_i_10_n_0,
      I3 => D1(9),
      I4 => \ALU_OUT[0]_INST_0_i_11_n_0\,
      I5 => SHIFT_RIGHT3_carry_i_12_n_0,
      O => \ALU_OUT[1]_INST_0_i_11_n_0\
    );
\ALU_OUT[1]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => D2(3),
      I1 => D2(2),
      I2 => D1(0),
      I3 => D2(4),
      O => \ALU_OUT[1]_INST_0_i_12_n_0\
    );
\ALU_OUT[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => data1(1),
      I2 => ALU_OPP(0),
      I3 => data0(1),
      I4 => ALU_OPP(1),
      O => \ALU_OUT[1]_INST_0_i_2_n_0\
    );
\ALU_OUT[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCDFDFFFF0131"
    )
        port map (
      I0 => \ALU_OUT[1]_INST_0_i_6_n_0\,
      I1 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[2]_INST_0_i_8_n_0\,
      I4 => D2(15),
      I5 => D1(15),
      O => \ALU_OUT[1]_INST_0_i_3_n_0\
    );
\ALU_OUT[1]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5554FFFF"
    )
        port map (
      I0 => \ALU_OUT[1]_INST_0_i_7_n_0\,
      I1 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I2 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I3 => \ALU_OUT[1]_INST_0_i_8_n_0\,
      I4 => ALU_OPP(0),
      O => \ALU_OUT[1]_INST_0_i_4_n_0\
    );
\ALU_OUT[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000540455555555"
    )
        port map (
      I0 => ALU_OPP(0),
      I1 => \ALU_OUT[1]_INST_0_i_9_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[2]_INST_0_i_6_n_0\,
      I4 => \ALU_OUT[14]_INST_0_i_11_n_0\,
      I5 => \ALU_OUT[1]_INST_0_i_10_n_0\,
      O => \ALU_OUT[1]_INST_0_i_5_n_0\
    );
\ALU_OUT[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888FFF88888888"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_12_n_0,
      I1 => \ALU_OUT[2]_INST_0_i_12_n_0\,
      I2 => \ALU_OUT[5]_INST_0_i_12_n_0\,
      I3 => SHIFT_RIGHT3_carry_i_10_n_0,
      I4 => \ALU_OUT[1]_INST_0_i_11_n_0\,
      I5 => \ALU_OUT[3]_INST_0_i_18_n_0\,
      O => \ALU_OUT[1]_INST_0_i_6_n_0\
    );
\ALU_OUT[1]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD55"
    )
        port map (
      I0 => D2(15),
      I1 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I2 => SHIFT_RIGHT3_carry_n_7,
      I3 => D1(0),
      O => \ALU_OUT[1]_INST_0_i_7_n_0\
    );
\ALU_OUT[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFDDFFCF"
    )
        port map (
      I0 => D1(0),
      I1 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I2 => D1(1),
      I3 => SHIFT_RIGHT3_carry_i_12_n_0,
      I4 => D2(0),
      I5 => SHIFT_RIGHT3_carry_i_10_n_0,
      O => \ALU_OUT[1]_INST_0_i_8_n_0\
    );
\ALU_OUT[1]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA00EAEA"
    )
        port map (
      I0 => \ALU_OUT[1]_INST_0_i_11_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => \ALU_OUT[5]_INST_0_i_12_n_0\,
      I3 => \ALU_OUT[3]_INST_0_i_23_n_0\,
      I4 => SHIFT_RIGHT3_carry_i_12_n_0,
      O => \ALU_OUT[1]_INST_0_i_9_n_0\
    );
\ALU_OUT[2]_INST_0_comp_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FF20FFA0FF00"
    )
        port map (
      I0 => ALU_OPP(0),
      I1 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I2 => \ALU_OUT[2]_INST_0_i_3_n_0\,
      I3 => \ALU_OUT[2]_INST_0_i_3_n_0_repN\,
      I4 => \ALU_OUT[2]_INST_0_i_9_n_0\,
      I5 => \ALU_OUT[2]_INST_0_i_13_n_0\,
      O => \^alu_out\(2)
    );
\ALU_OUT[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"966A5666"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => D1(2),
      I2 => D2(2),
      I3 => ALU_OPP(1),
      I4 => ALU_OPP(0),
      O => \ALU_OUT[2]_INST_0_i_1_n_0\
    );
\ALU_OUT[2]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => D2(3),
      I1 => D2(4),
      I2 => D2(2),
      O => \ALU_OUT[2]_INST_0_i_10_n_0\
    );
\ALU_OUT[2]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F004F004FFF4F00"
    )
        port map (
      I0 => \ALU_OUT[0]_INST_0_i_11_n_0\,
      I1 => D1(14),
      I2 => \ALU_OUT[6]_INST_0_i_20_n_0\,
      I3 => SHIFT_RIGHT3_carry_i_10_n_0,
      I4 => \ALU_OUT[2]_INST_0_i_15_n_0\,
      I5 => \ALU_OUT[2]_INST_0_i_16_n_0\,
      O => \ALU_OUT[2]_INST_0_i_11_n_0\
    );
\ALU_OUT[2]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0040404040"
    )
        port map (
      I0 => \ALU_OUT[2]_INST_0_i_17_n_0\,
      I1 => \ALU_OUT[3]_INST_0_i_27_n_0\,
      I2 => \ALU_OUT[3]_INST_0_i_18_n_0\,
      I3 => \ALU_OUT[2]_INST_0_i_18_n_0\,
      I4 => \ALU_OUT[5]_INST_0_i_16_n_0\,
      I5 => SHIFT_RIGHT3_carry_i_10_n_0,
      O => \ALU_OUT[2]_INST_0_i_12_n_0\
    );
\ALU_OUT[2]_INST_0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => D1(0),
      I1 => SHIFT_RIGHT3_carry_n_6,
      O => \ALU_OUT[2]_INST_0_i_13_n_0\
    );
\ALU_OUT[2]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => D2(0),
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => D1(1),
      I3 => SHIFT_RIGHT3_carry_i_10_n_0,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      O => \ALU_OUT[2]_INST_0_i_14_n_0\
    );
\ALU_OUT[2]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33F3555533F3F5F5"
    )
        port map (
      I0 => D2(3),
      I1 => SHIFT_LEFT2(3),
      I2 => D1(10),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(15),
      I5 => D2(4),
      O => \ALU_OUT[2]_INST_0_i_15_n_0\
    );
\ALU_OUT[2]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F5DDDD00F5"
    )
        port map (
      I0 => D1(2),
      I1 => SHIFT_LEFT2(4),
      I2 => D2(4),
      I3 => D2(3),
      I4 => D2(15),
      I5 => SHIFT_LEFT2(3),
      O => \ALU_OUT[2]_INST_0_i_16_n_0\
    );
\ALU_OUT[2]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000080800A008A80"
    )
        port map (
      I0 => D1(11),
      I1 => SHIFT_LEFT2(3),
      I2 => D2(15),
      I3 => D2(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => \ALU_OUT[2]_INST_0_i_17_n_0\
    );
\ALU_OUT[2]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFACCFAFFFFFFFF"
    )
        port map (
      I0 => D2(4),
      I1 => SHIFT_LEFT2(4),
      I2 => D2(3),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(3),
      I5 => D1(7),
      O => \ALU_OUT[2]_INST_0_i_18_n_0\
    );
\ALU_OUT[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444455544454"
    )
        port map (
      I0 => ALU_OPP(0),
      I1 => \ALU_OUT[2]_INST_0_i_5_n_0\,
      I2 => \ALU_OUT[2]_INST_0_i_6_n_0\,
      I3 => D2(0),
      I4 => \ALU_OUT[3]_INST_0_i_13_n_0\,
      I5 => \ALU_OUT[14]_INST_0_i_11_n_0\,
      O => \ALU_OUT[2]_INST_0_i_2_n_0\
    );
\ALU_OUT[2]_INST_0_i_3_comp\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5E4B1A0"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => ALU_OPP(1),
      I2 => \ALU_OUT[2]_INST_0_i_1_n_0\,
      I3 => \ALU_OUT[2]_INST_0_i_4_n_0\,
      I4 => \ALU_OUT[2]_INST_0_i_2_n_0\,
      O => \ALU_OUT[2]_INST_0_i_3_n_0_repN\
    );
\ALU_OUT[2]_INST_0_i_3_comp_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044004404"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => ALU_OPP(1),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I3 => \ALU_OUT[2]_INST_0_i_7_n_0\,
      I4 => \ALU_OUT[2]_INST_0_i_8_n_0\,
      I5 => \ALU_OUT[2]_INST_0_i_2_n_0\,
      O => \ALU_OUT[2]_INST_0_i_3_n_0\
    );
\ALU_OUT[2]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(2),
      I1 => ALU_OPP(0),
      I2 => data0(2),
      O => \ALU_OUT[2]_INST_0_i_4_n_0\
    );
\ALU_OUT[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \ALU_OUT[3]_INST_0_i_10_n_0\,
      I1 => D2(0),
      I2 => D2(1),
      I3 => D1(1),
      I4 => \ALU_OUT[2]_INST_0_i_10_n_0\,
      I5 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      O => \ALU_OUT[2]_INST_0_i_5_n_0\
    );
\ALU_OUT[2]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \ALU_OUT[3]_INST_0_i_22_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[2]_INST_0_i_11_n_0\,
      O => \ALU_OUT[2]_INST_0_i_6_n_0\
    );
\ALU_OUT[2]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_6_n_0\,
      I1 => \ALU_OUT[5]_INST_0_i_10_n_0\,
      I2 => SHIFT_RIGHT3_carry_i_12_n_0,
      I3 => \ALU_OUT[2]_INST_0_i_12_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[2]_INST_0_i_7_n_0\
    );
\ALU_OUT[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B0088008BFF8800"
    )
        port map (
      I0 => \ALU_OUT[3]_INST_0_i_17_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => \ALU_OUT[3]_INST_0_i_19_n_0\,
      I3 => SHIFT_RIGHT3_carry_i_12_n_0,
      I4 => \ALU_OUT[3]_INST_0_i_18_n_0\,
      I5 => \ALU_OUT[2]_INST_0_i_11_n_0\,
      O => \ALU_OUT[2]_INST_0_i_8_n_0\
    );
\ALU_OUT[2]_INST_0_i_9_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F3F0F1F0F3"
    )
        port map (
      I0 => D2(0),
      I1 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I2 => \ALU_OUT[14]_INST_0_i_3_n_0\,
      I3 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I4 => \ALU_OUT[2]_INST_0_i_14_n_0\,
      I5 => \ALU_OUT[3]_INST_0_i_15_n_0\,
      O => \ALU_OUT[2]_INST_0_i_9_n_0\
    );
\ALU_OUT[3]_INST_0_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF54FF5555545554"
    )
        port map (
      I0 => \ALU_OUT[3]_INST_0_i_2_n_0\,
      I1 => \ALU_OUT[3]_INST_0_i_5_n_0\,
      I2 => \ALU_OUT[3]_INST_0_i_6_n_0\,
      I3 => \ALU_OUT[3]_INST_0_i_3_n_0\,
      I4 => \ALU_OUT[3]_INST_0_i_7_n_0\,
      I5 => \ALU_OUT[3]_INST_0_i_3_n_0_repN\,
      O => \^alu_out\(3)
    );
\ALU_OUT[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A08AA2AA0A200"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => ALU_OPP(0),
      I2 => D2(3),
      I3 => D1(3),
      I4 => ALU_OPP(1),
      I5 => ALU_OPP(2),
      O => \ALU_OUT[3]_INST_0_i_1_n_0\
    );
\ALU_OUT[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000B8"
    )
        port map (
      I0 => D1(0),
      I1 => D2(1),
      I2 => D1(2),
      I3 => D2(2),
      I4 => D2(4),
      I5 => D2(3),
      O => \ALU_OUT[3]_INST_0_i_10_n_0\
    );
\ALU_OUT[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => D1(3),
      I1 => D2(1),
      I2 => D1(1),
      I3 => D2(2),
      I4 => D2(4),
      I5 => D2(3),
      O => \ALU_OUT[3]_INST_0_i_11_n_0\
    );
\ALU_OUT[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DF0000D0DFFFFF"
    )
        port map (
      I0 => D1(10),
      I1 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I2 => SHIFT_RIGHT3_carry_i_10_n_0,
      I3 => \ALU_OUT[6]_INST_0_i_17_n_0\,
      I4 => SHIFT_RIGHT3_carry_i_12_n_0,
      I5 => \ALU_OUT[3]_INST_0_i_22_n_0\,
      O => \ALU_OUT[3]_INST_0_i_12_n_0\
    );
\ALU_OUT[3]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => D1(9),
      I1 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I2 => SHIFT_RIGHT3_carry_i_10_n_0,
      I3 => \ALU_OUT[5]_INST_0_i_12_n_0\,
      I4 => SHIFT_RIGHT3_carry_i_12_n_0,
      I5 => \ALU_OUT[3]_INST_0_i_23_n_0\,
      O => \ALU_OUT[3]_INST_0_i_13_n_0\
    );
\ALU_OUT[3]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4FFF7"
    )
        port map (
      I0 => D1(1),
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I3 => SHIFT_RIGHT3_carry_i_10_n_0,
      I4 => D1(3),
      O => \ALU_OUT[3]_INST_0_i_14_n_0\
    );
\ALU_OUT[3]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF4F7"
    )
        port map (
      I0 => D1(0),
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => SHIFT_RIGHT3_carry_i_10_n_0,
      I3 => D1(2),
      I4 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      O => \ALU_OUT[3]_INST_0_i_15_n_0\
    );
\ALU_OUT[3]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \ALU_OUT[6]_INST_0_i_13_n_0\,
      I1 => \ALU_OUT[6]_INST_0_i_14_n_0\,
      I2 => SHIFT_RIGHT3_carry_i_10_n_0,
      I3 => \ALU_OUT[3]_INST_0_i_24_n_0\,
      I4 => \SHIFT_RIGHT3_carry__2_i_9_n_0\,
      I5 => \ALU_OUT[3]_INST_0_i_25_n_0\,
      O => \ALU_OUT[3]_INST_0_i_16_n_0\
    );
\ALU_OUT[3]_INST_0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => D1(8),
      I1 => D1(15),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      O => \ALU_OUT[3]_INST_0_i_17_n_0\
    );
\ALU_OUT[3]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => D1(15),
      I1 => D2(4),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(4),
      O => \ALU_OUT[3]_INST_0_i_18_n_0\
    );
\ALU_OUT[3]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0C0C0C0A0C"
    )
        port map (
      I0 => D1(12),
      I1 => D1(4),
      I2 => \SHIFT_RIGHT3_carry__2_i_8_n_0\,
      I3 => D2(3),
      I4 => D2(15),
      I5 => SHIFT_LEFT2(3),
      O => \ALU_OUT[3]_INST_0_i_19_n_0\
    );
\ALU_OUT[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => data1(3),
      I2 => ALU_OPP(0),
      I3 => data0(3),
      I4 => ALU_OPP(1),
      O => \ALU_OUT[3]_INST_0_i_2_n_0\
    );
\ALU_OUT[3]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0C0C0C0A0C"
    )
        port map (
      I0 => D1(11),
      I1 => D1(3),
      I2 => \SHIFT_RIGHT3_carry__2_i_8_n_0\,
      I3 => D2(3),
      I4 => D2(15),
      I5 => SHIFT_LEFT2(3),
      O => \ALU_OUT[3]_INST_0_i_20_n_0\
    );
\ALU_OUT[3]_INST_0_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => D1(7),
      I1 => D1(15),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      O => \ALU_OUT[3]_INST_0_i_21_n_0\
    );
\ALU_OUT[3]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00FFFF3B3B3B3B"
    )
        port map (
      I0 => D1(12),
      I1 => \ALU_OUT[6]_INST_0_i_18_n_0\,
      I2 => \ALU_OUT[0]_INST_0_i_11_n_0\,
      I3 => D1(15),
      I4 => SMALLER_ZERO_FLAG_INST_0_i_34_n_0,
      I5 => SHIFT_RIGHT3_carry_i_10_n_0,
      O => \ALU_OUT[3]_INST_0_i_22_n_0\
    );
\ALU_OUT[3]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0EFA0E0AFEFAFEF"
    )
        port map (
      I0 => \ALU_OUT[3]_INST_0_i_26_n_0\,
      I1 => D1(15),
      I2 => SHIFT_RIGHT3_carry_i_10_n_0,
      I3 => \ALU_OUT[0]_INST_0_i_11_n_0\,
      I4 => D1(11),
      I5 => \ALU_OUT[3]_INST_0_i_27_n_0\,
      O => \ALU_OUT[3]_INST_0_i_23_n_0\
    );
\ALU_OUT[3]_INST_0_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4540757F"
    )
        port map (
      I0 => D1(15),
      I1 => SHIFT_LEFT2(4),
      I2 => D2(15),
      I3 => D2(4),
      I4 => D1(14),
      O => \ALU_OUT[3]_INST_0_i_24_n_0\
    );
\ALU_OUT[3]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4540757F"
    )
        port map (
      I0 => D1(15),
      I1 => SHIFT_LEFT2(4),
      I2 => D2(15),
      I3 => D2(4),
      I4 => D1(6),
      O => \ALU_OUT[3]_INST_0_i_25_n_0\
    );
\ALU_OUT[3]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => D1(7),
      I1 => SHIFT_LEFT2(3),
      I2 => D2(15),
      I3 => D2(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => \ALU_OUT[3]_INST_0_i_26_n_0\
    );
\ALU_OUT[3]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2(15),
      I2 => D2(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(4),
      I5 => D1(3),
      O => \ALU_OUT[3]_INST_0_i_27_n_0\
    );
\ALU_OUT[3]_INST_0_i_3_comp\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F8F0F0"
    )
        port map (
      I0 => ALU_OPP(0),
      I1 => D2(15),
      I2 => \ALU_OUT[3]_INST_0_i_1_n_0\,
      I3 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I4 => \ALU_OUT[3]_INST_0_i_4_n_0\,
      O => \ALU_OUT[3]_INST_0_i_3_n_0_repN\
    );
\ALU_OUT[3]_INST_0_i_3_comp_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8AFF0AFF00FF00"
    )
        port map (
      I0 => ALU_OPP(0),
      I1 => D1(0),
      I2 => D2(15),
      I3 => \ALU_OUT[3]_INST_0_i_1_n_0\,
      I4 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I5 => \ALU_OUT[3]_INST_0_i_4_n_0\,
      O => \ALU_OUT[3]_INST_0_i_3_n_0\
    );
\ALU_OUT[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4F7FFFF0407"
    )
        port map (
      I0 => \ALU_OUT[3]_INST_0_i_8_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I3 => \ALU_OUT[3]_INST_0_i_9_n_0\,
      I4 => D2(15),
      I5 => D1(15),
      O => \ALU_OUT[3]_INST_0_i_4_n_0\
    );
\ALU_OUT[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B0008FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT[3]_INST_0_i_10_n_0\,
      I1 => D2(0),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      I3 => ALU_OPP(0),
      I4 => \ALU_OUT[3]_INST_0_i_11_n_0\,
      I5 => ALU_OPP(1),
      O => \ALU_OUT[3]_INST_0_i_5_n_0\
    );
\ALU_OUT[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022F20000"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I1 => \ALU_OUT[3]_INST_0_i_12_n_0\,
      I2 => \ALU_OUT[3]_INST_0_i_13_n_0\,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I4 => D2(15),
      I5 => ALU_OPP(0),
      O => \ALU_OUT[3]_INST_0_i_6_n_0\
    );
\ALU_OUT[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEE0EEE00000EEE"
    )
        port map (
      I0 => \ALU_OUT[3]_INST_0_i_14_n_0\,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I2 => D1(0),
      I3 => SHIFT_RIGHT3_carry_n_5,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I5 => \ALU_OUT[3]_INST_0_i_15_n_0\,
      O => \ALU_OUT[3]_INST_0_i_7_n_0\
    );
\ALU_OUT[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \ALU_OUT[3]_INST_0_i_16_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => \ALU_OUT[3]_INST_0_i_17_n_0\,
      I3 => SHIFT_RIGHT3_carry_i_10_n_0,
      I4 => \ALU_OUT[3]_INST_0_i_18_n_0\,
      I5 => \ALU_OUT[3]_INST_0_i_19_n_0\,
      O => \ALU_OUT[3]_INST_0_i_8_n_0\
    );
\ALU_OUT[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB88888B888B88"
    )
        port map (
      I0 => \ALU_OUT[5]_INST_0_i_10_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => \ALU_OUT[3]_INST_0_i_20_n_0\,
      I3 => \ALU_OUT[3]_INST_0_i_18_n_0\,
      I4 => \ALU_OUT[3]_INST_0_i_21_n_0\,
      I5 => SHIFT_RIGHT3_carry_i_10_n_0,
      O => \ALU_OUT[3]_INST_0_i_9_n_0\
    );
\ALU_OUT[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ALU_OUT[4]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[4]_INST_0_i_2_n_0\,
      O => \^alu_out\(4),
      S => ALU_OPP(3)
    );
\ALU_OUT[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT[4]_INST_0_i_3_n_0\,
      I1 => \ALU_OUT[4]_INST_0_i_4_n_0\,
      I2 => ALU_OPP(1),
      I3 => data1(4),
      I4 => ALU_OPP(0),
      I5 => data0(4),
      O => \ALU_OUT[4]_INST_0_i_1_n_0\
    );
\ALU_OUT[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"966A5666"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => D1(4),
      I2 => D2(4),
      I3 => ALU_OPP(1),
      I4 => ALU_OPP(0),
      O => \ALU_OUT[4]_INST_0_i_2_n_0\
    );
\ALU_OUT[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F100F100F100F1F1"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[4]_INST_0_i_5_n_0\,
      I2 => \ALU_OUT[14]_INST_0_i_3_n_0\,
      I3 => \ALU_OUT[4]_INST_0_i_6_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I5 => \ALU_OUT[3]_INST_0_i_8_n_0\,
      O => \ALU_OUT[4]_INST_0_i_3_n_0\
    );
\ALU_OUT[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFABABAAAAAAAA"
    )
        port map (
      I0 => \ALU_OUT[4]_INST_0_i_7_n_0\,
      I1 => \ALU_OUT[3]_INST_0_i_12_n_0\,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I3 => \ALU_OUT[5]_INST_0_i_8_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I5 => D2(15),
      O => \ALU_OUT[4]_INST_0_i_4_n_0\
    );
\ALU_OUT[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EE0EEE0EEE0E"
    )
        port map (
      I0 => \ALU_OUT[5]_INST_0_i_11_n_0\,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I3 => \ALU_OUT[3]_INST_0_i_14_n_0\,
      I4 => D1(0),
      I5 => SHIFT_RIGHT3_carry_n_4,
      O => \ALU_OUT[4]_INST_0_i_5_n_0\
    );
\ALU_OUT[4]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_6_n_0\,
      I1 => \ALU_OUT[7]_INST_0_i_12_n_0\,
      I2 => SHIFT_RIGHT3_carry_i_12_n_0,
      I3 => \ALU_OUT[5]_INST_0_i_10_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[4]_INST_0_i_6_n_0\
    );
\ALU_OUT[4]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \ALU_OUT[5]_INST_0_i_13_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[3]_INST_0_i_11_n_0\,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      O => \ALU_OUT[4]_INST_0_i_7_n_0\
    );
\ALU_OUT[5]_INST_0_comp_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF27FF2727262626"
    )
        port map (
      I0 => \ALU_OUT[5]_INST_0_i_3_n_0\,
      I1 => \ALU_OUT[5]_INST_0_i_3_n_0_repN\,
      I2 => \ALU_OUT[5]_INST_0_i_2_n_0\,
      I3 => \ALU_OUT[5]_INST_0_i_7_n_0\,
      I4 => \SHIFT_RIGHT3_carry__0_n_7\,
      I5 => \ALU_OUT[5]_INST_0_i_7_n_0_repN\,
      O => \^alu_out\(5)
    );
\ALU_OUT[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => data1(5),
      I2 => ALU_OPP(0),
      I3 => data0(5),
      I4 => ALU_OPP(1),
      O => \ALU_OUT[5]_INST_0_i_1_n_0\
    );
\ALU_OUT[5]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000404000FF4040"
    )
        port map (
      I0 => \ALU_OUT[5]_INST_0_i_14_n_0\,
      I1 => \ALU_OUT[5]_INST_0_i_15_n_0\,
      I2 => \ALU_OUT[3]_INST_0_i_18_n_0\,
      I3 => \ALU_OUT[5]_INST_0_i_16_n_0\,
      I4 => SHIFT_RIGHT3_carry_i_10_n_0,
      I5 => \ALU_OUT[5]_INST_0_i_17_n_0\,
      O => \ALU_OUT[5]_INST_0_i_10_n_0\
    );
\ALU_OUT[5]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => D1(2),
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => D1(0),
      I3 => SHIFT_RIGHT3_carry_i_10_n_0,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I5 => D1(4),
      O => \ALU_OUT[5]_INST_0_i_11_n_0\
    );
\ALU_OUT[5]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0C0C0C0A0C"
    )
        port map (
      I0 => D1(13),
      I1 => D1(5),
      I2 => \SHIFT_RIGHT3_carry__2_i_8_n_0\,
      I3 => D2(3),
      I4 => D2(15),
      I5 => SHIFT_LEFT2(3),
      O => \ALU_OUT[5]_INST_0_i_12_n_0\
    );
\ALU_OUT[5]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => D1(2),
      I1 => D2(2),
      I2 => D2(4),
      I3 => D2(3),
      I4 => D2(1),
      I5 => \ALU_OUT[7]_INST_0_i_18_n_0\,
      O => \ALU_OUT[5]_INST_0_i_13_n_0\
    );
\ALU_OUT[5]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000080800A008A80"
    )
        port map (
      I0 => D1(13),
      I1 => SHIFT_LEFT2(3),
      I2 => D2(15),
      I3 => D2(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => \ALU_OUT[5]_INST_0_i_14_n_0\
    );
\ALU_OUT[5]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2(15),
      I2 => D2(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(4),
      I5 => D1(5),
      O => \ALU_OUT[5]_INST_0_i_15_n_0\
    );
\ALU_OUT[5]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB800000000"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2(15),
      I2 => D2(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(4),
      I5 => D1(15),
      O => \ALU_OUT[5]_INST_0_i_16_n_0\
    );
\ALU_OUT[5]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => D1(9),
      I1 => SHIFT_LEFT2(3),
      I2 => D2(15),
      I3 => D2(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => \ALU_OUT[5]_INST_0_i_17_n_0\
    );
\ALU_OUT[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54005454FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_6_n_0\,
      I1 => \ALU_OUT[5]_INST_0_i_6_n_0\,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I3 => \ALU_OUT[6]_INST_0_i_6_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I5 => ALU_OPP(0),
      O => \ALU_OUT[5]_INST_0_i_2_n_0\
    );
\ALU_OUT[5]_INST_0_i_3_comp\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FFA2"
    )
        port map (
      I0 => ALU_OPP(1),
      I1 => D2(15),
      I2 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I3 => \ALU_OUT[5]_INST_0_i_1_n_0\,
      I4 => \ALU_OUT[5]_INST_0_i_4_n_0\,
      O => \ALU_OUT[5]_INST_0_i_3_n_0_repN\
    );
\ALU_OUT[5]_INST_0_i_3_comp_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7333"
    )
        port map (
      I0 => D1(0),
      I1 => ALU_OPP(1),
      I2 => D2(15),
      I3 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I4 => \ALU_OUT[5]_INST_0_i_1_n_0\,
      I5 => \ALU_OUT[5]_INST_0_i_4_n_0\,
      O => \ALU_OUT[5]_INST_0_i_3_n_0\
    );
\ALU_OUT[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000510155555555"
    )
        port map (
      I0 => ALU_OPP(0),
      I1 => \ALU_OUT[5]_INST_0_i_8_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[6]_INST_0_i_9_n_0\,
      I4 => \ALU_OUT[14]_INST_0_i_11_n_0\,
      I5 => \ALU_OUT[5]_INST_0_i_9_n_0\,
      O => \ALU_OUT[5]_INST_0_i_4_n_0\
    );
\ALU_OUT[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A08AA2AA0A200"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => ALU_OPP(0),
      I2 => D2(5),
      I3 => D1(5),
      I4 => ALU_OPP(1),
      I5 => ALU_OPP(2),
      O => \ALU_OUT[5]_INST_0_i_5_n_0\
    );
\ALU_OUT[5]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
        port map (
      I0 => \ALU_OUT[7]_INST_0_i_12_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => \ALU_OUT[5]_INST_0_i_10_n_0\,
      O => \ALU_OUT[5]_INST_0_i_6_n_0\
    );
\ALU_OUT[5]_INST_0_i_7_comp\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCECF"
    )
        port map (
      I0 => D2(0),
      I1 => \ALU_OUT[5]_INST_0_i_5_n_0\,
      I2 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I3 => \ALU_OUT[6]_INST_0_i_10_n_0\,
      I4 => \ALU_OUT[5]_INST_0_i_11_n_0\,
      O => \ALU_OUT[5]_INST_0_i_7_n_0_repN\
    );
\ALU_OUT[5]_INST_0_i_7_comp_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAF8FAF2FAF0"
    )
        port map (
      I0 => D1(0),
      I1 => D2(0),
      I2 => \ALU_OUT[5]_INST_0_i_5_n_0\,
      I3 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I4 => \ALU_OUT[6]_INST_0_i_10_n_0\,
      I5 => \ALU_OUT[5]_INST_0_i_11_n_0\,
      O => \ALU_OUT[5]_INST_0_i_7_n_0\
    );
\ALU_OUT[5]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFD0DFD0DF"
    )
        port map (
      I0 => D1(9),
      I1 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I2 => SHIFT_RIGHT3_carry_i_10_n_0,
      I3 => \ALU_OUT[5]_INST_0_i_12_n_0\,
      I4 => \ALU_OUT[7]_INST_0_i_17_n_0\,
      I5 => SHIFT_RIGHT3_carry_i_12_n_0,
      O => \ALU_OUT[5]_INST_0_i_8_n_0\
    );
\ALU_OUT[5]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF1D"
    )
        port map (
      I0 => \ALU_OUT[6]_INST_0_i_16_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[5]_INST_0_i_13_n_0\,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      O => \ALU_OUT[5]_INST_0_i_9_n_0\
    );
\ALU_OUT[6]_INST_0_comp\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEDC"
    )
        port map (
      I0 => ALU_OPP(1),
      I1 => ALU_OPP(3),
      I2 => \ALU_OUT[6]_INST_0_i_4_n_0\,
      I3 => \ALU_OUT[6]_INST_0_i_3_n_0\,
      O => \ALU_OUT[6]_repN\
    );
\ALU_OUT[6]_INST_0_comp_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF3DDD1"
    )
        port map (
      I0 => ALU_OPP(1),
      I1 => ALU_OPP(3),
      I2 => \ALU_OUT[6]_INST_0_i_1_n_0\,
      I3 => \ALU_OUT[4]_INST_0_i_2_n_0\,
      I4 => \ALU_OUT[6]_INST_0_i_3_n_0\,
      O => \ALU_OUT[6]_repN_1\
    );
\ALU_OUT[6]_INST_0_comp_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \WriteDataSel_out[0]_alias\,
      I1 => \WriteDataSel_out[1]_alias\,
      I2 => ALU_OPP(3),
      O => \^alu_out\(6)
    );
\ALU_OUT[6]_INST_0_comp_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE3ECE02F232C20"
    )
        port map (
      I0 => D1(6),
      I1 => \WriteDataSel_out[0]_alias\,
      I2 => \WriteDataSel_out[1]_alias\,
      I3 => \ManipulatedImmidiate[6]_alias\,
      I4 => \ALU_OUT[6]_INST_0_i_1_n_0\,
      I5 => O_alias,
      O => \ALU_OUT[6]_repN_2\
    );
\ALU_OUT[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"966A5666"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => D1(6),
      I2 => D2(6),
      I3 => ALU_OPP(1),
      I4 => ALU_OPP(0),
      O => \ALU_OUT[6]_INST_0_i_1_n_0\
    );
\ALU_OUT[6]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => D1(3),
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => D1(1),
      I3 => SHIFT_RIGHT3_carry_i_10_n_0,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I5 => D1(5),
      O => \ALU_OUT[6]_INST_0_i_10_n_0\
    );
\ALU_OUT[6]_INST_0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => D1(0),
      I1 => \SHIFT_RIGHT3_carry__0_n_6\,
      O => \ALU_OUT[6]_INST_0_i_11_n_0\
    );
\ALU_OUT[6]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ALU_OUT[0]_INST_0_i_12_n_0\,
      I1 => \ALU_OUT[6]_INST_0_i_18_n_0\,
      I2 => SHIFT_RIGHT3_carry_i_12_n_0,
      I3 => \ALU_OUT[6]_INST_0_i_19_n_0\,
      I4 => SHIFT_RIGHT3_carry_i_10_n_0,
      I5 => \ALU_OUT[6]_INST_0_i_20_n_0\,
      O => \ALU_OUT[6]_INST_0_i_12_n_0\
    );
\ALU_OUT[6]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555775F5F5577"
    )
        port map (
      I0 => D1(15),
      I1 => D2(4),
      I2 => SHIFT_LEFT2(4),
      I3 => D2(3),
      I4 => D2(15),
      I5 => SHIFT_LEFT2(3),
      O => \ALU_OUT[6]_INST_0_i_13_n_0\
    );
\ALU_OUT[6]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => D1(10),
      I1 => SHIFT_LEFT2(3),
      I2 => D2(15),
      I3 => D2(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => \ALU_OUT[6]_INST_0_i_14_n_0\
    );
\ALU_OUT[6]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F440F77"
    )
        port map (
      I0 => D1(14),
      I1 => \SHIFT_RIGHT3_carry__2_i_9_n_0\,
      I2 => D1(15),
      I3 => \SHIFT_RIGHT3_carry__2_i_8_n_0\,
      I4 => D1(6),
      O => \ALU_OUT[6]_INST_0_i_15_n_0\
    );
\ALU_OUT[6]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010FFFF00100000"
    )
        port map (
      I0 => D2(3),
      I1 => D2(2),
      I2 => D1(3),
      I3 => D2(4),
      I4 => D2(1),
      I5 => \ALU_OUT[8]_INST_0_i_9_n_0\,
      O => \ALU_OUT[6]_INST_0_i_16_n_0\
    );
\ALU_OUT[6]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0C0C0C0A0C"
    )
        port map (
      I0 => D1(14),
      I1 => D1(6),
      I2 => \SHIFT_RIGHT3_carry__2_i_8_n_0\,
      I3 => D2(3),
      I4 => D2(15),
      I5 => SHIFT_LEFT2(3),
      O => \ALU_OUT[6]_INST_0_i_17_n_0\
    );
\ALU_OUT[6]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2(15),
      I2 => D2(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(4),
      I5 => D1(4),
      O => \ALU_OUT[6]_INST_0_i_18_n_0\
    );
\ALU_OUT[6]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2(15),
      I2 => D2(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(4),
      I5 => D1(2),
      O => \ALU_OUT[6]_INST_0_i_19_n_0\
    );
\ALU_OUT[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0000000E0"
    )
        port map (
      I0 => \ALU_OUT[6]_INST_0_i_5_n_0\,
      I1 => \ALU_OUT[14]_INST_0_i_3_n_0\,
      I2 => ALU_OPP(0),
      I3 => \ALU_OUT[6]_INST_0_i_6_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I5 => \ALU_OUT[6]_INST_0_i_7_n_0\,
      O => \ALU_OUT[6]_INST_0_i_2_n_0\
    );
\ALU_OUT[6]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2(15),
      I2 => D2(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(4),
      I5 => D1(6),
      O => \ALU_OUT[6]_INST_0_i_20_n_0\
    );
\ALU_OUT[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444455544454"
    )
        port map (
      I0 => ALU_OPP(0),
      I1 => \ALU_OUT[6]_INST_0_i_8_n_0\,
      I2 => \ALU_OUT[6]_INST_0_i_9_n_0\,
      I3 => D2(0),
      I4 => \ALU_OUT[7]_INST_0_i_11_n_0\,
      I5 => \ALU_OUT[14]_INST_0_i_11_n_0\,
      O => \ALU_OUT[6]_INST_0_i_3_n_0\
    );
\ALU_OUT[6]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(6),
      I1 => ALU_OPP(0),
      I2 => data0(6),
      O => \ALU_OUT[6]_INST_0_i_4_n_0\
    );
\ALU_OUT[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510551055105555"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[6]_INST_0_i_10_n_0\,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I3 => \ALU_OUT[6]_INST_0_i_11_n_0\,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I5 => \ALU_OUT[6]_INST_0_i_12_n_0\,
      O => \ALU_OUT[6]_INST_0_i_5_n_0\
    );
\ALU_OUT[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \ALU_OUT[7]_INST_0_i_13_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => \ALU_OUT[6]_INST_0_i_13_n_0\,
      I3 => \ALU_OUT[6]_INST_0_i_14_n_0\,
      I4 => SHIFT_RIGHT3_carry_i_10_n_0,
      I5 => \ALU_OUT[6]_INST_0_i_15_n_0\,
      O => \ALU_OUT[6]_INST_0_i_6_n_0\
    );
\ALU_OUT[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFBFFAAAAAAAA"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_6_n_0\,
      I1 => \ALU_OUT[6]_INST_0_i_13_n_0\,
      I2 => \ALU_OUT[9]_INST_0_i_13_n_0\,
      I3 => SHIFT_RIGHT3_carry_i_12_n_0,
      I4 => \ALU_OUT[7]_INST_0_i_12_n_0\,
      I5 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      O => \ALU_OUT[6]_INST_0_i_7_n_0\
    );
\ALU_OUT[6]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \ALU_OUT[6]_INST_0_i_16_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[7]_INST_0_i_16_n_0\,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      O => \ALU_OUT[6]_INST_0_i_8_n_0\
    );
\ALU_OUT[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \ALU_OUT[8]_INST_0_i_10_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => D1(10),
      I3 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I4 => SHIFT_RIGHT3_carry_i_10_n_0,
      I5 => \ALU_OUT[6]_INST_0_i_17_n_0\,
      O => \ALU_OUT[6]_INST_0_i_9_n_0\
    );
\ALU_OUT[7]_INST_0_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAABAAFFFFABFF"
    )
        port map (
      I0 => \ALU_OUT[7]_INST_0_i_5_n_0\,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I2 => \ALU_OUT[7]_INST_0_i_8_n_0\,
      I3 => \ALU_OUT[7]_INST_0_i_3_n_0\,
      I4 => \ALU_OUT[7]_INST_0_i_9_n_0\,
      I5 => \ALU_OUT[7]_INST_0_i_3_n_0_repN\,
      O => \^alu_out\(7)
    );
\ALU_OUT[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => data1(7),
      I2 => ALU_OPP(0),
      I3 => data0(7),
      I4 => ALU_OPP(1),
      O => \ALU_OUT[7]_INST_0_i_1_n_0\
    );
\ALU_OUT[7]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF00B8B8"
    )
        port map (
      I0 => \ALU_OUT[8]_INST_0_i_9_n_0\,
      I1 => D2(1),
      I2 => \ALU_OUT[10]_INST_0_i_16_n_0\,
      I3 => \ALU_OUT[7]_INST_0_i_16_n_0\,
      I4 => D2(0),
      I5 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      O => \ALU_OUT[7]_INST_0_i_10_n_0\
    );
\ALU_OUT[7]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => D1(13),
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => D1(9),
      I3 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I4 => SHIFT_RIGHT3_carry_i_12_n_0,
      I5 => \ALU_OUT[7]_INST_0_i_17_n_0\,
      O => \ALU_OUT[7]_INST_0_i_11_n_0\
    );
\ALU_OUT[7]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF4747"
    )
        port map (
      I0 => D1(11),
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => D1(7),
      I3 => D1(15),
      I4 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      O => \ALU_OUT[7]_INST_0_i_12_n_0\
    );
\ALU_OUT[7]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF4747"
    )
        port map (
      I0 => D1(12),
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => D1(8),
      I3 => D1(15),
      I4 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      O => \ALU_OUT[7]_INST_0_i_13_n_0\
    );
\ALU_OUT[7]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4540FFFF757F"
    )
        port map (
      I0 => D1(0),
      I1 => SHIFT_LEFT2(2),
      I2 => D2(15),
      I3 => D2(2),
      I4 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I5 => D1(4),
      O => \ALU_OUT[7]_INST_0_i_14_n_0\
    );
\ALU_OUT[7]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4540FFFF757F"
    )
        port map (
      I0 => D1(2),
      I1 => SHIFT_LEFT2(2),
      I2 => D2(15),
      I3 => D2(2),
      I4 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I5 => D1(6),
      O => \ALU_OUT[7]_INST_0_i_15_n_0\
    );
\ALU_OUT[7]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBB888B8"
    )
        port map (
      I0 => \ALU_OUT[7]_INST_0_i_18_n_0\,
      I1 => D2(1),
      I2 => D1(6),
      I3 => D2(2),
      I4 => D1(2),
      I5 => \ALU_OUT[9]_INST_0_i_14_n_0\,
      O => \ALU_OUT[7]_INST_0_i_16_n_0\
    );
\ALU_OUT[7]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B083B3B0B080B08"
    )
        port map (
      I0 => D1(11),
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I3 => D1(7),
      I4 => \ALU_OUT[0]_INST_0_i_11_n_0\,
      I5 => D1(15),
      O => \ALU_OUT[7]_INST_0_i_17_n_0\
    );
\ALU_OUT[7]_INST_0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => D1(0),
      I1 => D2(2),
      I2 => D2(3),
      I3 => D1(4),
      I4 => D2(4),
      O => \ALU_OUT[7]_INST_0_i_18_n_0\
    );
\ALU_OUT[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545504FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_6_n_0\,
      I1 => \ALU_OUT[7]_INST_0_i_6_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I4 => \ALU_OUT[7]_INST_0_i_7_n_0\,
      I5 => ALU_OPP(0),
      O => \ALU_OUT[7]_INST_0_i_2_n_0\
    );
\ALU_OUT[7]_INST_0_i_3_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => ALU_OPP(1),
      I1 => D2(15),
      I2 => \ALU_OUT[7]_INST_0_i_1_n_0\,
      I3 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I4 => \ALU_OUT[7]_INST_0_i_4_n_0\,
      I5 => \ALU_OUT[7]_INST_0_i_2_n_0\,
      O => \ALU_OUT[7]_INST_0_i_3_n_0\
    );
\ALU_OUT[7]_INST_0_i_3_comp_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFAAFF00FF20"
    )
        port map (
      I0 => ALU_OPP(1),
      I1 => D1(0),
      I2 => D2(15),
      I3 => \ALU_OUT[7]_INST_0_i_1_n_0\,
      I4 => \ALU_OUT[7]_INST_0_i_4_n_0\,
      I5 => \ALU_OUT[7]_INST_0_i_2_n_0\,
      O => \ALU_OUT[7]_INST_0_i_3_n_0_repN\
    );
\ALU_OUT[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444455544454"
    )
        port map (
      I0 => ALU_OPP(0),
      I1 => \ALU_OUT[7]_INST_0_i_10_n_0\,
      I2 => \ALU_OUT[7]_INST_0_i_11_n_0\,
      I3 => D2(0),
      I4 => \ALU_OUT[8]_INST_0_i_8_n_0\,
      I5 => \ALU_OUT[14]_INST_0_i_11_n_0\,
      O => \ALU_OUT[7]_INST_0_i_4_n_0\
    );
\ALU_OUT[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A08AA2AA0A200"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => ALU_OPP(0),
      I2 => D2(7),
      I3 => D1(7),
      I4 => ALU_OPP(1),
      I5 => ALU_OPP(2),
      O => \ALU_OUT[7]_INST_0_i_5_n_0\
    );
\ALU_OUT[7]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07FF0700"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I1 => D1(15),
      I2 => \ALU_OUT[9]_INST_0_i_13_n_0\,
      I3 => SHIFT_RIGHT3_carry_i_12_n_0,
      I4 => \ALU_OUT[7]_INST_0_i_12_n_0\,
      O => \ALU_OUT[7]_INST_0_i_6_n_0\
    );
\ALU_OUT[7]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07FF0700"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I1 => D1(15),
      I2 => \ALU_OUT[10]_INST_0_i_11_n_0\,
      I3 => SHIFT_RIGHT3_carry_i_12_n_0,
      I4 => \ALU_OUT[7]_INST_0_i_13_n_0\,
      O => \ALU_OUT[7]_INST_0_i_7_n_0\
    );
\ALU_OUT[7]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F7FFFFF4F70000"
    )
        port map (
      I0 => D1(1),
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I3 => D1(5),
      I4 => SHIFT_RIGHT3_carry_i_12_n_0,
      I5 => \ALU_OUT[10]_INST_0_i_12_n_0\,
      O => \ALU_OUT[7]_INST_0_i_8_n_0\
    );
\ALU_OUT[7]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF470047004700"
    )
        port map (
      I0 => \ALU_OUT[7]_INST_0_i_14_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => \ALU_OUT[7]_INST_0_i_15_n_0\,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I4 => \SHIFT_RIGHT3_carry__0_n_5\,
      I5 => D1(0),
      O => \ALU_OUT[7]_INST_0_i_9_n_0\
    );
\ALU_OUT[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBBBBBB88888"
    )
        port map (
      I0 => \ALU_OUT[8]_INST_0_i_1_n_0\,
      I1 => ALU_OPP(3),
      I2 => \ALU_OUT[8]_INST_0_i_2_n_0\,
      I3 => \ALU_OUT[8]_INST_0_i_3_n_0\,
      I4 => ALU_OPP(1),
      I5 => \ALU_OUT[8]_INST_0_i_4_n_0\,
      O => \^alu_out\(8)
    );
\ALU_OUT[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"966A5666"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => D1(8),
      I2 => D2(8),
      I3 => ALU_OPP(1),
      I4 => ALU_OPP(0),
      O => \ALU_OUT[8]_INST_0_i_1_n_0\
    );
\ALU_OUT[8]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03000300BBBB8B88"
    )
        port map (
      I0 => D1(12),
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => \ALU_OUT[0]_INST_0_i_11_n_0\,
      I3 => D1(15),
      I4 => D1(8),
      I5 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      O => \ALU_OUT[8]_INST_0_i_10_n_0\
    );
\ALU_OUT[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B1FF0000"
    )
        port map (
      I0 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I1 => \ALU_OUT[8]_INST_0_i_5_n_0\,
      I2 => D1(0),
      I3 => D2(15),
      I4 => ALU_OPP(0),
      I5 => \ALU_OUT[8]_INST_0_i_6_n_0\,
      O => \ALU_OUT[8]_INST_0_i_2_n_0\
    );
\ALU_OUT[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444455544454"
    )
        port map (
      I0 => ALU_OPP(0),
      I1 => \ALU_OUT[8]_INST_0_i_7_n_0\,
      I2 => \ALU_OUT[8]_INST_0_i_8_n_0\,
      I3 => D2(0),
      I4 => \ALU_OUT[9]_INST_0_i_8_n_0\,
      I5 => \ALU_OUT[14]_INST_0_i_11_n_0\,
      O => \ALU_OUT[8]_INST_0_i_3_n_0\
    );
\ALU_OUT[8]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(8),
      I1 => ALU_OPP(0),
      I2 => data0(8),
      O => \ALU_OUT[8]_INST_0_i_4_n_0\
    );
\ALU_OUT[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EE0EEE0EEE0E"
    )
        port map (
      I0 => \ALU_OUT[9]_INST_0_i_9_n_0\,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I3 => \ALU_OUT[7]_INST_0_i_8_n_0\,
      I4 => D1(0),
      I5 => \SHIFT_RIGHT3_carry__0_n_4\,
      O => \ALU_OUT[8]_INST_0_i_5_n_0\
    );
\ALU_OUT[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000032020000FECE"
    )
        port map (
      I0 => \ALU_OUT[7]_INST_0_i_7_n_0\,
      I1 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[9]_INST_0_i_11_n_0\,
      I4 => D2(15),
      I5 => D1(15),
      O => \ALU_OUT[8]_INST_0_i_6_n_0\
    );
\ALU_OUT[8]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => \ALU_OUT[8]_INST_0_i_9_n_0\,
      I1 => D2(1),
      I2 => \ALU_OUT[10]_INST_0_i_16_n_0\,
      I3 => D2(0),
      I4 => \ALU_OUT[9]_INST_0_i_12_n_0\,
      I5 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      O => \ALU_OUT[8]_INST_0_i_7_n_0\
    );
\ALU_OUT[8]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => D1(14),
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => D1(10),
      I3 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I4 => SHIFT_RIGHT3_carry_i_12_n_0,
      I5 => \ALU_OUT[8]_INST_0_i_10_n_0\,
      O => \ALU_OUT[8]_INST_0_i_8_n_0\
    );
\ALU_OUT[8]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => D1(1),
      I1 => D2(2),
      I2 => D1(5),
      I3 => D2(3),
      I4 => D2(4),
      O => \ALU_OUT[8]_INST_0_i_9_n_0\
    );
\ALU_OUT[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8B8BBB8"
    )
        port map (
      I0 => \ALU_OUT[9]_INST_0_i_1_n_0\,
      I1 => ALU_OPP(3),
      I2 => \ALU_OUT[9]_INST_0_i_2_n_0\,
      I3 => \ALU_OUT[9]_INST_0_i_3_n_0\,
      I4 => \ALU_OUT[9]_INST_0_i_4_n_0\,
      I5 => \ALU_OUT[9]_INST_0_i_5_n_0\,
      O => \^alu_out\(9)
    );
\ALU_OUT[9]_INST_0_comp\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => \ALU_OUT[9]_INST_0_i_5_n_0\,
      I2 => \ALU_OUT[9]_INST_0_i_2_n_0\,
      O => \ALU_OUT[9]_repN\
    );
\ALU_OUT[9]_INST_0_comp_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDFDFDFDFDFDA8"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => \ALU_OUT[8]_INST_0_i_1_n_0\,
      I2 => \ALU_OUT[9]_INST_0_i_1_n_0\,
      I3 => \ALU_OUT[9]_INST_0_i_5_n_0\,
      I4 => \ALU_OUT[9]_INST_0_i_2_n_0\,
      I5 => \ALU_OUT[9]_INST_0_i_4_n_0\,
      O => \ALU_OUT[9]_repN_1\
    );
\ALU_OUT[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"966A5666"
    )
        port map (
      I0 => ALU_OPP(2),
      I1 => D1(9),
      I2 => D2(9),
      I3 => ALU_OPP(1),
      I4 => ALU_OPP(0),
      O => \ALU_OUT[9]_INST_0_i_1_n_0\
    );
\ALU_OUT[9]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888FFF88888888"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__1_n_7\,
      I1 => D1(0),
      I2 => \ALU_OUT[10]_INST_0_i_12_n_0\,
      I3 => SHIFT_RIGHT3_carry_i_12_n_0,
      I4 => \ALU_OUT[12]_INST_0_i_10_n_0\,
      I5 => \ALU_OUT[11]_INST_0_i_12_n_0\,
      O => \ALU_OUT[9]_INST_0_i_10_n_0\
    );
\ALU_OUT[9]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010F0B0001FFFBF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_10_n_0,
      I1 => D1(11),
      I2 => SHIFT_RIGHT3_carry_i_12_n_0,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I4 => D1(15),
      I5 => \ALU_OUT[9]_INST_0_i_13_n_0\,
      O => \ALU_OUT[9]_INST_0_i_11_n_0\
    );
\ALU_OUT[9]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => D1(6),
      I1 => D2(2),
      I2 => D1(2),
      I3 => \ALU_OUT[9]_INST_0_i_14_n_0\,
      I4 => D2(1),
      I5 => \ALU_OUT[10]_INST_0_i_14_n_0\,
      O => \ALU_OUT[9]_INST_0_i_12_n_0\
    );
\ALU_OUT[9]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABF8A80"
    )
        port map (
      I0 => D1(13),
      I1 => SHIFT_LEFT2(2),
      I2 => D2(15),
      I3 => D2(2),
      I4 => D1(9),
      I5 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      O => \ALU_OUT[9]_INST_0_i_13_n_0\
    );
\ALU_OUT[9]_INST_0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(4),
      I1 => D2(3),
      O => \ALU_OUT[9]_INST_0_i_14_n_0\
    );
\ALU_OUT[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007775FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT[9]_INST_0_i_6_n_0\,
      I1 => \ALU_OUT[9]_INST_0_i_7_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[9]_INST_0_i_8_n_0\,
      I4 => ALU_OPP(0),
      I5 => ALU_OPP(1),
      O => \ALU_OUT[9]_INST_0_i_2_n_0\
    );
\ALU_OUT[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDFFFF55F5"
    )
        port map (
      I0 => D2(15),
      I1 => D1(0),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I3 => \ALU_OUT[9]_INST_0_i_9_n_0\,
      I4 => \ALU_OUT[9]_INST_0_i_10_n_0\,
      I5 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      O => \ALU_OUT[9]_INST_0_i_3_n_0\
    );
\ALU_OUT[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545504FFFFFFFF"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_6_n_0\,
      I1 => \ALU_OUT[9]_INST_0_i_11_n_0\,
      I2 => D2(0),
      I3 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I4 => \ALU_OUT[10]_INST_0_i_6_n_0\,
      I5 => ALU_OPP(0),
      O => \ALU_OUT[9]_INST_0_i_4_n_0\
    );
\ALU_OUT[9]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0151"
    )
        port map (
      I0 => ALU_OPP(1),
      I1 => data0(9),
      I2 => ALU_OPP(0),
      I3 => data1(9),
      O => \ALU_OUT[9]_INST_0_i_5_n_0\
    );
\ALU_OUT[9]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF47"
    )
        port map (
      I0 => \ALU_OUT[9]_INST_0_i_12_n_0\,
      I1 => D2(0),
      I2 => \ALU_OUT[10]_INST_0_i_10_n_0\,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      O => \ALU_OUT[9]_INST_0_i_6_n_0\
    );
\ALU_OUT[9]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => \ALU_OUT[14]_INST_0_i_11_n_0\,
      I1 => \ALU_OUT[10]_INST_0_i_13_n_0\,
      I2 => SHIFT_RIGHT3_carry_i_12_n_0,
      I3 => \ALU_OUT[10]_INST_0_i_11_n_0\,
      I4 => D2(0),
      O => \ALU_OUT[9]_INST_0_i_7_n_0\
    );
\ALU_OUT[9]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => D1(15),
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => D1(11),
      I3 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I4 => SHIFT_RIGHT3_carry_i_12_n_0,
      I5 => \ALU_OUT[9]_INST_0_i_13_n_0\,
      O => \ALU_OUT[9]_INST_0_i_8_n_0\
    );
\ALU_OUT[9]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F7FFFFF4F70000"
    )
        port map (
      I0 => D1(2),
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I3 => D1(6),
      I4 => SHIFT_RIGHT3_carry_i_12_n_0,
      I5 => \ALU_OUT[11]_INST_0_i_11_n_0\,
      O => \ALU_OUT[9]_INST_0_i_9_n_0\
    );
ALU_OUT_Internal0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ALU_OUT_Internal0_carry_n_0,
      CO(2 downto 0) => NLW_ALU_OUT_Internal0_carry_CO_UNCONNECTED(2 downto 0),
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
      CO(2 downto 0) => \NLW_ALU_OUT_Internal0_carry__0_CO_UNCONNECTED\(2 downto 0),
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
      CO(2 downto 0) => \NLW_ALU_OUT_Internal0_carry__1_CO_UNCONNECTED\(2 downto 0),
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
      CO(2 downto 0) => \NLW_ALU_OUT_Internal0_carry__2_CO_UNCONNECTED\(2 downto 0),
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
      CO(2 downto 0) => \NLW_ALU_OUT_Internal0_inferred__0/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => D1(3 downto 0),
      O(3 downto 0) => data1(3 downto 0),
      S(3) => \i__carry_i_1__1_n_0\,
      S(2) => \i__carry_i_2__1_n_0\,
      S(1) => \i__carry_i_3__1_n_0\,
      S(0) => \i__carry_i_4__1_n_0\
    );
\ALU_OUT_Internal0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_Internal0_inferred__0/i__carry_n_0\,
      CO(3) => \ALU_OUT_Internal0_inferred__0/i__carry__0_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_Internal0_inferred__0/i__carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => D1(7 downto 4),
      O(3 downto 0) => data1(7 downto 4),
      S(3) => \i__carry__0_i_1__1_n_0\,
      S(2) => \i__carry__0_i_2__1_n_0\,
      S(1) => \i__carry__0_i_3__1_n_0\,
      S(0) => \i__carry__0_i_4__1_n_0\
    );
\ALU_OUT_Internal0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_Internal0_inferred__0/i__carry__0_n_0\,
      CO(3) => \ALU_OUT_Internal0_inferred__0/i__carry__1_n_0\,
      CO(2 downto 0) => \NLW_ALU_OUT_Internal0_inferred__0/i__carry__1_CO_UNCONNECTED\(2 downto 0),
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
      CO(2 downto 0) => \NLW_ALU_OUT_Internal0_inferred__0/i__carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2 downto 0) => D1(14 downto 12),
      O(3 downto 0) => data1(15 downto 12),
      S(3) => \i__carry__2_i_2__0_n_0\,
      S(2) => \i__carry__2_i_3__0_n_0\,
      S(1) => \i__carry__2_i_4_n_0\,
      S(0) => \i__carry__2_i_5_n_0\
    );
BIGGER_ZERO_FLAG_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => ZERO_FLAG_INST_0_i_1_n_0,
      I1 => ZERO_FLAG_INST_0_i_2_n_0,
      I2 => ZERO_FLAG_INST_0_i_3_n_0,
      I3 => ZERO_FLAG_INST_0_i_4_n_0,
      I4 => ZERO_FLAG_INST_0_i_5_n_0,
      I5 => \^immediate_s_reg[1]\,
      O => BIGGER_ZERO_FLAG
    );
CARRY_FLAG_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444454554444"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => CARRY_FLAG_INST_0_i_1_n_0,
      I2 => CARRY_FLAG_INST_0_i_2_n_0,
      I3 => CARRY_FLAG_INST_0_i_3_n_0,
      I4 => ALU_OPP(1),
      I5 => CARRY_FLAG_INST_0_i_4_n_0,
      O => CARRY_FLAG
    );
CARRY_FLAG_INST_0_comp: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFAB"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => ALU_OPP(1),
      I2 => CARRY_FLAG_INST_0_i_1_n_0,
      I3 => CARRY_FLAG_INST_0_i_4_n_0,
      O => CARRY_FLAG_repN
    );
CARRY_FLAG_INST_0_comp_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => CARRY_FLAG_INST_0_i_1_n_0,
      I1 => CARRY_FLAG_INST_0_i_3_n_0,
      O => CARRY_FLAG_repN_1
    );
CARRY_FLAG_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0151"
    )
        port map (
      I0 => ALU_OPP(1),
      I1 => CARRY_FLAG_INST_0_i_5_n_3,
      I2 => ALU_OPP(0),
      I3 => CARRY_FLAG_INST_0_i_6_n_3,
      O => CARRY_FLAG_INST_0_i_1_n_0
    );
CARRY_FLAG_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF550F33"
    )
        port map (
      I0 => D1(0),
      I1 => D1(15),
      I2 => D1(8),
      I3 => \SHIFT_RIGHT3_carry__2_i_9_n_0\,
      I4 => \SHIFT_RIGHT3_carry__2_i_8_n_0\,
      I5 => SHIFT_RIGHT3_carry_i_10_n_0,
      O => CARRY_FLAG_INST_0_i_10_n_0
    );
CARRY_FLAG_INST_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDCCCDCDDDFFFDF"
    )
        port map (
      I0 => D1(4),
      I1 => \SHIFT_RIGHT3_carry__2_i_8_n_0\,
      I2 => D2(3),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(3),
      I5 => D1(12),
      O => CARRY_FLAG_INST_0_i_11_n_0
    );
CARRY_FLAG_INST_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3022"
    )
        port map (
      I0 => D1(12),
      I1 => D2(4),
      I2 => D1(4),
      I3 => D2(3),
      O => CARRY_FLAG_INST_0_i_12_n_0
    );
CARRY_FLAG_INST_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F5F503F3"
    )
        port map (
      I0 => D1(0),
      I1 => D1(15),
      I2 => D2(3),
      I3 => D1(8),
      I4 => D2(4),
      I5 => D2(2),
      O => CARRY_FLAG_INST_0_i_13_n_0
    );
CARRY_FLAG_INST_0_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => D2(4),
      I1 => D2(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D1(2),
      O => CARRY_FLAG_INST_0_i_14_n_0
    );
CARRY_FLAG_INST_0_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => D2(4),
      I1 => D2(15),
      I2 => SHIFT_LEFT2(4),
      I3 => D1(10),
      O => CARRY_FLAG_INST_0_i_15_n_0
    );
CARRY_FLAG_INST_0_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF77CF47FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2(15),
      I2 => D2(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(4),
      I5 => D1(6),
      O => CARRY_FLAG_INST_0_i_16_n_0
    );
CARRY_FLAG_INST_0_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => D1(14),
      I1 => SHIFT_LEFT2(3),
      I2 => D2(15),
      I3 => D2(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => CARRY_FLAG_INST_0_i_17_n_0
    );
CARRY_FLAG_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF5DDDD5555DDDD"
    )
        port map (
      I0 => ALU_OPP(0),
      I1 => D1(15),
      I2 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I3 => \SHIFT_RIGHT3_carry__2_n_4\,
      I4 => D2(15),
      I5 => D1(0),
      O => CARRY_FLAG_INST_0_i_2_n_0
    );
CARRY_FLAG_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF45FF"
    )
        port map (
      I0 => CARRY_FLAG_INST_0_i_7_n_0,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_8_n_0,
      I2 => D2(0),
      I3 => D2(15),
      I4 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I5 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      O => CARRY_FLAG_INST_0_i_3_n_0
    );
CARRY_FLAG_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FDFCFD00"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_12_n_0,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      I2 => CARRY_FLAG_INST_0_i_8_n_0,
      I3 => D2(0),
      I4 => SMALLER_ZERO_FLAG_INST_0_i_13_n_0,
      I5 => ALU_OPP(0),
      O => CARRY_FLAG_INST_0_i_4_n_0
    );
CARRY_FLAG_INST_0_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_Internal0_carry__2_n_0\,
      CO(3 downto 1) => NLW_CARRY_FLAG_INST_0_i_5_CO_UNCONNECTED(3 downto 1),
      CO(0) => CARRY_FLAG_INST_0_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY_FLAG_INST_0_i_5_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
CARRY_FLAG_INST_0_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_OUT_Internal0_inferred__0/i__carry__2_n_0\,
      CO(3 downto 1) => NLW_CARRY_FLAG_INST_0_i_6_CO_UNCONNECTED(3 downto 1),
      CO(0) => CARRY_FLAG_INST_0_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_CARRY_FLAG_INST_0_i_6_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
CARRY_FLAG_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0050005300530053"
    )
        port map (
      I0 => CARRY_FLAG_INST_0_i_9_n_0,
      I1 => CARRY_FLAG_INST_0_i_10_n_0,
      I2 => SHIFT_RIGHT3_carry_i_12_n_0,
      I3 => D2(0),
      I4 => SHIFT_RIGHT3_carry_i_10_n_0,
      I5 => CARRY_FLAG_INST_0_i_11_n_0,
      O => CARRY_FLAG_INST_0_i_7_n_0
    );
CARRY_FLAG_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF400F4"
    )
        port map (
      I0 => CARRY_FLAG_INST_0_i_12_n_0,
      I1 => D2(2),
      I2 => CARRY_FLAG_INST_0_i_13_n_0,
      I3 => D2(1),
      I4 => SMALLER_ZERO_FLAG_INST_0_i_29_n_0,
      I5 => D2(0),
      O => CARRY_FLAG_INST_0_i_8_n_0
    );
CARRY_FLAG_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800B8FFB800"
    )
        port map (
      I0 => CARRY_FLAG_INST_0_i_14_n_0,
      I1 => \SHIFT_RIGHT3_carry__2_i_9_n_0\,
      I2 => CARRY_FLAG_INST_0_i_15_n_0,
      I3 => SHIFT_RIGHT3_carry_i_10_n_0,
      I4 => CARRY_FLAG_INST_0_i_16_n_0,
      I5 => CARRY_FLAG_INST_0_i_17_n_0,
      O => CARRY_FLAG_INST_0_i_9_n_0
    );
NOT_ZERO_FLAG_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ZERO_FLAG_INST_0_i_5_n_0,
      I1 => ZERO_FLAG_INST_0_i_4_n_0,
      I2 => ZERO_FLAG_INST_0_i_3_n_0,
      I3 => ZERO_FLAG_INST_0_i_2_n_0,
      I4 => ZERO_FLAG_INST_0_i_1_n_0,
      I5 => \^immediate_s_reg[1]\,
      O => NOT_ZERO_FLAG
    );
OVERFLOW_FLAG_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1482"
    )
        port map (
      I0 => \^immediate_s_reg[1]\,
      I1 => D2(15),
      I2 => ALU_OPP(0),
      I3 => D1(15),
      O => OVERFLOW_FLAG
    );
\SHIFT_RIGHT2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \SHIFT_RIGHT2_inferred__0/i__carry_n_0\,
      CO(2 downto 0) => \NLW_SHIFT_RIGHT2_inferred__0/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => D2(5),
      DI(1) => \i__carry_i_2_n_0\,
      DI(0) => D2(1),
      O(3 downto 0) => \NLW_SHIFT_RIGHT2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_3_n_0\,
      S(2) => \i__carry_i_4_n_0\,
      S(1) => \i__carry_i_5_n_0\,
      S(0) => \i__carry_i_6_n_0\
    );
\SHIFT_RIGHT2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \SHIFT_RIGHT2_inferred__0/i__carry_n_0\,
      CO(3) => \SHIFT_RIGHT2_inferred__0/i__carry__0_n_0\,
      CO(2 downto 0) => \NLW_SHIFT_RIGHT2_inferred__0/i__carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_2__0_n_0\,
      DI(1) => \i__carry__0_i_3__0_n_0\,
      DI(0) => \i__carry__0_i_4__0_n_0\,
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
      S(0) => \i__carry__1_i_1__0_n_0\
    );
SHIFT_RIGHT3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => SHIFT_RIGHT3_carry_n_0,
      CO(2 downto 0) => NLW_SHIFT_RIGHT3_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => SHIFT_RIGHT4(0),
      DI(3 downto 0) => SHIFT_RIGHT4(4 downto 1),
      O(3) => SHIFT_RIGHT3_carry_n_4,
      O(2) => SHIFT_RIGHT3_carry_n_5,
      O(1) => SHIFT_RIGHT3_carry_n_6,
      O(0) => SHIFT_RIGHT3_carry_n_7,
      S(3) => SHIFT_RIGHT3_carry_i_6_n_0,
      S(2) => SHIFT_RIGHT3_carry_i_7_n_0,
      S(1) => SHIFT_RIGHT3_carry_i_8_n_0,
      S(0) => SHIFT_RIGHT3_carry_i_9_n_0
    );
\SHIFT_RIGHT3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => SHIFT_RIGHT3_carry_n_0,
      CO(3) => \SHIFT_RIGHT3_carry__0_n_0\,
      CO(2 downto 0) => \NLW_SHIFT_RIGHT3_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => SHIFT_RIGHT4(8 downto 5),
      O(3) => \SHIFT_RIGHT3_carry__0_n_4\,
      O(2) => \SHIFT_RIGHT3_carry__0_n_5\,
      O(1) => \SHIFT_RIGHT3_carry__0_n_6\,
      O(0) => \SHIFT_RIGHT3_carry__0_n_7\,
      S(3) => \SHIFT_RIGHT3_carry__0_i_5_n_0\,
      S(2) => \SHIFT_RIGHT3_carry__0_i_6_n_0\,
      S(1) => \SHIFT_RIGHT3_carry__0_i_7_n_0\,
      S(0) => \SHIFT_RIGHT3_carry__0_i_8_n_0\
    );
\SHIFT_RIGHT3_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000011011"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_10_n_0,
      I1 => D2(0),
      I2 => D2(15),
      I3 => D2(1),
      I4 => SHIFT_LEFT2(1),
      I5 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      O => SHIFT_RIGHT4(8)
    );
\SHIFT_RIGHT3_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080808800"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_10_n_0,
      I1 => D2(0),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(1),
      I4 => D2(15),
      I5 => SHIFT_RIGHT3_carry_i_11_n_0,
      O => SHIFT_RIGHT4(7)
    );
\SHIFT_RIGHT3_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020222000"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_12_n_0,
      I1 => D2(0),
      I2 => SHIFT_LEFT2(2),
      I3 => D2(15),
      I4 => D2(2),
      I5 => SHIFT_RIGHT3_carry_i_11_n_0,
      O => SHIFT_RIGHT4(6)
    );
\SHIFT_RIGHT3_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008080088"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_10_n_0,
      I1 => D2(0),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(1),
      I4 => D2(15),
      I5 => SHIFT_RIGHT3_carry_i_11_n_0,
      O => SHIFT_RIGHT4(5)
    );
\SHIFT_RIGHT3_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEFA"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => D2(0),
      I5 => SHIFT_RIGHT3_carry_i_10_n_0,
      O => \SHIFT_RIGHT3_carry__0_i_5_n_0\
    );
\SHIFT_RIGHT3_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABEFFFFFFFFFFFFF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_11_n_0,
      I1 => D2(15),
      I2 => D2(1),
      I3 => SHIFT_LEFT2(1),
      I4 => D2(0),
      I5 => SHIFT_RIGHT3_carry_i_10_n_0,
      O => \SHIFT_RIGHT3_carry__0_i_6_n_0\
    );
\SHIFT_RIGHT3_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFBFFFFFFFF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_11_n_0,
      I1 => D2(2),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(2),
      I4 => D2(0),
      I5 => SHIFT_RIGHT3_carry_i_12_n_0,
      O => \SHIFT_RIGHT3_carry__0_i_7_n_0\
    );
\SHIFT_RIGHT3_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEBAFFFFFFFFFFFF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_11_n_0,
      I1 => D2(15),
      I2 => D2(1),
      I3 => SHIFT_LEFT2(1),
      I4 => D2(0),
      I5 => SHIFT_RIGHT3_carry_i_10_n_0,
      O => \SHIFT_RIGHT3_carry__0_i_8_n_0\
    );
\SHIFT_RIGHT3_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBFFAFFBABF"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I1 => SHIFT_LEFT2(3),
      I2 => D2(15),
      I3 => D2(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => \SHIFT_RIGHT3_carry__0_i_9_n_0\
    );
\SHIFT_RIGHT3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SHIFT_RIGHT3_carry__0_n_0\,
      CO(3) => \SHIFT_RIGHT3_carry__1_n_0\,
      CO(2 downto 0) => \NLW_SHIFT_RIGHT3_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => SHIFT_RIGHT4(12 downto 9),
      O(3) => \SHIFT_RIGHT3_carry__1_n_4\,
      O(2) => \SHIFT_RIGHT3_carry__1_n_5\,
      O(1) => \SHIFT_RIGHT3_carry__1_n_6\,
      O(0) => \SHIFT_RIGHT3_carry__1_n_7\,
      S(3) => \SHIFT_RIGHT3_carry__1_i_5_n_0\,
      S(2) => \SHIFT_RIGHT3_carry__1_i_6_n_0\,
      S(1) => \SHIFT_RIGHT3_carry__1_i_7_n_0\,
      S(0) => \SHIFT_RIGHT3_carry__1_i_8_n_0\
    );
\SHIFT_RIGHT3_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000404000404"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => D2(0),
      I3 => D2(15),
      I4 => D2(1),
      I5 => SHIFT_LEFT2(1),
      O => SHIFT_RIGHT4(12)
    );
\SHIFT_RIGHT3_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004440400000000"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      I1 => D2(0),
      I2 => D2(2),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(2),
      I5 => SHIFT_RIGHT3_carry_i_12_n_0,
      O => SHIFT_RIGHT4(11)
    );
\SHIFT_RIGHT3_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000040404"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => D2(0),
      I3 => SHIFT_LEFT2(2),
      I4 => D2(15),
      I5 => D2(2),
      O => SHIFT_RIGHT4(10)
    );
\SHIFT_RIGHT3_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000101010"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => D2(0),
      I3 => SHIFT_LEFT2(2),
      I4 => D2(15),
      I5 => D2(2),
      O => SHIFT_RIGHT4(9)
    );
\SHIFT_RIGHT3_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFACFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(1),
      I1 => D2(1),
      I2 => D2(15),
      I3 => D2(0),
      I4 => SHIFT_RIGHT3_carry_i_10_n_0,
      I5 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      O => \SHIFT_RIGHT3_carry__1_i_5_n_0\
    );
\SHIFT_RIGHT3_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDFD5FFFF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_12_n_0,
      I1 => SHIFT_LEFT2(2),
      I2 => D2(15),
      I3 => D2(2),
      I4 => D2(0),
      I5 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      O => \SHIFT_RIGHT3_carry__1_i_6_n_0\
    );
\SHIFT_RIGHT3_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE2FFFF"
    )
        port map (
      I0 => D2(2),
      I1 => D2(15),
      I2 => SHIFT_LEFT2(2),
      I3 => D2(0),
      I4 => SHIFT_RIGHT3_carry_i_12_n_0,
      I5 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      O => \SHIFT_RIGHT3_carry__1_i_7_n_0\
    );
\SHIFT_RIGHT3_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE2FF"
    )
        port map (
      I0 => D2(2),
      I1 => D2(15),
      I2 => SHIFT_LEFT2(2),
      I3 => D2(0),
      I4 => SHIFT_RIGHT3_carry_i_12_n_0,
      I5 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      O => \SHIFT_RIGHT3_carry__1_i_8_n_0\
    );
\SHIFT_RIGHT3_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \SHIFT_RIGHT3_carry__1_n_0\,
      CO(3 downto 0) => \NLW_SHIFT_RIGHT3_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => SHIFT_RIGHT4(15 downto 13),
      O(3) => \SHIFT_RIGHT3_carry__2_n_4\,
      O(2) => \SHIFT_RIGHT3_carry__2_n_5\,
      O(1) => \SHIFT_RIGHT3_carry__2_n_6\,
      O(0) => \SHIFT_RIGHT3_carry__2_n_7\,
      S(3) => \SHIFT_RIGHT3_carry__2_i_4_n_0\,
      S(2) => \SHIFT_RIGHT3_carry__2_i_5_n_0\,
      S(1) => \SHIFT_RIGHT3_carry__2_i_6_n_0\,
      S(0) => \SHIFT_RIGHT3_carry__2_i_7_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080808800"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_10_n_0,
      I1 => D2(0),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(1),
      I4 => D2(15),
      I5 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      O => SHIFT_RIGHT4(15)
    );
\SHIFT_RIGHT3_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400040404000000"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => D2(0),
      I3 => SHIFT_LEFT2(2),
      I4 => D2(15),
      I5 => D2(2),
      O => SHIFT_RIGHT4(14)
    );
\SHIFT_RIGHT3_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000004040"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => D2(0),
      I3 => SHIFT_LEFT2(1),
      I4 => D2(1),
      I5 => D2(15),
      O => SHIFT_RIGHT4(13)
    );
\SHIFT_RIGHT3_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__2_i_8_n_0\,
      I1 => \SHIFT_RIGHT3_carry__2_i_9_n_0\,
      I2 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I3 => SHIFT_RIGHT3_carry_i_12_n_0,
      I4 => D2(0),
      I5 => SHIFT_RIGHT3_carry_i_10_n_0,
      O => \SHIFT_RIGHT3_carry__2_i_4_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABEFFFFFFFFFFFFF"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      I1 => D2(15),
      I2 => D2(1),
      I3 => SHIFT_LEFT2(1),
      I4 => D2(0),
      I5 => SHIFT_RIGHT3_carry_i_10_n_0,
      O => \SHIFT_RIGHT3_carry__2_i_5_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF1DFFFF"
    )
        port map (
      I0 => D2(2),
      I1 => D2(15),
      I2 => SHIFT_LEFT2(2),
      I3 => D2(0),
      I4 => SHIFT_RIGHT3_carry_i_12_n_0,
      I5 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      O => \SHIFT_RIGHT3_carry__2_i_6_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE4FFFFFF"
    )
        port map (
      I0 => D2(15),
      I1 => D2(1),
      I2 => SHIFT_LEFT2(1),
      I3 => D2(0),
      I4 => SHIFT_RIGHT3_carry_i_10_n_0,
      I5 => \SHIFT_RIGHT3_carry__0_i_9_n_0\,
      O => \SHIFT_RIGHT3_carry__2_i_7_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SHIFT_LEFT2(4),
      I1 => D2(15),
      I2 => D2(4),
      O => \SHIFT_RIGHT3_carry__2_i_8_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2(15),
      I2 => D2(3),
      O => \SHIFT_RIGHT3_carry__2_i_9_n_0\
    );
SHIFT_RIGHT3_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000011011"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_10_n_0,
      I1 => D2(0),
      I2 => D2(15),
      I3 => D2(1),
      I4 => SHIFT_LEFT2(1),
      I5 => SHIFT_RIGHT3_carry_i_11_n_0,
      O => SHIFT_RIGHT4(0)
    );
SHIFT_RIGHT3_carry_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SHIFT_LEFT2(2),
      I1 => D2(15),
      I2 => D2(2),
      O => SHIFT_RIGHT3_carry_i_10_n_0
    );
SHIFT_RIGHT3_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFEFFFFAEFEA"
    )
        port map (
      I0 => \ALU_OUT[13]_INST_0_i_8_n_0\,
      I1 => SHIFT_LEFT2(3),
      I2 => D2(15),
      I3 => D2(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => SHIFT_RIGHT3_carry_i_11_n_0
    );
SHIFT_RIGHT3_carry_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SHIFT_LEFT2(1),
      I1 => D2(1),
      I2 => D2(15),
      O => SHIFT_RIGHT3_carry_i_12_n_0
    );
SHIFT_RIGHT3_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000022022"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_10_n_0,
      I1 => D2(0),
      I2 => D2(15),
      I3 => D2(1),
      I4 => SHIFT_LEFT2(1),
      I5 => SHIFT_RIGHT3_carry_i_11_n_0,
      O => SHIFT_RIGHT4(4)
    );
SHIFT_RIGHT3_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002A20000"
    )
        port map (
      I0 => D2(0),
      I1 => D2(2),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(2),
      I4 => SHIFT_RIGHT3_carry_i_12_n_0,
      I5 => SHIFT_RIGHT3_carry_i_11_n_0,
      O => SHIFT_RIGHT4(3)
    );
SHIFT_RIGHT3_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000222"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_12_n_0,
      I1 => D2(0),
      I2 => SHIFT_LEFT2(2),
      I3 => D2(15),
      I4 => D2(2),
      I5 => SHIFT_RIGHT3_carry_i_11_n_0,
      O => SHIFT_RIGHT4(2)
    );
SHIFT_RIGHT3_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000444"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_12_n_0,
      I1 => D2(0),
      I2 => SHIFT_LEFT2(2),
      I3 => D2(15),
      I4 => D2(2),
      I5 => SHIFT_RIGHT3_carry_i_11_n_0,
      O => SHIFT_RIGHT4(1)
    );
SHIFT_RIGHT3_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEFAFFFFFFFF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_11_n_0,
      I1 => SHIFT_LEFT2(1),
      I2 => D2(1),
      I3 => D2(15),
      I4 => D2(0),
      I5 => SHIFT_RIGHT3_carry_i_10_n_0,
      O => SHIFT_RIGHT3_carry_i_6_n_0
    );
SHIFT_RIGHT3_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFBBBFFFFFFFF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_11_n_0,
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => SHIFT_LEFT2(2),
      I3 => D2(15),
      I4 => D2(2),
      I5 => D2(0),
      O => SHIFT_RIGHT3_carry_i_7_n_0
    );
SHIFT_RIGHT3_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEFFFFFFFF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_11_n_0,
      I1 => D2(2),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(2),
      I4 => D2(0),
      I5 => SHIFT_RIGHT3_carry_i_12_n_0,
      O => SHIFT_RIGHT3_carry_i_8_n_0
    );
SHIFT_RIGHT3_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEAEFFFF"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_11_n_0,
      I1 => D2(2),
      I2 => D2(15),
      I3 => SHIFT_LEFT2(2),
      I4 => D2(0),
      I5 => SHIFT_RIGHT3_carry_i_12_n_0,
      O => SHIFT_RIGHT3_carry_i_9_n_0
    );
SMALLER_ZERO_FLAG_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAFEAA"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_1_n_0,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_2_n_0,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_3_n_0,
      I3 => ALU_OPP(1),
      I4 => SMALLER_ZERO_FLAG_INST_0_i_4_n_0,
      I5 => SMALLER_ZERO_FLAG_INST_0_i_5_n_0,
      O => \^immediate_s_reg[1]\
    );
SMALLER_ZERO_FLAG_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => ALU_OPP(1),
      I2 => data1(15),
      I3 => ALU_OPP(0),
      I4 => data0(15),
      O => SMALLER_ZERO_FLAG_INST_0_i_1_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_23_n_0,
      I1 => D2(5),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_24_n_0,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_25_n_0,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_26_n_0,
      I5 => SMALLER_ZERO_FLAG_INST_0_i_27_n_0,
      O => SMALLER_ZERO_FLAG_INST_0_i_10_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5C"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_28_n_0,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_29_n_0,
      I2 => D2(1),
      O => SMALLER_ZERO_FLAG_INST_0_i_11_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_30_n_0,
      I1 => D2(1),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_31_n_0,
      O => SMALLER_ZERO_FLAG_INST_0_i_12_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FFFFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(2),
      I1 => D2(15),
      I2 => D2(2),
      I3 => D1(15),
      I4 => SMALLER_ZERO_FLAG_INST_0_i_32_n_0,
      I5 => SMALLER_ZERO_FLAG_INST_0_i_33_n_0,
      O => SMALLER_ZERO_FLAG_INST_0_i_13_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => SHIFT_LEFT2(12),
      I1 => SHIFT_LEFT2(9),
      O => SMALLER_ZERO_FLAG_INST_0_i_14_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => SHIFT_LEFT2(11),
      I1 => SHIFT_LEFT2(13),
      I2 => SHIFT_LEFT2(7),
      I3 => SHIFT_LEFT2(15),
      O => SMALLER_ZERO_FLAG_INST_0_i_15_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \_inferred__0/i__carry__2_n_0\,
      I1 => D2(15),
      I2 => SHIFT_LEFT2(14),
      I3 => SHIFT_LEFT2(10),
      I4 => SHIFT_LEFT2(8),
      I5 => SHIFT_LEFT2(6),
      O => SMALLER_ZERO_FLAG_INST_0_i_16_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A02020AFAF202F"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_34_n_0,
      I1 => D1(0),
      I2 => SHIFT_RIGHT3_carry_i_10_n_0,
      I3 => D1(4),
      I4 => \ALU_OUT[0]_INST_0_i_11_n_0\,
      I5 => SMALLER_ZERO_FLAG_INST_0_i_35_n_0,
      O => SMALLER_ZERO_FLAG_INST_0_i_17_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4540FFFF757F"
    )
        port map (
      I0 => D1(2),
      I1 => SHIFT_LEFT2(3),
      I2 => D2(15),
      I3 => D2(3),
      I4 => \SHIFT_RIGHT3_carry__2_i_8_n_0\,
      I5 => D1(10),
      O => SMALLER_ZERO_FLAG_INST_0_i_18_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDCCCDCDDDFFFDF"
    )
        port map (
      I0 => D1(6),
      I1 => \SHIFT_RIGHT3_carry__2_i_8_n_0\,
      I2 => D2(3),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(3),
      I5 => D1(14),
      O => SMALLER_ZERO_FLAG_INST_0_i_19_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF5DDDD5555DDDD"
    )
        port map (
      I0 => ALU_OPP(0),
      I1 => D1(15),
      I2 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I3 => \SHIFT_RIGHT3_carry__2_n_5\,
      I4 => D2(15),
      I5 => D1(0),
      O => SMALLER_ZERO_FLAG_INST_0_i_2_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4540FFFF757F"
    )
        port map (
      I0 => D1(1),
      I1 => SHIFT_LEFT2(3),
      I2 => D2(15),
      I3 => D2(3),
      I4 => \SHIFT_RIGHT3_carry__2_i_8_n_0\,
      I5 => D1(9),
      O => SMALLER_ZERO_FLAG_INST_0_i_20_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDCCCDCDDDFFFDF"
    )
        port map (
      I0 => D1(5),
      I1 => \SHIFT_RIGHT3_carry__2_i_8_n_0\,
      I2 => D2(3),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(3),
      I5 => D1(13),
      O => SMALLER_ZERO_FLAG_INST_0_i_21_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303010103F3F101F"
    )
        port map (
      I0 => D1(3),
      I1 => SMALLER_ZERO_FLAG_INST_0_i_36_n_0,
      I2 => SHIFT_RIGHT3_carry_i_10_n_0,
      I3 => D1(7),
      I4 => \ALU_OUT[0]_INST_0_i_11_n_0\,
      I5 => \ALU_OUT[13]_INST_0_i_17_n_0\,
      O => SMALLER_ZERO_FLAG_INST_0_i_22_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(11),
      I1 => D2(10),
      O => SMALLER_ZERO_FLAG_INST_0_i_23_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(9),
      I1 => D2(8),
      O => SMALLER_ZERO_FLAG_INST_0_i_24_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(7),
      I1 => D2(6),
      O => SMALLER_ZERO_FLAG_INST_0_i_25_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(15),
      I1 => D2(14),
      O => SMALLER_ZERO_FLAG_INST_0_i_26_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_27: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(13),
      I1 => D2(12),
      O => SMALLER_ZERO_FLAG_INST_0_i_27_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3022FFFF30220000"
    )
        port map (
      I0 => D1(8),
      I1 => D2(4),
      I2 => D1(0),
      I3 => D2(3),
      I4 => D2(2),
      I5 => CARRY_FLAG_INST_0_i_12_n_0,
      O => SMALLER_ZERO_FLAG_INST_0_i_28_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F7F4F4F4F7F7F7"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_37_n_0,
      I1 => D2(2),
      I2 => D2(4),
      I3 => D1(6),
      I4 => D2(3),
      I5 => D1(14),
      O => SMALLER_ZERO_FLAG_INST_0_i_29_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000222F0000"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_6_n_0,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_7_n_0,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_8_n_0,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_9_n_0,
      I4 => D2(15),
      I5 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      O => SMALLER_ZERO_FLAG_INST_0_i_3_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF00B8B8"
    )
        port map (
      I0 => D1(5),
      I1 => D2(3),
      I2 => D1(13),
      I3 => SMALLER_ZERO_FLAG_INST_0_i_38_n_0,
      I4 => D2(2),
      I5 => D2(4),
      O => SMALLER_ZERO_FLAG_INST_0_i_30_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_39_n_0,
      I1 => D2(2),
      I2 => D1(7),
      I3 => D2(3),
      I4 => D1(15),
      I5 => D2(4),
      O => SMALLER_ZERO_FLAG_INST_0_i_31_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_32: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => D2(4),
      I1 => SHIFT_LEFT2(4),
      I2 => D2(3),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(3),
      O => SMALLER_ZERO_FLAG_INST_0_i_32_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_33: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => SHIFT_RIGHT3_carry_i_12_n_0,
      I1 => SHIFT_LEFT2(13),
      I2 => \_inferred__0/i__carry__2_n_0\,
      I3 => SHIFT_LEFT2(11),
      I4 => SMALLER_ZERO_FLAG_INST_0_i_40_n_0,
      I5 => SMALLER_ZERO_FLAG_INST_0_i_41_n_0,
      O => SMALLER_ZERO_FLAG_INST_0_i_33_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => SHIFT_LEFT2(3),
      I1 => D2(15),
      I2 => D2(3),
      I3 => SHIFT_LEFT2(4),
      I4 => D2(4),
      I5 => D1(8),
      O => SMALLER_ZERO_FLAG_INST_0_i_34_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => D1(12),
      I1 => SHIFT_LEFT2(3),
      I2 => D2(15),
      I3 => D2(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => SMALLER_ZERO_FLAG_INST_0_i_35_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => D1(11),
      I1 => SHIFT_LEFT2(3),
      I2 => D2(15),
      I3 => D2(3),
      I4 => SHIFT_LEFT2(4),
      I5 => D2(4),
      O => SMALLER_ZERO_FLAG_INST_0_i_36_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D1(2),
      I1 => D2(3),
      I2 => D1(10),
      O => SMALLER_ZERO_FLAG_INST_0_i_37_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_38: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D1(1),
      I1 => D2(3),
      I2 => D1(9),
      O => SMALLER_ZERO_FLAG_INST_0_i_38_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_39: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => D1(11),
      I1 => D2(3),
      I2 => D1(3),
      I3 => D2(4),
      O => SMALLER_ZERO_FLAG_INST_0_i_39_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAFB0000"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      I1 => D2(0),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_11_n_0,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_12_n_0,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_13_n_0,
      I5 => ALU_OPP(0),
      O => SMALLER_ZERO_FLAG_INST_0_i_4_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_40: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => SHIFT_LEFT2(8),
      I1 => SHIFT_LEFT2(5),
      I2 => SHIFT_LEFT2(6),
      I3 => SHIFT_LEFT2(7),
      O => SMALLER_ZERO_FLAG_INST_0_i_40_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_41: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => SHIFT_LEFT2(9),
      I1 => SHIFT_LEFT2(12),
      I2 => SHIFT_LEFT2(10),
      I3 => D2(15),
      I4 => SHIFT_LEFT2(15),
      I5 => SHIFT_LEFT2(14),
      O => SMALLER_ZERO_FLAG_INST_0_i_41_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AA0A020800A0A8A"
    )
        port map (
      I0 => ALU_OPP(3),
      I1 => ALU_OPP(0),
      I2 => D1(15),
      I3 => D2(15),
      I4 => ALU_OPP(1),
      I5 => ALU_OPP(2),
      O => SMALLER_ZERO_FLAG_INST_0_i_5_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002AAAAAAAA"
    )
        port map (
      I0 => D2(0),
      I1 => SHIFT_LEFT2(5),
      I2 => SMALLER_ZERO_FLAG_INST_0_i_14_n_0,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_15_n_0,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_16_n_0,
      I5 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      O => SMALLER_ZERO_FLAG_INST_0_i_6_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_17_n_0,
      I1 => SHIFT_RIGHT3_carry_i_12_n_0,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_18_n_0,
      I3 => SHIFT_RIGHT3_carry_i_10_n_0,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_19_n_0,
      O => SMALLER_ZERO_FLAG_INST_0_i_7_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_20_n_0,
      I1 => SHIFT_RIGHT3_carry_i_10_n_0,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_21_n_0,
      I3 => SHIFT_RIGHT3_carry_i_12_n_0,
      I4 => SMALLER_ZERO_FLAG_INST_0_i_22_n_0,
      O => SMALLER_ZERO_FLAG_INST_0_i_8_n_0
    );
SMALLER_ZERO_FLAG_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
        port map (
      I0 => SMALLER_ZERO_FLAG_INST_0_i_10_n_0,
      I1 => SMALLER_ZERO_FLAG_INST_0_i_16_n_0,
      I2 => SMALLER_ZERO_FLAG_INST_0_i_15_n_0,
      I3 => SMALLER_ZERO_FLAG_INST_0_i_14_n_0,
      I4 => SHIFT_LEFT2(5),
      I5 => D2(0),
      O => SMALLER_ZERO_FLAG_INST_0_i_9_n_0
    );
ZERO_FLAG_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^immediate_s_reg[1]\,
      I1 => ZERO_FLAG_INST_0_i_1_n_0,
      I2 => ZERO_FLAG_INST_0_i_2_n_0,
      I3 => ZERO_FLAG_INST_0_i_3_n_0,
      I4 => ZERO_FLAG_INST_0_i_4_n_0,
      I5 => ZERO_FLAG_INST_0_i_5_n_0,
      O => ZERO_FLAG
    );
ZERO_FLAG_INST_0_i_1_comp: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFEFAFAFFFE"
    )
        port map (
      I0 => \^alu_out\(5),
      I1 => \ALU_OUT[4]_INST_0_i_1_n_0\,
      I2 => \^alu_out\(7),
      I3 => \ALU_OUT[6]_INST_0_i_2_n_0\,
      I4 => \ALU_OUT[6]_repN\,
      I5 => \ALU_OUT[6]_repN_1\,
      O => ZERO_FLAG_INST_0_i_1_n_0
    );
ZERO_FLAG_INST_0_i_2_comp: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFEFFFFFEFF"
    )
        port map (
      I0 => \^alu_out\(0),
      I1 => \^alu_out\(2),
      I2 => \^alu_out\(3),
      I3 => \ALU_OUT[1]_INST_0_i_4_n_0\,
      I4 => \ALU_OUT[1]_repN\,
      I5 => \ALU_OUT[1]_repN_1\,
      O => ZERO_FLAG_INST_0_i_2_n_0
    );
ZERO_FLAG_INST_0_i_3_comp: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFFBBFFABFFAA"
    )
        port map (
      I0 => \ALU_OUT[11]_INST_0_i_1_n_0\,
      I1 => \ALU_OUT[11]_INST_0_i_2_n_0\,
      I2 => \ALU_OUT[11]_INST_0_i_3_n_0\,
      I3 => \^alu_out\(10),
      I4 => \ALU_OUT[11]_INST_0_i_4_n_0\,
      I5 => \ALU_OUT[11]_repN\,
      O => ZERO_FLAG_INST_0_i_3_n_0
    );
ZERO_FLAG_INST_0_i_4_comp_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD98DD98DD98DDDD"
    )
        port map (
      I0 => \ALU_OUT[9]_repN\,
      I1 => \ALU_OUT[9]_repN_1\,
      I2 => \ALU_OUT[9]_INST_0_i_3_n_0\,
      I3 => ZERO_FLAG_INST_0_i_6_n_0,
      I4 => \ALU_OUT[8]_INST_0_i_5_n_0\,
      I5 => ZERO_FLAG_INST_0_i_6_n_0_repN,
      O => ZERO_FLAG_INST_0_i_4_n_0
    );
ZERO_FLAG_INST_0_i_5_comp: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFFFFFEFEFFFE"
    )
        port map (
      I0 => \^alu_out\(14),
      I1 => \^alu_out\(12),
      I2 => \^alu_out\(13),
      I3 => CARRY_FLAG_INST_0_i_2_n_0,
      I4 => CARRY_FLAG_repN,
      I5 => CARRY_FLAG_repN_1,
      O => ZERO_FLAG_INST_0_i_5_n_0
    );
ZERO_FLAG_INST_0_i_6_comp: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFA5050FAFAD850"
    )
        port map (
      I0 => ALU_OPP(1),
      I1 => ALU_OPP(0),
      I2 => \ALU_OUT[8]_INST_0_i_4_n_0\,
      I3 => \ALU_OUT[14]_INST_0_i_3_n_0\,
      I4 => \ALU_OUT[8]_INST_0_i_3_n_0\,
      I5 => \ALU_OUT[8]_INST_0_i_6_n_0\,
      O => ZERO_FLAG_INST_0_i_6_n_0
    );
ZERO_FLAG_INST_0_i_6_comp_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => ALU_OPP(1),
      I1 => ALU_OPP(0),
      I2 => \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3\,
      I3 => \ALU_OUT[8]_INST_0_i_6_n_0\,
      O => ZERO_FLAG_INST_0_i_6_n_0_repN
    );
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2 downto 0) => \NLW__inferred__0/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \i__carry_i_1_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SHIFT_LEFT2(4 downto 1),
      S(3) => \i__carry_i_2__0_n_0\,
      S(2) => \i__carry_i_3__0_n_0\,
      S(1) => \i__carry_i_4__0_n_0\,
      S(0) => \i__carry_i_5__0_n_0\
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3) => \_inferred__0/i__carry__0_n_0\,
      CO(2 downto 0) => \NLW__inferred__0/i__carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SHIFT_LEFT2(8 downto 5),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__0_n_0\,
      CO(3) => \_inferred__0/i__carry__1_n_0\,
      CO(2 downto 0) => \NLW__inferred__0/i__carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SHIFT_LEFT2(12 downto 9),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__1_n_0\,
      CO(3) => \_inferred__0/i__carry__2_n_0\,
      CO(2 downto 0) => \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0100",
      O(3) => \NLW__inferred__0/i__carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => SHIFT_LEFT2(15 downto 13),
      S(3) => '1',
      S(2) => \i__carry__2_i_1__0_n_0\,
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
      INIT => X"E"
    )
        port map (
      I0 => D2(15),
      I1 => D2(14),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2(7),
      I1 => D1(7),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(7),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(13),
      I1 => D2(12),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2(6),
      I1 => D1(6),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(6),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(11),
      I1 => D2(10),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2(5),
      I1 => D1(5),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(5),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(9),
      I1 => D2(8),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2(4),
      I1 => D1(4),
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
      I0 => D2(12),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(15),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2(11),
      I1 => D1(11),
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
      I0 => D2(10),
      I1 => D1(10),
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
      I0 => D2(9),
      I1 => D1(9),
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
      I0 => D2(8),
      I1 => D1(8),
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D1(15),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(15),
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
      I0 => D2(15),
      I1 => D1(15),
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
      I0 => D2(14),
      I1 => D1(14),
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2(13),
      I1 => D1(13),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2(12),
      I1 => D1(12),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Operand2_out[0]_repN_alias\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(7),
      I1 => D2(6),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2(3),
      I1 => D1(3),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D2(3),
      I1 => D2(2),
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
      I0 => D2(2),
      I1 => D1(2),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(6),
      I1 => D2(7),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(3),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2(1),
      I1 => D1(1),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => D2(4),
      I1 => D2(5),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(2),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D2(0),
      I1 => D1(0),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(2),
      I1 => D2(3),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D2(1),
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
entity CU_Decoder is
  port (
    Write_Data_Sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    JMP : out STD_LOGIC;
    Is_ALU_OP : out STD_LOGIC;
    JMP_Relative : out STD_LOGIC;
    JMP_DestinationSource : out STD_LOGIC;
    Instruction : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end CU_Decoder;

architecture STRUCTURE of CU_Decoder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Is_ALU_OP_INST_0 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of JMP_INST_0 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Write_Data_Sel[0]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Write_Data_Sel[1]_INST_0\ : label is "soft_lutpair21";
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
JMP_INST_0: unisim.vcomponents.LUT4
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
entity CU_ImmediateManipulator is
  port (
    ManipulatedImmidiate : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RF_WLB : in STD_LOGIC;
    RF_WHB : in STD_LOGIC;
    Reg1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end CU_ImmediateManipulator;

architecture STRUCTURE of CU_ImmediateManipulator is
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
entity CU_JumpController is
  port (
    PC_Next : out STD_LOGIC_VECTOR ( 15 downto 0 );
    PC_Current : in STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_Address : in STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_Relative : in STD_LOGIC
  );
end CU_JumpController;

architecture STRUCTURE of CU_JumpController is
  signal relative_jump_destination : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \relative_jump_destination__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__0_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__1_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \relative_jump_destination__0_carry_n_0\ : STD_LOGIC;
  signal \NLW_relative_jump_destination__0_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_relative_jump_destination__0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_relative_jump_destination__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_relative_jump_destination__0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \relative_jump_destination__0_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \relative_jump_destination__0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \relative_jump_destination__0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \relative_jump_destination__0_carry__2\ : label is 35;
begin
\PC_Next[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(0),
      I1 => JMP_Address(0),
      I2 => JMP_Relative,
      O => PC_Next(0)
    );
\PC_Next[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(10),
      I1 => JMP_Address(10),
      I2 => JMP_Relative,
      O => PC_Next(10)
    );
\PC_Next[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(11),
      I1 => JMP_Address(11),
      I2 => JMP_Relative,
      O => PC_Next(11)
    );
\PC_Next[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(12),
      I1 => JMP_Address(12),
      I2 => JMP_Relative,
      O => PC_Next(12)
    );
\PC_Next[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(13),
      I1 => JMP_Address(13),
      I2 => JMP_Relative,
      O => PC_Next(13)
    );
\PC_Next[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(14),
      I1 => JMP_Address(14),
      I2 => JMP_Relative,
      O => PC_Next(14)
    );
\PC_Next[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(15),
      I1 => JMP_Address(15),
      I2 => JMP_Relative,
      O => PC_Next(15)
    );
\PC_Next[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(1),
      I1 => JMP_Address(1),
      I2 => JMP_Relative,
      O => PC_Next(1)
    );
\PC_Next[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(2),
      I1 => JMP_Address(2),
      I2 => JMP_Relative,
      O => PC_Next(2)
    );
\PC_Next[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(3),
      I1 => JMP_Address(3),
      I2 => JMP_Relative,
      O => PC_Next(3)
    );
\PC_Next[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(4),
      I1 => JMP_Address(4),
      I2 => JMP_Relative,
      O => PC_Next(4)
    );
\PC_Next[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(5),
      I1 => JMP_Address(5),
      I2 => JMP_Relative,
      O => PC_Next(5)
    );
\PC_Next[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(6),
      I1 => JMP_Address(6),
      I2 => JMP_Relative,
      O => PC_Next(6)
    );
\PC_Next[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(7),
      I1 => JMP_Address(7),
      I2 => JMP_Relative,
      O => PC_Next(7)
    );
\PC_Next[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(8),
      I1 => JMP_Address(8),
      I2 => JMP_Relative,
      O => PC_Next(8)
    );
\PC_Next[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => relative_jump_destination(9),
      I1 => JMP_Address(9),
      I2 => JMP_Relative,
      O => PC_Next(9)
    );
\relative_jump_destination__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \relative_jump_destination__0_carry_n_0\,
      CO(2 downto 0) => \NLW_relative_jump_destination__0_carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => \relative_jump_destination__0_carry_i_1_n_0\,
      DI(2) => \relative_jump_destination__0_carry_i_2_n_0\,
      DI(1) => \relative_jump_destination__0_carry_i_3_n_0\,
      DI(0) => \relative_jump_destination__0_carry_i_4_n_0\,
      O(3 downto 0) => relative_jump_destination(3 downto 0),
      S(3) => \relative_jump_destination__0_carry_i_5_n_0\,
      S(2) => \relative_jump_destination__0_carry_i_6_n_0\,
      S(1) => \relative_jump_destination__0_carry_i_7_n_0\,
      S(0) => \relative_jump_destination__0_carry_i_8_n_0\
    );
\relative_jump_destination__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \relative_jump_destination__0_carry_n_0\,
      CO(3) => \relative_jump_destination__0_carry__0_n_0\,
      CO(2 downto 0) => \NLW_relative_jump_destination__0_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \relative_jump_destination__0_carry__0_i_1_n_0\,
      DI(2) => \relative_jump_destination__0_carry__0_i_2_n_0\,
      DI(1) => \relative_jump_destination__0_carry__0_i_3_n_0\,
      DI(0) => \relative_jump_destination__0_carry__0_i_4_n_0\,
      O(3 downto 0) => relative_jump_destination(7 downto 4),
      S(3) => \relative_jump_destination__0_carry__0_i_5_n_0\,
      S(2) => \relative_jump_destination__0_carry__0_i_6_n_0\,
      S(1) => \relative_jump_destination__0_carry__0_i_7_n_0\,
      S(0) => \relative_jump_destination__0_carry__0_i_8_n_0\
    );
\relative_jump_destination__0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(6),
      I1 => PC_Current(6),
      O => \relative_jump_destination__0_carry__0_i_1_n_0\
    );
\relative_jump_destination__0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(5),
      I1 => PC_Current(5),
      O => \relative_jump_destination__0_carry__0_i_2_n_0\
    );
\relative_jump_destination__0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(4),
      I1 => PC_Current(4),
      O => \relative_jump_destination__0_carry__0_i_3_n_0\
    );
\relative_jump_destination__0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(3),
      I1 => PC_Current(3),
      O => \relative_jump_destination__0_carry__0_i_4_n_0\
    );
\relative_jump_destination__0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(6),
      I1 => JMP_Address(6),
      I2 => PC_Current(7),
      I3 => JMP_Address(7),
      O => \relative_jump_destination__0_carry__0_i_5_n_0\
    );
\relative_jump_destination__0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(5),
      I1 => JMP_Address(5),
      I2 => PC_Current(6),
      I3 => JMP_Address(6),
      O => \relative_jump_destination__0_carry__0_i_6_n_0\
    );
\relative_jump_destination__0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(4),
      I1 => JMP_Address(4),
      I2 => PC_Current(5),
      I3 => JMP_Address(5),
      O => \relative_jump_destination__0_carry__0_i_7_n_0\
    );
\relative_jump_destination__0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(3),
      I1 => JMP_Address(3),
      I2 => PC_Current(4),
      I3 => JMP_Address(4),
      O => \relative_jump_destination__0_carry__0_i_8_n_0\
    );
\relative_jump_destination__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \relative_jump_destination__0_carry__0_n_0\,
      CO(3) => \relative_jump_destination__0_carry__1_n_0\,
      CO(2 downto 0) => \NLW_relative_jump_destination__0_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \relative_jump_destination__0_carry__1_i_1_n_0\,
      DI(2) => \relative_jump_destination__0_carry__1_i_2_n_0\,
      DI(1) => \relative_jump_destination__0_carry__1_i_3_n_0\,
      DI(0) => \relative_jump_destination__0_carry__1_i_4_n_0\,
      O(3 downto 0) => relative_jump_destination(11 downto 8),
      S(3) => \relative_jump_destination__0_carry__1_i_5_n_0\,
      S(2) => \relative_jump_destination__0_carry__1_i_6_n_0\,
      S(1) => \relative_jump_destination__0_carry__1_i_7_n_0\,
      S(0) => \relative_jump_destination__0_carry__1_i_8_n_0\
    );
\relative_jump_destination__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(10),
      I1 => PC_Current(10),
      O => \relative_jump_destination__0_carry__1_i_1_n_0\
    );
\relative_jump_destination__0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(9),
      I1 => PC_Current(9),
      O => \relative_jump_destination__0_carry__1_i_2_n_0\
    );
\relative_jump_destination__0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(8),
      I1 => PC_Current(8),
      O => \relative_jump_destination__0_carry__1_i_3_n_0\
    );
\relative_jump_destination__0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(7),
      I1 => PC_Current(7),
      O => \relative_jump_destination__0_carry__1_i_4_n_0\
    );
\relative_jump_destination__0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(10),
      I1 => JMP_Address(10),
      I2 => PC_Current(11),
      I3 => JMP_Address(11),
      O => \relative_jump_destination__0_carry__1_i_5_n_0\
    );
\relative_jump_destination__0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(9),
      I1 => JMP_Address(9),
      I2 => PC_Current(10),
      I3 => JMP_Address(10),
      O => \relative_jump_destination__0_carry__1_i_6_n_0\
    );
\relative_jump_destination__0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(8),
      I1 => JMP_Address(8),
      I2 => PC_Current(9),
      I3 => JMP_Address(9),
      O => \relative_jump_destination__0_carry__1_i_7_n_0\
    );
\relative_jump_destination__0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(7),
      I1 => JMP_Address(7),
      I2 => PC_Current(8),
      I3 => JMP_Address(8),
      O => \relative_jump_destination__0_carry__1_i_8_n_0\
    );
\relative_jump_destination__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \relative_jump_destination__0_carry__1_n_0\,
      CO(3 downto 0) => \NLW_relative_jump_destination__0_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \relative_jump_destination__0_carry__2_i_1_n_0\,
      DI(1) => \relative_jump_destination__0_carry__2_i_2_n_0\,
      DI(0) => \relative_jump_destination__0_carry__2_i_3_n_0\,
      O(3 downto 0) => relative_jump_destination(15 downto 12),
      S(3) => \relative_jump_destination__0_carry__2_i_4_n_0\,
      S(2) => \relative_jump_destination__0_carry__2_i_5_n_0\,
      S(1) => \relative_jump_destination__0_carry__2_i_6_n_0\,
      S(0) => \relative_jump_destination__0_carry__2_i_7_n_0\
    );
\relative_jump_destination__0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(13),
      I1 => PC_Current(13),
      O => \relative_jump_destination__0_carry__2_i_1_n_0\
    );
\relative_jump_destination__0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(12),
      I1 => PC_Current(12),
      O => \relative_jump_destination__0_carry__2_i_2_n_0\
    );
\relative_jump_destination__0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(11),
      I1 => PC_Current(11),
      O => \relative_jump_destination__0_carry__2_i_3_n_0\
    );
\relative_jump_destination__0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(14),
      I1 => JMP_Address(14),
      I2 => PC_Current(15),
      I3 => JMP_Address(15),
      O => \relative_jump_destination__0_carry__2_i_4_n_0\
    );
\relative_jump_destination__0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(13),
      I1 => JMP_Address(13),
      I2 => PC_Current(14),
      I3 => JMP_Address(14),
      O => \relative_jump_destination__0_carry__2_i_5_n_0\
    );
\relative_jump_destination__0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(12),
      I1 => JMP_Address(12),
      I2 => PC_Current(13),
      I3 => JMP_Address(13),
      O => \relative_jump_destination__0_carry__2_i_6_n_0\
    );
\relative_jump_destination__0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(11),
      I1 => JMP_Address(11),
      I2 => PC_Current(12),
      I3 => JMP_Address(12),
      O => \relative_jump_destination__0_carry__2_i_7_n_0\
    );
\relative_jump_destination__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(2),
      I1 => PC_Current(2),
      O => \relative_jump_destination__0_carry_i_1_n_0\
    );
\relative_jump_destination__0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => PC_Current(2),
      I1 => JMP_Address(2),
      O => \relative_jump_destination__0_carry_i_2_n_0\
    );
\relative_jump_destination__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => JMP_Address(0),
      I1 => PC_Current(0),
      O => \relative_jump_destination__0_carry_i_3_n_0\
    );
\relative_jump_destination__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => PC_Current(0),
      I1 => JMP_Address(0),
      O => \relative_jump_destination__0_carry_i_4_n_0\
    );
\relative_jump_destination__0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => PC_Current(2),
      I1 => JMP_Address(2),
      I2 => PC_Current(3),
      I3 => JMP_Address(3),
      O => \relative_jump_destination__0_carry_i_5_n_0\
    );
\relative_jump_destination__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => PC_Current(2),
      I1 => JMP_Address(2),
      I2 => JMP_Address(1),
      I3 => PC_Current(1),
      O => \relative_jump_destination__0_carry_i_6_n_0\
    );
\relative_jump_destination__0_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => PC_Current(0),
      I1 => JMP_Address(0),
      I2 => PC_Current(1),
      I3 => JMP_Address(1),
      O => \relative_jump_destination__0_carry_i_7_n_0\
    );
\relative_jump_destination__0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => JMP_Address(0),
      I1 => PC_Current(0),
      O => \relative_jump_destination__0_carry_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CU_JumpDestinationSelector is
  port (
    JMP_Address : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Register1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_DestinationSelect : in STD_LOGIC
  );
end CU_JumpDestinationSelector;

architecture STRUCTURE of CU_JumpDestinationSelector is
begin
\JMP_Address[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(0),
      I1 => Immediate(0),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(0)
    );
\JMP_Address[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(10),
      I1 => Immediate(10),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(10)
    );
\JMP_Address[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(11),
      I1 => Immediate(11),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(11)
    );
\JMP_Address[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(12),
      I1 => Immediate(12),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(12)
    );
\JMP_Address[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(13),
      I1 => Immediate(13),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(13)
    );
\JMP_Address[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(14),
      I1 => Immediate(14),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(14)
    );
\JMP_Address[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(15),
      I1 => Immediate(15),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(15)
    );
\JMP_Address[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(1),
      I1 => Immediate(1),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(1)
    );
\JMP_Address[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(2),
      I1 => Immediate(2),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(2)
    );
\JMP_Address[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(3),
      I1 => Immediate(3),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(3)
    );
\JMP_Address[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(4),
      I1 => Immediate(4),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(4)
    );
\JMP_Address[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(5),
      I1 => Immediate(5),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(5)
    );
\JMP_Address[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(6),
      I1 => Immediate(6),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(6)
    );
\JMP_Address[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(7),
      I1 => Immediate(7),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(7)
    );
\JMP_Address[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(8),
      I1 => Immediate(8),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(8)
    );
\JMP_Address[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Register1(9),
      I1 => Immediate(9),
      I2 => JMP_DestinationSelect,
      O => JMP_Address(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CU_RAMAddressController is
  port (
    RAM_Address : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Reg2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RAM_Address_Src : in STD_LOGIC;
    MA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Use_MA : in STD_LOGIC
  );
end CU_RAMAddressController;

architecture STRUCTURE of CU_RAMAddressController is
  signal \RAM_Address0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \RAM_Address0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \RAM_Address0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \RAM_Address0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal RAM_Address0_carry_i_5_n_0 : STD_LOGIC;
  signal RAM_Address0_carry_i_6_n_0 : STD_LOGIC;
  signal RAM_Address0_carry_i_7_n_0 : STD_LOGIC;
  signal RAM_Address0_carry_i_8_n_0 : STD_LOGIC;
  signal RAM_Address0_carry_n_0 : STD_LOGIC;
  signal used_address : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_RAM_Address0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_RAM_Address0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
RAM_Address0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => RAM_Address0_carry_n_0,
      CO(2 downto 0) => NLW_RAM_Address0_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => used_address(3 downto 0),
      O(3 downto 0) => RAM_Address(3 downto 0),
      S(3) => RAM_Address0_carry_i_5_n_0,
      S(2) => RAM_Address0_carry_i_6_n_0,
      S(1) => RAM_Address0_carry_i_7_n_0,
      S(0) => RAM_Address0_carry_i_8_n_0
    );
\RAM_Address0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => RAM_Address0_carry_n_0,
      CO(3 downto 0) => \NLW_RAM_Address0_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => used_address(6 downto 4),
      O(3 downto 0) => RAM_Address(7 downto 4),
      S(3) => \RAM_Address0_carry__0_i_4_n_0\,
      S(2) => \RAM_Address0_carry__0_i_5_n_0\,
      S(1) => \RAM_Address0_carry__0_i_6_n_0\,
      S(0) => \RAM_Address0_carry__0_i_7_n_0\
    );
\RAM_Address0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(6),
      I1 => Reg2(6),
      I2 => RAM_Address_Src,
      O => used_address(6)
    );
\RAM_Address0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(5),
      I1 => Reg2(5),
      I2 => RAM_Address_Src,
      O => used_address(5)
    );
\RAM_Address0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(4),
      I1 => Reg2(4),
      I2 => RAM_Address_Src,
      O => used_address(4)
    );
\RAM_Address0_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(7),
      I2 => Immediate(7),
      I3 => MA(7),
      I4 => Use_MA,
      O => \RAM_Address0_carry__0_i_4_n_0\
    );
\RAM_Address0_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(6),
      I2 => Immediate(6),
      I3 => MA(6),
      I4 => Use_MA,
      O => \RAM_Address0_carry__0_i_5_n_0\
    );
\RAM_Address0_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(5),
      I2 => Immediate(5),
      I3 => MA(5),
      I4 => Use_MA,
      O => \RAM_Address0_carry__0_i_6_n_0\
    );
\RAM_Address0_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(4),
      I2 => Immediate(4),
      I3 => MA(4),
      I4 => Use_MA,
      O => \RAM_Address0_carry__0_i_7_n_0\
    );
RAM_Address0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(3),
      I1 => Reg2(3),
      I2 => RAM_Address_Src,
      O => used_address(3)
    );
RAM_Address0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(2),
      I1 => Reg2(2),
      I2 => RAM_Address_Src,
      O => used_address(2)
    );
RAM_Address0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(1),
      I1 => Reg2(1),
      I2 => RAM_Address_Src,
      O => used_address(1)
    );
RAM_Address0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Immediate(0),
      I1 => Reg2(0),
      I2 => RAM_Address_Src,
      O => used_address(0)
    );
RAM_Address0_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(3),
      I2 => Immediate(3),
      I3 => MA(3),
      I4 => Use_MA,
      O => RAM_Address0_carry_i_5_n_0
    );
RAM_Address0_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(2),
      I2 => Immediate(2),
      I3 => MA(2),
      I4 => Use_MA,
      O => RAM_Address0_carry_i_6_n_0
    );
RAM_Address0_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(1),
      I2 => Immediate(1),
      I3 => MA(1),
      I4 => Use_MA,
      O => RAM_Address0_carry_i_7_n_0
    );
RAM_Address0_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => RAM_Address_Src,
      I1 => Reg2(0),
      I2 => Immediate(0),
      I3 => MA(0),
      I4 => Use_MA,
      O => RAM_Address0_carry_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CU_WriteSelector is
  port (
    Write_Data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Manipulated_Immidiate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ALU_Out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RAM_Out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Write_Sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Reg1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \Immediate_out[1]_alias\ : in STD_LOGIC;
    \ALU_OUT[6]_INST_0_i_4_n_0_alias\ : in STD_LOGIC;
    \ALU_OUT[6]_INST_0_i_3_n_0_alias\ : in STD_LOGIC;
    \ALU_OUT[6]_INST_0_i_2_n_0_alias\ : in STD_LOGIC;
    \ALU_OUT[6]_repN_2_alias\ : in STD_LOGIC
  );
end CU_WriteSelector;

architecture STRUCTURE of CU_WriteSelector is
  attribute PHYS_OPT_MODIFIED : string;
  attribute PHYS_OPT_MODIFIED of \Write_Data[6]_INST_0_comp\ : label is "RESTRUCT_OPT";
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
\Write_Data[6]_INST_0_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFE4FFEE00E400"
    )
        port map (
      I0 => \Immediate_out[1]_alias\,
      I1 => \ALU_OUT[6]_INST_0_i_4_n_0_alias\,
      I2 => \ALU_OUT[6]_INST_0_i_3_n_0_alias\,
      I3 => ALU_Out(6),
      I4 => \ALU_OUT[6]_INST_0_i_2_n_0_alias\,
      I5 => \ALU_OUT[6]_repN_2_alias\,
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
entity Decoder is
  port (
    Register1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Register2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteBackRegister : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Use_MA : out STD_LOGIC;
    Immediate : out STD_LOGIC_VECTOR ( 12 downto 0 );
    Instruction : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end Decoder;

architecture STRUCTURE of Decoder is
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
      INIT => X"00000020"
    )
        port map (
      I0 => Instruction(8),
      I1 => Instruction(14),
      I2 => Instruction(15),
      I3 => Instruction(13),
      I4 => Instruction(12),
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
Use_MA_INST_0: unisim.vcomponents.LUT4
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
entity Pipelining_Controller is
  port (
    InstructionForwardConfiguration : out STD_LOGIC_VECTOR ( 4 downto 0 );
    stalled_s_reg_0 : out STD_LOGIC;
    InstructionToExecute : out STD_LOGIC_VECTOR ( 15 downto 0 );
    InstrExec_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    InstrLoad_CLK : in STD_LOGIC;
    ResolveStall : in STD_LOGIC
  );
end Pipelining_Controller;

architecture STRUCTURE of Pipelining_Controller is
  signal exc_alu : STD_LOGIC;
  signal \exc_write__1\ : STD_LOGIC;
  signal exc_write_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal execution_buffer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \execution_forward_reg[0]_srl2_U0_execution_forward_reg_c_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_3_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_5_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[2]_srl2_U0_execution_forward_reg_c_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_3_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_7_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_2_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_3_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_n_0\ : STD_LOGIC;
  signal execution_forward_reg_c_n_0 : STD_LOGIC;
  signal input_forward : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rf_forward_reg_c_n_0 : STD_LOGIC;
  signal rf_read_buffer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rf_read_buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[10]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[11]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[12]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[13]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[14]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[15]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[1]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[2]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[3]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[4]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[5]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[6]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[7]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[8]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[9]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \rf_read_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \rf_read_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal rf_reg_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rf_reg_1_read : STD_LOGIC;
  signal rf_reg_2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rf_reg_2_read : STD_LOGIC;
  signal stalled_s_i_1_n_0 : STD_LOGIC;
  signal \^stalled_s_reg_0\ : STD_LOGIC;
  signal write_back_buffer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \write_back_forward_reg[0]_U0_write_back_forward_reg_c_n_0\ : STD_LOGIC;
  signal \write_back_forward_reg[1]_U0_write_back_forward_reg_c_n_0\ : STD_LOGIC;
  signal \write_back_forward_reg[2]_U0_write_back_forward_reg_c_n_0\ : STD_LOGIC;
  signal \write_back_forward_reg[3]_U0_write_back_forward_reg_c_n_0\ : STD_LOGIC;
  signal \write_back_forward_reg[4]_U0_write_back_forward_reg_c_n_0\ : STD_LOGIC;
  signal write_back_forward_reg_c_n_0 : STD_LOGIC;
  signal \write_back_forward_reg_gate__0_n_0\ : STD_LOGIC;
  signal \write_back_forward_reg_gate__1_n_0\ : STD_LOGIC;
  signal \write_back_forward_reg_gate__2_n_0\ : STD_LOGIC;
  signal \write_back_forward_reg_gate__3_n_0\ : STD_LOGIC;
  signal write_back_forward_reg_gate_n_0 : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \execution_forward_reg[0]_srl2_U0_execution_forward_reg_c\ : label is "main_i/Pipelining_Controller_0/\U0/execution_forward_reg ";
  attribute srl_name : string;
  attribute srl_name of \execution_forward_reg[0]_srl2_U0_execution_forward_reg_c\ : label is "main_i/Pipelining_Controller_0/\U0/execution_forward_reg[0]_srl2_U0_execution_forward_reg_c ";
  attribute srl_bus_name of \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c\ : label is "main_i/Pipelining_Controller_0/\U0/execution_forward_reg ";
  attribute srl_name of \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c\ : label is "main_i/Pipelining_Controller_0/\U0/execution_forward_reg[1]_srl2_U0_execution_forward_reg_c ";
  attribute srl_bus_name of \execution_forward_reg[2]_srl2_U0_execution_forward_reg_c\ : label is "main_i/Pipelining_Controller_0/\U0/execution_forward_reg ";
  attribute srl_name of \execution_forward_reg[2]_srl2_U0_execution_forward_reg_c\ : label is "main_i/Pipelining_Controller_0/\U0/execution_forward_reg[2]_srl2_U0_execution_forward_reg_c ";
  attribute srl_bus_name of \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c\ : label is "main_i/Pipelining_Controller_0/\U0/execution_forward_reg ";
  attribute srl_name of \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c\ : label is "main_i/Pipelining_Controller_0/\U0/execution_forward_reg[3]_srl2_U0_execution_forward_reg_c ";
  attribute srl_bus_name of \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c\ : label is "main_i/Pipelining_Controller_0/\U0/execution_forward_reg ";
  attribute srl_name of \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c\ : label is "main_i/Pipelining_Controller_0/\U0/execution_forward_reg[4]_srl2_U0_execution_forward_reg_c ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rf_read_buffer[0]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rf_read_buffer[10]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rf_read_buffer[11]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rf_read_buffer[12]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rf_read_buffer[13]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rf_read_buffer[14]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \rf_read_buffer[15]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \rf_read_buffer[1]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rf_read_buffer[2]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rf_read_buffer[3]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rf_read_buffer[4]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rf_read_buffer[5]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rf_read_buffer[6]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rf_read_buffer[7]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rf_read_buffer[8]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rf_read_buffer[9]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of write_back_forward_reg_gate : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \write_back_forward_reg_gate__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \write_back_forward_reg_gate__1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \write_back_forward_reg_gate__2\ : label is "soft_lutpair59";
begin
  stalled_s_reg_0 <= \^stalled_s_reg_0\;
\execution_buffer_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(0),
      Q => execution_buffer(0)
    );
\execution_buffer_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(10),
      Q => execution_buffer(10)
    );
\execution_buffer_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(11),
      Q => execution_buffer(11)
    );
\execution_buffer_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(12),
      Q => execution_buffer(12)
    );
\execution_buffer_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(13),
      Q => execution_buffer(13)
    );
\execution_buffer_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(14),
      Q => execution_buffer(14)
    );
\execution_buffer_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(15),
      Q => execution_buffer(15)
    );
\execution_buffer_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer_reg_n_0_[1]\,
      Q => execution_buffer(1)
    );
\execution_buffer_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer_reg_n_0_[2]\,
      Q => execution_buffer(2)
    );
\execution_buffer_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer_reg_n_0_[3]\,
      Q => execution_buffer(3)
    );
\execution_buffer_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => p_0_in(0),
      Q => execution_buffer(4)
    );
\execution_buffer_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => p_0_in(1),
      Q => execution_buffer(5)
    );
\execution_buffer_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => p_0_in(2),
      Q => execution_buffer(6)
    );
\execution_buffer_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => p_0_in(3),
      Q => execution_buffer(7)
    );
\execution_buffer_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(8),
      Q => execution_buffer(8)
    );
\execution_buffer_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(9),
      Q => execution_buffer(9)
    );
\execution_forward_reg[0]_srl2_U0_execution_forward_reg_c\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => InstrExec_CLK,
      D => input_forward(0),
      Q => \execution_forward_reg[0]_srl2_U0_execution_forward_reg_c_n_0\
    );
\execution_forward_reg[0]_srl2_U0_execution_forward_reg_c_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFBFFFFFFFFF"
    )
        port map (
      I0 => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_5_n_0\,
      I1 => rf_reg_1_read,
      I2 => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_3_n_0\,
      I3 => exc_write_reg(3),
      I4 => rf_reg_1(3),
      I5 => \exc_write__1\,
      O => input_forward(0)
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => InstrExec_CLK,
      D => input_forward(1),
      Q => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_n_0\
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80080000"
    )
        port map (
      I0 => rf_reg_1_read,
      I1 => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_3_n_0\,
      I2 => exc_write_reg(3),
      I3 => rf_reg_1(3),
      I4 => \exc_write__1\,
      I5 => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_5_n_0\,
      O => input_forward(1)
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F84"
    )
        port map (
      I0 => rf_read_buffer(13),
      I1 => rf_read_buffer(14),
      I2 => rf_read_buffer(15),
      I3 => rf_read_buffer(12),
      O => rf_reg_1_read
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rf_reg_1(0),
      I1 => exc_write_reg(0),
      I2 => exc_write_reg(2),
      I3 => rf_reg_1(2),
      I4 => exc_write_reg(1),
      I5 => rf_reg_1(1),
      O => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_3_n_0\
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1810F2E208001000"
    )
        port map (
      I0 => rf_read_buffer(14),
      I1 => rf_read_buffer(13),
      I2 => rf_read_buffer(12),
      I3 => p_0_in(3),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(11),
      O => rf_reg_1(3)
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => exc_alu,
      I1 => rf_reg_1(3),
      I2 => rf_reg_1(2),
      I3 => rf_reg_1(0),
      I4 => rf_reg_1(1),
      I5 => rf_reg_1_read,
      O => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_5_n_0\
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1810F2E208001000"
    )
        port map (
      I0 => rf_read_buffer(14),
      I1 => rf_read_buffer(13),
      I2 => rf_read_buffer(12),
      I3 => p_0_in(0),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(8),
      O => rf_reg_1(0)
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1810F2E208001000"
    )
        port map (
      I0 => rf_read_buffer(14),
      I1 => rf_read_buffer(13),
      I2 => rf_read_buffer(12),
      I3 => p_0_in(2),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(10),
      O => rf_reg_1(2)
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1810F2E208001000"
    )
        port map (
      I0 => rf_read_buffer(14),
      I1 => rf_read_buffer(13),
      I2 => rf_read_buffer(12),
      I3 => p_0_in(1),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(9),
      O => rf_reg_1(1)
    );
\execution_forward_reg[2]_srl2_U0_execution_forward_reg_c\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => InstrExec_CLK,
      D => input_forward(2),
      Q => \execution_forward_reg[2]_srl2_U0_execution_forward_reg_c_n_0\
    );
\execution_forward_reg[2]_srl2_U0_execution_forward_reg_c_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFBFFFFFFFFF"
    )
        port map (
      I0 => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_7_n_0\,
      I1 => rf_reg_2_read,
      I2 => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_3_n_0\,
      I3 => exc_write_reg(3),
      I4 => rf_reg_2(3),
      I5 => \exc_write__1\,
      O => input_forward(2)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => InstrExec_CLK,
      D => input_forward(3),
      Q => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_n_0\
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80080000"
    )
        port map (
      I0 => rf_reg_2_read,
      I1 => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_3_n_0\,
      I2 => exc_write_reg(3),
      I3 => rf_reg_2(3),
      I4 => \exc_write__1\,
      I5 => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_7_n_0\,
      O => input_forward(3)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35140004"
    )
        port map (
      I0 => execution_buffer(15),
      I1 => execution_buffer(12),
      I2 => execution_buffer(13),
      I3 => execution_buffer(14),
      I4 => execution_buffer(10),
      O => exc_write_reg(2)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888800333000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => rf_read_buffer(14),
      I2 => \rf_read_buffer_reg_n_0_[2]\,
      I3 => rf_read_buffer(12),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(13),
      O => rf_reg_2(2)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35140004"
    )
        port map (
      I0 => execution_buffer(15),
      I1 => execution_buffer(12),
      I2 => execution_buffer(13),
      I3 => execution_buffer(14),
      I4 => execution_buffer(9),
      O => exc_write_reg(1)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888800333000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => rf_read_buffer(14),
      I2 => \rf_read_buffer_reg_n_0_[1]\,
      I3 => rf_read_buffer(12),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(13),
      O => rf_reg_2(1)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => execution_buffer(14),
      I1 => execution_buffer(12),
      I2 => execution_buffer(15),
      I3 => execution_buffer(13),
      O => exc_alu
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2214"
    )
        port map (
      I0 => rf_read_buffer(14),
      I1 => rf_read_buffer(15),
      I2 => rf_read_buffer(12),
      I3 => rf_read_buffer(13),
      O => rf_reg_2_read
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rf_reg_2(0),
      I1 => exc_write_reg(0),
      I2 => exc_write_reg(2),
      I3 => rf_reg_2(2),
      I4 => exc_write_reg(1),
      I5 => rf_reg_2(1),
      O => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_3_n_0\
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35140004"
    )
        port map (
      I0 => execution_buffer(15),
      I1 => execution_buffer(12),
      I2 => execution_buffer(13),
      I3 => execution_buffer(14),
      I4 => execution_buffer(11),
      O => exc_write_reg(3)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888800333000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => rf_read_buffer(14),
      I2 => \rf_read_buffer_reg_n_0_[3]\,
      I3 => rf_read_buffer(12),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(13),
      O => rf_reg_2(3)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"085E"
    )
        port map (
      I0 => execution_buffer(13),
      I1 => execution_buffer(14),
      I2 => execution_buffer(12),
      I3 => execution_buffer(15),
      O => \exc_write__1\
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => exc_alu,
      I1 => rf_reg_2(3),
      I2 => rf_reg_2(2),
      I3 => rf_reg_2(0),
      I4 => rf_reg_2(1),
      I5 => rf_reg_2_read,
      O => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_7_n_0\
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888800333000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => rf_read_buffer(14),
      I2 => rf_read_buffer(0),
      I3 => rf_read_buffer(12),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(13),
      O => rf_reg_2(0)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A220"
    )
        port map (
      I0 => execution_buffer(8),
      I1 => execution_buffer(15),
      I2 => execution_buffer(14),
      I3 => execution_buffer(13),
      I4 => execution_buffer(12),
      O => exc_write_reg(0)
    );
\execution_forward_reg[4]_srl2_U0_execution_forward_reg_c\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => InstrExec_CLK,
      D => input_forward(4),
      Q => \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_n_0\
    );
\execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000A2"
    )
        port map (
      I0 => rf_read_buffer(13),
      I1 => rf_read_buffer(14),
      I2 => rf_read_buffer(0),
      I3 => rf_read_buffer(15),
      I4 => \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_2_n_0\,
      I5 => \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_3_n_0\,
      O => input_forward(4)
    );
\execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFF70777F"
    )
        port map (
      I0 => execution_buffer(11),
      I1 => execution_buffer(9),
      I2 => execution_buffer(14),
      I3 => execution_buffer(13),
      I4 => execution_buffer(12),
      I5 => execution_buffer(15),
      O => \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_2_n_0\
    );
\execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30003F3C20002A2C"
    )
        port map (
      I0 => execution_buffer(10),
      I1 => execution_buffer(12),
      I2 => execution_buffer(13),
      I3 => execution_buffer(14),
      I4 => execution_buffer(15),
      I5 => execution_buffer(8),
      O => \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_3_n_0\
    );
execution_forward_reg_c: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_forward_reg_c_n_0,
      Q => execution_forward_reg_c_n_0
    );
\output_buffer_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(0),
      Q => InstructionToExecute(0)
    );
\output_buffer_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(10),
      Q => InstructionToExecute(10)
    );
\output_buffer_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(11),
      Q => InstructionToExecute(11)
    );
\output_buffer_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(12),
      Q => InstructionToExecute(12)
    );
\output_buffer_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(13),
      Q => InstructionToExecute(13)
    );
\output_buffer_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(14),
      Q => InstructionToExecute(14)
    );
\output_buffer_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(15),
      Q => InstructionToExecute(15)
    );
\output_buffer_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(1),
      Q => InstructionToExecute(1)
    );
\output_buffer_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(2),
      Q => InstructionToExecute(2)
    );
\output_buffer_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(3),
      Q => InstructionToExecute(3)
    );
\output_buffer_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(4),
      Q => InstructionToExecute(4)
    );
\output_buffer_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(5),
      Q => InstructionToExecute(5)
    );
\output_buffer_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(6),
      Q => InstructionToExecute(6)
    );
\output_buffer_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(7),
      Q => InstructionToExecute(7)
    );
\output_buffer_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(8),
      Q => InstructionToExecute(8)
    );
\output_buffer_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(9),
      Q => InstructionToExecute(9)
    );
\output_forward_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => \write_back_forward_reg_gate__3_n_0\,
      Q => InstructionForwardConfiguration(0)
    );
\output_forward_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => \write_back_forward_reg_gate__2_n_0\,
      Q => InstructionForwardConfiguration(1)
    );
\output_forward_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => \write_back_forward_reg_gate__1_n_0\,
      Q => InstructionForwardConfiguration(2)
    );
\output_forward_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => \write_back_forward_reg_gate__0_n_0\,
      Q => InstructionForwardConfiguration(3)
    );
\output_forward_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_forward_reg_gate_n_0,
      Q => InstructionForwardConfiguration(4)
    );
rf_forward_reg_c: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => '1',
      Q => rf_forward_reg_c_n_0
    );
\rf_read_buffer[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(0),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[0]_i_1_n_0\
    );
\rf_read_buffer[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(10),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[10]_i_1_n_0\
    );
\rf_read_buffer[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(11),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[11]_i_1_n_0\
    );
\rf_read_buffer[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(12),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[12]_i_1_n_0\
    );
\rf_read_buffer[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(13),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[13]_i_1_n_0\
    );
\rf_read_buffer[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(14),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[14]_i_1_n_0\
    );
\rf_read_buffer[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(15),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[15]_i_1_n_0\
    );
\rf_read_buffer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(1),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[1]_i_1_n_0\
    );
\rf_read_buffer[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(2),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[2]_i_1_n_0\
    );
\rf_read_buffer[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(3),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[3]_i_1_n_0\
    );
\rf_read_buffer[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(4),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[4]_i_1_n_0\
    );
\rf_read_buffer[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(5),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[5]_i_1_n_0\
    );
\rf_read_buffer[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(6),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[6]_i_1_n_0\
    );
\rf_read_buffer[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(7),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[7]_i_1_n_0\
    );
\rf_read_buffer[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(8),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[8]_i_1_n_0\
    );
\rf_read_buffer[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(9),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[9]_i_1_n_0\
    );
\rf_read_buffer_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[0]_i_1_n_0\,
      Q => rf_read_buffer(0)
    );
\rf_read_buffer_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[10]_i_1_n_0\,
      Q => rf_read_buffer(10)
    );
\rf_read_buffer_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[11]_i_1_n_0\,
      Q => rf_read_buffer(11)
    );
\rf_read_buffer_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[12]_i_1_n_0\,
      Q => rf_read_buffer(12)
    );
\rf_read_buffer_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[13]_i_1_n_0\,
      Q => rf_read_buffer(13)
    );
\rf_read_buffer_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[14]_i_1_n_0\,
      Q => rf_read_buffer(14)
    );
\rf_read_buffer_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[15]_i_1_n_0\,
      Q => rf_read_buffer(15)
    );
\rf_read_buffer_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[1]_i_1_n_0\,
      Q => \rf_read_buffer_reg_n_0_[1]\
    );
\rf_read_buffer_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[2]_i_1_n_0\,
      Q => \rf_read_buffer_reg_n_0_[2]\
    );
\rf_read_buffer_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[3]_i_1_n_0\,
      Q => \rf_read_buffer_reg_n_0_[3]\
    );
\rf_read_buffer_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[4]_i_1_n_0\,
      Q => p_0_in(0)
    );
\rf_read_buffer_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[5]_i_1_n_0\,
      Q => p_0_in(1)
    );
\rf_read_buffer_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[6]_i_1_n_0\,
      Q => p_0_in(2)
    );
\rf_read_buffer_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[7]_i_1_n_0\,
      Q => p_0_in(3)
    );
\rf_read_buffer_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[8]_i_1_n_0\,
      Q => rf_read_buffer(8)
    );
\rf_read_buffer_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[9]_i_1_n_0\,
      Q => rf_read_buffer(9)
    );
stalled_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002AFFFF002A002A"
    )
        port map (
      I0 => rf_read_buffer(15),
      I1 => rf_read_buffer(12),
      I2 => rf_read_buffer(13),
      I3 => rf_read_buffer(14),
      I4 => ResolveStall,
      I5 => \^stalled_s_reg_0\,
      O => stalled_s_i_1_n_0
    );
stalled_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => stalled_s_i_1_n_0,
      Q => \^stalled_s_reg_0\
    );
\write_back_buffer_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(0),
      Q => write_back_buffer(0)
    );
\write_back_buffer_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(10),
      Q => write_back_buffer(10)
    );
\write_back_buffer_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(11),
      Q => write_back_buffer(11)
    );
\write_back_buffer_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(12),
      Q => write_back_buffer(12)
    );
\write_back_buffer_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(13),
      Q => write_back_buffer(13)
    );
\write_back_buffer_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(14),
      Q => write_back_buffer(14)
    );
\write_back_buffer_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(15),
      Q => write_back_buffer(15)
    );
\write_back_buffer_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(1),
      Q => write_back_buffer(1)
    );
\write_back_buffer_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(2),
      Q => write_back_buffer(2)
    );
\write_back_buffer_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(3),
      Q => write_back_buffer(3)
    );
\write_back_buffer_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(4),
      Q => write_back_buffer(4)
    );
\write_back_buffer_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(5),
      Q => write_back_buffer(5)
    );
\write_back_buffer_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(6),
      Q => write_back_buffer(6)
    );
\write_back_buffer_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(7),
      Q => write_back_buffer(7)
    );
\write_back_buffer_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(8),
      Q => write_back_buffer(8)
    );
\write_back_buffer_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(9),
      Q => write_back_buffer(9)
    );
\write_back_forward_reg[0]_U0_write_back_forward_reg_c\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => '1',
      D => \execution_forward_reg[0]_srl2_U0_execution_forward_reg_c_n_0\,
      Q => \write_back_forward_reg[0]_U0_write_back_forward_reg_c_n_0\,
      R => '0'
    );
\write_back_forward_reg[1]_U0_write_back_forward_reg_c\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => '1',
      D => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_n_0\,
      Q => \write_back_forward_reg[1]_U0_write_back_forward_reg_c_n_0\,
      R => '0'
    );
\write_back_forward_reg[2]_U0_write_back_forward_reg_c\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => '1',
      D => \execution_forward_reg[2]_srl2_U0_execution_forward_reg_c_n_0\,
      Q => \write_back_forward_reg[2]_U0_write_back_forward_reg_c_n_0\,
      R => '0'
    );
\write_back_forward_reg[3]_U0_write_back_forward_reg_c\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => '1',
      D => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_n_0\,
      Q => \write_back_forward_reg[3]_U0_write_back_forward_reg_c_n_0\,
      R => '0'
    );
\write_back_forward_reg[4]_U0_write_back_forward_reg_c\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => '1',
      D => \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_n_0\,
      Q => \write_back_forward_reg[4]_U0_write_back_forward_reg_c_n_0\,
      R => '0'
    );
write_back_forward_reg_c: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_forward_reg_c_n_0,
      Q => write_back_forward_reg_c_n_0
    );
write_back_forward_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_back_forward_reg[4]_U0_write_back_forward_reg_c_n_0\,
      I1 => write_back_forward_reg_c_n_0,
      O => write_back_forward_reg_gate_n_0
    );
\write_back_forward_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_back_forward_reg[3]_U0_write_back_forward_reg_c_n_0\,
      I1 => write_back_forward_reg_c_n_0,
      O => \write_back_forward_reg_gate__0_n_0\
    );
\write_back_forward_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_back_forward_reg[2]_U0_write_back_forward_reg_c_n_0\,
      I1 => write_back_forward_reg_c_n_0,
      O => \write_back_forward_reg_gate__1_n_0\
    );
\write_back_forward_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_back_forward_reg[1]_U0_write_back_forward_reg_c_n_0\,
      I1 => write_back_forward_reg_c_n_0,
      O => \write_back_forward_reg_gate__2_n_0\
    );
\write_back_forward_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_back_forward_reg[0]_U0_write_back_forward_reg_c_n_0\,
      I1 => write_back_forward_reg_c_n_0,
      O => \write_back_forward_reg_gate__3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Pipelining_ExecutionStage is
  port (
    Operand1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Operand2_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    MA_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    WriteAddress_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WHB_out : out STD_LOGIC;
    WLB_out : out STD_LOGIC;
    WriteDataSel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RAM_Src_out : out STD_LOGIC;
    RAM_Write_out : out STD_LOGIC;
    Use_MA_out : out STD_LOGIC;
    JMP_out : out STD_LOGIC;
    JMP_Conditional_out : out STD_LOGIC;
    JMP_Relative_out : out STD_LOGIC;
    JMP_DestinationSelect_out : out STD_LOGIC;
    JMP_Condition_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IS_ALU_OP_out : out STD_LOGIC;
    Operand1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    InstrLoad_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Operand2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WriteAddress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WHB : in STD_LOGIC;
    WLB : in STD_LOGIC;
    WriteDataSel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RAM_Src : in STD_LOGIC;
    RAM_Write : in STD_LOGIC;
    Use_MA : in STD_LOGIC;
    JMP : in STD_LOGIC;
    JMP_Conditional : in STD_LOGIC;
    JMP_Relative : in STD_LOGIC;
    JMP_DestinationSelect : in STD_LOGIC;
    JMP_Condition : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Is_ALU_OP : in STD_LOGIC;
    \Operand2_out[0]_repN_alias\ : out STD_LOGIC
  );
end Pipelining_ExecutionStage;

architecture STRUCTURE of Pipelining_ExecutionStage is
  signal \Operand2_out[0]_repN\ : STD_LOGIC;
  attribute PHYS_OPT_MODIFIED : string;
  attribute PHYS_OPT_MODIFIED of \operand2_s_reg[0]\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_SKIPPED : string;
  attribute PHYS_OPT_SKIPPED of \operand2_s_reg[0]\ : label is "CRITICAL_CELL_OPT";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \operand2_s_reg[0]_replica\ : label is "operand2_s_reg[0]";
  attribute PHYS_OPT_MODIFIED of \operand2_s_reg[0]_replica\ : label is "CRITICAL_CELL_OPT";
begin
  \Operand2_out[0]_repN_alias\ <= \Operand2_out[0]_repN\;
\immediate_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(0),
      Q => Immediate_out(0)
    );
\immediate_s_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(10),
      Q => Immediate_out(10)
    );
\immediate_s_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(11),
      Q => Immediate_out(11)
    );
\immediate_s_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(12),
      Q => Immediate_out(12)
    );
\immediate_s_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(13),
      Q => Immediate_out(13)
    );
\immediate_s_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(14),
      Q => Immediate_out(14)
    );
\immediate_s_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(15),
      Q => Immediate_out(15)
    );
\immediate_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(1),
      Q => Immediate_out(1)
    );
\immediate_s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(2),
      Q => Immediate_out(2)
    );
\immediate_s_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(3),
      Q => Immediate_out(3)
    );
\immediate_s_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(4),
      Q => Immediate_out(4)
    );
\immediate_s_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(5),
      Q => Immediate_out(5)
    );
\immediate_s_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(6),
      Q => Immediate_out(6)
    );
\immediate_s_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(7),
      Q => Immediate_out(7)
    );
\immediate_s_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(8),
      Q => Immediate_out(8)
    );
\immediate_s_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Immediate(9),
      Q => Immediate_out(9)
    );
is_alu_op_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Is_ALU_OP,
      Q => IS_ALU_OP_out
    );
\jmp_condition_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP_Condition(0),
      Q => JMP_Condition_out(0)
    );
\jmp_condition_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP_Condition(1),
      Q => JMP_Condition_out(1)
    );
\jmp_condition_s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP_Condition(2),
      Q => JMP_Condition_out(2)
    );
jmp_conditional_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP_Conditional,
      Q => JMP_Conditional_out
    );
jmp_destination_sel_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP_DestinationSelect,
      Q => JMP_DestinationSelect_out
    );
jmp_relative_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP_Relative,
      Q => JMP_Relative_out
    );
jmp_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP,
      Q => JMP_out
    );
\ma_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(0),
      Q => MA_out(0)
    );
\ma_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(1),
      Q => MA_out(1)
    );
\ma_s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(2),
      Q => MA_out(2)
    );
\ma_s_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(3),
      Q => MA_out(3)
    );
\ma_s_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(4),
      Q => MA_out(4)
    );
\ma_s_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(5),
      Q => MA_out(5)
    );
\ma_s_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(6),
      Q => MA_out(6)
    );
\ma_s_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => MA(7),
      Q => MA_out(7)
    );
\operand1_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(0),
      Q => Operand1_out(0)
    );
\operand1_s_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(10),
      Q => Operand1_out(10)
    );
\operand1_s_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(11),
      Q => Operand1_out(11)
    );
\operand1_s_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(12),
      Q => Operand1_out(12)
    );
\operand1_s_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(13),
      Q => Operand1_out(13)
    );
\operand1_s_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(14),
      Q => Operand1_out(14)
    );
\operand1_s_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(15),
      Q => Operand1_out(15)
    );
\operand1_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(1),
      Q => Operand1_out(1)
    );
\operand1_s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(2),
      Q => Operand1_out(2)
    );
\operand1_s_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(3),
      Q => Operand1_out(3)
    );
\operand1_s_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(4),
      Q => Operand1_out(4)
    );
\operand1_s_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(5),
      Q => Operand1_out(5)
    );
\operand1_s_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(6),
      Q => Operand1_out(6)
    );
\operand1_s_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(7),
      Q => Operand1_out(7)
    );
\operand1_s_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(8),
      Q => Operand1_out(8)
    );
\operand1_s_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand1(9),
      Q => Operand1_out(9)
    );
\operand2_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(0),
      Q => Operand2_out(0)
    );
\operand2_s_reg[0]_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(0),
      Q => \Operand2_out[0]_repN\
    );
\operand2_s_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(10),
      Q => Operand2_out(10)
    );
\operand2_s_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(11),
      Q => Operand2_out(11)
    );
\operand2_s_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(12),
      Q => Operand2_out(12)
    );
\operand2_s_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(13),
      Q => Operand2_out(13)
    );
\operand2_s_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(14),
      Q => Operand2_out(14)
    );
\operand2_s_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(15),
      Q => Operand2_out(15)
    );
\operand2_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(1),
      Q => Operand2_out(1)
    );
\operand2_s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(2),
      Q => Operand2_out(2)
    );
\operand2_s_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(3),
      Q => Operand2_out(3)
    );
\operand2_s_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(4),
      Q => Operand2_out(4)
    );
\operand2_s_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(5),
      Q => Operand2_out(5)
    );
\operand2_s_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(6),
      Q => Operand2_out(6)
    );
\operand2_s_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(7),
      Q => Operand2_out(7)
    );
\operand2_s_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(8),
      Q => Operand2_out(8)
    );
\operand2_s_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Operand2(9),
      Q => Operand2_out(9)
    );
ram_src_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => RAM_Src,
      Q => RAM_Src_out
    );
ram_write_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => RAM_Write,
      Q => RAM_Write_out
    );
use_ma_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Use_MA,
      Q => Use_MA_out
    );
whb_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WHB,
      Q => WHB_out
    );
wlb_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WLB,
      Q => WLB_out
    );
\write_address_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(0),
      Q => WriteAddress_out(0)
    );
\write_address_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(1),
      Q => WriteAddress_out(1)
    );
\write_address_s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(2),
      Q => WriteAddress_out(2)
    );
\write_address_s_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(3),
      Q => WriteAddress_out(3)
    );
\write_data_select_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteDataSel(0),
      Q => WriteDataSel_out(0)
    );
\write_data_select_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteDataSel(1),
      Q => WriteDataSel_out(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Pipelining_Forwarder is
  port (
    ForwardedOperand1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ForwardedOperand2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ForwardedMA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CurrentOperand1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ForwardingConfiguration : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ExecutionWriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ExecutionFlags : in STD_LOGIC_VECTOR ( 5 downto 0 );
    CurrentOperand2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentMA : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end Pipelining_Forwarder;

architecture STRUCTURE of Pipelining_Forwarder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ForwardedMA[0]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \ForwardedMA[1]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \ForwardedMA[2]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \ForwardedMA[3]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \ForwardedMA[4]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \ForwardedMA[5]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \ForwardedMA[6]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \ForwardedMA[7]_INST_0\ : label is "soft_lutpair69";
  attribute PHYS_OPT_MODIFIED : string;
  attribute PHYS_OPT_MODIFIED of \ForwardedOperand2[1]_INST_0\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ForwardedOperand2[3]_INST_0\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \ForwardedOperand2[6]_INST_0\ : label is "RESTRUCT_OPT";
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
\ForwardedOperand1[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand1(10),
      I1 => ForwardingConfiguration(1),
      I2 => ForwardingConfiguration(0),
      I3 => ExecutionWriteData(10),
      O => ForwardedOperand1(10)
    );
\ForwardedOperand1[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand1(11),
      I1 => ForwardingConfiguration(1),
      I2 => ForwardingConfiguration(0),
      I3 => ExecutionWriteData(11),
      O => ForwardedOperand1(11)
    );
\ForwardedOperand1[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand1(12),
      I1 => ForwardingConfiguration(1),
      I2 => ForwardingConfiguration(0),
      I3 => ExecutionWriteData(12),
      O => ForwardedOperand1(12)
    );
\ForwardedOperand1[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand1(13),
      I1 => ForwardingConfiguration(1),
      I2 => ForwardingConfiguration(0),
      I3 => ExecutionWriteData(13),
      O => ForwardedOperand1(13)
    );
\ForwardedOperand1[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand1(14),
      I1 => ForwardingConfiguration(1),
      I2 => ForwardingConfiguration(0),
      I3 => ExecutionWriteData(14),
      O => ForwardedOperand1(14)
    );
\ForwardedOperand1[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand1(15),
      I1 => ForwardingConfiguration(1),
      I2 => ForwardingConfiguration(0),
      I3 => ExecutionWriteData(15),
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
\ForwardedOperand1[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand1(5),
      I1 => ForwardingConfiguration(1),
      I2 => ForwardingConfiguration(0),
      I3 => ExecutionWriteData(5),
      O => ForwardedOperand1(5)
    );
\ForwardedOperand1[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand1(6),
      I1 => ExecutionFlags(5),
      I2 => ForwardingConfiguration(1),
      I3 => ForwardingConfiguration(0),
      I4 => ExecutionWriteData(6),
      O => ForwardedOperand1(6)
    );
\ForwardedOperand1[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand1(7),
      I1 => ForwardingConfiguration(1),
      I2 => ForwardingConfiguration(0),
      I3 => ExecutionWriteData(7),
      O => ForwardedOperand1(7)
    );
\ForwardedOperand1[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand1(8),
      I1 => ForwardingConfiguration(1),
      I2 => ForwardingConfiguration(0),
      I3 => ExecutionWriteData(8),
      O => ForwardedOperand1(8)
    );
\ForwardedOperand1[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand1(9),
      I1 => ForwardingConfiguration(1),
      I2 => ForwardingConfiguration(0),
      I3 => ExecutionWriteData(9),
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
\ForwardedOperand2[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand2(10),
      I1 => ForwardingConfiguration(3),
      I2 => ForwardingConfiguration(2),
      I3 => ExecutionWriteData(10),
      O => ForwardedOperand2(10)
    );
\ForwardedOperand2[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand2(11),
      I1 => ForwardingConfiguration(3),
      I2 => ForwardingConfiguration(2),
      I3 => ExecutionWriteData(11),
      O => ForwardedOperand2(11)
    );
\ForwardedOperand2[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand2(12),
      I1 => ForwardingConfiguration(3),
      I2 => ForwardingConfiguration(2),
      I3 => ExecutionWriteData(12),
      O => ForwardedOperand2(12)
    );
\ForwardedOperand2[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand2(13),
      I1 => ForwardingConfiguration(3),
      I2 => ForwardingConfiguration(2),
      I3 => ExecutionWriteData(13),
      O => ForwardedOperand2(13)
    );
\ForwardedOperand2[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand2(14),
      I1 => ForwardingConfiguration(3),
      I2 => ForwardingConfiguration(2),
      I3 => ExecutionWriteData(14),
      O => ForwardedOperand2(14)
    );
\ForwardedOperand2[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand2(15),
      I1 => ForwardingConfiguration(3),
      I2 => ForwardingConfiguration(2),
      I3 => ExecutionWriteData(15),
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
\ForwardedOperand2[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand2(5),
      I1 => ForwardingConfiguration(3),
      I2 => ForwardingConfiguration(2),
      I3 => ExecutionWriteData(5),
      O => ForwardedOperand2(5)
    );
\ForwardedOperand2[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACA0A"
    )
        port map (
      I0 => CurrentOperand2(6),
      I1 => ExecutionFlags(5),
      I2 => ForwardingConfiguration(3),
      I3 => ForwardingConfiguration(2),
      I4 => ExecutionWriteData(6),
      O => ForwardedOperand2(6)
    );
\ForwardedOperand2[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand2(7),
      I1 => ForwardingConfiguration(3),
      I2 => ForwardingConfiguration(2),
      I3 => ExecutionWriteData(7),
      O => ForwardedOperand2(7)
    );
\ForwardedOperand2[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand2(8),
      I1 => ForwardingConfiguration(3),
      I2 => ForwardingConfiguration(2),
      I3 => ExecutionWriteData(8),
      O => ForwardedOperand2(8)
    );
\ForwardedOperand2[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E22"
    )
        port map (
      I0 => CurrentOperand2(9),
      I1 => ForwardingConfiguration(3),
      I2 => ForwardingConfiguration(2),
      I3 => ExecutionWriteData(9),
      O => ForwardedOperand2(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Pipelining_WriteBackStage is
  port (
    WriteAddress_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteData_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Flags_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    RF_WE_out : out STD_LOGIC;
    Is_ALU_OP_out : out STD_LOGIC;
    JMP_out : out STD_LOGIC;
    WriteAddress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    InstrLoad_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    WriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Flags : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Is_ALU_OP : in STD_LOGIC;
    JMP : in STD_LOGIC;
    WHB : in STD_LOGIC;
    WLB : in STD_LOGIC
  );
end Pipelining_WriteBackStage;

architecture STRUCTURE of Pipelining_WriteBackStage is
  signal rf_we_s_i_1_n_0 : STD_LOGIC;
begin
\flags_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(0),
      Q => Flags_out(0)
    );
\flags_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(1),
      Q => Flags_out(1)
    );
\flags_s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(2),
      Q => Flags_out(2)
    );
\flags_s_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(3),
      Q => Flags_out(3)
    );
\flags_s_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(4),
      Q => Flags_out(4)
    );
\flags_s_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(5),
      Q => Flags_out(5)
    );
is_alu_op_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Is_ALU_OP,
      Q => Is_ALU_OP_out
    );
jmp_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP,
      Q => JMP_out
    );
rf_we_s_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => WHB,
      I1 => WLB,
      O => rf_we_s_i_1_n_0
    );
rf_we_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_we_s_i_1_n_0,
      Q => RF_WE_out
    );
\write_address_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(0),
      Q => WriteAddress_out(0)
    );
\write_address_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(1),
      Q => WriteAddress_out(1)
    );
\write_address_s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(2),
      Q => WriteAddress_out(2)
    );
\write_address_s_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(3),
      Q => WriteAddress_out(3)
    );
\write_data_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(0),
      Q => WriteData_out(0)
    );
\write_data_s_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(10),
      Q => WriteData_out(10)
    );
\write_data_s_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(11),
      Q => WriteData_out(11)
    );
\write_data_s_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(12),
      Q => WriteData_out(12)
    );
\write_data_s_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(13),
      Q => WriteData_out(13)
    );
\write_data_s_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(14),
      Q => WriteData_out(14)
    );
\write_data_s_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(15),
      Q => WriteData_out(15)
    );
\write_data_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(1),
      Q => WriteData_out(1)
    );
\write_data_s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(2),
      Q => WriteData_out(2)
    );
\write_data_s_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(3),
      Q => WriteData_out(3)
    );
\write_data_s_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(4),
      Q => WriteData_out(4)
    );
\write_data_s_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(5),
      Q => WriteData_out(5)
    );
\write_data_s_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(6),
      Q => WriteData_out(6)
    );
\write_data_s_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(7),
      Q => WriteData_out(7)
    );
\write_data_s_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(8),
      Q => WriteData_out(8)
    );
\write_data_s_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(9),
      Q => WriteData_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ProgramCounter is
  port (
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP : in STD_LOGIC;
    InstrExec_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Stalled : in STD_LOGIC
  );
end ProgramCounter;

architecture STRUCTURE of ProgramCounter is
  signal \^dout\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \InstrAddr[11]_i_2_n_0\ : STD_LOGIC;
  signal \InstrAddr[11]_i_3_n_0\ : STD_LOGIC;
  signal \InstrAddr[11]_i_4_n_0\ : STD_LOGIC;
  signal \InstrAddr[11]_i_5_n_0\ : STD_LOGIC;
  signal \InstrAddr[15]_i_1_n_0\ : STD_LOGIC;
  signal \InstrAddr[15]_i_3_n_0\ : STD_LOGIC;
  signal \InstrAddr[15]_i_4_n_0\ : STD_LOGIC;
  signal \InstrAddr[15]_i_5_n_0\ : STD_LOGIC;
  signal \InstrAddr[15]_i_6_n_0\ : STD_LOGIC;
  signal \InstrAddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \InstrAddr[3]_i_3_n_0\ : STD_LOGIC;
  signal \InstrAddr[3]_i_4_n_0\ : STD_LOGIC;
  signal \InstrAddr[3]_i_5_n_0\ : STD_LOGIC;
  signal \InstrAddr[3]_i_6_n_0\ : STD_LOGIC;
  signal \InstrAddr[7]_i_2_n_0\ : STD_LOGIC;
  signal \InstrAddr[7]_i_3_n_0\ : STD_LOGIC;
  signal \InstrAddr[7]_i_4_n_0\ : STD_LOGIC;
  signal \InstrAddr[7]_i_5_n_0\ : STD_LOGIC;
  signal \InstrAddr_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \InstrAddr_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \InstrAddr_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \InstrAddr_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \InstrAddr_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \InstrAddr_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \InstrAddr_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \InstrAddr_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \InstrAddr_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \InstrAddr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \InstrAddr_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \InstrAddr_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \InstrAddr_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \InstrAddr_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \InstrAddr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \InstrAddr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \InstrAddr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \InstrAddr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \InstrAddr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_InstrAddr_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_InstrAddr_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_InstrAddr_reg[3]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_InstrAddr_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \InstrAddr_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \InstrAddr_reg[15]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \InstrAddr_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \InstrAddr_reg[7]_i_1\ : label is 11;
begin
  Dout(15 downto 0) <= \^dout\(15 downto 0);
\InstrAddr[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(11),
      I1 => JMP,
      I2 => \^dout\(11),
      O => \InstrAddr[11]_i_2_n_0\
    );
\InstrAddr[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(10),
      I1 => JMP,
      I2 => \^dout\(10),
      O => \InstrAddr[11]_i_3_n_0\
    );
\InstrAddr[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(9),
      I1 => JMP,
      I2 => \^dout\(9),
      O => \InstrAddr[11]_i_4_n_0\
    );
\InstrAddr[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(8),
      I1 => JMP,
      I2 => \^dout\(8),
      O => \InstrAddr[11]_i_5_n_0\
    );
\InstrAddr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => JMP,
      I1 => Stalled,
      O => \InstrAddr[15]_i_1_n_0\
    );
\InstrAddr[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(15),
      I1 => JMP,
      I2 => \^dout\(15),
      O => \InstrAddr[15]_i_3_n_0\
    );
\InstrAddr[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(14),
      I1 => JMP,
      I2 => \^dout\(14),
      O => \InstrAddr[15]_i_4_n_0\
    );
\InstrAddr[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(13),
      I1 => JMP,
      I2 => \^dout\(13),
      O => \InstrAddr[15]_i_5_n_0\
    );
\InstrAddr[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(12),
      I1 => JMP,
      I2 => \^dout\(12),
      O => \InstrAddr[15]_i_6_n_0\
    );
\InstrAddr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(0),
      I1 => JMP,
      I2 => \^dout\(0),
      O => \InstrAddr[3]_i_2_n_0\
    );
\InstrAddr[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(3),
      I1 => JMP,
      I2 => \^dout\(3),
      O => \InstrAddr[3]_i_3_n_0\
    );
\InstrAddr[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(2),
      I1 => JMP,
      I2 => \^dout\(2),
      O => \InstrAddr[3]_i_4_n_0\
    );
\InstrAddr[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(1),
      I1 => JMP,
      I2 => \^dout\(1),
      O => \InstrAddr[3]_i_5_n_0\
    );
\InstrAddr[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^dout\(0),
      I1 => Din(0),
      I2 => JMP,
      O => \InstrAddr[3]_i_6_n_0\
    );
\InstrAddr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(7),
      I1 => JMP,
      I2 => \^dout\(7),
      O => \InstrAddr[7]_i_2_n_0\
    );
\InstrAddr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(6),
      I1 => JMP,
      I2 => \^dout\(6),
      O => \InstrAddr[7]_i_3_n_0\
    );
\InstrAddr[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(5),
      I1 => JMP,
      I2 => \^dout\(5),
      O => \InstrAddr[7]_i_4_n_0\
    );
\InstrAddr[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din(4),
      I1 => JMP,
      I2 => \^dout\(4),
      O => \InstrAddr[7]_i_5_n_0\
    );
\InstrAddr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[3]_i_1_n_7\,
      Q => \^dout\(0)
    );
\InstrAddr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[11]_i_1_n_5\,
      Q => \^dout\(10)
    );
\InstrAddr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[11]_i_1_n_4\,
      Q => \^dout\(11)
    );
\InstrAddr_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \InstrAddr_reg[7]_i_1_n_0\,
      CO(3) => \InstrAddr_reg[11]_i_1_n_0\,
      CO(2 downto 0) => \NLW_InstrAddr_reg[11]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \InstrAddr_reg[11]_i_1_n_4\,
      O(2) => \InstrAddr_reg[11]_i_1_n_5\,
      O(1) => \InstrAddr_reg[11]_i_1_n_6\,
      O(0) => \InstrAddr_reg[11]_i_1_n_7\,
      S(3) => \InstrAddr[11]_i_2_n_0\,
      S(2) => \InstrAddr[11]_i_3_n_0\,
      S(1) => \InstrAddr[11]_i_4_n_0\,
      S(0) => \InstrAddr[11]_i_5_n_0\
    );
\InstrAddr_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[15]_i_2_n_7\,
      Q => \^dout\(12)
    );
\InstrAddr_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[15]_i_2_n_6\,
      Q => \^dout\(13)
    );
\InstrAddr_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[15]_i_2_n_5\,
      Q => \^dout\(14)
    );
\InstrAddr_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[15]_i_2_n_4\,
      Q => \^dout\(15)
    );
\InstrAddr_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \InstrAddr_reg[11]_i_1_n_0\,
      CO(3 downto 0) => \NLW_InstrAddr_reg[15]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \InstrAddr_reg[15]_i_2_n_4\,
      O(2) => \InstrAddr_reg[15]_i_2_n_5\,
      O(1) => \InstrAddr_reg[15]_i_2_n_6\,
      O(0) => \InstrAddr_reg[15]_i_2_n_7\,
      S(3) => \InstrAddr[15]_i_3_n_0\,
      S(2) => \InstrAddr[15]_i_4_n_0\,
      S(1) => \InstrAddr[15]_i_5_n_0\,
      S(0) => \InstrAddr[15]_i_6_n_0\
    );
\InstrAddr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[3]_i_1_n_6\,
      Q => \^dout\(1)
    );
\InstrAddr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[3]_i_1_n_5\,
      Q => \^dout\(2)
    );
\InstrAddr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[3]_i_1_n_4\,
      Q => \^dout\(3)
    );
\InstrAddr_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \InstrAddr_reg[3]_i_1_n_0\,
      CO(2 downto 0) => \NLW_InstrAddr_reg[3]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \InstrAddr[3]_i_2_n_0\,
      O(3) => \InstrAddr_reg[3]_i_1_n_4\,
      O(2) => \InstrAddr_reg[3]_i_1_n_5\,
      O(1) => \InstrAddr_reg[3]_i_1_n_6\,
      O(0) => \InstrAddr_reg[3]_i_1_n_7\,
      S(3) => \InstrAddr[3]_i_3_n_0\,
      S(2) => \InstrAddr[3]_i_4_n_0\,
      S(1) => \InstrAddr[3]_i_5_n_0\,
      S(0) => \InstrAddr[3]_i_6_n_0\
    );
\InstrAddr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[7]_i_1_n_7\,
      Q => \^dout\(4)
    );
\InstrAddr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[7]_i_1_n_6\,
      Q => \^dout\(5)
    );
\InstrAddr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[7]_i_1_n_5\,
      Q => \^dout\(6)
    );
\InstrAddr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[7]_i_1_n_4\,
      Q => \^dout\(7)
    );
\InstrAddr_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \InstrAddr_reg[3]_i_1_n_0\,
      CO(3) => \InstrAddr_reg[7]_i_1_n_0\,
      CO(2 downto 0) => \NLW_InstrAddr_reg[7]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \InstrAddr_reg[7]_i_1_n_4\,
      O(2) => \InstrAddr_reg[7]_i_1_n_5\,
      O(1) => \InstrAddr_reg[7]_i_1_n_6\,
      O(0) => \InstrAddr_reg[7]_i_1_n_7\,
      S(3) => \InstrAddr[7]_i_2_n_0\,
      S(2) => \InstrAddr[7]_i_3_n_0\,
      S(1) => \InstrAddr[7]_i_4_n_0\,
      S(0) => \InstrAddr[7]_i_5_n_0\
    );
\InstrAddr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[11]_i_1_n_7\,
      Q => \^dout\(8)
    );
\InstrAddr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => \InstrAddr[15]_i_1_n_0\,
      CLR => Reset,
      D => \InstrAddr_reg[11]_i_1_n_6\,
      Q => \^dout\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RAM_Placeholder is
  port (
    DataOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    DataIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WE : in STD_LOGIC;
    Address : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end RAM_Placeholder;

architecture STRUCTURE of RAM_Placeholder is
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_0_0 : label is 4096;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_0_0 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_0_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of s_memContents_reg_0_255_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of s_memContents_reg_0_255_0_0 : label is 255;
  attribute ram_offset : integer;
  attribute ram_offset of s_memContents_reg_0_255_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of s_memContents_reg_0_255_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of s_memContents_reg_0_255_0_0 : label is 0;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_10_10 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_10_10 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_10_10 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_10_10 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_10_10 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_10_10 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_10_10 : label is 10;
  attribute ram_slice_end of s_memContents_reg_0_255_10_10 : label is 10;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_11_11 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_11_11 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_11_11 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_11_11 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_11_11 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_11_11 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_11_11 : label is 11;
  attribute ram_slice_end of s_memContents_reg_0_255_11_11 : label is 11;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_12_12 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_12_12 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_12_12 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_12_12 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_12_12 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_12_12 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_12_12 : label is 12;
  attribute ram_slice_end of s_memContents_reg_0_255_12_12 : label is 12;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_13_13 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_13_13 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_13_13 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_13_13 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_13_13 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_13_13 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_13_13 : label is 13;
  attribute ram_slice_end of s_memContents_reg_0_255_13_13 : label is 13;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_14_14 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_14_14 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_14_14 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_14_14 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_14_14 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_14_14 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_14_14 : label is 14;
  attribute ram_slice_end of s_memContents_reg_0_255_14_14 : label is 14;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_15_15 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_15_15 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_15_15 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_15_15 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_15_15 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_15_15 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_15_15 : label is 15;
  attribute ram_slice_end of s_memContents_reg_0_255_15_15 : label is 15;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_1_1 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_1_1 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_1_1 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_1_1 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_1_1 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_1_1 : label is 1;
  attribute ram_slice_end of s_memContents_reg_0_255_1_1 : label is 1;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_2_2 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_2_2 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_2_2 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_2_2 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_2_2 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_2_2 : label is 2;
  attribute ram_slice_end of s_memContents_reg_0_255_2_2 : label is 2;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_3_3 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_3_3 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_3_3 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_3_3 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_3_3 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_3_3 : label is 3;
  attribute ram_slice_end of s_memContents_reg_0_255_3_3 : label is 3;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_4_4 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_4_4 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_4_4 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_4_4 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_4_4 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_4_4 : label is 4;
  attribute ram_slice_end of s_memContents_reg_0_255_4_4 : label is 4;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_5_5 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_5_5 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_5_5 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_5_5 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_5_5 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_5_5 : label is 5;
  attribute ram_slice_end of s_memContents_reg_0_255_5_5 : label is 5;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_6_6 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_6_6 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_6_6 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_6_6 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_6_6 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_6_6 : label is 6;
  attribute ram_slice_end of s_memContents_reg_0_255_6_6 : label is 6;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_7_7 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_7_7 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_7_7 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_7_7 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_7_7 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_7_7 : label is 7;
  attribute ram_slice_end of s_memContents_reg_0_255_7_7 : label is 7;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_8_8 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_8_8 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_8_8 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_8_8 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_8_8 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_8_8 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_8_8 : label is 8;
  attribute ram_slice_end of s_memContents_reg_0_255_8_8 : label is 8;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_9_9 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_9_9 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_9_9 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_9_9 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_9_9 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_9_9 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_9_9 : label is 9;
  attribute ram_slice_end of s_memContents_reg_0_255_9_9 : label is 9;
begin
s_memContents_reg_0_255_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(0),
      O => DataOut(0),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_10_10: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(10),
      O => DataOut(10),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_11_11: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(11),
      O => DataOut(11),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_12_12: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(12),
      O => DataOut(12),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_13_13: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(13),
      O => DataOut(13),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_14_14: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(14),
      O => DataOut(14),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_15_15: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(15),
      O => DataOut(15),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(1),
      O => DataOut(1),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(2),
      O => DataOut(2),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(3),
      O => DataOut(3),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(4),
      O => DataOut(4),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(5),
      O => DataOut(5),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(6),
      O => DataOut(6),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(7),
      O => DataOut(7),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_8_8: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(8),
      O => DataOut(8),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_9_9: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(9),
      O => DataOut(9),
      WCLK => CLK,
      WE => WE
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RegFile is
  port (
    RegMA_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Reg1_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Reg2_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    WriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    OverwriteFl : in STD_LOGIC;
    Flags : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AddrReg1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AddrReg2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WE : in STD_LOGIC;
    AddrWriteReg : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end RegFile;

architecture STRUCTURE of RegFile is
  signal Reg0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Reg0_0 : STD_LOGIC;
  signal Reg1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Reg1_1 : STD_LOGIC;
  signal \Reg1_data[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg1_data[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal Reg2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Reg2_2 : STD_LOGIC;
  signal \Reg2_data[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Reg2_data[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal Reg3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Reg3_3 : STD_LOGIC;
  signal Reg4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Reg4_4 : STD_LOGIC;
  signal Reg5 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Reg5_5 : STD_LOGIC;
  signal Reg6 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Reg6_6 : STD_LOGIC;
  signal Reg7 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Reg7_7 : STD_LOGIC;
  signal Reg8 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Reg8_8 : STD_LOGIC;
  signal Reg9 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Reg9_9 : STD_LOGIC;
  signal RegA : STD_LOGIC;
  signal \RegA_reg_n_0_[10]\ : STD_LOGIC;
  signal \RegA_reg_n_0_[11]\ : STD_LOGIC;
  signal \RegA_reg_n_0_[12]\ : STD_LOGIC;
  signal \RegA_reg_n_0_[13]\ : STD_LOGIC;
  signal \RegA_reg_n_0_[14]\ : STD_LOGIC;
  signal \RegA_reg_n_0_[15]\ : STD_LOGIC;
  signal \RegA_reg_n_0_[8]\ : STD_LOGIC;
  signal \RegA_reg_n_0_[9]\ : STD_LOGIC;
  signal RegB : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal RegB_10 : STD_LOGIC;
  signal \RegB_reg_n_0_[0]\ : STD_LOGIC;
  signal \RegB_reg_n_0_[1]\ : STD_LOGIC;
  signal \RegB_reg_n_0_[2]\ : STD_LOGIC;
  signal \RegB_reg_n_0_[3]\ : STD_LOGIC;
  signal RegC : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RegC_11 : STD_LOGIC;
  signal RegD : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RegD_12 : STD_LOGIC;
  signal RegE : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RegE_13 : STD_LOGIC;
  signal RegF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^regma_data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  RegMA_data(7 downto 0) <= \^regma_data\(7 downto 0);
\Reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => WE,
      I1 => AddrWriteReg(1),
      I2 => AddrWriteReg(0),
      I3 => AddrWriteReg(2),
      I4 => AddrWriteReg(3),
      O => Reg0_0
    );
\Reg0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(0),
      Q => Reg0(0),
      R => '0'
    );
\Reg0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(10),
      Q => Reg0(10),
      R => '0'
    );
\Reg0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(11),
      Q => Reg0(11),
      R => '0'
    );
\Reg0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(12),
      Q => Reg0(12),
      R => '0'
    );
\Reg0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(13),
      Q => Reg0(13),
      R => '0'
    );
\Reg0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(14),
      Q => Reg0(14),
      R => '0'
    );
\Reg0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(15),
      Q => Reg0(15),
      R => '0'
    );
\Reg0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(1),
      Q => Reg0(1),
      R => '0'
    );
\Reg0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(2),
      Q => Reg0(2),
      R => '0'
    );
\Reg0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(3),
      Q => Reg0(3),
      R => '0'
    );
\Reg0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(4),
      Q => Reg0(4),
      R => '0'
    );
\Reg0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(5),
      Q => Reg0(5),
      R => '0'
    );
\Reg0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(6),
      Q => Reg0(6),
      R => '0'
    );
\Reg0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(7),
      Q => Reg0(7),
      R => '0'
    );
\Reg0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(8),
      Q => Reg0(8),
      R => '0'
    );
\Reg0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg0_0,
      D => WriteData(9),
      Q => Reg0(9),
      R => '0'
    );
\Reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => WE,
      I1 => AddrWriteReg(1),
      I2 => AddrWriteReg(0),
      I3 => AddrWriteReg(2),
      I4 => AddrWriteReg(3),
      O => Reg1_1
    );
\Reg1_data[0]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[0]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[0]_INST_0_i_2_n_0\,
      O => Reg1_data(0),
      S => AddrReg1(3)
    );
\Reg1_data[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[0]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[0]_INST_0_i_4_n_0\,
      O => \Reg1_data[0]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[0]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[0]_INST_0_i_6_n_0\,
      O => \Reg1_data[0]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(0),
      I1 => Reg2(0),
      I2 => AddrReg1(1),
      I3 => Reg1(0),
      I4 => AddrReg1(0),
      I5 => Reg0(0),
      O => \Reg1_data[0]_INST_0_i_3_n_0\
    );
\Reg1_data[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(0),
      I1 => Reg6(0),
      I2 => AddrReg1(1),
      I3 => Reg5(0),
      I4 => AddrReg1(0),
      I5 => Reg4(0),
      O => \Reg1_data[0]_INST_0_i_4_n_0\
    );
\Reg1_data[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[0]\,
      I1 => \^regma_data\(0),
      I2 => AddrReg1(1),
      I3 => Reg9(0),
      I4 => AddrReg1(0),
      I5 => Reg8(0),
      O => \Reg1_data[0]_INST_0_i_5_n_0\
    );
\Reg1_data[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(0),
      I1 => RegE(0),
      I2 => AddrReg1(1),
      I3 => RegD(0),
      I4 => AddrReg1(0),
      I5 => RegC(0),
      O => \Reg1_data[0]_INST_0_i_6_n_0\
    );
\Reg1_data[10]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[10]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[10]_INST_0_i_2_n_0\,
      O => Reg1_data(10),
      S => AddrReg1(3)
    );
\Reg1_data[10]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[10]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[10]_INST_0_i_4_n_0\,
      O => \Reg1_data[10]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[10]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[10]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[10]_INST_0_i_6_n_0\,
      O => \Reg1_data[10]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(10),
      I1 => Reg2(10),
      I2 => AddrReg1(1),
      I3 => Reg1(10),
      I4 => AddrReg1(0),
      I5 => Reg0(10),
      O => \Reg1_data[10]_INST_0_i_3_n_0\
    );
\Reg1_data[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(10),
      I1 => Reg6(10),
      I2 => AddrReg1(1),
      I3 => Reg5(10),
      I4 => AddrReg1(0),
      I5 => Reg4(10),
      O => \Reg1_data[10]_INST_0_i_4_n_0\
    );
\Reg1_data[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(10),
      I1 => \RegA_reg_n_0_[10]\,
      I2 => AddrReg1(1),
      I3 => Reg9(10),
      I4 => AddrReg1(0),
      I5 => Reg8(10),
      O => \Reg1_data[10]_INST_0_i_5_n_0\
    );
\Reg1_data[10]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(10),
      I1 => AddrReg1(1),
      I2 => RegD(10),
      I3 => AddrReg1(0),
      I4 => RegC(10),
      O => \Reg1_data[10]_INST_0_i_6_n_0\
    );
\Reg1_data[11]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[11]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[11]_INST_0_i_2_n_0\,
      O => Reg1_data(11),
      S => AddrReg1(3)
    );
\Reg1_data[11]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[11]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[11]_INST_0_i_4_n_0\,
      O => \Reg1_data[11]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[11]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[11]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[11]_INST_0_i_6_n_0\,
      O => \Reg1_data[11]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(11),
      I1 => Reg2(11),
      I2 => AddrReg1(1),
      I3 => Reg1(11),
      I4 => AddrReg1(0),
      I5 => Reg0(11),
      O => \Reg1_data[11]_INST_0_i_3_n_0\
    );
\Reg1_data[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(11),
      I1 => Reg6(11),
      I2 => AddrReg1(1),
      I3 => Reg5(11),
      I4 => AddrReg1(0),
      I5 => Reg4(11),
      O => \Reg1_data[11]_INST_0_i_4_n_0\
    );
\Reg1_data[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(11),
      I1 => \RegA_reg_n_0_[11]\,
      I2 => AddrReg1(1),
      I3 => Reg9(11),
      I4 => AddrReg1(0),
      I5 => Reg8(11),
      O => \Reg1_data[11]_INST_0_i_5_n_0\
    );
\Reg1_data[11]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(11),
      I1 => AddrReg1(1),
      I2 => RegD(11),
      I3 => AddrReg1(0),
      I4 => RegC(11),
      O => \Reg1_data[11]_INST_0_i_6_n_0\
    );
\Reg1_data[12]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[12]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[12]_INST_0_i_2_n_0\,
      O => Reg1_data(12),
      S => AddrReg1(3)
    );
\Reg1_data[12]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[12]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[12]_INST_0_i_4_n_0\,
      O => \Reg1_data[12]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[12]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[12]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[12]_INST_0_i_6_n_0\,
      O => \Reg1_data[12]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(12),
      I1 => Reg2(12),
      I2 => AddrReg1(1),
      I3 => Reg1(12),
      I4 => AddrReg1(0),
      I5 => Reg0(12),
      O => \Reg1_data[12]_INST_0_i_3_n_0\
    );
\Reg1_data[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(12),
      I1 => Reg6(12),
      I2 => AddrReg1(1),
      I3 => Reg5(12),
      I4 => AddrReg1(0),
      I5 => Reg4(12),
      O => \Reg1_data[12]_INST_0_i_4_n_0\
    );
\Reg1_data[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(12),
      I1 => \RegA_reg_n_0_[12]\,
      I2 => AddrReg1(1),
      I3 => Reg9(12),
      I4 => AddrReg1(0),
      I5 => Reg8(12),
      O => \Reg1_data[12]_INST_0_i_5_n_0\
    );
\Reg1_data[12]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(12),
      I1 => AddrReg1(1),
      I2 => RegD(12),
      I3 => AddrReg1(0),
      I4 => RegC(12),
      O => \Reg1_data[12]_INST_0_i_6_n_0\
    );
\Reg1_data[13]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[13]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[13]_INST_0_i_2_n_0\,
      O => Reg1_data(13),
      S => AddrReg1(3)
    );
\Reg1_data[13]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[13]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[13]_INST_0_i_4_n_0\,
      O => \Reg1_data[13]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[13]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[13]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[13]_INST_0_i_6_n_0\,
      O => \Reg1_data[13]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(13),
      I1 => Reg2(13),
      I2 => AddrReg1(1),
      I3 => Reg1(13),
      I4 => AddrReg1(0),
      I5 => Reg0(13),
      O => \Reg1_data[13]_INST_0_i_3_n_0\
    );
\Reg1_data[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(13),
      I1 => Reg6(13),
      I2 => AddrReg1(1),
      I3 => Reg5(13),
      I4 => AddrReg1(0),
      I5 => Reg4(13),
      O => \Reg1_data[13]_INST_0_i_4_n_0\
    );
\Reg1_data[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(13),
      I1 => \RegA_reg_n_0_[13]\,
      I2 => AddrReg1(1),
      I3 => Reg9(13),
      I4 => AddrReg1(0),
      I5 => Reg8(13),
      O => \Reg1_data[13]_INST_0_i_5_n_0\
    );
\Reg1_data[13]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(13),
      I1 => AddrReg1(1),
      I2 => RegD(13),
      I3 => AddrReg1(0),
      I4 => RegC(13),
      O => \Reg1_data[13]_INST_0_i_6_n_0\
    );
\Reg1_data[14]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[14]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[14]_INST_0_i_2_n_0\,
      O => Reg1_data(14),
      S => AddrReg1(3)
    );
\Reg1_data[14]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[14]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[14]_INST_0_i_4_n_0\,
      O => \Reg1_data[14]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[14]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[14]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[14]_INST_0_i_6_n_0\,
      O => \Reg1_data[14]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(14),
      I1 => Reg2(14),
      I2 => AddrReg1(1),
      I3 => Reg1(14),
      I4 => AddrReg1(0),
      I5 => Reg0(14),
      O => \Reg1_data[14]_INST_0_i_3_n_0\
    );
\Reg1_data[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(14),
      I1 => Reg6(14),
      I2 => AddrReg1(1),
      I3 => Reg5(14),
      I4 => AddrReg1(0),
      I5 => Reg4(14),
      O => \Reg1_data[14]_INST_0_i_4_n_0\
    );
\Reg1_data[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(14),
      I1 => \RegA_reg_n_0_[14]\,
      I2 => AddrReg1(1),
      I3 => Reg9(14),
      I4 => AddrReg1(0),
      I5 => Reg8(14),
      O => \Reg1_data[14]_INST_0_i_5_n_0\
    );
\Reg1_data[14]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(14),
      I1 => AddrReg1(1),
      I2 => RegD(14),
      I3 => AddrReg1(0),
      I4 => RegC(14),
      O => \Reg1_data[14]_INST_0_i_6_n_0\
    );
\Reg1_data[15]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[15]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[15]_INST_0_i_2_n_0\,
      O => Reg1_data(15),
      S => AddrReg1(3)
    );
\Reg1_data[15]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[15]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[15]_INST_0_i_4_n_0\,
      O => \Reg1_data[15]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[15]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[15]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[15]_INST_0_i_6_n_0\,
      O => \Reg1_data[15]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(15),
      I1 => Reg2(15),
      I2 => AddrReg1(1),
      I3 => Reg1(15),
      I4 => AddrReg1(0),
      I5 => Reg0(15),
      O => \Reg1_data[15]_INST_0_i_3_n_0\
    );
\Reg1_data[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(15),
      I1 => Reg6(15),
      I2 => AddrReg1(1),
      I3 => Reg5(15),
      I4 => AddrReg1(0),
      I5 => Reg4(15),
      O => \Reg1_data[15]_INST_0_i_4_n_0\
    );
\Reg1_data[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(15),
      I1 => \RegA_reg_n_0_[15]\,
      I2 => AddrReg1(1),
      I3 => Reg9(15),
      I4 => AddrReg1(0),
      I5 => Reg8(15),
      O => \Reg1_data[15]_INST_0_i_5_n_0\
    );
\Reg1_data[15]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(15),
      I1 => AddrReg1(1),
      I2 => RegD(15),
      I3 => AddrReg1(0),
      I4 => RegC(15),
      O => \Reg1_data[15]_INST_0_i_6_n_0\
    );
\Reg1_data[1]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[1]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[1]_INST_0_i_2_n_0\,
      O => Reg1_data(1),
      S => AddrReg1(3)
    );
\Reg1_data[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[1]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[1]_INST_0_i_4_n_0\,
      O => \Reg1_data[1]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[1]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[1]_INST_0_i_6_n_0\,
      O => \Reg1_data[1]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(1),
      I1 => Reg2(1),
      I2 => AddrReg1(1),
      I3 => Reg1(1),
      I4 => AddrReg1(0),
      I5 => Reg0(1),
      O => \Reg1_data[1]_INST_0_i_3_n_0\
    );
\Reg1_data[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(1),
      I1 => Reg6(1),
      I2 => AddrReg1(1),
      I3 => Reg5(1),
      I4 => AddrReg1(0),
      I5 => Reg4(1),
      O => \Reg1_data[1]_INST_0_i_4_n_0\
    );
\Reg1_data[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[1]\,
      I1 => \^regma_data\(1),
      I2 => AddrReg1(1),
      I3 => Reg9(1),
      I4 => AddrReg1(0),
      I5 => Reg8(1),
      O => \Reg1_data[1]_INST_0_i_5_n_0\
    );
\Reg1_data[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(1),
      I1 => RegE(1),
      I2 => AddrReg1(1),
      I3 => RegD(1),
      I4 => AddrReg1(0),
      I5 => RegC(1),
      O => \Reg1_data[1]_INST_0_i_6_n_0\
    );
\Reg1_data[2]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[2]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[2]_INST_0_i_2_n_0\,
      O => Reg1_data(2),
      S => AddrReg1(3)
    );
\Reg1_data[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[2]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[2]_INST_0_i_4_n_0\,
      O => \Reg1_data[2]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[2]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[2]_INST_0_i_6_n_0\,
      O => \Reg1_data[2]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(2),
      I1 => Reg2(2),
      I2 => AddrReg1(1),
      I3 => Reg1(2),
      I4 => AddrReg1(0),
      I5 => Reg0(2),
      O => \Reg1_data[2]_INST_0_i_3_n_0\
    );
\Reg1_data[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(2),
      I1 => Reg6(2),
      I2 => AddrReg1(1),
      I3 => Reg5(2),
      I4 => AddrReg1(0),
      I5 => Reg4(2),
      O => \Reg1_data[2]_INST_0_i_4_n_0\
    );
\Reg1_data[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[2]\,
      I1 => \^regma_data\(2),
      I2 => AddrReg1(1),
      I3 => Reg9(2),
      I4 => AddrReg1(0),
      I5 => Reg8(2),
      O => \Reg1_data[2]_INST_0_i_5_n_0\
    );
\Reg1_data[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(2),
      I1 => RegE(2),
      I2 => AddrReg1(1),
      I3 => RegD(2),
      I4 => AddrReg1(0),
      I5 => RegC(2),
      O => \Reg1_data[2]_INST_0_i_6_n_0\
    );
\Reg1_data[3]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[3]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[3]_INST_0_i_2_n_0\,
      O => Reg1_data(3),
      S => AddrReg1(3)
    );
\Reg1_data[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[3]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[3]_INST_0_i_4_n_0\,
      O => \Reg1_data[3]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[3]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[3]_INST_0_i_6_n_0\,
      O => \Reg1_data[3]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(3),
      I1 => Reg2(3),
      I2 => AddrReg1(1),
      I3 => Reg1(3),
      I4 => AddrReg1(0),
      I5 => Reg0(3),
      O => \Reg1_data[3]_INST_0_i_3_n_0\
    );
\Reg1_data[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(3),
      I1 => Reg6(3),
      I2 => AddrReg1(1),
      I3 => Reg5(3),
      I4 => AddrReg1(0),
      I5 => Reg4(3),
      O => \Reg1_data[3]_INST_0_i_4_n_0\
    );
\Reg1_data[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[3]\,
      I1 => \^regma_data\(3),
      I2 => AddrReg1(1),
      I3 => Reg9(3),
      I4 => AddrReg1(0),
      I5 => Reg8(3),
      O => \Reg1_data[3]_INST_0_i_5_n_0\
    );
\Reg1_data[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(3),
      I1 => RegE(3),
      I2 => AddrReg1(1),
      I3 => RegD(3),
      I4 => AddrReg1(0),
      I5 => RegC(3),
      O => \Reg1_data[3]_INST_0_i_6_n_0\
    );
\Reg1_data[4]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[4]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[4]_INST_0_i_2_n_0\,
      O => Reg1_data(4),
      S => AddrReg1(3)
    );
\Reg1_data[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[4]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[4]_INST_0_i_4_n_0\,
      O => \Reg1_data[4]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[4]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[4]_INST_0_i_6_n_0\,
      O => \Reg1_data[4]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(4),
      I1 => Reg2(4),
      I2 => AddrReg1(1),
      I3 => Reg1(4),
      I4 => AddrReg1(0),
      I5 => Reg0(4),
      O => \Reg1_data[4]_INST_0_i_3_n_0\
    );
\Reg1_data[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(4),
      I1 => Reg6(4),
      I2 => AddrReg1(1),
      I3 => Reg5(4),
      I4 => AddrReg1(0),
      I5 => Reg4(4),
      O => \Reg1_data[4]_INST_0_i_4_n_0\
    );
\Reg1_data[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(4),
      I1 => \^regma_data\(4),
      I2 => AddrReg1(1),
      I3 => Reg9(4),
      I4 => AddrReg1(0),
      I5 => Reg8(4),
      O => \Reg1_data[4]_INST_0_i_5_n_0\
    );
\Reg1_data[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(4),
      I1 => RegE(4),
      I2 => AddrReg1(1),
      I3 => RegD(4),
      I4 => AddrReg1(0),
      I5 => RegC(4),
      O => \Reg1_data[4]_INST_0_i_6_n_0\
    );
\Reg1_data[5]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[5]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[5]_INST_0_i_2_n_0\,
      O => Reg1_data(5),
      S => AddrReg1(3)
    );
\Reg1_data[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[5]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[5]_INST_0_i_4_n_0\,
      O => \Reg1_data[5]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[5]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[5]_INST_0_i_6_n_0\,
      O => \Reg1_data[5]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(5),
      I1 => Reg2(5),
      I2 => AddrReg1(1),
      I3 => Reg1(5),
      I4 => AddrReg1(0),
      I5 => Reg0(5),
      O => \Reg1_data[5]_INST_0_i_3_n_0\
    );
\Reg1_data[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(5),
      I1 => Reg6(5),
      I2 => AddrReg1(1),
      I3 => Reg5(5),
      I4 => AddrReg1(0),
      I5 => Reg4(5),
      O => \Reg1_data[5]_INST_0_i_4_n_0\
    );
\Reg1_data[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(5),
      I1 => \^regma_data\(5),
      I2 => AddrReg1(1),
      I3 => Reg9(5),
      I4 => AddrReg1(0),
      I5 => Reg8(5),
      O => \Reg1_data[5]_INST_0_i_5_n_0\
    );
\Reg1_data[5]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(5),
      I1 => AddrReg1(1),
      I2 => RegD(5),
      I3 => AddrReg1(0),
      I4 => RegC(5),
      O => \Reg1_data[5]_INST_0_i_6_n_0\
    );
\Reg1_data[6]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[6]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[6]_INST_0_i_2_n_0\,
      O => Reg1_data(6),
      S => AddrReg1(3)
    );
\Reg1_data[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[6]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[6]_INST_0_i_4_n_0\,
      O => \Reg1_data[6]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[6]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[6]_INST_0_i_6_n_0\,
      O => \Reg1_data[6]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(6),
      I1 => Reg2(6),
      I2 => AddrReg1(1),
      I3 => Reg1(6),
      I4 => AddrReg1(0),
      I5 => Reg0(6),
      O => \Reg1_data[6]_INST_0_i_3_n_0\
    );
\Reg1_data[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(6),
      I1 => Reg6(6),
      I2 => AddrReg1(1),
      I3 => Reg5(6),
      I4 => AddrReg1(0),
      I5 => Reg4(6),
      O => \Reg1_data[6]_INST_0_i_4_n_0\
    );
\Reg1_data[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(6),
      I1 => \^regma_data\(6),
      I2 => AddrReg1(1),
      I3 => Reg9(6),
      I4 => AddrReg1(0),
      I5 => Reg8(6),
      O => \Reg1_data[6]_INST_0_i_5_n_0\
    );
\Reg1_data[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(6),
      I1 => RegE(6),
      I2 => AddrReg1(1),
      I3 => RegD(6),
      I4 => AddrReg1(0),
      I5 => RegC(6),
      O => \Reg1_data[6]_INST_0_i_6_n_0\
    );
\Reg1_data[7]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[7]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[7]_INST_0_i_2_n_0\,
      O => Reg1_data(7),
      S => AddrReg1(3)
    );
\Reg1_data[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[7]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[7]_INST_0_i_4_n_0\,
      O => \Reg1_data[7]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[7]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[7]_INST_0_i_6_n_0\,
      O => \Reg1_data[7]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(7),
      I1 => Reg2(7),
      I2 => AddrReg1(1),
      I3 => Reg1(7),
      I4 => AddrReg1(0),
      I5 => Reg0(7),
      O => \Reg1_data[7]_INST_0_i_3_n_0\
    );
\Reg1_data[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(7),
      I1 => Reg6(7),
      I2 => AddrReg1(1),
      I3 => Reg5(7),
      I4 => AddrReg1(0),
      I5 => Reg4(7),
      O => \Reg1_data[7]_INST_0_i_4_n_0\
    );
\Reg1_data[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(7),
      I1 => \^regma_data\(7),
      I2 => AddrReg1(1),
      I3 => Reg9(7),
      I4 => AddrReg1(0),
      I5 => Reg8(7),
      O => \Reg1_data[7]_INST_0_i_5_n_0\
    );
\Reg1_data[7]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(7),
      I1 => AddrReg1(1),
      I2 => RegD(7),
      I3 => AddrReg1(0),
      I4 => RegC(7),
      O => \Reg1_data[7]_INST_0_i_6_n_0\
    );
\Reg1_data[8]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[8]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[8]_INST_0_i_2_n_0\,
      O => Reg1_data(8),
      S => AddrReg1(3)
    );
\Reg1_data[8]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[8]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[8]_INST_0_i_4_n_0\,
      O => \Reg1_data[8]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[8]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[8]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[8]_INST_0_i_6_n_0\,
      O => \Reg1_data[8]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(8),
      I1 => Reg2(8),
      I2 => AddrReg1(1),
      I3 => Reg1(8),
      I4 => AddrReg1(0),
      I5 => Reg0(8),
      O => \Reg1_data[8]_INST_0_i_3_n_0\
    );
\Reg1_data[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(8),
      I1 => Reg6(8),
      I2 => AddrReg1(1),
      I3 => Reg5(8),
      I4 => AddrReg1(0),
      I5 => Reg4(8),
      O => \Reg1_data[8]_INST_0_i_4_n_0\
    );
\Reg1_data[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(8),
      I1 => \RegA_reg_n_0_[8]\,
      I2 => AddrReg1(1),
      I3 => Reg9(8),
      I4 => AddrReg1(0),
      I5 => Reg8(8),
      O => \Reg1_data[8]_INST_0_i_5_n_0\
    );
\Reg1_data[8]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(8),
      I1 => AddrReg1(1),
      I2 => RegD(8),
      I3 => AddrReg1(0),
      I4 => RegC(8),
      O => \Reg1_data[8]_INST_0_i_6_n_0\
    );
\Reg1_data[9]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data[9]_INST_0_i_1_n_0\,
      I1 => \Reg1_data[9]_INST_0_i_2_n_0\,
      O => Reg1_data(9),
      S => AddrReg1(3)
    );
\Reg1_data[9]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[9]_INST_0_i_3_n_0\,
      I1 => \Reg1_data[9]_INST_0_i_4_n_0\,
      O => \Reg1_data[9]_INST_0_i_1_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[9]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data[9]_INST_0_i_5_n_0\,
      I1 => \Reg1_data[9]_INST_0_i_6_n_0\,
      O => \Reg1_data[9]_INST_0_i_2_n_0\,
      S => AddrReg1(2)
    );
\Reg1_data[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(9),
      I1 => Reg2(9),
      I2 => AddrReg1(1),
      I3 => Reg1(9),
      I4 => AddrReg1(0),
      I5 => Reg0(9),
      O => \Reg1_data[9]_INST_0_i_3_n_0\
    );
\Reg1_data[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(9),
      I1 => Reg6(9),
      I2 => AddrReg1(1),
      I3 => Reg5(9),
      I4 => AddrReg1(0),
      I5 => Reg4(9),
      O => \Reg1_data[9]_INST_0_i_4_n_0\
    );
\Reg1_data[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(9),
      I1 => \RegA_reg_n_0_[9]\,
      I2 => AddrReg1(1),
      I3 => Reg9(9),
      I4 => AddrReg1(0),
      I5 => Reg8(9),
      O => \Reg1_data[9]_INST_0_i_5_n_0\
    );
\Reg1_data[9]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(9),
      I1 => AddrReg1(1),
      I2 => RegD(9),
      I3 => AddrReg1(0),
      I4 => RegC(9),
      O => \Reg1_data[9]_INST_0_i_6_n_0\
    );
\Reg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(0),
      Q => Reg1(0),
      R => '0'
    );
\Reg1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(10),
      Q => Reg1(10),
      R => '0'
    );
\Reg1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(11),
      Q => Reg1(11),
      R => '0'
    );
\Reg1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(12),
      Q => Reg1(12),
      R => '0'
    );
\Reg1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(13),
      Q => Reg1(13),
      R => '0'
    );
\Reg1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(14),
      Q => Reg1(14),
      R => '0'
    );
\Reg1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(15),
      Q => Reg1(15),
      R => '0'
    );
\Reg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(1),
      Q => Reg1(1),
      R => '0'
    );
\Reg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(2),
      Q => Reg1(2),
      R => '0'
    );
\Reg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(3),
      Q => Reg1(3),
      R => '0'
    );
\Reg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(4),
      Q => Reg1(4),
      R => '0'
    );
\Reg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(5),
      Q => Reg1(5),
      R => '0'
    );
\Reg1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(6),
      Q => Reg1(6),
      R => '0'
    );
\Reg1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(7),
      Q => Reg1(7),
      R => '0'
    );
\Reg1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(8),
      Q => Reg1(8),
      R => '0'
    );
\Reg1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg1_1,
      D => WriteData(9),
      Q => Reg1(9),
      R => '0'
    );
\Reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => WE,
      I1 => AddrWriteReg(0),
      I2 => AddrWriteReg(1),
      I3 => AddrWriteReg(2),
      I4 => AddrWriteReg(3),
      O => Reg2_2
    );
\Reg2_data[0]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[0]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[0]_INST_0_i_2_n_0\,
      O => Reg2_data(0),
      S => AddrReg2(3)
    );
\Reg2_data[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[0]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[0]_INST_0_i_4_n_0\,
      O => \Reg2_data[0]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[0]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[0]_INST_0_i_6_n_0\,
      O => \Reg2_data[0]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(0),
      I1 => Reg2(0),
      I2 => AddrReg2(1),
      I3 => Reg1(0),
      I4 => AddrReg2(0),
      I5 => Reg0(0),
      O => \Reg2_data[0]_INST_0_i_3_n_0\
    );
\Reg2_data[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(0),
      I1 => Reg6(0),
      I2 => AddrReg2(1),
      I3 => Reg5(0),
      I4 => AddrReg2(0),
      I5 => Reg4(0),
      O => \Reg2_data[0]_INST_0_i_4_n_0\
    );
\Reg2_data[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[0]\,
      I1 => \^regma_data\(0),
      I2 => AddrReg2(1),
      I3 => Reg9(0),
      I4 => AddrReg2(0),
      I5 => Reg8(0),
      O => \Reg2_data[0]_INST_0_i_5_n_0\
    );
\Reg2_data[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(0),
      I1 => RegE(0),
      I2 => AddrReg2(1),
      I3 => RegD(0),
      I4 => AddrReg2(0),
      I5 => RegC(0),
      O => \Reg2_data[0]_INST_0_i_6_n_0\
    );
\Reg2_data[10]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[10]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[10]_INST_0_i_2_n_0\,
      O => Reg2_data(10),
      S => AddrReg2(3)
    );
\Reg2_data[10]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[10]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[10]_INST_0_i_4_n_0\,
      O => \Reg2_data[10]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[10]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[10]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[10]_INST_0_i_6_n_0\,
      O => \Reg2_data[10]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(10),
      I1 => Reg2(10),
      I2 => AddrReg2(1),
      I3 => Reg1(10),
      I4 => AddrReg2(0),
      I5 => Reg0(10),
      O => \Reg2_data[10]_INST_0_i_3_n_0\
    );
\Reg2_data[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(10),
      I1 => Reg6(10),
      I2 => AddrReg2(1),
      I3 => Reg5(10),
      I4 => AddrReg2(0),
      I5 => Reg4(10),
      O => \Reg2_data[10]_INST_0_i_4_n_0\
    );
\Reg2_data[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(10),
      I1 => \RegA_reg_n_0_[10]\,
      I2 => AddrReg2(1),
      I3 => Reg9(10),
      I4 => AddrReg2(0),
      I5 => Reg8(10),
      O => \Reg2_data[10]_INST_0_i_5_n_0\
    );
\Reg2_data[10]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(10),
      I1 => AddrReg2(1),
      I2 => RegD(10),
      I3 => AddrReg2(0),
      I4 => RegC(10),
      O => \Reg2_data[10]_INST_0_i_6_n_0\
    );
\Reg2_data[11]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[11]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[11]_INST_0_i_2_n_0\,
      O => Reg2_data(11),
      S => AddrReg2(3)
    );
\Reg2_data[11]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[11]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[11]_INST_0_i_4_n_0\,
      O => \Reg2_data[11]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[11]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[11]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[11]_INST_0_i_6_n_0\,
      O => \Reg2_data[11]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(11),
      I1 => Reg2(11),
      I2 => AddrReg2(1),
      I3 => Reg1(11),
      I4 => AddrReg2(0),
      I5 => Reg0(11),
      O => \Reg2_data[11]_INST_0_i_3_n_0\
    );
\Reg2_data[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(11),
      I1 => Reg6(11),
      I2 => AddrReg2(1),
      I3 => Reg5(11),
      I4 => AddrReg2(0),
      I5 => Reg4(11),
      O => \Reg2_data[11]_INST_0_i_4_n_0\
    );
\Reg2_data[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(11),
      I1 => \RegA_reg_n_0_[11]\,
      I2 => AddrReg2(1),
      I3 => Reg9(11),
      I4 => AddrReg2(0),
      I5 => Reg8(11),
      O => \Reg2_data[11]_INST_0_i_5_n_0\
    );
\Reg2_data[11]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(11),
      I1 => AddrReg2(1),
      I2 => RegD(11),
      I3 => AddrReg2(0),
      I4 => RegC(11),
      O => \Reg2_data[11]_INST_0_i_6_n_0\
    );
\Reg2_data[12]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[12]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[12]_INST_0_i_2_n_0\,
      O => Reg2_data(12),
      S => AddrReg2(3)
    );
\Reg2_data[12]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[12]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[12]_INST_0_i_4_n_0\,
      O => \Reg2_data[12]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[12]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[12]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[12]_INST_0_i_6_n_0\,
      O => \Reg2_data[12]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(12),
      I1 => Reg2(12),
      I2 => AddrReg2(1),
      I3 => Reg1(12),
      I4 => AddrReg2(0),
      I5 => Reg0(12),
      O => \Reg2_data[12]_INST_0_i_3_n_0\
    );
\Reg2_data[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(12),
      I1 => Reg6(12),
      I2 => AddrReg2(1),
      I3 => Reg5(12),
      I4 => AddrReg2(0),
      I5 => Reg4(12),
      O => \Reg2_data[12]_INST_0_i_4_n_0\
    );
\Reg2_data[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(12),
      I1 => \RegA_reg_n_0_[12]\,
      I2 => AddrReg2(1),
      I3 => Reg9(12),
      I4 => AddrReg2(0),
      I5 => Reg8(12),
      O => \Reg2_data[12]_INST_0_i_5_n_0\
    );
\Reg2_data[12]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(12),
      I1 => AddrReg2(1),
      I2 => RegD(12),
      I3 => AddrReg2(0),
      I4 => RegC(12),
      O => \Reg2_data[12]_INST_0_i_6_n_0\
    );
\Reg2_data[13]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[13]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[13]_INST_0_i_2_n_0\,
      O => Reg2_data(13),
      S => AddrReg2(3)
    );
\Reg2_data[13]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[13]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[13]_INST_0_i_4_n_0\,
      O => \Reg2_data[13]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[13]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[13]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[13]_INST_0_i_6_n_0\,
      O => \Reg2_data[13]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(13),
      I1 => Reg2(13),
      I2 => AddrReg2(1),
      I3 => Reg1(13),
      I4 => AddrReg2(0),
      I5 => Reg0(13),
      O => \Reg2_data[13]_INST_0_i_3_n_0\
    );
\Reg2_data[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(13),
      I1 => Reg6(13),
      I2 => AddrReg2(1),
      I3 => Reg5(13),
      I4 => AddrReg2(0),
      I5 => Reg4(13),
      O => \Reg2_data[13]_INST_0_i_4_n_0\
    );
\Reg2_data[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(13),
      I1 => \RegA_reg_n_0_[13]\,
      I2 => AddrReg2(1),
      I3 => Reg9(13),
      I4 => AddrReg2(0),
      I5 => Reg8(13),
      O => \Reg2_data[13]_INST_0_i_5_n_0\
    );
\Reg2_data[13]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(13),
      I1 => AddrReg2(1),
      I2 => RegD(13),
      I3 => AddrReg2(0),
      I4 => RegC(13),
      O => \Reg2_data[13]_INST_0_i_6_n_0\
    );
\Reg2_data[14]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[14]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[14]_INST_0_i_2_n_0\,
      O => Reg2_data(14),
      S => AddrReg2(3)
    );
\Reg2_data[14]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[14]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[14]_INST_0_i_4_n_0\,
      O => \Reg2_data[14]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[14]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[14]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[14]_INST_0_i_6_n_0\,
      O => \Reg2_data[14]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(14),
      I1 => Reg2(14),
      I2 => AddrReg2(1),
      I3 => Reg1(14),
      I4 => AddrReg2(0),
      I5 => Reg0(14),
      O => \Reg2_data[14]_INST_0_i_3_n_0\
    );
\Reg2_data[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(14),
      I1 => Reg6(14),
      I2 => AddrReg2(1),
      I3 => Reg5(14),
      I4 => AddrReg2(0),
      I5 => Reg4(14),
      O => \Reg2_data[14]_INST_0_i_4_n_0\
    );
\Reg2_data[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(14),
      I1 => \RegA_reg_n_0_[14]\,
      I2 => AddrReg2(1),
      I3 => Reg9(14),
      I4 => AddrReg2(0),
      I5 => Reg8(14),
      O => \Reg2_data[14]_INST_0_i_5_n_0\
    );
\Reg2_data[14]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(14),
      I1 => AddrReg2(1),
      I2 => RegD(14),
      I3 => AddrReg2(0),
      I4 => RegC(14),
      O => \Reg2_data[14]_INST_0_i_6_n_0\
    );
\Reg2_data[15]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[15]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[15]_INST_0_i_2_n_0\,
      O => Reg2_data(15),
      S => AddrReg2(3)
    );
\Reg2_data[15]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[15]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[15]_INST_0_i_4_n_0\,
      O => \Reg2_data[15]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[15]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[15]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[15]_INST_0_i_6_n_0\,
      O => \Reg2_data[15]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(15),
      I1 => Reg2(15),
      I2 => AddrReg2(1),
      I3 => Reg1(15),
      I4 => AddrReg2(0),
      I5 => Reg0(15),
      O => \Reg2_data[15]_INST_0_i_3_n_0\
    );
\Reg2_data[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(15),
      I1 => Reg6(15),
      I2 => AddrReg2(1),
      I3 => Reg5(15),
      I4 => AddrReg2(0),
      I5 => Reg4(15),
      O => \Reg2_data[15]_INST_0_i_4_n_0\
    );
\Reg2_data[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(15),
      I1 => \RegA_reg_n_0_[15]\,
      I2 => AddrReg2(1),
      I3 => Reg9(15),
      I4 => AddrReg2(0),
      I5 => Reg8(15),
      O => \Reg2_data[15]_INST_0_i_5_n_0\
    );
\Reg2_data[15]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(15),
      I1 => AddrReg2(1),
      I2 => RegD(15),
      I3 => AddrReg2(0),
      I4 => RegC(15),
      O => \Reg2_data[15]_INST_0_i_6_n_0\
    );
\Reg2_data[1]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[1]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[1]_INST_0_i_2_n_0\,
      O => Reg2_data(1),
      S => AddrReg2(3)
    );
\Reg2_data[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[1]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[1]_INST_0_i_4_n_0\,
      O => \Reg2_data[1]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[1]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[1]_INST_0_i_6_n_0\,
      O => \Reg2_data[1]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(1),
      I1 => Reg2(1),
      I2 => AddrReg2(1),
      I3 => Reg1(1),
      I4 => AddrReg2(0),
      I5 => Reg0(1),
      O => \Reg2_data[1]_INST_0_i_3_n_0\
    );
\Reg2_data[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(1),
      I1 => Reg6(1),
      I2 => AddrReg2(1),
      I3 => Reg5(1),
      I4 => AddrReg2(0),
      I5 => Reg4(1),
      O => \Reg2_data[1]_INST_0_i_4_n_0\
    );
\Reg2_data[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[1]\,
      I1 => \^regma_data\(1),
      I2 => AddrReg2(1),
      I3 => Reg9(1),
      I4 => AddrReg2(0),
      I5 => Reg8(1),
      O => \Reg2_data[1]_INST_0_i_5_n_0\
    );
\Reg2_data[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(1),
      I1 => RegE(1),
      I2 => AddrReg2(1),
      I3 => RegD(1),
      I4 => AddrReg2(0),
      I5 => RegC(1),
      O => \Reg2_data[1]_INST_0_i_6_n_0\
    );
\Reg2_data[2]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[2]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[2]_INST_0_i_2_n_0\,
      O => Reg2_data(2),
      S => AddrReg2(3)
    );
\Reg2_data[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[2]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[2]_INST_0_i_4_n_0\,
      O => \Reg2_data[2]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[2]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[2]_INST_0_i_6_n_0\,
      O => \Reg2_data[2]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(2),
      I1 => Reg2(2),
      I2 => AddrReg2(1),
      I3 => Reg1(2),
      I4 => AddrReg2(0),
      I5 => Reg0(2),
      O => \Reg2_data[2]_INST_0_i_3_n_0\
    );
\Reg2_data[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(2),
      I1 => Reg6(2),
      I2 => AddrReg2(1),
      I3 => Reg5(2),
      I4 => AddrReg2(0),
      I5 => Reg4(2),
      O => \Reg2_data[2]_INST_0_i_4_n_0\
    );
\Reg2_data[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[2]\,
      I1 => \^regma_data\(2),
      I2 => AddrReg2(1),
      I3 => Reg9(2),
      I4 => AddrReg2(0),
      I5 => Reg8(2),
      O => \Reg2_data[2]_INST_0_i_5_n_0\
    );
\Reg2_data[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(2),
      I1 => RegE(2),
      I2 => AddrReg2(1),
      I3 => RegD(2),
      I4 => AddrReg2(0),
      I5 => RegC(2),
      O => \Reg2_data[2]_INST_0_i_6_n_0\
    );
\Reg2_data[3]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[3]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[3]_INST_0_i_2_n_0\,
      O => Reg2_data(3),
      S => AddrReg2(3)
    );
\Reg2_data[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[3]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[3]_INST_0_i_4_n_0\,
      O => \Reg2_data[3]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[3]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[3]_INST_0_i_6_n_0\,
      O => \Reg2_data[3]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(3),
      I1 => Reg2(3),
      I2 => AddrReg2(1),
      I3 => Reg1(3),
      I4 => AddrReg2(0),
      I5 => Reg0(3),
      O => \Reg2_data[3]_INST_0_i_3_n_0\
    );
\Reg2_data[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(3),
      I1 => Reg6(3),
      I2 => AddrReg2(1),
      I3 => Reg5(3),
      I4 => AddrReg2(0),
      I5 => Reg4(3),
      O => \Reg2_data[3]_INST_0_i_4_n_0\
    );
\Reg2_data[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[3]\,
      I1 => \^regma_data\(3),
      I2 => AddrReg2(1),
      I3 => Reg9(3),
      I4 => AddrReg2(0),
      I5 => Reg8(3),
      O => \Reg2_data[3]_INST_0_i_5_n_0\
    );
\Reg2_data[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(3),
      I1 => RegE(3),
      I2 => AddrReg2(1),
      I3 => RegD(3),
      I4 => AddrReg2(0),
      I5 => RegC(3),
      O => \Reg2_data[3]_INST_0_i_6_n_0\
    );
\Reg2_data[4]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[4]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[4]_INST_0_i_2_n_0\,
      O => Reg2_data(4),
      S => AddrReg2(3)
    );
\Reg2_data[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[4]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[4]_INST_0_i_4_n_0\,
      O => \Reg2_data[4]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[4]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[4]_INST_0_i_6_n_0\,
      O => \Reg2_data[4]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(4),
      I1 => Reg2(4),
      I2 => AddrReg2(1),
      I3 => Reg1(4),
      I4 => AddrReg2(0),
      I5 => Reg0(4),
      O => \Reg2_data[4]_INST_0_i_3_n_0\
    );
\Reg2_data[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(4),
      I1 => Reg6(4),
      I2 => AddrReg2(1),
      I3 => Reg5(4),
      I4 => AddrReg2(0),
      I5 => Reg4(4),
      O => \Reg2_data[4]_INST_0_i_4_n_0\
    );
\Reg2_data[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(4),
      I1 => \^regma_data\(4),
      I2 => AddrReg2(1),
      I3 => Reg9(4),
      I4 => AddrReg2(0),
      I5 => Reg8(4),
      O => \Reg2_data[4]_INST_0_i_5_n_0\
    );
\Reg2_data[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(4),
      I1 => RegE(4),
      I2 => AddrReg2(1),
      I3 => RegD(4),
      I4 => AddrReg2(0),
      I5 => RegC(4),
      O => \Reg2_data[4]_INST_0_i_6_n_0\
    );
\Reg2_data[5]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[5]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[5]_INST_0_i_2_n_0\,
      O => Reg2_data(5),
      S => AddrReg2(3)
    );
\Reg2_data[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[5]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[5]_INST_0_i_4_n_0\,
      O => \Reg2_data[5]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[5]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[5]_INST_0_i_6_n_0\,
      O => \Reg2_data[5]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(5),
      I1 => Reg2(5),
      I2 => AddrReg2(1),
      I3 => Reg1(5),
      I4 => AddrReg2(0),
      I5 => Reg0(5),
      O => \Reg2_data[5]_INST_0_i_3_n_0\
    );
\Reg2_data[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(5),
      I1 => Reg6(5),
      I2 => AddrReg2(1),
      I3 => Reg5(5),
      I4 => AddrReg2(0),
      I5 => Reg4(5),
      O => \Reg2_data[5]_INST_0_i_4_n_0\
    );
\Reg2_data[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(5),
      I1 => \^regma_data\(5),
      I2 => AddrReg2(1),
      I3 => Reg9(5),
      I4 => AddrReg2(0),
      I5 => Reg8(5),
      O => \Reg2_data[5]_INST_0_i_5_n_0\
    );
\Reg2_data[5]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(5),
      I1 => AddrReg2(1),
      I2 => RegD(5),
      I3 => AddrReg2(0),
      I4 => RegC(5),
      O => \Reg2_data[5]_INST_0_i_6_n_0\
    );
\Reg2_data[6]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[6]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[6]_INST_0_i_2_n_0\,
      O => Reg2_data(6),
      S => AddrReg2(3)
    );
\Reg2_data[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[6]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[6]_INST_0_i_4_n_0\,
      O => \Reg2_data[6]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[6]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[6]_INST_0_i_6_n_0\,
      O => \Reg2_data[6]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(6),
      I1 => Reg2(6),
      I2 => AddrReg2(1),
      I3 => Reg1(6),
      I4 => AddrReg2(0),
      I5 => Reg0(6),
      O => \Reg2_data[6]_INST_0_i_3_n_0\
    );
\Reg2_data[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(6),
      I1 => Reg6(6),
      I2 => AddrReg2(1),
      I3 => Reg5(6),
      I4 => AddrReg2(0),
      I5 => Reg4(6),
      O => \Reg2_data[6]_INST_0_i_4_n_0\
    );
\Reg2_data[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(6),
      I1 => \^regma_data\(6),
      I2 => AddrReg2(1),
      I3 => Reg9(6),
      I4 => AddrReg2(0),
      I5 => Reg8(6),
      O => \Reg2_data[6]_INST_0_i_5_n_0\
    );
\Reg2_data[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(6),
      I1 => RegE(6),
      I2 => AddrReg2(1),
      I3 => RegD(6),
      I4 => AddrReg2(0),
      I5 => RegC(6),
      O => \Reg2_data[6]_INST_0_i_6_n_0\
    );
\Reg2_data[7]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[7]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[7]_INST_0_i_2_n_0\,
      O => Reg2_data(7),
      S => AddrReg2(3)
    );
\Reg2_data[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[7]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[7]_INST_0_i_4_n_0\,
      O => \Reg2_data[7]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[7]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[7]_INST_0_i_6_n_0\,
      O => \Reg2_data[7]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(7),
      I1 => Reg2(7),
      I2 => AddrReg2(1),
      I3 => Reg1(7),
      I4 => AddrReg2(0),
      I5 => Reg0(7),
      O => \Reg2_data[7]_INST_0_i_3_n_0\
    );
\Reg2_data[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(7),
      I1 => Reg6(7),
      I2 => AddrReg2(1),
      I3 => Reg5(7),
      I4 => AddrReg2(0),
      I5 => Reg4(7),
      O => \Reg2_data[7]_INST_0_i_4_n_0\
    );
\Reg2_data[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(7),
      I1 => \^regma_data\(7),
      I2 => AddrReg2(1),
      I3 => Reg9(7),
      I4 => AddrReg2(0),
      I5 => Reg8(7),
      O => \Reg2_data[7]_INST_0_i_5_n_0\
    );
\Reg2_data[7]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(7),
      I1 => AddrReg2(1),
      I2 => RegD(7),
      I3 => AddrReg2(0),
      I4 => RegC(7),
      O => \Reg2_data[7]_INST_0_i_6_n_0\
    );
\Reg2_data[8]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[8]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[8]_INST_0_i_2_n_0\,
      O => Reg2_data(8),
      S => AddrReg2(3)
    );
\Reg2_data[8]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[8]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[8]_INST_0_i_4_n_0\,
      O => \Reg2_data[8]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[8]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[8]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[8]_INST_0_i_6_n_0\,
      O => \Reg2_data[8]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(8),
      I1 => Reg2(8),
      I2 => AddrReg2(1),
      I3 => Reg1(8),
      I4 => AddrReg2(0),
      I5 => Reg0(8),
      O => \Reg2_data[8]_INST_0_i_3_n_0\
    );
\Reg2_data[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(8),
      I1 => Reg6(8),
      I2 => AddrReg2(1),
      I3 => Reg5(8),
      I4 => AddrReg2(0),
      I5 => Reg4(8),
      O => \Reg2_data[8]_INST_0_i_4_n_0\
    );
\Reg2_data[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(8),
      I1 => \RegA_reg_n_0_[8]\,
      I2 => AddrReg2(1),
      I3 => Reg9(8),
      I4 => AddrReg2(0),
      I5 => Reg8(8),
      O => \Reg2_data[8]_INST_0_i_5_n_0\
    );
\Reg2_data[8]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(8),
      I1 => AddrReg2(1),
      I2 => RegD(8),
      I3 => AddrReg2(0),
      I4 => RegC(8),
      O => \Reg2_data[8]_INST_0_i_6_n_0\
    );
\Reg2_data[9]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data[9]_INST_0_i_1_n_0\,
      I1 => \Reg2_data[9]_INST_0_i_2_n_0\,
      O => Reg2_data(9),
      S => AddrReg2(3)
    );
\Reg2_data[9]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[9]_INST_0_i_3_n_0\,
      I1 => \Reg2_data[9]_INST_0_i_4_n_0\,
      O => \Reg2_data[9]_INST_0_i_1_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[9]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data[9]_INST_0_i_5_n_0\,
      I1 => \Reg2_data[9]_INST_0_i_6_n_0\,
      O => \Reg2_data[9]_INST_0_i_2_n_0\,
      S => AddrReg2(2)
    );
\Reg2_data[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg3(9),
      I1 => Reg2(9),
      I2 => AddrReg2(1),
      I3 => Reg1(9),
      I4 => AddrReg2(0),
      I5 => Reg0(9),
      O => \Reg2_data[9]_INST_0_i_3_n_0\
    );
\Reg2_data[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Reg7(9),
      I1 => Reg6(9),
      I2 => AddrReg2(1),
      I3 => Reg5(9),
      I4 => AddrReg2(0),
      I5 => Reg4(9),
      O => \Reg2_data[9]_INST_0_i_4_n_0\
    );
\Reg2_data[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegB(9),
      I1 => \RegA_reg_n_0_[9]\,
      I2 => AddrReg2(1),
      I3 => Reg9(9),
      I4 => AddrReg2(0),
      I5 => Reg8(9),
      O => \Reg2_data[9]_INST_0_i_5_n_0\
    );
\Reg2_data[9]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => RegE(9),
      I1 => AddrReg2(1),
      I2 => RegD(9),
      I3 => AddrReg2(0),
      I4 => RegC(9),
      O => \Reg2_data[9]_INST_0_i_6_n_0\
    );
\Reg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(0),
      Q => Reg2(0),
      R => '0'
    );
\Reg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(10),
      Q => Reg2(10),
      R => '0'
    );
\Reg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(11),
      Q => Reg2(11),
      R => '0'
    );
\Reg2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(12),
      Q => Reg2(12),
      R => '0'
    );
\Reg2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(13),
      Q => Reg2(13),
      R => '0'
    );
\Reg2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(14),
      Q => Reg2(14),
      R => '0'
    );
\Reg2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(15),
      Q => Reg2(15),
      R => '0'
    );
\Reg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(1),
      Q => Reg2(1),
      R => '0'
    );
\Reg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(2),
      Q => Reg2(2),
      R => '0'
    );
\Reg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(3),
      Q => Reg2(3),
      R => '0'
    );
\Reg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(4),
      Q => Reg2(4),
      R => '0'
    );
\Reg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(5),
      Q => Reg2(5),
      R => '0'
    );
\Reg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(6),
      Q => Reg2(6),
      R => '0'
    );
\Reg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(7),
      Q => Reg2(7),
      R => '0'
    );
\Reg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(8),
      Q => Reg2(8),
      R => '0'
    );
\Reg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg2_2,
      D => WriteData(9),
      Q => Reg2(9),
      R => '0'
    );
\Reg3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => WE,
      I1 => AddrWriteReg(1),
      I2 => AddrWriteReg(0),
      I3 => AddrWriteReg(2),
      I4 => AddrWriteReg(3),
      O => Reg3_3
    );
\Reg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(0),
      Q => Reg3(0),
      R => '0'
    );
\Reg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(10),
      Q => Reg3(10),
      R => '0'
    );
\Reg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(11),
      Q => Reg3(11),
      R => '0'
    );
\Reg3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(12),
      Q => Reg3(12),
      R => '0'
    );
\Reg3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(13),
      Q => Reg3(13),
      R => '0'
    );
\Reg3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(14),
      Q => Reg3(14),
      R => '0'
    );
\Reg3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(15),
      Q => Reg3(15),
      R => '0'
    );
\Reg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(1),
      Q => Reg3(1),
      R => '0'
    );
\Reg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(2),
      Q => Reg3(2),
      R => '0'
    );
\Reg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(3),
      Q => Reg3(3),
      R => '0'
    );
\Reg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(4),
      Q => Reg3(4),
      R => '0'
    );
\Reg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(5),
      Q => Reg3(5),
      R => '0'
    );
\Reg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(6),
      Q => Reg3(6),
      R => '0'
    );
\Reg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(7),
      Q => Reg3(7),
      R => '0'
    );
\Reg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(8),
      Q => Reg3(8),
      R => '0'
    );
\Reg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg3_3,
      D => WriteData(9),
      Q => Reg3(9),
      R => '0'
    );
\Reg4[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => WE,
      I1 => AddrWriteReg(1),
      I2 => AddrWriteReg(2),
      I3 => AddrWriteReg(0),
      I4 => AddrWriteReg(3),
      O => Reg4_4
    );
\Reg4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(0),
      Q => Reg4(0),
      R => '0'
    );
\Reg4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(10),
      Q => Reg4(10),
      R => '0'
    );
\Reg4_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(11),
      Q => Reg4(11),
      R => '0'
    );
\Reg4_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(12),
      Q => Reg4(12),
      R => '0'
    );
\Reg4_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(13),
      Q => Reg4(13),
      R => '0'
    );
\Reg4_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(14),
      Q => Reg4(14),
      R => '0'
    );
\Reg4_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(15),
      Q => Reg4(15),
      R => '0'
    );
\Reg4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(1),
      Q => Reg4(1),
      R => '0'
    );
\Reg4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(2),
      Q => Reg4(2),
      R => '0'
    );
\Reg4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(3),
      Q => Reg4(3),
      R => '0'
    );
\Reg4_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(4),
      Q => Reg4(4),
      R => '0'
    );
\Reg4_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(5),
      Q => Reg4(5),
      R => '0'
    );
\Reg4_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(6),
      Q => Reg4(6),
      R => '0'
    );
\Reg4_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(7),
      Q => Reg4(7),
      R => '0'
    );
\Reg4_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(8),
      Q => Reg4(8),
      R => '0'
    );
\Reg4_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg4_4,
      D => WriteData(9),
      Q => Reg4(9),
      R => '0'
    );
\Reg5[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => WE,
      I1 => AddrWriteReg(2),
      I2 => AddrWriteReg(0),
      I3 => AddrWriteReg(1),
      I4 => AddrWriteReg(3),
      O => Reg5_5
    );
\Reg5_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(0),
      Q => Reg5(0),
      R => '0'
    );
\Reg5_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(10),
      Q => Reg5(10),
      R => '0'
    );
\Reg5_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(11),
      Q => Reg5(11),
      R => '0'
    );
\Reg5_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(12),
      Q => Reg5(12),
      R => '0'
    );
\Reg5_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(13),
      Q => Reg5(13),
      R => '0'
    );
\Reg5_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(14),
      Q => Reg5(14),
      R => '0'
    );
\Reg5_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(15),
      Q => Reg5(15),
      R => '0'
    );
\Reg5_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(1),
      Q => Reg5(1),
      R => '0'
    );
\Reg5_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(2),
      Q => Reg5(2),
      R => '0'
    );
\Reg5_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(3),
      Q => Reg5(3),
      R => '0'
    );
\Reg5_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(4),
      Q => Reg5(4),
      R => '0'
    );
\Reg5_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(5),
      Q => Reg5(5),
      R => '0'
    );
\Reg5_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(6),
      Q => Reg5(6),
      R => '0'
    );
\Reg5_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(7),
      Q => Reg5(7),
      R => '0'
    );
\Reg5_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(8),
      Q => Reg5(8),
      R => '0'
    );
\Reg5_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg5_5,
      D => WriteData(9),
      Q => Reg5(9),
      R => '0'
    );
\Reg6[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => WE,
      I1 => AddrWriteReg(2),
      I2 => AddrWriteReg(1),
      I3 => AddrWriteReg(0),
      I4 => AddrWriteReg(3),
      O => Reg6_6
    );
\Reg6_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(0),
      Q => Reg6(0),
      R => '0'
    );
\Reg6_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(10),
      Q => Reg6(10),
      R => '0'
    );
\Reg6_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(11),
      Q => Reg6(11),
      R => '0'
    );
\Reg6_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(12),
      Q => Reg6(12),
      R => '0'
    );
\Reg6_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(13),
      Q => Reg6(13),
      R => '0'
    );
\Reg6_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(14),
      Q => Reg6(14),
      R => '0'
    );
\Reg6_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(15),
      Q => Reg6(15),
      R => '0'
    );
\Reg6_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(1),
      Q => Reg6(1),
      R => '0'
    );
\Reg6_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(2),
      Q => Reg6(2),
      R => '0'
    );
\Reg6_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(3),
      Q => Reg6(3),
      R => '0'
    );
\Reg6_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(4),
      Q => Reg6(4),
      R => '0'
    );
\Reg6_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(5),
      Q => Reg6(5),
      R => '0'
    );
\Reg6_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(6),
      Q => Reg6(6),
      R => '0'
    );
\Reg6_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(7),
      Q => Reg6(7),
      R => '0'
    );
\Reg6_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(8),
      Q => Reg6(8),
      R => '0'
    );
\Reg6_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg6_6,
      D => WriteData(9),
      Q => Reg6(9),
      R => '0'
    );
\Reg7[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => WE,
      I1 => AddrWriteReg(1),
      I2 => AddrWriteReg(0),
      I3 => AddrWriteReg(3),
      I4 => AddrWriteReg(2),
      O => Reg7_7
    );
\Reg7_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(0),
      Q => Reg7(0),
      R => '0'
    );
\Reg7_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(10),
      Q => Reg7(10),
      R => '0'
    );
\Reg7_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(11),
      Q => Reg7(11),
      R => '0'
    );
\Reg7_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(12),
      Q => Reg7(12),
      R => '0'
    );
\Reg7_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(13),
      Q => Reg7(13),
      R => '0'
    );
\Reg7_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(14),
      Q => Reg7(14),
      R => '0'
    );
\Reg7_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(15),
      Q => Reg7(15),
      R => '0'
    );
\Reg7_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(1),
      Q => Reg7(1),
      R => '0'
    );
\Reg7_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(2),
      Q => Reg7(2),
      R => '0'
    );
\Reg7_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(3),
      Q => Reg7(3),
      R => '0'
    );
\Reg7_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(4),
      Q => Reg7(4),
      R => '0'
    );
\Reg7_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(5),
      Q => Reg7(5),
      R => '0'
    );
\Reg7_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(6),
      Q => Reg7(6),
      R => '0'
    );
\Reg7_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(7),
      Q => Reg7(7),
      R => '0'
    );
\Reg7_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(8),
      Q => Reg7(8),
      R => '0'
    );
\Reg7_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg7_7,
      D => WriteData(9),
      Q => Reg7(9),
      R => '0'
    );
\Reg8[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => WE,
      I1 => AddrWriteReg(1),
      I2 => AddrWriteReg(3),
      I3 => AddrWriteReg(2),
      I4 => AddrWriteReg(0),
      O => Reg8_8
    );
\Reg8_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(0),
      Q => Reg8(0),
      R => '0'
    );
\Reg8_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(10),
      Q => Reg8(10),
      R => '0'
    );
\Reg8_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(11),
      Q => Reg8(11),
      R => '0'
    );
\Reg8_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(12),
      Q => Reg8(12),
      R => '0'
    );
\Reg8_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(13),
      Q => Reg8(13),
      R => '0'
    );
\Reg8_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(14),
      Q => Reg8(14),
      R => '0'
    );
\Reg8_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(15),
      Q => Reg8(15),
      R => '0'
    );
\Reg8_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(1),
      Q => Reg8(1),
      R => '0'
    );
\Reg8_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(2),
      Q => Reg8(2),
      R => '0'
    );
\Reg8_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(3),
      Q => Reg8(3),
      R => '0'
    );
\Reg8_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(4),
      Q => Reg8(4),
      R => '0'
    );
\Reg8_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(5),
      Q => Reg8(5),
      R => '0'
    );
\Reg8_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(6),
      Q => Reg8(6),
      R => '0'
    );
\Reg8_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(7),
      Q => Reg8(7),
      R => '0'
    );
\Reg8_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(8),
      Q => Reg8(8),
      R => '0'
    );
\Reg8_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg8_8,
      D => WriteData(9),
      Q => Reg8(9),
      R => '0'
    );
\Reg9[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => WE,
      I1 => AddrWriteReg(3),
      I2 => AddrWriteReg(0),
      I3 => AddrWriteReg(2),
      I4 => AddrWriteReg(1),
      O => Reg9_9
    );
\Reg9_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(0),
      Q => Reg9(0),
      R => '0'
    );
\Reg9_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(10),
      Q => Reg9(10),
      R => '0'
    );
\Reg9_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(11),
      Q => Reg9(11),
      R => '0'
    );
\Reg9_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(12),
      Q => Reg9(12),
      R => '0'
    );
\Reg9_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(13),
      Q => Reg9(13),
      R => '0'
    );
\Reg9_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(14),
      Q => Reg9(14),
      R => '0'
    );
\Reg9_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(15),
      Q => Reg9(15),
      R => '0'
    );
\Reg9_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(1),
      Q => Reg9(1),
      R => '0'
    );
\Reg9_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(2),
      Q => Reg9(2),
      R => '0'
    );
\Reg9_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(3),
      Q => Reg9(3),
      R => '0'
    );
\Reg9_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(4),
      Q => Reg9(4),
      R => '0'
    );
\Reg9_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(5),
      Q => Reg9(5),
      R => '0'
    );
\Reg9_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(6),
      Q => Reg9(6),
      R => '0'
    );
\Reg9_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(7),
      Q => Reg9(7),
      R => '0'
    );
\Reg9_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(8),
      Q => Reg9(8),
      R => '0'
    );
\Reg9_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Reg9_9,
      D => WriteData(9),
      Q => Reg9(9),
      R => '0'
    );
\RegA[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => WE,
      I1 => AddrWriteReg(3),
      I2 => AddrWriteReg(1),
      I3 => AddrWriteReg(2),
      I4 => AddrWriteReg(0),
      O => RegA
    );
\RegA_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(0),
      Q => \^regma_data\(0),
      R => '0'
    );
\RegA_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(10),
      Q => \RegA_reg_n_0_[10]\,
      R => '0'
    );
\RegA_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(11),
      Q => \RegA_reg_n_0_[11]\,
      R => '0'
    );
\RegA_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(12),
      Q => \RegA_reg_n_0_[12]\,
      R => '0'
    );
\RegA_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(13),
      Q => \RegA_reg_n_0_[13]\,
      R => '0'
    );
\RegA_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(14),
      Q => \RegA_reg_n_0_[14]\,
      R => '0'
    );
\RegA_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(15),
      Q => \RegA_reg_n_0_[15]\,
      R => '0'
    );
\RegA_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(1),
      Q => \^regma_data\(1),
      R => '0'
    );
\RegA_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(2),
      Q => \^regma_data\(2),
      R => '0'
    );
\RegA_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(3),
      Q => \^regma_data\(3),
      R => '0'
    );
\RegA_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(4),
      Q => \^regma_data\(4),
      R => '0'
    );
\RegA_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(5),
      Q => \^regma_data\(5),
      R => '0'
    );
\RegA_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(6),
      Q => \^regma_data\(6),
      R => '0'
    );
\RegA_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(7),
      Q => \^regma_data\(7),
      R => '0'
    );
\RegA_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(8),
      Q => \RegA_reg_n_0_[8]\,
      R => '0'
    );
\RegA_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegA,
      D => WriteData(9),
      Q => \RegA_reg_n_0_[9]\,
      R => '0'
    );
\RegB[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => WE,
      I1 => AddrWriteReg(1),
      I2 => AddrWriteReg(0),
      I3 => AddrWriteReg(2),
      I4 => AddrWriteReg(3),
      O => RegB_10
    );
\RegB_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(0),
      Q => \RegB_reg_n_0_[0]\,
      R => '0'
    );
\RegB_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(10),
      Q => RegB(10),
      R => '0'
    );
\RegB_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(11),
      Q => RegB(11),
      R => '0'
    );
\RegB_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(12),
      Q => RegB(12),
      R => '0'
    );
\RegB_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(13),
      Q => RegB(13),
      R => '0'
    );
\RegB_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(14),
      Q => RegB(14),
      R => '0'
    );
\RegB_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(15),
      Q => RegB(15),
      R => '0'
    );
\RegB_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(1),
      Q => \RegB_reg_n_0_[1]\,
      R => '0'
    );
\RegB_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(2),
      Q => \RegB_reg_n_0_[2]\,
      R => '0'
    );
\RegB_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(3),
      Q => \RegB_reg_n_0_[3]\,
      R => '0'
    );
\RegB_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(4),
      Q => RegB(4),
      R => '0'
    );
\RegB_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(5),
      Q => RegB(5),
      R => '0'
    );
\RegB_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(6),
      Q => RegB(6),
      R => '0'
    );
\RegB_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(7),
      Q => RegB(7),
      R => '0'
    );
\RegB_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(8),
      Q => RegB(8),
      R => '0'
    );
\RegB_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegB_10,
      D => WriteData(9),
      Q => RegB(9),
      R => '0'
    );
\RegC[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => WE,
      I1 => AddrWriteReg(2),
      I2 => AddrWriteReg(3),
      I3 => AddrWriteReg(1),
      I4 => AddrWriteReg(0),
      O => RegC_11
    );
\RegC_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(0),
      Q => RegC(0),
      R => '0'
    );
\RegC_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(10),
      Q => RegC(10),
      R => '0'
    );
\RegC_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(11),
      Q => RegC(11),
      R => '0'
    );
\RegC_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(12),
      Q => RegC(12),
      R => '0'
    );
\RegC_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(13),
      Q => RegC(13),
      R => '0'
    );
\RegC_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(14),
      Q => RegC(14),
      R => '0'
    );
\RegC_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(15),
      Q => RegC(15),
      R => '0'
    );
\RegC_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(1),
      Q => RegC(1),
      R => '0'
    );
\RegC_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(2),
      Q => RegC(2),
      R => '0'
    );
\RegC_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(3),
      Q => RegC(3),
      R => '0'
    );
\RegC_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(4),
      Q => RegC(4),
      R => '0'
    );
\RegC_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(5),
      Q => RegC(5),
      R => '0'
    );
\RegC_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(6),
      Q => RegC(6),
      R => '0'
    );
\RegC_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(7),
      Q => RegC(7),
      R => '0'
    );
\RegC_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(8),
      Q => RegC(8),
      R => '0'
    );
\RegC_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegC_11,
      D => WriteData(9),
      Q => RegC(9),
      R => '0'
    );
\RegD[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => WE,
      I1 => AddrWriteReg(3),
      I2 => AddrWriteReg(0),
      I3 => AddrWriteReg(1),
      I4 => AddrWriteReg(2),
      O => RegD_12
    );
\RegD_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(0),
      Q => RegD(0),
      R => '0'
    );
\RegD_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(10),
      Q => RegD(10),
      R => '0'
    );
\RegD_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(11),
      Q => RegD(11),
      R => '0'
    );
\RegD_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(12),
      Q => RegD(12),
      R => '0'
    );
\RegD_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(13),
      Q => RegD(13),
      R => '0'
    );
\RegD_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(14),
      Q => RegD(14),
      R => '0'
    );
\RegD_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(15),
      Q => RegD(15),
      R => '0'
    );
\RegD_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(1),
      Q => RegD(1),
      R => '0'
    );
\RegD_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(2),
      Q => RegD(2),
      R => '0'
    );
\RegD_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(3),
      Q => RegD(3),
      R => '0'
    );
\RegD_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(4),
      Q => RegD(4),
      R => '0'
    );
\RegD_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(5),
      Q => RegD(5),
      R => '0'
    );
\RegD_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(6),
      Q => RegD(6),
      R => '0'
    );
\RegD_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(7),
      Q => RegD(7),
      R => '0'
    );
\RegD_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(8),
      Q => RegD(8),
      R => '0'
    );
\RegD_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegD_12,
      D => WriteData(9),
      Q => RegD(9),
      R => '0'
    );
\RegE[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => WE,
      I1 => AddrWriteReg(1),
      I2 => AddrWriteReg(3),
      I3 => AddrWriteReg(0),
      I4 => AddrWriteReg(2),
      O => RegE_13
    );
\RegE_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(0),
      Q => RegE(0),
      R => '0'
    );
\RegE_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(10),
      Q => RegE(10),
      R => '0'
    );
\RegE_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(11),
      Q => RegE(11),
      R => '0'
    );
\RegE_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(12),
      Q => RegE(12),
      R => '0'
    );
\RegE_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(13),
      Q => RegE(13),
      R => '0'
    );
\RegE_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(14),
      Q => RegE(14),
      R => '0'
    );
\RegE_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(15),
      Q => RegE(15),
      R => '0'
    );
\RegE_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(1),
      Q => RegE(1),
      R => '0'
    );
\RegE_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(2),
      Q => RegE(2),
      R => '0'
    );
\RegE_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(3),
      Q => RegE(3),
      R => '0'
    );
\RegE_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(4),
      Q => RegE(4),
      R => '0'
    );
\RegE_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(5),
      Q => RegE(5),
      R => '0'
    );
\RegE_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(6),
      Q => RegE(6),
      R => '0'
    );
\RegE_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(7),
      Q => RegE(7),
      R => '0'
    );
\RegE_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(8),
      Q => RegE(8),
      R => '0'
    );
\RegE_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => RegE_13,
      D => WriteData(9),
      Q => RegE(9),
      R => '0'
    );
\RegF_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => OverwriteFl,
      D => Flags(0),
      Q => RegF(0),
      R => '0'
    );
\RegF_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => OverwriteFl,
      D => Flags(1),
      Q => RegF(1),
      R => '0'
    );
\RegF_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => OverwriteFl,
      D => Flags(2),
      Q => RegF(2),
      R => '0'
    );
\RegF_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => OverwriteFl,
      D => Flags(3),
      Q => RegF(3),
      R => '0'
    );
\RegF_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => OverwriteFl,
      D => Flags(4),
      Q => RegF(4),
      R => '0'
    );
\RegF_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => OverwriteFl,
      D => Flags(5),
      Q => RegF(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_ALU_FLAG_PACKER_0_1 is
  port (
    CARRY_FLAG : in STD_LOGIC;
    ZERO_FLAG : in STD_LOGIC;
    SMALLER_ZERO_FLAG : in STD_LOGIC;
    BIGGER_ZERO_FLAG : in STD_LOGIC;
    OVERFLOW_FLAG : in STD_LOGIC;
    RHO_FLAG : in STD_LOGIC;
    NOT_ZERO_FLAG : in STD_LOGIC;
    ALU_FLAGS : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_ALU_FLAG_PACKER_0_1 : entity is "main_ALU_FLAG_PACKER_0_1,ALU_FLAG_PACKER,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_ALU_FLAG_PACKER_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_ALU_FLAG_PACKER_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_ALU_FLAG_PACKER_0_1 : entity is "ALU_FLAG_PACKER,Vivado 2024.1";
end main_ALU_FLAG_PACKER_0_1;

architecture STRUCTURE of main_ALU_FLAG_PACKER_0_1 is
  signal \^bigger_zero_flag\ : STD_LOGIC;
  signal \^carry_flag\ : STD_LOGIC;
  signal \^not_zero_flag\ : STD_LOGIC;
  signal \^overflow_flag\ : STD_LOGIC;
  signal \^smaller_zero_flag\ : STD_LOGIC;
  signal \^zero_flag\ : STD_LOGIC;
begin
  ALU_FLAGS(6) <= \^not_zero_flag\;
  ALU_FLAGS(4) <= \^overflow_flag\;
  ALU_FLAGS(3) <= \^bigger_zero_flag\;
  ALU_FLAGS(2) <= \^smaller_zero_flag\;
  ALU_FLAGS(1) <= \^zero_flag\;
  ALU_FLAGS(0) <= \^carry_flag\;
  \^bigger_zero_flag\ <= BIGGER_ZERO_FLAG;
  \^carry_flag\ <= CARRY_FLAG;
  \^not_zero_flag\ <= NOT_ZERO_FLAG;
  \^overflow_flag\ <= OVERFLOW_FLAG;
  \^smaller_zero_flag\ <= SMALLER_ZERO_FLAG;
  \^zero_flag\ <= ZERO_FLAG;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_IROM_0_1 is
  port (
    Address : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_IROM_0_1 : entity is "main_IROM_0_1,IROM,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_IROM_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_IROM_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_IROM_0_1 : entity is "IROM,Vivado 2024.1";
end main_IROM_0_1;

architecture STRUCTURE of main_IROM_0_1 is
  signal \Data[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Data[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal g0_b10_n_0 : STD_LOGIC;
  signal g0_b11_n_0 : STD_LOGIC;
  signal g0_b12_n_0 : STD_LOGIC;
  signal g0_b13_n_0 : STD_LOGIC;
  signal g0_b14_n_0 : STD_LOGIC;
  signal g0_b15_n_0 : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal g0_b8_n_0 : STD_LOGIC;
  signal g0_b9_n_0 : STD_LOGIC;
begin
\Data[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b0_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(0)
    );
\Data[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b10_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(10)
    );
\Data[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b11_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(11)
    );
\Data[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b12_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(12)
    );
\Data[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b13_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(13)
    );
\Data[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b14_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(14)
    );
\Data[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b15_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(15)
    );
\Data[15]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Address(11),
      I1 => Address(12),
      I2 => Address(9),
      I3 => Address(10),
      O => \Data[15]_INST_0_i_1_n_0\
    );
\Data[15]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Address(7),
      I1 => Address(8),
      I2 => Address(5),
      I3 => Address(6),
      O => \Data[15]_INST_0_i_2_n_0\
    );
\Data[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b1_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(1)
    );
\Data[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b2_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(2)
    );
\Data[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b3_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(3)
    );
\Data[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b4_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(4)
    );
\Data[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b5_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(5)
    );
\Data[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b6_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(6)
    );
\Data[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b7_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(7)
    );
\Data[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b8_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(8)
    );
\Data[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => g0_b9_n_0,
      I1 => \Data[15]_INST_0_i_1_n_0\,
      I2 => \Data[15]_INST_0_i_2_n_0\,
      I3 => Address(15),
      I4 => Address(13),
      I5 => Address(14),
      O => Data(9)
    );
g0_b0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"34810190"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b0_n_0
    );
g0_b1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04811010"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2082FF00"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b10_n_0
    );
g0_b11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20040000"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b11_n_0
    );
g0_b12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"165DAAAA"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b12_n_0
    );
g0_b13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"082A0000"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b13_n_0
    );
g0_b14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B2AFFFF"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b14_n_0
    );
g0_b15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28A20000"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b15_n_0
    );
g0_b2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20111010"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b2_n_0
    );
g0_b3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00804410"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b3_n_0
    );
g0_b4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"24C41000"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b4_n_0
    );
g0_b5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38AB0000"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b5_n_0
    );
g0_b6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38EB0400"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b6_n_0
    );
g0_b7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28AA1400"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b7_n_0
    );
g0_b8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38C0CCCC"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b8_n_0
    );
g0_b9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008FF0F0"
    )
        port map (
      I0 => Address(0),
      I1 => Address(1),
      I2 => Address(2),
      I3 => Address(3),
      I4 => Address(4),
      O => g0_b9_n_0
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
    NOT_ZERO_FLAG : out STD_LOGIC;
    \Operand2_out[0]_repN_alias\ : in STD_LOGIC;
    \WriteDataSel_out[0]_alias\ : in STD_LOGIC;
    \WriteDataSel_out[1]_alias\ : in STD_LOGIC;
    \ManipulatedImmidiate[6]_alias\ : in STD_LOGIC;
    O_alias : in STD_LOGIC;
    \ALU_OUT[6]_INST_0_i_4_n_0_alias\ : out STD_LOGIC;
    \ALU_OUT[6]_INST_0_i_3_n_0_alias\ : out STD_LOGIC;
    \ALU_OUT[6]_INST_0_i_2_n_0_alias\ : out STD_LOGIC;
    \ALU_OUT[6]_repN_2_alias\ : out STD_LOGIC
  );
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
  signal \^smaller_zero_flag\ : STD_LOGIC;
begin
  ALU_OUT(15) <= \^smaller_zero_flag\;
  ALU_OUT(14 downto 0) <= \^alu_out\(14 downto 0);
  SMALLER_ZERO_FLAG <= \^smaller_zero_flag\;
U0: entity work.ALU
     port map (
      ALU_OPP(3 downto 0) => ALU_OPP(3 downto 0),
      ALU_OUT(14 downto 0) => \^alu_out\(14 downto 0),
      \ALU_OUT[6]_INST_0_i_2_n_0_alias\ => \ALU_OUT[6]_INST_0_i_2_n_0_alias\,
      \ALU_OUT[6]_INST_0_i_3_n_0_alias\ => \ALU_OUT[6]_INST_0_i_3_n_0_alias\,
      \ALU_OUT[6]_INST_0_i_4_n_0_alias\ => \ALU_OUT[6]_INST_0_i_4_n_0_alias\,
      \ALU_OUT[6]_repN_2_alias\ => \ALU_OUT[6]_repN_2_alias\,
      BIGGER_ZERO_FLAG => BIGGER_ZERO_FLAG,
      CARRY_FLAG => CARRY_FLAG,
      D1(15 downto 0) => D1(15 downto 0),
      D2(15 downto 0) => D2(15 downto 0),
      \ManipulatedImmidiate[6]_alias\ => \ManipulatedImmidiate[6]_alias\,
      NOT_ZERO_FLAG => NOT_ZERO_FLAG,
      OVERFLOW_FLAG => OVERFLOW_FLAG,
      O_alias => O_alias,
      \Operand2_out[0]_repN_alias\ => \Operand2_out[0]_repN_alias\,
      \WriteDataSel_out[0]_alias\ => \WriteDataSel_out[0]_alias\,
      \WriteDataSel_out[1]_alias\ => \WriteDataSel_out[1]_alias\,
      ZERO_FLAG => ZERO_FLAG,
      \immediate_s_reg[1]\ => \^smaller_zero_flag\
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of RAM_Address_Src_INST_0 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of RAM_Write_INST_0 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of RF_WHB_INST_0 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of RF_WLB_INST_0 : label is "soft_lutpair24";
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
U0: entity work.CU_Decoder
     port map (
      Instruction(3 downto 0) => Instruction(15 downto 12),
      Is_ALU_OP => Is_ALU_OP,
      JMP => JMP,
      JMP_DestinationSource => JMP_DestinationSource,
      JMP_Relative => \^jmp_relative\,
      Write_Data_Sel(1 downto 0) => Write_Data_Sel(1 downto 0)
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
U0: entity work.CU_ImmediateManipulator
     port map (
      Immediate(15 downto 0) => Immediate(15 downto 0),
      ManipulatedImmidiate(15 downto 0) => ManipulatedImmidiate(15 downto 0),
      RF_WHB => RF_WHB,
      RF_WLB => RF_WLB,
      Reg1(15 downto 0) => Reg1(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_CU_JumpController_0_0 is
  port (
    InstrExec_CLK : in STD_LOGIC;
    JMP : in STD_LOGIC;
    JMP_Conditional : in STD_LOGIC;
    JMP_Relative : in STD_LOGIC;
    JMP_Condition : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Flags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_Address : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PC_Current : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PC_Load : out STD_LOGIC;
    PC_Next : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_CU_JumpController_0_0 : entity is "main_CU_JumpController_0_0,CU_JumpController,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_CU_JumpController_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_CU_JumpController_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_CU_JumpController_0_0 : entity is "CU_JumpController,Vivado 2024.1";
end main_CU_JumpController_0_0;

architecture STRUCTURE of main_CU_JumpController_0_0 is
  signal PC_Load_INST_0_i_1_n_0 : STD_LOGIC;
  signal PC_Load_INST_0_i_2_n_0 : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of InstrExec_CLK : signal is "xilinx.com:signal:clock:1.0 InstrExec_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of InstrExec_CLK : signal is "XIL_INTERFACENAME InstrExec_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
PC_Load_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AAA222"
    )
        port map (
      I0 => JMP,
      I1 => JMP_Conditional,
      I2 => PC_Load_INST_0_i_1_n_0,
      I3 => JMP_Condition(2),
      I4 => PC_Load_INST_0_i_2_n_0,
      O => PC_Load
    );
PC_Load_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC77FC44"
    )
        port map (
      I0 => Flags(1),
      I1 => JMP_Condition(1),
      I2 => Flags(5),
      I3 => JMP_Condition(0),
      I4 => Flags(4),
      O => PC_Load_INST_0_i_1_n_0
    );
PC_Load_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Flags(3),
      I1 => Flags(2),
      I2 => JMP_Condition(1),
      I3 => Flags(1),
      I4 => JMP_Condition(0),
      I5 => Flags(0),
      O => PC_Load_INST_0_i_2_n_0
    );
U0: entity work.CU_JumpController
     port map (
      JMP_Address(15 downto 0) => JMP_Address(15 downto 0),
      JMP_Relative => JMP_Relative,
      PC_Current(15 downto 0) => PC_Current(15 downto 0),
      PC_Next(15 downto 0) => PC_Next(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_CU_JumpDestinationSe_0_0 is
  port (
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Register1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    JMP_DestinationSelect : in STD_LOGIC;
    JMP_Address : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_CU_JumpDestinationSe_0_0 : entity is "main_CU_JumpDestinationSe_0_0,CU_JumpDestinationSelector,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_CU_JumpDestinationSe_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_CU_JumpDestinationSe_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_CU_JumpDestinationSe_0_0 : entity is "CU_JumpDestinationSelector,Vivado 2024.1";
end main_CU_JumpDestinationSe_0_0;

architecture STRUCTURE of main_CU_JumpDestinationSe_0_0 is
begin
U0: entity work.CU_JumpDestinationSelector
     port map (
      Immediate(15 downto 0) => Immediate(15 downto 0),
      JMP_Address(15 downto 0) => JMP_Address(15 downto 0),
      JMP_DestinationSelect => JMP_DestinationSelect,
      Register1(15 downto 0) => Register1(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_CU_RAMAddressControl_0_0 is
  port (
    Reg2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RAM_Address_Src : in STD_LOGIC;
    Use_MA : in STD_LOGIC;
    RAM_Address : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_CU_RAMAddressControl_0_0 : entity is "main_CU_RAMAddressControl_0_0,CU_RAMAddressController,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_CU_RAMAddressControl_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_CU_RAMAddressControl_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_CU_RAMAddressControl_0_0 : entity is "CU_RAMAddressController,Vivado 2024.1";
end main_CU_RAMAddressControl_0_0;

architecture STRUCTURE of main_CU_RAMAddressControl_0_0 is
begin
U0: entity work.CU_RAMAddressController
     port map (
      Immediate(7 downto 0) => Immediate(7 downto 0),
      MA(7 downto 0) => MA(7 downto 0),
      RAM_Address(7 downto 0) => RAM_Address(7 downto 0),
      RAM_Address_Src => RAM_Address_Src,
      Reg2(7 downto 0) => Reg2(7 downto 0),
      Use_MA => Use_MA
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
    Write_Data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \Immediate_out[1]_alias\ : in STD_LOGIC;
    \ALU_OUT[6]_INST_0_i_4_n_0_alias\ : in STD_LOGIC;
    \ALU_OUT[6]_INST_0_i_3_n_0_alias\ : in STD_LOGIC;
    \ALU_OUT[6]_INST_0_i_2_n_0_alias\ : in STD_LOGIC;
    \ALU_OUT[6]_repN_2_alias\ : in STD_LOGIC
  );
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
U0: entity work.CU_WriteSelector
     port map (
      \ALU_OUT[6]_INST_0_i_2_n_0_alias\ => \ALU_OUT[6]_INST_0_i_2_n_0_alias\,
      \ALU_OUT[6]_INST_0_i_3_n_0_alias\ => \ALU_OUT[6]_INST_0_i_3_n_0_alias\,
      \ALU_OUT[6]_INST_0_i_4_n_0_alias\ => \ALU_OUT[6]_INST_0_i_4_n_0_alias\,
      \ALU_OUT[6]_repN_2_alias\ => \ALU_OUT[6]_repN_2_alias\,
      ALU_Out(15 downto 0) => ALU_Out(15 downto 0),
      \Immediate_out[1]_alias\ => \Immediate_out[1]_alias\,
      Manipulated_Immidiate(15 downto 0) => Manipulated_Immidiate(15 downto 0),
      RAM_Out(15 downto 0) => RAM_Out(15 downto 0),
      Reg1(15 downto 0) => Reg1(15 downto 0),
      Write_Data(15 downto 0) => Write_Data(15 downto 0),
      Write_Sel(1 downto 0) => Write_Sel(1 downto 0)
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
  signal \^immediate\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^instruction\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  Immediate(15) <= \^immediate\(12);
  Immediate(14) <= \^immediate\(12);
  Immediate(13) <= \^immediate\(12);
  Immediate(12 downto 0) <= \^immediate\(12 downto 0);
  JMP_Condition(2 downto 0) <= \^instruction\(11 downto 9);
  \^instruction\(15 downto 0) <= Instruction(15 downto 0);
U0: entity work.Decoder
     port map (
      Immediate(12 downto 0) => \^immediate\(12 downto 0),
      Instruction(15 downto 0) => \^instruction\(15 downto 0),
      Register1(3 downto 0) => Register1(3 downto 0),
      Register2(3 downto 0) => Register2(3 downto 0),
      Use_MA => Use_MA,
      WriteBackRegister(3 downto 0) => WriteBackRegister(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_Pipelining_Controller_0_0 is
  port (
    InstrLoad_CLK : in STD_LOGIC;
    InstrExec_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ResolveStall : in STD_LOGIC;
    Stalled : out STD_LOGIC;
    InstructionForwardConfiguration : out STD_LOGIC_VECTOR ( 4 downto 0 );
    InstructionToExecute : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_Pipelining_Controller_0_0 : entity is "main_Pipelining_Controller_0_0,Pipelining_Controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_Pipelining_Controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_Pipelining_Controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_Pipelining_Controller_0_0 : entity is "Pipelining_Controller,Vivado 2024.1";
end main_Pipelining_Controller_0_0;

architecture STRUCTURE of main_Pipelining_Controller_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of InstrExec_CLK : signal is "xilinx.com:signal:clock:1.0 InstrExec_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of InstrExec_CLK : signal is "XIL_INTERFACENAME InstrExec_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of InstrLoad_CLK : signal is "xilinx.com:signal:clock:1.0 InstrLoad_CLK CLK";
  attribute x_interface_parameter of InstrLoad_CLK : signal is "XIL_INTERFACENAME InstrLoad_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Pipelining_Controller
     port map (
      InstrExec_CLK => InstrExec_CLK,
      InstrLoad_CLK => InstrLoad_CLK,
      Instruction(15 downto 0) => Instruction(15 downto 0),
      InstructionForwardConfiguration(4 downto 0) => InstructionForwardConfiguration(4 downto 0),
      InstructionToExecute(15 downto 0) => InstructionToExecute(15 downto 0),
      Reset => Reset,
      ResolveStall => ResolveStall,
      stalled_s_reg_0 => Stalled
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_Pipelining_Execution_0_0 is
  port (
    InstrLoad_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Operand1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Operand2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WriteAddress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WHB : in STD_LOGIC;
    WLB : in STD_LOGIC;
    WriteDataSel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RAM_Src : in STD_LOGIC;
    RAM_Read : in STD_LOGIC;
    RAM_Write : in STD_LOGIC;
    Use_MA : in STD_LOGIC;
    JMP : in STD_LOGIC;
    JMP_Conditional : in STD_LOGIC;
    JMP_Relative : in STD_LOGIC;
    JMP_DestinationSelect : in STD_LOGIC;
    JMP_Condition : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Is_ALU_OP : in STD_LOGIC;
    Is_RAM_OP : in STD_LOGIC;
    Operand1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Operand2_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Immediate_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    MA_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    WriteAddress_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WHB_out : out STD_LOGIC;
    WLB_out : out STD_LOGIC;
    WriteDataSel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RAM_Src_out : out STD_LOGIC;
    RAM_Read_out : out STD_LOGIC;
    RAM_Write_out : out STD_LOGIC;
    Use_MA_out : out STD_LOGIC;
    JMP_out : out STD_LOGIC;
    JMP_Conditional_out : out STD_LOGIC;
    JMP_Relative_out : out STD_LOGIC;
    JMP_DestinationSelect_out : out STD_LOGIC;
    JMP_Condition_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IS_ALU_OP_out : out STD_LOGIC;
    Is_RAM_OP_out : out STD_LOGIC;
    \Operand2_out[0]_repN_alias\ : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_Pipelining_Execution_0_0 : entity is "main_Pipelining_Execution_0_0,Pipelining_ExecutionStage,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_Pipelining_Execution_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_Pipelining_Execution_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_Pipelining_Execution_0_0 : entity is "Pipelining_ExecutionStage,Vivado 2024.1";
end main_Pipelining_Execution_0_0;

architecture STRUCTURE of main_Pipelining_Execution_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of InstrLoad_CLK : signal is "xilinx.com:signal:clock:1.0 InstrLoad_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of InstrLoad_CLK : signal is "XIL_INTERFACENAME InstrLoad_CLK, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Pipelining_ExecutionStage
     port map (
      IS_ALU_OP_out => IS_ALU_OP_out,
      Immediate(15 downto 0) => Immediate(15 downto 0),
      Immediate_out(15 downto 0) => Immediate_out(15 downto 0),
      InstrLoad_CLK => InstrLoad_CLK,
      Is_ALU_OP => Is_ALU_OP,
      JMP => JMP,
      JMP_Condition(2 downto 0) => JMP_Condition(2 downto 0),
      JMP_Condition_out(2 downto 0) => JMP_Condition_out(2 downto 0),
      JMP_Conditional => JMP_Conditional,
      JMP_Conditional_out => JMP_Conditional_out,
      JMP_DestinationSelect => JMP_DestinationSelect,
      JMP_DestinationSelect_out => JMP_DestinationSelect_out,
      JMP_Relative => JMP_Relative,
      JMP_Relative_out => JMP_Relative_out,
      JMP_out => JMP_out,
      MA(7 downto 0) => MA(7 downto 0),
      MA_out(7 downto 0) => MA_out(7 downto 0),
      Operand1(15 downto 0) => Operand1(15 downto 0),
      Operand1_out(15 downto 0) => Operand1_out(15 downto 0),
      Operand2(15 downto 0) => Operand2(15 downto 0),
      Operand2_out(15 downto 0) => Operand2_out(15 downto 0),
      \Operand2_out[0]_repN_alias\ => \Operand2_out[0]_repN_alias\,
      RAM_Src => RAM_Src,
      RAM_Src_out => RAM_Src_out,
      RAM_Write => RAM_Write,
      RAM_Write_out => RAM_Write_out,
      Reset => Reset,
      Use_MA => Use_MA,
      Use_MA_out => Use_MA_out,
      WHB => WHB,
      WHB_out => WHB_out,
      WLB => WLB,
      WLB_out => WLB_out,
      WriteAddress(3 downto 0) => WriteAddress(3 downto 0),
      WriteAddress_out(3 downto 0) => WriteAddress_out(3 downto 0),
      WriteDataSel(1 downto 0) => WriteDataSel(1 downto 0),
      WriteDataSel_out(1 downto 0) => WriteDataSel_out(1 downto 0)
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
U0: entity work.Pipelining_Forwarder
     port map (
      CurrentMA(7 downto 0) => CurrentMA(7 downto 0),
      CurrentOperand1(15 downto 0) => CurrentOperand1(15 downto 0),
      CurrentOperand2(15 downto 0) => CurrentOperand2(15 downto 0),
      ExecutionFlags(5) => ExecutionFlags(6),
      ExecutionFlags(4 downto 0) => ExecutionFlags(4 downto 0),
      ExecutionWriteData(15 downto 0) => ExecutionWriteData(15 downto 0),
      ForwardedMA(7 downto 0) => ForwardedMA(7 downto 0),
      ForwardedOperand1(15 downto 0) => ForwardedOperand1(15 downto 0),
      ForwardedOperand2(15 downto 0) => ForwardedOperand2(15 downto 0),
      ForwardingConfiguration(4 downto 0) => ForwardingConfiguration(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_Pipelining_WriteBack_0_0 is
  port (
    InstrLoad_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    WriteAddress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Flags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WHB : in STD_LOGIC;
    WLB : in STD_LOGIC;
    Is_ALU_OP : in STD_LOGIC;
    JMP : in STD_LOGIC;
    WriteAddress_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteData_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Flags_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RF_WE_out : out STD_LOGIC;
    Is_ALU_OP_out : out STD_LOGIC;
    JMP_out : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_Pipelining_WriteBack_0_0 : entity is "main_Pipelining_WriteBack_0_0,Pipelining_WriteBackStage,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_Pipelining_WriteBack_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_Pipelining_WriteBack_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_Pipelining_WriteBack_0_0 : entity is "Pipelining_WriteBackStage,Vivado 2024.1";
end main_Pipelining_WriteBack_0_0;

architecture STRUCTURE of main_Pipelining_WriteBack_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of InstrLoad_CLK : signal is "xilinx.com:signal:clock:1.0 InstrLoad_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of InstrLoad_CLK : signal is "XIL_INTERFACENAME InstrLoad_CLK, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Pipelining_WriteBackStage
     port map (
      Flags(5) => Flags(6),
      Flags(4 downto 0) => Flags(4 downto 0),
      Flags_out(5) => Flags_out(6),
      Flags_out(4 downto 0) => Flags_out(4 downto 0),
      InstrLoad_CLK => InstrLoad_CLK,
      Is_ALU_OP => Is_ALU_OP,
      Is_ALU_OP_out => Is_ALU_OP_out,
      JMP => JMP,
      JMP_out => JMP_out,
      RF_WE_out => RF_WE_out,
      Reset => Reset,
      WHB => WHB,
      WLB => WLB,
      WriteAddress(3 downto 0) => WriteAddress(3 downto 0),
      WriteAddress_out(3 downto 0) => WriteAddress_out(3 downto 0),
      WriteData(15 downto 0) => WriteData(15 downto 0),
      WriteData_out(15 downto 0) => WriteData_out(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_ProgramCounter_0_0 is
  port (
    InstrExec_CLK : in STD_LOGIC;
    Stalled : in STD_LOGIC;
    JMP : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_ProgramCounter_0_0 : entity is "main_ProgramCounter_0_0,ProgramCounter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_ProgramCounter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_ProgramCounter_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_ProgramCounter_0_0 : entity is "ProgramCounter,Vivado 2024.1";
end main_ProgramCounter_0_0;

architecture STRUCTURE of main_ProgramCounter_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of InstrExec_CLK : signal is "xilinx.com:signal:clock:1.0 InstrExec_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of InstrExec_CLK : signal is "XIL_INTERFACENAME InstrExec_CLK, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.ProgramCounter
     port map (
      Din(15 downto 0) => Din(15 downto 0),
      Dout(15 downto 0) => Dout(15 downto 0),
      InstrExec_CLK => InstrExec_CLK,
      JMP => JMP,
      Reset => Reset,
      Stalled => Stalled
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_RAM_Placeholder_0_0 is
  port (
    Address : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DataIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WE : in STD_LOGIC;
    OE : in STD_LOGIC;
    CLK : in STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_RAM_Placeholder_0_0 : entity is "main_RAM_Placeholder_0_0,RAM_Placeholder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_RAM_Placeholder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_RAM_Placeholder_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_RAM_Placeholder_0_0 : entity is "RAM_Placeholder,Vivado 2024.1";
end main_RAM_Placeholder_0_0;

architecture STRUCTURE of main_RAM_Placeholder_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
U0: entity work.RAM_Placeholder
     port map (
      Address(7 downto 0) => Address(7 downto 0),
      CLK => CLK,
      DataIn(15 downto 0) => DataIn(15 downto 0),
      DataOut(15 downto 0) => DataOut(15 downto 0),
      WE => WE
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_RegFile_0_0 is
  port (
    AddrReg1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AddrReg2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AddrWriteReg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Flags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WE : in STD_LOGIC;
    OverwriteFl : in STD_LOGIC;
    clk : in STD_LOGIC;
    Reg1_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Reg2_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RegMA_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BankID : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_RegFile_0_0 : entity is "main_RegFile_0_0,RegFile,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_RegFile_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_RegFile_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_RegFile_0_0 : entity is "RegFile,Vivado 2024.1";
end main_RegFile_0_0;

architecture STRUCTURE of main_RegFile_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
U0: entity work.RegFile
     port map (
      AddrReg1(3 downto 0) => AddrReg1(3 downto 0),
      AddrReg2(3 downto 0) => AddrReg2(3 downto 0),
      AddrWriteReg(3 downto 0) => AddrWriteReg(3 downto 0),
      Flags(5) => Flags(6),
      Flags(4 downto 0) => Flags(4 downto 0),
      OverwriteFl => OverwriteFl,
      Reg1_data(15 downto 0) => Reg1_data(15 downto 0),
      Reg2_data(15 downto 0) => Reg2_data(15 downto 0),
      RegMA_data(7 downto 0) => RegMA_data(7 downto 0),
      WE => WE,
      WriteData(15 downto 0) => WriteData(15 downto 0),
      clk => clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main is
  port (
    InstrExec_CLK : in STD_LOGIC;
    InstrLoad_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    led : out STD_LOGIC
  );
  attribute hw_handoff : string;
  attribute hw_handoff of main : entity is "main.hwdef";
end main;

architecture STRUCTURE of main is
  signal ALU_0_BIGGER_ZERO_FLAG : STD_LOGIC;
  signal ALU_0_CARRY_FLAG : STD_LOGIC;
  signal ALU_0_NOT_ZERO_FLAG : STD_LOGIC;
  signal ALU_0_OVERFLOW_FLAG : STD_LOGIC;
  signal ALU_0_SMALLER_ZERO_FLAG : STD_LOGIC;
  signal ALU_0_ZERO_FLAG : STD_LOGIC;
  signal ALU_FLAG_PACKER_0_ALU_FLAGS_0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \ALU_OUT[6]_INST_0_i_2_n_0_alias\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_3_n_0_alias\ : STD_LOGIC;
  signal \ALU_OUT[6]_INST_0_i_4_n_0_alias\ : STD_LOGIC;
  signal \ALU_OUT[6]_repN_2_alias\ : STD_LOGIC;
  signal ALU_Out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal AddrReg1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal AddrReg2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal AddrWriteReg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Address : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CU_Decoder_0_Is_ALU_OP : STD_LOGIC;
  signal CU_Decoder_0_JMP : STD_LOGIC;
  signal CU_Decoder_0_JMP_Conditional : STD_LOGIC;
  signal CU_Decoder_0_JMP_DestinationSource : STD_LOGIC;
  signal CU_Decoder_0_JMP_Relative : STD_LOGIC;
  signal CU_Decoder_0_RAM_Address_Src : STD_LOGIC;
  signal CU_Decoder_0_RAM_Write : STD_LOGIC;
  signal CU_Decoder_0_RF_WHB : STD_LOGIC;
  signal CU_Decoder_0_RF_WLB : STD_LOGIC;
  signal CU_JumpController_0_PC_Load : STD_LOGIC;
  signal CU_JumpDestinationSe_0_JMP_Address : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal CU_WriteSelector_0_Write_Data_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Decoder_0_Use_MA : STD_LOGIC;
  signal Din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Flags : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal ForwardingConfiguration : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Immediate : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Instruction : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal JMP_Condition : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Manipulated_Immidiate : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Operand2_out[0]_repN_alias\ : STD_LOGIC;
  signal Pipelining_Controller_0_InstructionToExecute_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Controller_0_Stalled : STD_LOGIC;
  signal Pipelining_Execution_0_IS_ALU_OP_out : STD_LOGIC;
  signal Pipelining_Execution_0_Immediate_out_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Execution_0_JMP_Condition_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Pipelining_Execution_0_JMP_Conditional_out : STD_LOGIC;
  signal Pipelining_Execution_0_JMP_DestinationSelect_out : STD_LOGIC;
  signal Pipelining_Execution_0_JMP_Relative_out : STD_LOGIC;
  signal Pipelining_Execution_0_JMP_out : STD_LOGIC;
  signal Pipelining_Execution_0_MA_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Pipelining_Execution_0_Operand1_out_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Execution_0_Operand2_out_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Execution_0_RAM_Src_out : STD_LOGIC;
  signal Pipelining_Execution_0_RAM_Write_out : STD_LOGIC;
  signal Pipelining_Execution_0_Use_MA_out : STD_LOGIC;
  signal Pipelining_Execution_0_WHB_out : STD_LOGIC;
  signal Pipelining_Execution_0_WLB_out : STD_LOGIC;
  signal Pipelining_Execution_0_WriteDataSel_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Pipelining_Execution_0_n_64 : STD_LOGIC;
  signal Pipelining_Execution_0_n_65 : STD_LOGIC;
  signal Pipelining_Execution_0_n_66 : STD_LOGIC;
  signal Pipelining_Execution_0_n_67 : STD_LOGIC;
  signal Pipelining_Forwarder_0_ForwardedMA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Pipelining_Forwarder_0_ForwardedOperand1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_Forwarder_0_ForwardedOperand2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pipelining_WriteBack_0_Is_ALU_OP_out : STD_LOGIC;
  signal Pipelining_WriteBack_0_RF_WE_out : STD_LOGIC;
  signal ProgramCounter_0_Dout_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RAM_Placeholder_0_DataOut : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RegFile_0_Reg1_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RegFile_0_Reg2_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RegFile_0_RegMA_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal WriteAddress : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal WriteData : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal WriteDataSel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ALU_0_RHO_FLAG_UNCONNECTED : STD_LOGIC;
  signal NLW_ALU_0_RHO_PIN_UNCONNECTED : STD_LOGIC;
  signal NLW_ALU_0_ALU_OPP_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal NLW_ALU_FLAG_PACKER_0_RHO_FLAG_UNCONNECTED : STD_LOGIC;
  signal NLW_ALU_FLAG_PACKER_0_ALU_FLAGS_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 5 );
  signal NLW_CU_Decoder_0_Is_RAM_OP_UNCONNECTED : STD_LOGIC;
  signal NLW_CU_Decoder_0_RAM_Read_UNCONNECTED : STD_LOGIC;
  signal NLW_CU_Decoder_0_Reg1Read_UNCONNECTED : STD_LOGIC;
  signal NLW_CU_Decoder_0_Reg2Read_UNCONNECTED : STD_LOGIC;
  signal NLW_CU_Decoder_0_Instruction_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_CU_JumpController_0_InstrExec_CLK_UNCONNECTED : STD_LOGIC;
  signal NLW_CU_JumpController_0_Flags_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 6 );
  signal NLW_CU_RAMAddressControl_0_Immediate_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_CU_RAMAddressControl_0_MA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_CU_RAMAddressControl_0_RAM_Address_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_CU_RAMAddressControl_0_Reg2_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_Pipelining_Execution_0_Is_RAM_OP_UNCONNECTED : STD_LOGIC;
  signal NLW_Pipelining_Execution_0_Is_RAM_OP_out_UNCONNECTED : STD_LOGIC;
  signal NLW_Pipelining_Execution_0_RAM_Read_UNCONNECTED : STD_LOGIC;
  signal NLW_Pipelining_Execution_0_RAM_Read_out_UNCONNECTED : STD_LOGIC;
  signal NLW_Pipelining_Execution_0_MA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_Pipelining_Execution_0_MA_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_Pipelining_Forwarder_0_CurrentMA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_Pipelining_Forwarder_0_ExecutionFlags_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 5 );
  signal NLW_Pipelining_Forwarder_0_ForwardedMA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_Pipelining_WriteBack_0_Flags_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 5 );
  signal NLW_Pipelining_WriteBack_0_Flags_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 5 );
  signal NLW_RAM_Placeholder_0_OE_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_Placeholder_0_Address_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_RegFile_0_BankID_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_RegFile_0_Flags_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 5 );
  signal NLW_RegFile_0_RegMA_data_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ALU_0 : label is "main_ALU_0_0,ALU,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ALU_0 : label is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ALU_0 : label is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of ALU_0 : label is "ALU,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of ALU_FLAG_PACKER_0 : label is "main_ALU_FLAG_PACKER_0_1,ALU_FLAG_PACKER,{}";
  attribute downgradeipidentifiedwarnings of ALU_FLAG_PACKER_0 : label is "yes";
  attribute ip_definition_source of ALU_FLAG_PACKER_0 : label is "module_ref";
  attribute x_core_info of ALU_FLAG_PACKER_0 : label is "ALU_FLAG_PACKER,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of CU_Decoder_0 : label is "main_CU_Decoder_0_0,CU_Decoder,{}";
  attribute downgradeipidentifiedwarnings of CU_Decoder_0 : label is "yes";
  attribute ip_definition_source of CU_Decoder_0 : label is "module_ref";
  attribute x_core_info of CU_Decoder_0 : label is "CU_Decoder,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of CU_ImmediateManipula_0 : label is "main_CU_ImmediateManipula_0_0,CU_ImmediateManipulator,{}";
  attribute downgradeipidentifiedwarnings of CU_ImmediateManipula_0 : label is "yes";
  attribute ip_definition_source of CU_ImmediateManipula_0 : label is "module_ref";
  attribute x_core_info of CU_ImmediateManipula_0 : label is "CU_ImmediateManipulator,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of CU_JumpController_0 : label is "main_CU_JumpController_0_0,CU_JumpController,{}";
  attribute downgradeipidentifiedwarnings of CU_JumpController_0 : label is "yes";
  attribute ip_definition_source of CU_JumpController_0 : label is "module_ref";
  attribute x_core_info of CU_JumpController_0 : label is "CU_JumpController,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of CU_JumpDestinationSe_0 : label is "main_CU_JumpDestinationSe_0_0,CU_JumpDestinationSelector,{}";
  attribute downgradeipidentifiedwarnings of CU_JumpDestinationSe_0 : label is "yes";
  attribute ip_definition_source of CU_JumpDestinationSe_0 : label is "module_ref";
  attribute x_core_info of CU_JumpDestinationSe_0 : label is "CU_JumpDestinationSelector,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of CU_RAMAddressControl_0 : label is "main_CU_RAMAddressControl_0_0,CU_RAMAddressController,{}";
  attribute downgradeipidentifiedwarnings of CU_RAMAddressControl_0 : label is "yes";
  attribute ip_definition_source of CU_RAMAddressControl_0 : label is "module_ref";
  attribute x_core_info of CU_RAMAddressControl_0 : label is "CU_RAMAddressController,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of CU_WriteSelector_0 : label is "main_CU_WriteSelector_0_0,CU_WriteSelector,{}";
  attribute downgradeipidentifiedwarnings of CU_WriteSelector_0 : label is "yes";
  attribute ip_definition_source of CU_WriteSelector_0 : label is "module_ref";
  attribute x_core_info of CU_WriteSelector_0 : label is "CU_WriteSelector,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of Decoder_0 : label is "main_Decoder_0_0,Decoder,{}";
  attribute downgradeipidentifiedwarnings of Decoder_0 : label is "yes";
  attribute ip_definition_source of Decoder_0 : label is "module_ref";
  attribute x_core_info of Decoder_0 : label is "Decoder,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of IROM_0 : label is "main_IROM_0_1,IROM,{}";
  attribute downgradeipidentifiedwarnings of IROM_0 : label is "yes";
  attribute ip_definition_source of IROM_0 : label is "module_ref";
  attribute x_core_info of IROM_0 : label is "IROM,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of Pipelining_Controller_0 : label is "main_Pipelining_Controller_0_0,Pipelining_Controller,{}";
  attribute downgradeipidentifiedwarnings of Pipelining_Controller_0 : label is "yes";
  attribute ip_definition_source of Pipelining_Controller_0 : label is "module_ref";
  attribute x_core_info of Pipelining_Controller_0 : label is "Pipelining_Controller,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of Pipelining_Execution_0 : label is "main_Pipelining_Execution_0_0,Pipelining_ExecutionStage,{}";
  attribute downgradeipidentifiedwarnings of Pipelining_Execution_0 : label is "yes";
  attribute ip_definition_source of Pipelining_Execution_0 : label is "module_ref";
  attribute x_core_info of Pipelining_Execution_0 : label is "Pipelining_ExecutionStage,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of Pipelining_Forwarder_0 : label is "main_Pipelining_Forwarder_0_0,Pipelining_Forwarder,{}";
  attribute downgradeipidentifiedwarnings of Pipelining_Forwarder_0 : label is "yes";
  attribute ip_definition_source of Pipelining_Forwarder_0 : label is "module_ref";
  attribute x_core_info of Pipelining_Forwarder_0 : label is "Pipelining_Forwarder,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of Pipelining_WriteBack_0 : label is "main_Pipelining_WriteBack_0_0,Pipelining_WriteBackStage,{}";
  attribute downgradeipidentifiedwarnings of Pipelining_WriteBack_0 : label is "yes";
  attribute ip_definition_source of Pipelining_WriteBack_0 : label is "module_ref";
  attribute x_core_info of Pipelining_WriteBack_0 : label is "Pipelining_WriteBackStage,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of ProgramCounter_0 : label is "main_ProgramCounter_0_0,ProgramCounter,{}";
  attribute downgradeipidentifiedwarnings of ProgramCounter_0 : label is "yes";
  attribute ip_definition_source of ProgramCounter_0 : label is "module_ref";
  attribute x_core_info of ProgramCounter_0 : label is "ProgramCounter,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of RAM_Placeholder_0 : label is "main_RAM_Placeholder_0_0,RAM_Placeholder,{}";
  attribute downgradeipidentifiedwarnings of RAM_Placeholder_0 : label is "yes";
  attribute ip_definition_source of RAM_Placeholder_0 : label is "module_ref";
  attribute x_core_info of RAM_Placeholder_0 : label is "RAM_Placeholder,Vivado 2024.1";
  attribute CHECK_LICENSE_TYPE of RegFile_0 : label is "main_RegFile_0_0,RegFile,{}";
  attribute downgradeipidentifiedwarnings of RegFile_0 : label is "yes";
  attribute ip_definition_source of RegFile_0 : label is "module_ref";
  attribute x_core_info of RegFile_0 : label is "RegFile,Vivado 2024.1";
  attribute x_interface_info : string;
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
ALU_0: entity work.main_ALU_0_0
     port map (
      ALU_OPP(15 downto 4) => NLW_ALU_0_ALU_OPP_UNCONNECTED(15 downto 4),
      ALU_OPP(3 downto 0) => Pipelining_Execution_0_Immediate_out_0(3 downto 0),
      ALU_OUT(15 downto 0) => ALU_Out(15 downto 0),
      \ALU_OUT[6]_INST_0_i_2_n_0_alias\ => \ALU_OUT[6]_INST_0_i_2_n_0_alias\,
      \ALU_OUT[6]_INST_0_i_3_n_0_alias\ => \ALU_OUT[6]_INST_0_i_3_n_0_alias\,
      \ALU_OUT[6]_INST_0_i_4_n_0_alias\ => \ALU_OUT[6]_INST_0_i_4_n_0_alias\,
      \ALU_OUT[6]_repN_2_alias\ => \ALU_OUT[6]_repN_2_alias\,
      BIGGER_ZERO_FLAG => ALU_0_BIGGER_ZERO_FLAG,
      CARRY_FLAG => ALU_0_CARRY_FLAG,
      D1(15 downto 0) => Pipelining_Execution_0_Operand1_out_0(15 downto 0),
      D2(15 downto 0) => Pipelining_Execution_0_Operand2_out_0(15 downto 0),
      \ManipulatedImmidiate[6]_alias\ => Manipulated_Immidiate(6),
      NOT_ZERO_FLAG => ALU_0_NOT_ZERO_FLAG,
      OVERFLOW_FLAG => ALU_0_OVERFLOW_FLAG,
      O_alias => RAM_Placeholder_0_DataOut(6),
      \Operand2_out[0]_repN_alias\ => \Operand2_out[0]_repN_alias\,
      RHO_FLAG => NLW_ALU_0_RHO_FLAG_UNCONNECTED,
      RHO_PIN => NLW_ALU_0_RHO_PIN_UNCONNECTED,
      SMALLER_ZERO_FLAG => ALU_0_SMALLER_ZERO_FLAG,
      \WriteDataSel_out[0]_alias\ => Pipelining_Execution_0_WriteDataSel_out(0),
      \WriteDataSel_out[1]_alias\ => Pipelining_Execution_0_WriteDataSel_out(1),
      ZERO_FLAG => ALU_0_ZERO_FLAG
    );
ALU_FLAG_PACKER_0: entity work.main_ALU_FLAG_PACKER_0_1
     port map (
      ALU_FLAGS(15 downto 7) => NLW_ALU_FLAG_PACKER_0_ALU_FLAGS_UNCONNECTED(15 downto 7),
      ALU_FLAGS(6) => ALU_FLAG_PACKER_0_ALU_FLAGS_0(6),
      ALU_FLAGS(5) => NLW_ALU_FLAG_PACKER_0_ALU_FLAGS_UNCONNECTED(5),
      ALU_FLAGS(4 downto 0) => ALU_FLAG_PACKER_0_ALU_FLAGS_0(4 downto 0),
      BIGGER_ZERO_FLAG => ALU_0_BIGGER_ZERO_FLAG,
      CARRY_FLAG => ALU_0_CARRY_FLAG,
      NOT_ZERO_FLAG => ALU_0_NOT_ZERO_FLAG,
      OVERFLOW_FLAG => ALU_0_OVERFLOW_FLAG,
      RHO_FLAG => NLW_ALU_FLAG_PACKER_0_RHO_FLAG_UNCONNECTED,
      SMALLER_ZERO_FLAG => ALU_0_SMALLER_ZERO_FLAG,
      ZERO_FLAG => ALU_0_ZERO_FLAG
    );
CU_Decoder_0: entity work.main_CU_Decoder_0_0
     port map (
      Instruction(15 downto 12) => Pipelining_Controller_0_InstructionToExecute_0(15 downto 12),
      Instruction(11 downto 0) => NLW_CU_Decoder_0_Instruction_UNCONNECTED(11 downto 0),
      Is_ALU_OP => CU_Decoder_0_Is_ALU_OP,
      Is_RAM_OP => NLW_CU_Decoder_0_Is_RAM_OP_UNCONNECTED,
      JMP => CU_Decoder_0_JMP,
      JMP_Conditional => CU_Decoder_0_JMP_Conditional,
      JMP_DestinationSource => CU_Decoder_0_JMP_DestinationSource,
      JMP_Relative => CU_Decoder_0_JMP_Relative,
      RAM_Address_Src => CU_Decoder_0_RAM_Address_Src,
      RAM_Read => NLW_CU_Decoder_0_RAM_Read_UNCONNECTED,
      RAM_Write => CU_Decoder_0_RAM_Write,
      RF_WHB => CU_Decoder_0_RF_WHB,
      RF_WLB => CU_Decoder_0_RF_WLB,
      Reg1Read => NLW_CU_Decoder_0_Reg1Read_UNCONNECTED,
      Reg2Read => NLW_CU_Decoder_0_Reg2Read_UNCONNECTED,
      Write_Data_Sel(1 downto 0) => WriteDataSel(1 downto 0)
    );
CU_ImmediateManipula_0: entity work.main_CU_ImmediateManipula_0_0
     port map (
      Immediate(15 downto 0) => Pipelining_Execution_0_Immediate_out_0(15 downto 0),
      ManipulatedImmidiate(15 downto 0) => Manipulated_Immidiate(15 downto 0),
      RF_WHB => Pipelining_Execution_0_WHB_out,
      RF_WLB => Pipelining_Execution_0_WLB_out,
      Reg1(15 downto 0) => Pipelining_Execution_0_Operand1_out_0(15 downto 0)
    );
CU_JumpController_0: entity work.main_CU_JumpController_0_0
     port map (
      Flags(15 downto 6) => NLW_CU_JumpController_0_Flags_UNCONNECTED(15 downto 6),
      Flags(5 downto 0) => Pipelining_Execution_0_Operand2_out_0(5 downto 0),
      InstrExec_CLK => NLW_CU_JumpController_0_InstrExec_CLK_UNCONNECTED,
      JMP => Pipelining_Execution_0_JMP_out,
      JMP_Address(15 downto 0) => CU_JumpDestinationSe_0_JMP_Address(15 downto 0),
      JMP_Condition(2 downto 0) => Pipelining_Execution_0_JMP_Condition_out(2 downto 0),
      JMP_Conditional => Pipelining_Execution_0_JMP_Conditional_out,
      JMP_Relative => Pipelining_Execution_0_JMP_Relative_out,
      PC_Current(15 downto 0) => ProgramCounter_0_Dout_0(15 downto 0),
      PC_Load => CU_JumpController_0_PC_Load,
      PC_Next(15 downto 0) => Din(15 downto 0)
    );
CU_JumpDestinationSe_0: entity work.main_CU_JumpDestinationSe_0_0
     port map (
      Immediate(15 downto 0) => Pipelining_Execution_0_Immediate_out_0(15 downto 0),
      JMP_Address(15 downto 0) => CU_JumpDestinationSe_0_JMP_Address(15 downto 0),
      JMP_DestinationSelect => Pipelining_Execution_0_JMP_DestinationSelect_out,
      Register1(15 downto 0) => Pipelining_Execution_0_Operand1_out_0(15 downto 0)
    );
CU_RAMAddressControl_0: entity work.main_CU_RAMAddressControl_0_0
     port map (
      Immediate(15 downto 8) => NLW_CU_RAMAddressControl_0_Immediate_UNCONNECTED(15 downto 8),
      Immediate(7 downto 0) => Pipelining_Execution_0_Immediate_out_0(7 downto 0),
      MA(15 downto 8) => NLW_CU_RAMAddressControl_0_MA_UNCONNECTED(15 downto 8),
      MA(7 downto 0) => Pipelining_Execution_0_MA_out(7 downto 0),
      RAM_Address(15 downto 8) => NLW_CU_RAMAddressControl_0_RAM_Address_UNCONNECTED(15 downto 8),
      RAM_Address(7 downto 0) => Address(7 downto 0),
      RAM_Address_Src => Pipelining_Execution_0_RAM_Src_out,
      Reg2(15 downto 8) => NLW_CU_RAMAddressControl_0_Reg2_UNCONNECTED(15 downto 8),
      Reg2(7 downto 0) => Pipelining_Execution_0_Operand2_out_0(7 downto 0),
      Use_MA => Pipelining_Execution_0_Use_MA_out
    );
CU_WriteSelector_0: entity work.main_CU_WriteSelector_0_0
     port map (
      \ALU_OUT[6]_INST_0_i_2_n_0_alias\ => \ALU_OUT[6]_INST_0_i_2_n_0_alias\,
      \ALU_OUT[6]_INST_0_i_3_n_0_alias\ => \ALU_OUT[6]_INST_0_i_3_n_0_alias\,
      \ALU_OUT[6]_INST_0_i_4_n_0_alias\ => \ALU_OUT[6]_INST_0_i_4_n_0_alias\,
      \ALU_OUT[6]_repN_2_alias\ => \ALU_OUT[6]_repN_2_alias\,
      ALU_Out(15 downto 0) => ALU_Out(15 downto 0),
      \Immediate_out[1]_alias\ => Pipelining_Execution_0_Immediate_out_0(1),
      Manipulated_Immidiate(15 downto 0) => Manipulated_Immidiate(15 downto 0),
      RAM_Out(15 downto 0) => RAM_Placeholder_0_DataOut(15 downto 0),
      Reg1(15 downto 0) => Pipelining_Execution_0_Operand1_out_0(15 downto 0),
      Write_Data(15 downto 0) => CU_WriteSelector_0_Write_Data_0(15 downto 0),
      Write_Sel(1 downto 0) => Pipelining_Execution_0_WriteDataSel_out(1 downto 0)
    );
Decoder_0: entity work.main_Decoder_0_0
     port map (
      Immediate(15 downto 0) => Immediate(15 downto 0),
      Instruction(15 downto 0) => Pipelining_Controller_0_InstructionToExecute_0(15 downto 0),
      JMP_Condition(2 downto 0) => JMP_Condition(2 downto 0),
      Register1(3 downto 0) => AddrReg1(3 downto 0),
      Register2(3 downto 0) => AddrReg2(3 downto 0),
      Use_MA => Decoder_0_Use_MA,
      WriteBackRegister(3 downto 0) => WriteAddress(3 downto 0)
    );
IROM_0: entity work.main_IROM_0_1
     port map (
      Address(15 downto 0) => ProgramCounter_0_Dout_0(15 downto 0),
      Data(15 downto 0) => Instruction(15 downto 0)
    );
Pipelining_Controller_0: entity work.main_Pipelining_Controller_0_0
     port map (
      InstrExec_CLK => InstrExec_CLK,
      InstrLoad_CLK => InstrLoad_CLK,
      Instruction(15 downto 0) => Instruction(15 downto 0),
      InstructionForwardConfiguration(4 downto 0) => ForwardingConfiguration(4 downto 0),
      InstructionToExecute(15 downto 0) => Pipelining_Controller_0_InstructionToExecute_0(15 downto 0),
      Reset => Reset,
      ResolveStall => Pipelining_Execution_0_JMP_out,
      Stalled => Pipelining_Controller_0_Stalled
    );
Pipelining_Execution_0: entity work.main_Pipelining_Execution_0_0
     port map (
      IS_ALU_OP_out => Pipelining_Execution_0_IS_ALU_OP_out,
      Immediate(15 downto 0) => Immediate(15 downto 0),
      Immediate_out(15 downto 0) => Pipelining_Execution_0_Immediate_out_0(15 downto 0),
      InstrLoad_CLK => InstrLoad_CLK,
      Is_ALU_OP => CU_Decoder_0_Is_ALU_OP,
      Is_RAM_OP => NLW_Pipelining_Execution_0_Is_RAM_OP_UNCONNECTED,
      Is_RAM_OP_out => NLW_Pipelining_Execution_0_Is_RAM_OP_out_UNCONNECTED,
      JMP => CU_Decoder_0_JMP,
      JMP_Condition(2 downto 0) => JMP_Condition(2 downto 0),
      JMP_Condition_out(2 downto 0) => Pipelining_Execution_0_JMP_Condition_out(2 downto 0),
      JMP_Conditional => CU_Decoder_0_JMP_Conditional,
      JMP_Conditional_out => Pipelining_Execution_0_JMP_Conditional_out,
      JMP_DestinationSelect => CU_Decoder_0_JMP_DestinationSource,
      JMP_DestinationSelect_out => Pipelining_Execution_0_JMP_DestinationSelect_out,
      JMP_Relative => CU_Decoder_0_JMP_Relative,
      JMP_Relative_out => Pipelining_Execution_0_JMP_Relative_out,
      JMP_out => Pipelining_Execution_0_JMP_out,
      MA(15 downto 8) => NLW_Pipelining_Execution_0_MA_UNCONNECTED(15 downto 8),
      MA(7 downto 0) => Pipelining_Forwarder_0_ForwardedMA(7 downto 0),
      MA_out(15 downto 8) => NLW_Pipelining_Execution_0_MA_out_UNCONNECTED(15 downto 8),
      MA_out(7 downto 0) => Pipelining_Execution_0_MA_out(7 downto 0),
      Operand1(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand1(15 downto 0),
      Operand1_out(15 downto 0) => Pipelining_Execution_0_Operand1_out_0(15 downto 0),
      Operand2(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand2(15 downto 0),
      Operand2_out(15 downto 0) => Pipelining_Execution_0_Operand2_out_0(15 downto 0),
      \Operand2_out[0]_repN_alias\ => \Operand2_out[0]_repN_alias\,
      RAM_Read => NLW_Pipelining_Execution_0_RAM_Read_UNCONNECTED,
      RAM_Read_out => NLW_Pipelining_Execution_0_RAM_Read_out_UNCONNECTED,
      RAM_Src => CU_Decoder_0_RAM_Address_Src,
      RAM_Src_out => Pipelining_Execution_0_RAM_Src_out,
      RAM_Write => CU_Decoder_0_RAM_Write,
      RAM_Write_out => Pipelining_Execution_0_RAM_Write_out,
      Reset => Reset,
      Use_MA => Decoder_0_Use_MA,
      Use_MA_out => Pipelining_Execution_0_Use_MA_out,
      WHB => CU_Decoder_0_RF_WHB,
      WHB_out => Pipelining_Execution_0_WHB_out,
      WLB => CU_Decoder_0_RF_WLB,
      WLB_out => Pipelining_Execution_0_WLB_out,
      WriteAddress(3 downto 0) => WriteAddress(3 downto 0),
      WriteAddress_out(3) => Pipelining_Execution_0_n_64,
      WriteAddress_out(2) => Pipelining_Execution_0_n_65,
      WriteAddress_out(1) => Pipelining_Execution_0_n_66,
      WriteAddress_out(0) => Pipelining_Execution_0_n_67,
      WriteDataSel(1 downto 0) => WriteDataSel(1 downto 0),
      WriteDataSel_out(1 downto 0) => Pipelining_Execution_0_WriteDataSel_out(1 downto 0)
    );
Pipelining_Forwarder_0: entity work.main_Pipelining_Forwarder_0_0
     port map (
      CurrentMA(15 downto 8) => NLW_Pipelining_Forwarder_0_CurrentMA_UNCONNECTED(15 downto 8),
      CurrentMA(7 downto 0) => RegFile_0_RegMA_data(7 downto 0),
      CurrentOperand1(15 downto 0) => RegFile_0_Reg1_data(15 downto 0),
      CurrentOperand2(15 downto 0) => RegFile_0_Reg2_data(15 downto 0),
      ExecutionFlags(15 downto 7) => NLW_Pipelining_Forwarder_0_ExecutionFlags_UNCONNECTED(15 downto 7),
      ExecutionFlags(6) => ALU_FLAG_PACKER_0_ALU_FLAGS_0(6),
      ExecutionFlags(5) => NLW_Pipelining_Forwarder_0_ExecutionFlags_UNCONNECTED(5),
      ExecutionFlags(4 downto 0) => ALU_FLAG_PACKER_0_ALU_FLAGS_0(4 downto 0),
      ExecutionWriteData(15 downto 0) => CU_WriteSelector_0_Write_Data_0(15 downto 0),
      ForwardedMA(15 downto 8) => NLW_Pipelining_Forwarder_0_ForwardedMA_UNCONNECTED(15 downto 8),
      ForwardedMA(7 downto 0) => Pipelining_Forwarder_0_ForwardedMA(7 downto 0),
      ForwardedOperand1(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand1(15 downto 0),
      ForwardedOperand2(15 downto 0) => Pipelining_Forwarder_0_ForwardedOperand2(15 downto 0),
      ForwardingConfiguration(4 downto 0) => ForwardingConfiguration(4 downto 0)
    );
Pipelining_WriteBack_0: entity work.main_Pipelining_WriteBack_0_0
     port map (
      Flags(15 downto 7) => NLW_Pipelining_WriteBack_0_Flags_UNCONNECTED(15 downto 7),
      Flags(6) => ALU_FLAG_PACKER_0_ALU_FLAGS_0(6),
      Flags(5) => NLW_Pipelining_WriteBack_0_Flags_UNCONNECTED(5),
      Flags(4 downto 0) => ALU_FLAG_PACKER_0_ALU_FLAGS_0(4 downto 0),
      Flags_out(15 downto 7) => NLW_Pipelining_WriteBack_0_Flags_out_UNCONNECTED(15 downto 7),
      Flags_out(6) => Flags(6),
      Flags_out(5) => NLW_Pipelining_WriteBack_0_Flags_out_UNCONNECTED(5),
      Flags_out(4 downto 0) => Flags(4 downto 0),
      InstrLoad_CLK => InstrLoad_CLK,
      Is_ALU_OP => Pipelining_Execution_0_IS_ALU_OP_out,
      Is_ALU_OP_out => Pipelining_WriteBack_0_Is_ALU_OP_out,
      JMP => Pipelining_Execution_0_JMP_out,
      JMP_out => led,
      RF_WE_out => Pipelining_WriteBack_0_RF_WE_out,
      Reset => Reset,
      WHB => Pipelining_Execution_0_WHB_out,
      WLB => Pipelining_Execution_0_WLB_out,
      WriteAddress(3) => Pipelining_Execution_0_n_64,
      WriteAddress(2) => Pipelining_Execution_0_n_65,
      WriteAddress(1) => Pipelining_Execution_0_n_66,
      WriteAddress(0) => Pipelining_Execution_0_n_67,
      WriteAddress_out(3 downto 0) => AddrWriteReg(3 downto 0),
      WriteData(15 downto 0) => CU_WriteSelector_0_Write_Data_0(15 downto 0),
      WriteData_out(15 downto 0) => WriteData(15 downto 0)
    );
ProgramCounter_0: entity work.main_ProgramCounter_0_0
     port map (
      Din(15 downto 0) => Din(15 downto 0),
      Dout(15 downto 0) => ProgramCounter_0_Dout_0(15 downto 0),
      InstrExec_CLK => InstrExec_CLK,
      JMP => CU_JumpController_0_PC_Load,
      Reset => Reset,
      Stalled => Pipelining_Controller_0_Stalled
    );
RAM_Placeholder_0: entity work.main_RAM_Placeholder_0_0
     port map (
      Address(15 downto 8) => NLW_RAM_Placeholder_0_Address_UNCONNECTED(15 downto 8),
      Address(7 downto 0) => Address(7 downto 0),
      CLK => InstrExec_CLK,
      DataIn(15 downto 0) => Pipelining_Execution_0_Operand1_out_0(15 downto 0),
      DataOut(15 downto 0) => RAM_Placeholder_0_DataOut(15 downto 0),
      OE => NLW_RAM_Placeholder_0_OE_UNCONNECTED,
      WE => Pipelining_Execution_0_RAM_Write_out
    );
RegFile_0: entity work.main_RegFile_0_0
     port map (
      AddrReg1(3 downto 0) => AddrReg1(3 downto 0),
      AddrReg2(3 downto 0) => AddrReg2(3 downto 0),
      AddrWriteReg(3 downto 0) => AddrWriteReg(3 downto 0),
      BankID(3 downto 0) => NLW_RegFile_0_BankID_UNCONNECTED(3 downto 0),
      Flags(15 downto 7) => NLW_RegFile_0_Flags_UNCONNECTED(15 downto 7),
      Flags(6) => Flags(6),
      Flags(5) => NLW_RegFile_0_Flags_UNCONNECTED(5),
      Flags(4 downto 0) => Flags(4 downto 0),
      OverwriteFl => Pipelining_WriteBack_0_Is_ALU_OP_out,
      Reg1_data(15 downto 0) => RegFile_0_Reg1_data(15 downto 0),
      Reg2_data(15 downto 0) => RegFile_0_Reg2_data(15 downto 0),
      RegMA_data(15 downto 8) => NLW_RegFile_0_RegMA_data_UNCONNECTED(15 downto 8),
      RegMA_data(7 downto 0) => RegFile_0_RegMA_data(7 downto 0),
      WE => Pipelining_WriteBack_0_RF_WE_out,
      WriteData(15 downto 0) => WriteData(15 downto 0),
      clk => InstrExec_CLK
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_wrapper is
  port (
    InstrExec_CLK : in STD_LOGIC;
    InstrLoad_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    led : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_wrapper : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of main_wrapper : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of main_wrapper : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of main_wrapper : entity is "d08d3d79";
end main_wrapper;

architecture STRUCTURE of main_wrapper is
  signal InstrExec_CLK_IBUF : STD_LOGIC;
  signal InstrExec_CLK_IBUF_BUFG : STD_LOGIC;
  signal InstrLoad_CLK_IBUF : STD_LOGIC;
  signal InstrLoad_CLK_IBUF_BUFG : STD_LOGIC;
  signal Reset_IBUF : STD_LOGIC;
  signal led_OBUF : STD_LOGIC;
  attribute hw_handoff : string;
  attribute hw_handoff of main_i : label is "main.hwdef";
begin
InstrExec_CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => InstrExec_CLK_IBUF,
      O => InstrExec_CLK_IBUF_BUFG
    );
InstrExec_CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => InstrExec_CLK,
      O => InstrExec_CLK_IBUF
    );
InstrLoad_CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => InstrLoad_CLK_IBUF,
      O => InstrLoad_CLK_IBUF_BUFG
    );
InstrLoad_CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => InstrLoad_CLK,
      O => InstrLoad_CLK_IBUF
    );
Reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Reset,
      O => Reset_IBUF
    );
led_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF,
      O => led
    );
main_i: entity work.main
     port map (
      InstrExec_CLK => InstrExec_CLK_IBUF_BUFG,
      InstrLoad_CLK => InstrLoad_CLK_IBUF_BUFG,
      Reset => Reset_IBUF,
      led => led_OBUF
    );
end STRUCTURE;
