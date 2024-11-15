// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:52:34 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_ALU_0_0/main_ALU_0_0_sim_netlist.v
// Design      : main_ALU_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_ALU_0_0,ALU,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ALU,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module main_ALU_0_0
   (D1,
    D2,
    ALU_OPP,
    RHO_PIN,
    ALU_OUT,
    CARRY_FLAG,
    ZERO_FLAG,
    SMALLER_ZERO_FLAG,
    BIGGER_ZERO_FLAG,
    OVERFLOW_FLAG,
    RHO_FLAG,
    NOT_ZERO_FLAG);
  input [15:0]D1;
  input [15:0]D2;
  input [15:0]ALU_OPP;
  input RHO_PIN;
  output [15:0]ALU_OUT;
  output CARRY_FLAG;
  output ZERO_FLAG;
  output SMALLER_ZERO_FLAG;
  output BIGGER_ZERO_FLAG;
  output OVERFLOW_FLAG;
  output RHO_FLAG;
  output NOT_ZERO_FLAG;

  wire [15:0]ALU_OPP;
  wire [14:0]\^ALU_OUT ;
  wire BIGGER_ZERO_FLAG;
  wire CARRY_FLAG;
  wire [15:0]D1;
  wire [15:0]D2;
  wire NOT_ZERO_FLAG;
  wire OVERFLOW_FLAG;
  wire RHO_PIN;
  wire SMALLER_ZERO_FLAG;
  wire ZERO_FLAG;

  assign ALU_OUT[15] = SMALLER_ZERO_FLAG;
  assign ALU_OUT[14:0] = \^ALU_OUT [14:0];
  assign RHO_FLAG = RHO_PIN;
  main_ALU_0_0_ALU U0
       (.ALU_OPP(ALU_OPP[3:0]),
        .\ALU_OPP[3]_0 (\^ALU_OUT [11]),
        .\ALU_OPP[3]_1 (\^ALU_OUT [10]),
        .\ALU_OPP[3]_10 (\^ALU_OUT [13]),
        .\ALU_OPP[3]_11 (\^ALU_OUT [12]),
        .\ALU_OPP[3]_12 (\^ALU_OUT [7]),
        .\ALU_OPP[3]_2 (\^ALU_OUT [3]),
        .\ALU_OPP[3]_3 (\^ALU_OUT [0]),
        .\ALU_OPP[3]_4 (\^ALU_OUT [1]),
        .\ALU_OPP[3]_5 (\^ALU_OUT [2]),
        .\ALU_OPP[3]_6 (\^ALU_OUT [5]),
        .\ALU_OPP[3]_7 (\^ALU_OUT [4]),
        .\ALU_OPP[3]_8 (SMALLER_ZERO_FLAG),
        .\ALU_OPP[3]_9 (\^ALU_OUT [14]),
        .ALU_OPP_1_sp_1(CARRY_FLAG),
        .ALU_OPP_3_sp_1(\^ALU_OUT [9]),
        .ALU_OUT({\^ALU_OUT [8],\^ALU_OUT [6]}),
        .BIGGER_ZERO_FLAG(BIGGER_ZERO_FLAG),
        .D1(D1),
        .D2(D2),
        .NOT_ZERO_FLAG(NOT_ZERO_FLAG),
        .OVERFLOW_FLAG(OVERFLOW_FLAG),
        .ZERO_FLAG(ZERO_FLAG));
endmodule

(* ORIG_REF_NAME = "ALU" *) 
module main_ALU_0_0_ALU
   (ALU_OPP_3_sp_1,
    \ALU_OPP[3]_0 ,
    \ALU_OPP[3]_1 ,
    \ALU_OPP[3]_2 ,
    \ALU_OPP[3]_3 ,
    \ALU_OPP[3]_4 ,
    \ALU_OPP[3]_5 ,
    \ALU_OPP[3]_6 ,
    \ALU_OPP[3]_7 ,
    BIGGER_ZERO_FLAG,
    \ALU_OPP[3]_8 ,
    ALU_OPP_1_sp_1,
    NOT_ZERO_FLAG,
    \ALU_OPP[3]_9 ,
    \ALU_OPP[3]_10 ,
    \ALU_OPP[3]_11 ,
    ZERO_FLAG,
    \ALU_OPP[3]_12 ,
    ALU_OUT,
    OVERFLOW_FLAG,
    ALU_OPP,
    D2,
    D1);
  output ALU_OPP_3_sp_1;
  output \ALU_OPP[3]_0 ;
  output \ALU_OPP[3]_1 ;
  output \ALU_OPP[3]_2 ;
  output \ALU_OPP[3]_3 ;
  output \ALU_OPP[3]_4 ;
  output \ALU_OPP[3]_5 ;
  output \ALU_OPP[3]_6 ;
  output \ALU_OPP[3]_7 ;
  output BIGGER_ZERO_FLAG;
  output \ALU_OPP[3]_8 ;
  output ALU_OPP_1_sp_1;
  output NOT_ZERO_FLAG;
  output \ALU_OPP[3]_9 ;
  output \ALU_OPP[3]_10 ;
  output \ALU_OPP[3]_11 ;
  output ZERO_FLAG;
  output \ALU_OPP[3]_12 ;
  output [1:0]ALU_OUT;
  output OVERFLOW_FLAG;
  input [3:0]ALU_OPP;
  input [15:0]D2;
  input [15:0]D1;

  wire [3:0]ALU_OPP;
  wire \ALU_OPP[3]_0 ;
  wire \ALU_OPP[3]_1 ;
  wire \ALU_OPP[3]_10 ;
  wire \ALU_OPP[3]_11 ;
  wire \ALU_OPP[3]_12 ;
  wire \ALU_OPP[3]_2 ;
  wire \ALU_OPP[3]_3 ;
  wire \ALU_OPP[3]_4 ;
  wire \ALU_OPP[3]_5 ;
  wire \ALU_OPP[3]_6 ;
  wire \ALU_OPP[3]_7 ;
  wire \ALU_OPP[3]_8 ;
  wire \ALU_OPP[3]_9 ;
  wire ALU_OPP_1_sn_1;
  wire ALU_OPP_3_sn_1;
  wire [1:0]ALU_OUT;
  wire \ALU_OUT[0]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_16_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_16_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_17_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_18_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_16_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_17_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_18_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_19_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_20_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_16_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_18_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_19_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_20_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_21_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_22_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_23_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_24_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_25_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_26_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_27_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_28_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_29_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_30_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_31_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_32_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_33_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_34_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_35_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_16_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_16_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_9_n_0 ;
  wire ALU_OUT_Internal0_carry__0_i_1_n_0;
  wire ALU_OUT_Internal0_carry__0_i_2_n_0;
  wire ALU_OUT_Internal0_carry__0_i_3_n_0;
  wire ALU_OUT_Internal0_carry__0_i_4_n_0;
  wire ALU_OUT_Internal0_carry__0_n_0;
  wire ALU_OUT_Internal0_carry__0_n_1;
  wire ALU_OUT_Internal0_carry__0_n_2;
  wire ALU_OUT_Internal0_carry__0_n_3;
  wire ALU_OUT_Internal0_carry__1_i_1_n_0;
  wire ALU_OUT_Internal0_carry__1_i_2_n_0;
  wire ALU_OUT_Internal0_carry__1_i_3_n_0;
  wire ALU_OUT_Internal0_carry__1_i_4_n_0;
  wire ALU_OUT_Internal0_carry__1_n_0;
  wire ALU_OUT_Internal0_carry__1_n_1;
  wire ALU_OUT_Internal0_carry__1_n_2;
  wire ALU_OUT_Internal0_carry__1_n_3;
  wire ALU_OUT_Internal0_carry__2_i_1_n_0;
  wire ALU_OUT_Internal0_carry__2_i_2_n_0;
  wire ALU_OUT_Internal0_carry__2_i_3_n_0;
  wire ALU_OUT_Internal0_carry__2_i_4_n_0;
  wire ALU_OUT_Internal0_carry__2_i_5_n_0;
  wire ALU_OUT_Internal0_carry__2_n_0;
  wire ALU_OUT_Internal0_carry__2_n_1;
  wire ALU_OUT_Internal0_carry__2_n_2;
  wire ALU_OUT_Internal0_carry__2_n_3;
  wire ALU_OUT_Internal0_carry_i_1_n_0;
  wire ALU_OUT_Internal0_carry_i_2_n_0;
  wire ALU_OUT_Internal0_carry_i_3_n_0;
  wire ALU_OUT_Internal0_carry_i_4_n_0;
  wire ALU_OUT_Internal0_carry_n_0;
  wire ALU_OUT_Internal0_carry_n_1;
  wire ALU_OUT_Internal0_carry_n_2;
  wire ALU_OUT_Internal0_carry_n_3;
  wire \ALU_OUT_Internal0_inferred__0/i__carry__0_n_0 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry__0_n_1 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry__0_n_2 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry__0_n_3 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry__1_n_0 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry__1_n_1 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry__1_n_2 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry__1_n_3 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry__2_n_0 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry__2_n_1 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry__2_n_2 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry__2_n_3 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry_n_0 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry_n_1 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry_n_2 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry_n_3 ;
  wire BIGGER_ZERO_FLAG;
  wire BIGGER_ZERO_FLAG_INST_0_i_1_n_0;
  wire BIGGER_ZERO_FLAG_INST_0_i_2_n_0;
  wire BIGGER_ZERO_FLAG_INST_0_i_3_n_0;
  wire BIGGER_ZERO_FLAG_INST_0_i_4_n_0;
  wire CARRY_FLAG_INST_0_i_10_n_0;
  wire CARRY_FLAG_INST_0_i_11_n_0;
  wire CARRY_FLAG_INST_0_i_12_n_0;
  wire CARRY_FLAG_INST_0_i_13_n_0;
  wire CARRY_FLAG_INST_0_i_14_n_0;
  wire CARRY_FLAG_INST_0_i_15_n_0;
  wire CARRY_FLAG_INST_0_i_16_n_0;
  wire CARRY_FLAG_INST_0_i_17_n_0;
  wire CARRY_FLAG_INST_0_i_18_n_0;
  wire CARRY_FLAG_INST_0_i_19_n_0;
  wire CARRY_FLAG_INST_0_i_1_n_0;
  wire CARRY_FLAG_INST_0_i_20_n_0;
  wire CARRY_FLAG_INST_0_i_21_n_0;
  wire CARRY_FLAG_INST_0_i_5_n_0;
  wire CARRY_FLAG_INST_0_i_6_n_0;
  wire CARRY_FLAG_INST_0_i_7_n_0;
  wire CARRY_FLAG_INST_0_i_8_n_0;
  wire CARRY_FLAG_INST_0_i_9_n_0;
  wire [15:0]D1;
  wire [15:0]D2;
  wire NOT_ZERO_FLAG;
  wire NOT_ZERO_FLAG_INST_0_i_1_n_0;
  wire NOT_ZERO_FLAG_INST_0_i_2_n_0;
  wire OVERFLOW_FLAG;
  wire [15:15]SHIFT_LEFT0;
  wire [16:16]SHIFT_LEFT00_in;
  wire [15:1]SHIFT_LEFT2;
  wire [14:0]SHIFT_RIGHT0;
  wire \SHIFT_RIGHT2_inferred__0/i__carry__0_n_0 ;
  wire \SHIFT_RIGHT2_inferred__0/i__carry__0_n_1 ;
  wire \SHIFT_RIGHT2_inferred__0/i__carry__0_n_2 ;
  wire \SHIFT_RIGHT2_inferred__0/i__carry__0_n_3 ;
  wire \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ;
  wire \SHIFT_RIGHT2_inferred__0/i__carry_n_0 ;
  wire \SHIFT_RIGHT2_inferred__0/i__carry_n_1 ;
  wire \SHIFT_RIGHT2_inferred__0/i__carry_n_2 ;
  wire \SHIFT_RIGHT2_inferred__0/i__carry_n_3 ;
  wire SHIFT_RIGHT3_carry__0_i_1_n_0;
  wire SHIFT_RIGHT3_carry__0_i_2_n_0;
  wire SHIFT_RIGHT3_carry__0_i_3_n_0;
  wire SHIFT_RIGHT3_carry__0_i_4_n_0;
  wire SHIFT_RIGHT3_carry__0_i_5_n_0;
  wire SHIFT_RIGHT3_carry__0_n_0;
  wire SHIFT_RIGHT3_carry__0_n_1;
  wire SHIFT_RIGHT3_carry__0_n_2;
  wire SHIFT_RIGHT3_carry__0_n_3;
  wire SHIFT_RIGHT3_carry__0_n_4;
  wire SHIFT_RIGHT3_carry__0_n_5;
  wire SHIFT_RIGHT3_carry__0_n_6;
  wire SHIFT_RIGHT3_carry__0_n_7;
  wire SHIFT_RIGHT3_carry__1_i_1_n_0;
  wire SHIFT_RIGHT3_carry__1_i_2_n_0;
  wire SHIFT_RIGHT3_carry__1_i_3_n_0;
  wire SHIFT_RIGHT3_carry__1_i_4_n_0;
  wire SHIFT_RIGHT3_carry__1_n_0;
  wire SHIFT_RIGHT3_carry__1_n_1;
  wire SHIFT_RIGHT3_carry__1_n_2;
  wire SHIFT_RIGHT3_carry__1_n_3;
  wire SHIFT_RIGHT3_carry__1_n_4;
  wire SHIFT_RIGHT3_carry__1_n_5;
  wire SHIFT_RIGHT3_carry__1_n_6;
  wire SHIFT_RIGHT3_carry__1_n_7;
  wire SHIFT_RIGHT3_carry__2_i_10_n_0;
  wire SHIFT_RIGHT3_carry__2_i_12_n_0;
  wire SHIFT_RIGHT3_carry__2_i_13_n_0;
  wire SHIFT_RIGHT3_carry__2_i_14_n_0;
  wire SHIFT_RIGHT3_carry__2_i_1_n_0;
  wire SHIFT_RIGHT3_carry__2_i_2_n_0;
  wire SHIFT_RIGHT3_carry__2_i_3_n_0;
  wire SHIFT_RIGHT3_carry__2_i_4_n_0;
  wire SHIFT_RIGHT3_carry__2_i_6_n_0;
  wire SHIFT_RIGHT3_carry__2_i_9_n_0;
  wire SHIFT_RIGHT3_carry__2_n_1;
  wire SHIFT_RIGHT3_carry__2_n_2;
  wire SHIFT_RIGHT3_carry__2_n_3;
  wire SHIFT_RIGHT3_carry__2_n_4;
  wire SHIFT_RIGHT3_carry__2_n_5;
  wire SHIFT_RIGHT3_carry__2_n_6;
  wire SHIFT_RIGHT3_carry__2_n_7;
  wire SHIFT_RIGHT3_carry_i_2_n_0;
  wire SHIFT_RIGHT3_carry_i_3_n_0;
  wire SHIFT_RIGHT3_carry_i_4_n_0;
  wire SHIFT_RIGHT3_carry_i_5_n_0;
  wire SHIFT_RIGHT3_carry_i_6_n_0;
  wire SHIFT_RIGHT3_carry_n_0;
  wire SHIFT_RIGHT3_carry_n_1;
  wire SHIFT_RIGHT3_carry_n_2;
  wire SHIFT_RIGHT3_carry_n_3;
  wire SHIFT_RIGHT3_carry_n_4;
  wire SHIFT_RIGHT3_carry_n_5;
  wire SHIFT_RIGHT3_carry_n_6;
  wire SHIFT_RIGHT3_carry_n_7;
  wire [0:0]SHIFT_RIGHT4;
  wire SMALLER_ZERO_FLAG_INST_0_i_10_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_11_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_12_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_13_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_14_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_15_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_16_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_17_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_18_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_1_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_2_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_5_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_6_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_7_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_8_n_0;
  wire ZERO_FLAG;
  wire ZERO_FLAG_INST_0_i_1_n_0;
  wire ZERO_FLAG_INST_0_i_2_n_0;
  wire ZERO_FLAG_INST_0_i_3_n_0;
  wire ZERO_FLAG_INST_0_i_4_n_0;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__1_n_0 ;
  wire \_inferred__0/i__carry__1_n_1 ;
  wire \_inferred__0/i__carry__1_n_2 ;
  wire \_inferred__0/i__carry__1_n_3 ;
  wire \_inferred__0/i__carry__2_n_0 ;
  wire \_inferred__0/i__carry__2_n_2 ;
  wire \_inferred__0/i__carry__2_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire [15:0]data0;
  wire [16:16]data0__0;
  wire [15:0]data1;
  wire [16:16]data1__0;
  wire [16:0]data2;
  wire [16:0]data3;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1__1_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire [13:1]p_0_in;
  wire [3:0]NLW_ALU_OUT_Internal0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_ALU_OUT_Internal0_carry__3_O_UNCONNECTED;
  wire [3:0]\NLW_ALU_OUT_Internal0_inferred__0/i__carry__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_ALU_OUT_Internal0_inferred__0/i__carry__3_O_UNCONNECTED ;
  wire [3:0]\NLW_SHIFT_RIGHT2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_SHIFT_RIGHT2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_SHIFT_RIGHT2_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_SHIFT_RIGHT2_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:3]NLW_SHIFT_RIGHT3_carry__2_CO_UNCONNECTED;
  wire [2:2]\NLW__inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW__inferred__0/i__carry__2_O_UNCONNECTED ;

  assign ALU_OPP_1_sp_1 = ALU_OPP_1_sn_1;
  assign ALU_OPP_3_sp_1 = ALU_OPP_3_sn_1;
  MUXF7 \ALU_OUT[0]_INST_0 
       (.I0(\ALU_OUT[0]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[0]_INST_0_i_2_n_0 ),
        .O(\ALU_OPP[3]_3 ),
        .S(ALU_OPP[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[0]_INST_0_i_1 
       (.I0(data3[0]),
        .I1(data2[0]),
        .I2(ALU_OPP[1]),
        .I3(data1[0]),
        .I4(ALU_OPP[0]),
        .I5(data0[0]),
        .O(\ALU_OUT[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \ALU_OUT[0]_INST_0_i_10 
       (.I0(D2[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(D1[0]),
        .I4(p_0_in[4]),
        .I5(p_0_in[2]),
        .O(\ALU_OUT[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFCFAFFFAFC)) 
    \ALU_OUT[0]_INST_0_i_11 
       (.I0(SHIFT_LEFT2[2]),
        .I1(D2[2]),
        .I2(D2[0]),
        .I3(D2[15]),
        .I4(D2[1]),
        .I5(SHIFT_LEFT2[1]),
        .O(\ALU_OUT[0]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALU_OUT[0]_INST_0_i_12 
       (.I0(D1[8]),
        .I1(p_0_in[3]),
        .I2(D1[15]),
        .I3(p_0_in[4]),
        .I4(D1[0]),
        .O(\ALU_OUT[0]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALU_OUT[0]_INST_0_i_13 
       (.I0(D1[8]),
        .I1(p_0_in[3]),
        .I2(D1[15]),
        .I3(p_0_in[4]),
        .I4(D1[0]),
        .O(\ALU_OUT[0]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    \ALU_OUT[0]_INST_0_i_2 
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[0]),
        .I3(ALU_OPP[0]),
        .I4(D1[0]),
        .O(\ALU_OUT[0]_INST_0_i_2_n_0 ));
  MUXF7 \ALU_OUT[0]_INST_0_i_3 
       (.I0(SHIFT_RIGHT0[0]),
        .I1(\ALU_OUT[0]_INST_0_i_6_n_0 ),
        .O(data3[0]),
        .S(D2[15]));
  LUT6 #(
    .INIT(64'hDD55D5555555D555)) 
    \ALU_OUT[0]_INST_0_i_4 
       (.I0(\ALU_OUT[0]_INST_0_i_7_n_0 ),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(\ALU_OUT[0]_INST_0_i_8_n_0 ),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(\ALU_OUT[1]_INST_0_i_10_n_0 ),
        .O(data2[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[0]_INST_0_i_5 
       (.I0(\ALU_OUT[1]_INST_0_i_8_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[0]_INST_0_i_9_n_0 ),
        .I3(CARRY_FLAG_INST_0_i_5_n_0),
        .I4(D1[15]),
        .O(SHIFT_RIGHT0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFEA40404040)) 
    \ALU_OUT[0]_INST_0_i_6 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[0]_INST_0_i_10_n_0 ),
        .I2(CARRY_FLAG_INST_0_i_5_n_0),
        .I3(SHIFT_RIGHT3_carry_i_6_n_0),
        .I4(\ALU_OUT[0]_INST_0_i_11_n_0 ),
        .I5(D1[0]),
        .O(\ALU_OUT[0]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \ALU_OUT[0]_INST_0_i_7 
       (.I0(D2[15]),
        .I1(\ALU_OUT[1]_INST_0_i_13_n_0 ),
        .I2(D2[0]),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[0]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALU_OUT[0]_INST_0_i_8 
       (.I0(\ALU_OUT[2]_INST_0_i_31_n_0 ),
        .I1(p_0_in[1]),
        .I2(\ALU_OUT[4]_INST_0_i_13_n_0 ),
        .I3(p_0_in[2]),
        .I4(\ALU_OUT[0]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[0]_INST_0_i_9 
       (.I0(\ALU_OUT[2]_INST_0_i_28_n_0 ),
        .I1(\ALU_OUT[2]_INST_0_i_29_n_0 ),
        .I2(p_0_in[1]),
        .I3(\ALU_OUT[2]_INST_0_i_27_n_0 ),
        .I4(p_0_in[2]),
        .I5(\ALU_OUT[0]_INST_0_i_13_n_0 ),
        .O(\ALU_OUT[0]_INST_0_i_9_n_0 ));
  MUXF7 \ALU_OUT[10]_INST_0 
       (.I0(\ALU_OUT[10]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[10]_INST_0_i_2_n_0 ),
        .O(\ALU_OPP[3]_1 ),
        .S(ALU_OPP[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[10]_INST_0_i_1 
       (.I0(data3[10]),
        .I1(data2[10]),
        .I2(ALU_OPP[1]),
        .I3(data1[10]),
        .I4(ALU_OPP[0]),
        .I5(data0[10]),
        .O(\ALU_OUT[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[10]_INST_0_i_10 
       (.I0(\ALU_OUT[10]_INST_0_i_14_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[10]_INST_0_i_15_n_0 ),
        .O(\ALU_OUT[10]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[10]_INST_0_i_11 
       (.I0(\ALU_OUT[10]_INST_0_i_16_n_0 ),
        .I1(D2[1]),
        .I2(\ALU_OUT[12]_INST_0_i_15_n_0 ),
        .O(\ALU_OUT[10]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALU_OUT[10]_INST_0_i_12 
       (.I0(D1[14]),
        .I1(p_0_in[2]),
        .I2(p_0_in[4]),
        .I3(D1[10]),
        .I4(p_0_in[3]),
        .O(\ALU_OUT[10]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALU_OUT[10]_INST_0_i_13 
       (.I0(D1[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[4]),
        .I3(D1[7]),
        .I4(p_0_in[3]),
        .O(\ALU_OUT[10]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \ALU_OUT[10]_INST_0_i_14 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(D1[15]),
        .I3(p_0_in[4]),
        .I4(D1[12]),
        .O(\ALU_OUT[10]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALU_OUT[10]_INST_0_i_15 
       (.I0(D1[14]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(D1[15]),
        .I4(p_0_in[4]),
        .I5(D1[10]),
        .O(\ALU_OUT[10]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALU_OUT[10]_INST_0_i_16 
       (.I0(D1[3]),
        .I1(D2[2]),
        .I2(D2[4]),
        .I3(D1[7]),
        .I4(D2[3]),
        .O(\ALU_OUT[10]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    \ALU_OUT[10]_INST_0_i_2 
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[10]),
        .I3(ALU_OPP[0]),
        .I4(D1[10]),
        .O(\ALU_OUT[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF4E4FFFFF4E40000)) 
    \ALU_OUT[10]_INST_0_i_3 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[10]_INST_0_i_5_n_0 ),
        .I2(D1[0]),
        .I3(SHIFT_RIGHT3_carry__1_n_6),
        .I4(D2[15]),
        .I5(SHIFT_RIGHT0[10]),
        .O(data3[10]));
  LUT6 #(
    .INIT(64'hDD55D5555555D555)) 
    \ALU_OUT[10]_INST_0_i_4 
       (.I0(\ALU_OUT[10]_INST_0_i_7_n_0 ),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(\ALU_OUT[10]_INST_0_i_8_n_0 ),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(\ALU_OUT[11]_INST_0_i_8_n_0 ),
        .O(data2[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALU_OUT[10]_INST_0_i_5 
       (.I0(CARRY_FLAG_INST_0_i_5_n_0),
        .I1(\ALU_OUT[11]_INST_0_i_10_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[10]_INST_0_i_9_n_0 ),
        .O(\ALU_OUT[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[10]_INST_0_i_6 
       (.I0(\ALU_OUT[11]_INST_0_i_11_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[10]_INST_0_i_10_n_0 ),
        .I3(CARRY_FLAG_INST_0_i_5_n_0),
        .I4(D1[15]),
        .O(SHIFT_RIGHT0[10]));
  LUT5 #(
    .INIT(32'hBABFFFFF)) 
    \ALU_OUT[10]_INST_0_i_7 
       (.I0(D2[15]),
        .I1(\ALU_OUT[10]_INST_0_i_11_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[11]_INST_0_i_12_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[10]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[10]_INST_0_i_8 
       (.I0(\ALU_OUT[12]_INST_0_i_12_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[10]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[10]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[10]_INST_0_i_9 
       (.I0(\ALU_OUT[10]_INST_0_i_13_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[11]_INST_0_i_14_n_0 ),
        .O(\ALU_OUT[10]_INST_0_i_9_n_0 ));
  MUXF7 \ALU_OUT[11]_INST_0 
       (.I0(\ALU_OUT[11]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[11]_INST_0_i_2_n_0 ),
        .O(\ALU_OPP[3]_0 ),
        .S(ALU_OPP[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[11]_INST_0_i_1 
       (.I0(data3[11]),
        .I1(data2[11]),
        .I2(ALU_OPP[1]),
        .I3(data1[11]),
        .I4(ALU_OPP[0]),
        .I5(data0[11]),
        .O(\ALU_OUT[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[11]_INST_0_i_10 
       (.I0(\ALU_OUT[11]_INST_0_i_15_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[13]_INST_0_i_13_n_0 ),
        .O(\ALU_OUT[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALU_OUT[11]_INST_0_i_11 
       (.I0(\ALU_OUT[11]_INST_0_i_16_n_0 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(D1[15]),
        .I4(p_0_in[3]),
        .I5(\ALU_OUT[11]_INST_0_i_17_n_0 ),
        .O(\ALU_OUT[11]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[11]_INST_0_i_12 
       (.I0(\ALU_OUT[11]_INST_0_i_18_n_0 ),
        .I1(D2[1]),
        .I2(\ALU_OUT[13]_INST_0_i_20_n_0 ),
        .O(\ALU_OUT[11]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALU_OUT[11]_INST_0_i_13 
       (.I0(D1[15]),
        .I1(p_0_in[2]),
        .I2(p_0_in[4]),
        .I3(D1[11]),
        .I4(p_0_in[3]),
        .O(\ALU_OUT[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALU_OUT[11]_INST_0_i_14 
       (.I0(D1[5]),
        .I1(p_0_in[2]),
        .I2(D1[1]),
        .I3(p_0_in[3]),
        .I4(D1[9]),
        .I5(p_0_in[4]),
        .O(\ALU_OUT[11]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALU_OUT[11]_INST_0_i_15 
       (.I0(D1[4]),
        .I1(p_0_in[2]),
        .I2(D1[0]),
        .I3(p_0_in[3]),
        .I4(D1[8]),
        .I5(p_0_in[4]),
        .O(\ALU_OUT[11]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[11]_INST_0_i_16 
       (.I0(D1[15]),
        .I1(D2[4]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[15]),
        .I4(D1[13]),
        .O(\ALU_OUT[11]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[11]_INST_0_i_17 
       (.I0(D1[15]),
        .I1(D2[4]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[15]),
        .I4(D1[11]),
        .O(\ALU_OUT[11]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALU_OUT[11]_INST_0_i_18 
       (.I0(D1[4]),
        .I1(D2[2]),
        .I2(D1[0]),
        .I3(D2[3]),
        .I4(D1[8]),
        .I5(D2[4]),
        .O(\ALU_OUT[11]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    \ALU_OUT[11]_INST_0_i_2 
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[11]),
        .I3(ALU_OPP[0]),
        .I4(D1[11]),
        .O(\ALU_OUT[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF4E4FFFFF4E40000)) 
    \ALU_OUT[11]_INST_0_i_3 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[11]_INST_0_i_5_n_0 ),
        .I2(D1[0]),
        .I3(SHIFT_RIGHT3_carry__1_n_5),
        .I4(D2[15]),
        .I5(SHIFT_RIGHT0[11]),
        .O(data3[11]));
  LUT6 #(
    .INIT(64'hDD55D5555555D555)) 
    \ALU_OUT[11]_INST_0_i_4 
       (.I0(\ALU_OUT[11]_INST_0_i_7_n_0 ),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(\ALU_OUT[11]_INST_0_i_8_n_0 ),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(\ALU_OUT[12]_INST_0_i_8_n_0 ),
        .O(data2[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \ALU_OUT[11]_INST_0_i_5 
       (.I0(CARRY_FLAG_INST_0_i_5_n_0),
        .I1(\ALU_OUT[11]_INST_0_i_9_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[11]_INST_0_i_10_n_0 ),
        .O(\ALU_OUT[11]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[11]_INST_0_i_6 
       (.I0(\ALU_OUT[12]_INST_0_i_9_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[11]_INST_0_i_11_n_0 ),
        .I3(CARRY_FLAG_INST_0_i_5_n_0),
        .I4(D1[15]),
        .O(SHIFT_RIGHT0[11]));
  LUT5 #(
    .INIT(32'hBABFFFFF)) 
    \ALU_OUT[11]_INST_0_i_7 
       (.I0(D2[15]),
        .I1(\ALU_OUT[11]_INST_0_i_12_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[12]_INST_0_i_11_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALU_OUT[11]_INST_0_i_8 
       (.I0(p_0_in[3]),
        .I1(D1[13]),
        .I2(p_0_in[4]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(\ALU_OUT[11]_INST_0_i_13_n_0 ),
        .O(\ALU_OUT[11]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[11]_INST_0_i_9 
       (.I0(\ALU_OUT[11]_INST_0_i_14_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[13]_INST_0_i_15_n_0 ),
        .O(\ALU_OUT[11]_INST_0_i_9_n_0 ));
  MUXF7 \ALU_OUT[12]_INST_0 
       (.I0(\ALU_OUT[12]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[12]_INST_0_i_2_n_0 ),
        .O(\ALU_OPP[3]_11 ),
        .S(ALU_OPP[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[12]_INST_0_i_1 
       (.I0(data3[12]),
        .I1(data2[12]),
        .I2(ALU_OPP[1]),
        .I3(data1[12]),
        .I4(ALU_OPP[0]),
        .I5(data0[12]),
        .O(\ALU_OUT[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALU_OUT[12]_INST_0_i_10 
       (.I0(\ALU_OUT[11]_INST_0_i_9_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[13]_INST_0_i_13_n_0 ),
        .I3(p_0_in[1]),
        .I4(\ALU_OUT[13]_INST_0_i_14_n_0 ),
        .O(\ALU_OUT[12]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[12]_INST_0_i_11 
       (.I0(\ALU_OUT[12]_INST_0_i_15_n_0 ),
        .I1(D2[1]),
        .I2(\ALU_OUT[14]_INST_0_i_10_n_0 ),
        .O(\ALU_OUT[12]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALU_OUT[12]_INST_0_i_12 
       (.I0(D1[15]),
        .I1(p_0_in[2]),
        .I2(p_0_in[4]),
        .I3(D1[12]),
        .I4(p_0_in[3]),
        .O(\ALU_OUT[12]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[12]_INST_0_i_13 
       (.I0(D1[15]),
        .I1(D2[4]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[15]),
        .I4(D1[14]),
        .O(\ALU_OUT[12]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[12]_INST_0_i_14 
       (.I0(D1[15]),
        .I1(D2[4]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[15]),
        .I4(D1[12]),
        .O(\ALU_OUT[12]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALU_OUT[12]_INST_0_i_15 
       (.I0(D1[5]),
        .I1(D2[2]),
        .I2(D1[1]),
        .I3(D2[3]),
        .I4(D1[9]),
        .I5(D2[4]),
        .O(\ALU_OUT[12]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    \ALU_OUT[12]_INST_0_i_2 
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[12]),
        .I3(ALU_OPP[0]),
        .I4(D1[12]),
        .O(\ALU_OUT[12]_INST_0_i_2_n_0 ));
  MUXF7 \ALU_OUT[12]_INST_0_i_3 
       (.I0(SHIFT_RIGHT0[12]),
        .I1(\ALU_OUT[12]_INST_0_i_6_n_0 ),
        .O(data3[12]),
        .S(D2[15]));
  LUT6 #(
    .INIT(64'hDD55D5555555D555)) 
    \ALU_OUT[12]_INST_0_i_4 
       (.I0(\ALU_OUT[12]_INST_0_i_7_n_0 ),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(\ALU_OUT[12]_INST_0_i_8_n_0 ),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(\ALU_OUT[13]_INST_0_i_11_n_0 ),
        .O(data2[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[12]_INST_0_i_5 
       (.I0(\ALU_OUT[13]_INST_0_i_9_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[12]_INST_0_i_9_n_0 ),
        .I3(CARRY_FLAG_INST_0_i_5_n_0),
        .I4(D1[15]),
        .O(SHIFT_RIGHT0[12]));
  LUT5 #(
    .INIT(32'hFF40EA40)) 
    \ALU_OUT[12]_INST_0_i_6 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[12]_INST_0_i_10_n_0 ),
        .I2(CARRY_FLAG_INST_0_i_5_n_0),
        .I3(D1[0]),
        .I4(SHIFT_RIGHT3_carry__1_n_4),
        .O(\ALU_OUT[12]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBABFFFFF)) 
    \ALU_OUT[12]_INST_0_i_7 
       (.I0(D2[15]),
        .I1(\ALU_OUT[12]_INST_0_i_11_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[13]_INST_0_i_17_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALU_OUT[12]_INST_0_i_8 
       (.I0(p_0_in[3]),
        .I1(D1[14]),
        .I2(p_0_in[4]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(\ALU_OUT[12]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALU_OUT[12]_INST_0_i_9 
       (.I0(\ALU_OUT[12]_INST_0_i_13_n_0 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(D1[15]),
        .I4(p_0_in[3]),
        .I5(\ALU_OUT[12]_INST_0_i_14_n_0 ),
        .O(\ALU_OUT[12]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALU_OUT[13]_INST_0 
       (.I0(\ALU_OUT[13]_INST_0_i_1_n_0 ),
        .I1(ALU_OPP[3]),
        .I2(\ALU_OUT[13]_INST_0_i_2_n_0 ),
        .I3(ALU_OPP[1]),
        .I4(\ALU_OUT[13]_INST_0_i_3_n_0 ),
        .O(\ALU_OPP[3]_10 ));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    \ALU_OUT[13]_INST_0_i_1 
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[13]),
        .I3(ALU_OPP[0]),
        .I4(D1[13]),
        .O(\ALU_OUT[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABFFFFF)) 
    \ALU_OUT[13]_INST_0_i_10 
       (.I0(D2[15]),
        .I1(\ALU_OUT[13]_INST_0_i_17_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[14]_INST_0_i_7_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALU_OUT[13]_INST_0_i_11 
       (.I0(D1[15]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(D1[13]),
        .I4(p_0_in[4]),
        .I5(p_0_in[2]),
        .O(\ALU_OUT[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALU_OUT[13]_INST_0_i_12 
       (.I0(D1[15]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(D1[14]),
        .I4(p_0_in[4]),
        .I5(p_0_in[2]),
        .O(\ALU_OUT[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALU_OUT[13]_INST_0_i_13 
       (.I0(D1[6]),
        .I1(p_0_in[2]),
        .I2(D1[2]),
        .I3(p_0_in[3]),
        .I4(D1[10]),
        .I5(p_0_in[4]),
        .O(\ALU_OUT[13]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALU_OUT[13]_INST_0_i_14 
       (.I0(D1[0]),
        .I1(p_0_in[3]),
        .I2(D1[8]),
        .I3(p_0_in[4]),
        .I4(p_0_in[2]),
        .I5(\ALU_OUT[13]_INST_0_i_18_n_0 ),
        .O(\ALU_OUT[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALU_OUT[13]_INST_0_i_15 
       (.I0(D1[7]),
        .I1(p_0_in[2]),
        .I2(D1[3]),
        .I3(p_0_in[3]),
        .I4(D1[11]),
        .I5(p_0_in[4]),
        .O(\ALU_OUT[13]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \ALU_OUT[13]_INST_0_i_16 
       (.I0(\ALU_OUT[13]_INST_0_i_19_n_0 ),
        .I1(p_0_in[2]),
        .I2(D1[5]),
        .I3(p_0_in[3]),
        .I4(D1[13]),
        .I5(p_0_in[4]),
        .O(\ALU_OUT[13]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[13]_INST_0_i_17 
       (.I0(\ALU_OUT[13]_INST_0_i_20_n_0 ),
        .I1(D2[1]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_15_n_0),
        .O(\ALU_OUT[13]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000B80000B8B8B8)) 
    \ALU_OUT[13]_INST_0_i_18 
       (.I0(D1[4]),
        .I1(p_0_in[3]),
        .I2(D1[12]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(\ALU_OUT[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000B80000B8B8B8)) 
    \ALU_OUT[13]_INST_0_i_19 
       (.I0(D1[1]),
        .I1(p_0_in[3]),
        .I2(D1[9]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(\ALU_OUT[13]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[13]_INST_0_i_2 
       (.I0(\ALU_OUT[13]_INST_0_i_4_n_0 ),
        .I1(D2[15]),
        .I2(SHIFT_RIGHT0[13]),
        .I3(ALU_OPP[0]),
        .I4(data2[13]),
        .O(\ALU_OUT[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALU_OUT[13]_INST_0_i_20 
       (.I0(D1[6]),
        .I1(D2[2]),
        .I2(D1[2]),
        .I3(D2[3]),
        .I4(D1[10]),
        .I5(D2[4]),
        .O(\ALU_OUT[13]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[13]_INST_0_i_3 
       (.I0(data1[13]),
        .I1(ALU_OPP[0]),
        .I2(data0[13]),
        .O(\ALU_OUT[13]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF40EA40)) 
    \ALU_OUT[13]_INST_0_i_4 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[13]_INST_0_i_7_n_0 ),
        .I2(CARRY_FLAG_INST_0_i_5_n_0),
        .I3(D1[0]),
        .I4(SHIFT_RIGHT3_carry__2_n_7),
        .O(\ALU_OUT[13]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[13]_INST_0_i_5 
       (.I0(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[13]_INST_0_i_9_n_0 ),
        .I3(CARRY_FLAG_INST_0_i_5_n_0),
        .I4(D1[15]),
        .O(SHIFT_RIGHT0[13]));
  LUT6 #(
    .INIT(64'hDD55D5555555D555)) 
    \ALU_OUT[13]_INST_0_i_6 
       (.I0(\ALU_OUT[13]_INST_0_i_10_n_0 ),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(\ALU_OUT[13]_INST_0_i_11_n_0 ),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(\ALU_OUT[13]_INST_0_i_12_n_0 ),
        .O(data2[13]));
  LUT6 #(
    .INIT(64'hDD88F5F5DD88A0A0)) 
    \ALU_OUT[13]_INST_0_i_7 
       (.I0(D2[0]),
        .I1(\ALU_OUT[13]_INST_0_i_13_n_0 ),
        .I2(\ALU_OUT[13]_INST_0_i_14_n_0 ),
        .I3(\ALU_OUT[13]_INST_0_i_15_n_0 ),
        .I4(p_0_in[1]),
        .I5(\ALU_OUT[13]_INST_0_i_16_n_0 ),
        .O(\ALU_OUT[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \ALU_OUT[13]_INST_0_i_8 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(D1[15]),
        .I4(p_0_in[4]),
        .I5(D1[14]),
        .O(\ALU_OUT[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \ALU_OUT[13]_INST_0_i_9 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(D1[15]),
        .I4(p_0_in[4]),
        .I5(D1[13]),
        .O(\ALU_OUT[13]_INST_0_i_9_n_0 ));
  MUXF7 \ALU_OUT[14]_INST_0 
       (.I0(\ALU_OUT[14]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[14]_INST_0_i_2_n_0 ),
        .O(\ALU_OPP[3]_9 ),
        .S(ALU_OPP[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[14]_INST_0_i_1 
       (.I0(data3[14]),
        .I1(data2[14]),
        .I2(ALU_OPP[1]),
        .I3(data1[14]),
        .I4(ALU_OPP[0]),
        .I5(data0[14]),
        .O(\ALU_OUT[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALU_OUT[14]_INST_0_i_10 
       (.I0(D1[7]),
        .I1(D2[2]),
        .I2(D1[3]),
        .I3(D2[3]),
        .I4(D1[11]),
        .I5(D2[4]),
        .O(\ALU_OUT[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400444)) 
    \ALU_OUT[14]_INST_0_i_11 
       (.I0(p_0_in[3]),
        .I1(D1[15]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[4]),
        .I5(p_0_in[2]),
        .O(\ALU_OUT[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400444)) 
    \ALU_OUT[14]_INST_0_i_12 
       (.I0(p_0_in[3]),
        .I1(D1[14]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[4]),
        .I5(p_0_in[2]),
        .O(\ALU_OUT[14]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    \ALU_OUT[14]_INST_0_i_2 
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[14]),
        .I3(ALU_OPP[0]),
        .I4(D1[14]),
        .O(\ALU_OUT[14]_INST_0_i_2_n_0 ));
  MUXF7 \ALU_OUT[14]_INST_0_i_3 
       (.I0(SHIFT_RIGHT0[14]),
        .I1(\ALU_OUT[14]_INST_0_i_6_n_0 ),
        .O(data3[14]),
        .S(D2[15]));
  LUT6 #(
    .INIT(64'h0000A808FFFFFFFF)) 
    \ALU_OUT[14]_INST_0_i_4 
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_8_n_0),
        .I2(D2[0]),
        .I3(\ALU_OUT[14]_INST_0_i_7_n_0 ),
        .I4(D2[15]),
        .I5(\ALU_OUT[14]_INST_0_i_8_n_0 ),
        .O(data2[14]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \ALU_OUT[14]_INST_0_i_5 
       (.I0(D2[0]),
        .I1(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I2(CARRY_FLAG_INST_0_i_5_n_0),
        .I3(D1[15]),
        .O(SHIFT_RIGHT0[14]));
  LUT5 #(
    .INIT(32'hFF40EA40)) 
    \ALU_OUT[14]_INST_0_i_6 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[14]_INST_0_i_9_n_0 ),
        .I2(CARRY_FLAG_INST_0_i_5_n_0),
        .I3(D1[0]),
        .I4(SHIFT_RIGHT3_carry__2_n_6),
        .O(\ALU_OUT[14]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[14]_INST_0_i_7 
       (.I0(\ALU_OUT[14]_INST_0_i_10_n_0 ),
        .I1(D2[1]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_13_n_0),
        .O(\ALU_OUT[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBF3BBF7FFFFFFFFF)) 
    \ALU_OUT[14]_INST_0_i_8 
       (.I0(D2[0]),
        .I1(D2[15]),
        .I2(\ALU_OUT[14]_INST_0_i_11_n_0 ),
        .I3(p_0_in[1]),
        .I4(\ALU_OUT[14]_INST_0_i_12_n_0 ),
        .I5(CARRY_FLAG_INST_0_i_5_n_0),
        .O(\ALU_OUT[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hDD88F5F5DD88A0A0)) 
    \ALU_OUT[14]_INST_0_i_9 
       (.I0(D2[0]),
        .I1(\ALU_OUT[13]_INST_0_i_15_n_0 ),
        .I2(\ALU_OUT[13]_INST_0_i_16_n_0 ),
        .I3(\ALU_OUT[13]_INST_0_i_14_n_0 ),
        .I4(p_0_in[1]),
        .I5(CARRY_FLAG_INST_0_i_14_n_0),
        .O(\ALU_OUT[14]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALU_OUT[1]_INST_0 
       (.I0(\ALU_OUT[1]_INST_0_i_1_n_0 ),
        .I1(ALU_OPP[3]),
        .I2(\ALU_OUT[1]_INST_0_i_2_n_0 ),
        .I3(ALU_OPP[1]),
        .I4(\ALU_OUT[1]_INST_0_i_3_n_0 ),
        .O(\ALU_OPP[3]_4 ));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    \ALU_OUT[1]_INST_0_i_1 
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[1]),
        .I3(ALU_OPP[0]),
        .I4(D1[1]),
        .O(\ALU_OUT[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALU_OUT[1]_INST_0_i_10 
       (.I0(\ALU_OUT[3]_INST_0_i_11_n_0 ),
        .I1(p_0_in[1]),
        .I2(\ALU_OUT[1]_INST_0_i_14_n_0 ),
        .I3(p_0_in[2]),
        .I4(\ALU_OUT[1]_INST_0_i_15_n_0 ),
        .O(\ALU_OUT[1]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h082A)) 
    \ALU_OUT[1]_INST_0_i_11 
       (.I0(D1[1]),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[4]),
        .O(\ALU_OUT[1]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALU_OUT[1]_INST_0_i_12 
       (.I0(D1[9]),
        .I1(p_0_in[3]),
        .I2(D1[15]),
        .I3(p_0_in[4]),
        .I4(D1[1]),
        .O(\ALU_OUT[1]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ALU_OUT[1]_INST_0_i_13 
       (.I0(D2[2]),
        .I1(D2[4]),
        .I2(D1[0]),
        .I3(D2[3]),
        .I4(D2[1]),
        .O(\ALU_OUT[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000B80000B8B8B8)) 
    \ALU_OUT[1]_INST_0_i_14 
       (.I0(D1[13]),
        .I1(p_0_in[3]),
        .I2(D1[5]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(\ALU_OUT[1]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000B80000B8B8B8)) 
    \ALU_OUT[1]_INST_0_i_15 
       (.I0(D1[9]),
        .I1(p_0_in[3]),
        .I2(D1[1]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(\ALU_OUT[1]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[1]_INST_0_i_2 
       (.I0(\ALU_OUT[1]_INST_0_i_4_n_0 ),
        .I1(D2[15]),
        .I2(SHIFT_RIGHT0[1]),
        .I3(ALU_OPP[0]),
        .I4(data2[1]),
        .O(\ALU_OUT[1]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[1]_INST_0_i_3 
       (.I0(data1[1]),
        .I1(ALU_OPP[0]),
        .I2(data0[1]),
        .O(\ALU_OUT[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0004AAAE0004)) 
    \ALU_OUT[1]_INST_0_i_4 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[1]_INST_0_i_7_n_0 ),
        .I2(\ALU_OUT[2]_INST_0_i_8_n_0 ),
        .I3(\ALU_OUT[2]_INST_0_i_9_n_0 ),
        .I4(D1[0]),
        .I5(SHIFT_RIGHT3_carry_n_7),
        .O(\ALU_OUT[1]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[1]_INST_0_i_5 
       (.I0(\ALU_OUT[2]_INST_0_i_11_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[1]_INST_0_i_8_n_0 ),
        .I3(CARRY_FLAG_INST_0_i_5_n_0),
        .I4(D1[15]),
        .O(SHIFT_RIGHT0[1]));
  LUT6 #(
    .INIT(64'hDD55D5555555D555)) 
    \ALU_OUT[1]_INST_0_i_6 
       (.I0(\ALU_OUT[1]_INST_0_i_9_n_0 ),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(\ALU_OUT[1]_INST_0_i_10_n_0 ),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(\ALU_OUT[2]_INST_0_i_13_n_0 ),
        .O(data2[1]));
  LUT6 #(
    .INIT(64'h0000000008080D08)) 
    \ALU_OUT[1]_INST_0_i_7 
       (.I0(D2[0]),
        .I1(\ALU_OUT[2]_INST_0_i_15_n_0 ),
        .I2(p_0_in[2]),
        .I3(\ALU_OUT[1]_INST_0_i_11_n_0 ),
        .I4(p_0_in[3]),
        .I5(p_0_in[1]),
        .O(\ALU_OUT[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[1]_INST_0_i_8 
       (.I0(\ALU_OUT[2]_INST_0_i_24_n_0 ),
        .I1(\ALU_OUT[2]_INST_0_i_25_n_0 ),
        .I2(p_0_in[1]),
        .I3(\ALU_OUT[2]_INST_0_i_23_n_0 ),
        .I4(p_0_in[2]),
        .I5(\ALU_OUT[1]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[1]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBABFFFFF)) 
    \ALU_OUT[1]_INST_0_i_9 
       (.I0(D2[15]),
        .I1(\ALU_OUT[1]_INST_0_i_13_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[2]_INST_0_i_30_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[1]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALU_OUT[2]_INST_0 
       (.I0(\ALU_OUT[2]_INST_0_i_1_n_0 ),
        .I1(ALU_OPP[3]),
        .I2(\ALU_OUT[2]_INST_0_i_2_n_0 ),
        .I3(ALU_OPP[1]),
        .I4(\ALU_OUT[2]_INST_0_i_3_n_0 ),
        .O(\ALU_OPP[3]_5 ));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    \ALU_OUT[2]_INST_0_i_1 
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[2]),
        .I3(ALU_OPP[0]),
        .I4(D1[2]),
        .O(\ALU_OUT[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[2]_INST_0_i_10 
       (.I0(\ALU_OUT[2]_INST_0_i_22_n_0 ),
        .I1(\ALU_OUT[2]_INST_0_i_23_n_0 ),
        .I2(p_0_in[1]),
        .I3(\ALU_OUT[2]_INST_0_i_24_n_0 ),
        .I4(p_0_in[2]),
        .I5(\ALU_OUT[2]_INST_0_i_25_n_0 ),
        .O(\ALU_OUT[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[2]_INST_0_i_11 
       (.I0(\ALU_OUT[2]_INST_0_i_26_n_0 ),
        .I1(\ALU_OUT[2]_INST_0_i_27_n_0 ),
        .I2(p_0_in[1]),
        .I3(\ALU_OUT[2]_INST_0_i_28_n_0 ),
        .I4(p_0_in[2]),
        .I5(\ALU_OUT[2]_INST_0_i_29_n_0 ),
        .O(\ALU_OUT[2]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBABFFFFF)) 
    \ALU_OUT[2]_INST_0_i_12 
       (.I0(D2[15]),
        .I1(\ALU_OUT[2]_INST_0_i_30_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[3]_INST_0_i_10_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[2]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[2]_INST_0_i_13 
       (.I0(\ALU_OUT[4]_INST_0_i_12_n_0 ),
        .I1(p_0_in[2]),
        .I2(\ALU_OUT[4]_INST_0_i_13_n_0 ),
        .I3(p_0_in[1]),
        .I4(\ALU_OUT[2]_INST_0_i_31_n_0 ),
        .O(\ALU_OUT[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000300000503050)) 
    \ALU_OUT[2]_INST_0_i_14 
       (.I0(D2[4]),
        .I1(SHIFT_LEFT2[4]),
        .I2(D1[1]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[3]),
        .I5(D2[3]),
        .O(\ALU_OUT[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000300000503050)) 
    \ALU_OUT[2]_INST_0_i_15 
       (.I0(D2[4]),
        .I1(SHIFT_LEFT2[4]),
        .I2(D1[0]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[3]),
        .I5(D2[3]),
        .O(\ALU_OUT[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000300000503050)) 
    \ALU_OUT[2]_INST_0_i_16 
       (.I0(D2[4]),
        .I1(SHIFT_LEFT2[4]),
        .I2(D1[2]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[3]),
        .I5(D2[3]),
        .O(\ALU_OUT[2]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \ALU_OUT[2]_INST_0_i_17 
       (.I0(D2[13]),
        .I1(SHIFT_LEFT2[13]),
        .I2(D2[15]),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'hFFAFFCAC)) 
    \ALU_OUT[2]_INST_0_i_18 
       (.I0(SHIFT_LEFT2[10]),
        .I1(D2[10]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[9]),
        .I4(D2[9]),
        .O(\ALU_OUT[2]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFAFFCAC)) 
    \ALU_OUT[2]_INST_0_i_19 
       (.I0(SHIFT_LEFT2[12]),
        .I1(D2[12]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[11]),
        .I4(D2[11]),
        .O(\ALU_OUT[2]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[2]_INST_0_i_2 
       (.I0(\ALU_OUT[2]_INST_0_i_4_n_0 ),
        .I1(D2[15]),
        .I2(SHIFT_RIGHT0[2]),
        .I3(ALU_OPP[0]),
        .I4(data2[2]),
        .O(\ALU_OUT[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFAFFCAC)) 
    \ALU_OUT[2]_INST_0_i_20 
       (.I0(SHIFT_LEFT2[6]),
        .I1(D2[6]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[5]),
        .I4(D2[5]),
        .O(\ALU_OUT[2]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFAFFCAC)) 
    \ALU_OUT[2]_INST_0_i_21 
       (.I0(SHIFT_LEFT2[8]),
        .I1(D2[8]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[7]),
        .I4(D2[7]),
        .O(\ALU_OUT[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hCCDDCDCDCC88C8C8)) 
    \ALU_OUT[2]_INST_0_i_22 
       (.I0(p_0_in[3]),
        .I1(D1[15]),
        .I2(D2[4]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[15]),
        .I5(D1[9]),
        .O(\ALU_OUT[2]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALU_OUT[2]_INST_0_i_23 
       (.I0(D1[13]),
        .I1(p_0_in[3]),
        .I2(D1[15]),
        .I3(p_0_in[4]),
        .I4(D1[5]),
        .O(\ALU_OUT[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hCCDDCDCDCC88C8C8)) 
    \ALU_OUT[2]_INST_0_i_24 
       (.I0(p_0_in[3]),
        .I1(D1[15]),
        .I2(D2[4]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[15]),
        .I5(D1[7]),
        .O(\ALU_OUT[2]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALU_OUT[2]_INST_0_i_25 
       (.I0(D1[11]),
        .I1(p_0_in[3]),
        .I2(D1[15]),
        .I3(p_0_in[4]),
        .I4(D1[3]),
        .O(\ALU_OUT[2]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hCCDDCDCDCC88C8C8)) 
    \ALU_OUT[2]_INST_0_i_26 
       (.I0(p_0_in[3]),
        .I1(D1[15]),
        .I2(D2[4]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[15]),
        .I5(D1[8]),
        .O(\ALU_OUT[2]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALU_OUT[2]_INST_0_i_27 
       (.I0(D1[12]),
        .I1(p_0_in[3]),
        .I2(D1[15]),
        .I3(p_0_in[4]),
        .I4(D1[4]),
        .O(\ALU_OUT[2]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALU_OUT[2]_INST_0_i_28 
       (.I0(D1[14]),
        .I1(p_0_in[3]),
        .I2(D1[15]),
        .I3(p_0_in[4]),
        .I4(D1[6]),
        .O(\ALU_OUT[2]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALU_OUT[2]_INST_0_i_29 
       (.I0(D1[10]),
        .I1(p_0_in[3]),
        .I2(D1[15]),
        .I3(p_0_in[4]),
        .I4(D1[2]),
        .O(\ALU_OUT[2]_INST_0_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[2]_INST_0_i_3 
       (.I0(data1[2]),
        .I1(ALU_OPP[0]),
        .I2(data0[2]),
        .O(\ALU_OUT[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ALU_OUT[2]_INST_0_i_30 
       (.I0(D2[2]),
        .I1(D2[4]),
        .I2(D1[1]),
        .I3(D2[3]),
        .I4(D2[1]),
        .O(\ALU_OUT[2]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[2]_INST_0_i_31 
       (.I0(\ALU_OUT[2]_INST_0_i_32_n_0 ),
        .I1(\ALU_OUT[2]_INST_0_i_33_n_0 ),
        .I2(p_0_in[2]),
        .I3(\ALU_OUT[2]_INST_0_i_34_n_0 ),
        .I4(p_0_in[3]),
        .I5(\ALU_OUT[2]_INST_0_i_35_n_0 ),
        .O(\ALU_OUT[2]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h082A)) 
    \ALU_OUT[2]_INST_0_i_32 
       (.I0(D1[14]),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[4]),
        .O(\ALU_OUT[2]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h082A)) 
    \ALU_OUT[2]_INST_0_i_33 
       (.I0(D1[6]),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[4]),
        .O(\ALU_OUT[2]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h082A)) 
    \ALU_OUT[2]_INST_0_i_34 
       (.I0(D1[10]),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[4]),
        .O(\ALU_OUT[2]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h082A)) 
    \ALU_OUT[2]_INST_0_i_35 
       (.I0(D1[2]),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[4]),
        .O(\ALU_OUT[2]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0004AAAE0004)) 
    \ALU_OUT[2]_INST_0_i_4 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[2]_INST_0_i_7_n_0 ),
        .I2(\ALU_OUT[2]_INST_0_i_8_n_0 ),
        .I3(\ALU_OUT[2]_INST_0_i_9_n_0 ),
        .I4(D1[0]),
        .I5(SHIFT_RIGHT3_carry_n_6),
        .O(\ALU_OUT[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[2]_INST_0_i_5 
       (.I0(\ALU_OUT[2]_INST_0_i_10_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[2]_INST_0_i_11_n_0 ),
        .I3(CARRY_FLAG_INST_0_i_5_n_0),
        .I4(D1[15]),
        .O(SHIFT_RIGHT0[2]));
  LUT6 #(
    .INIT(64'hDD55D5555555D555)) 
    \ALU_OUT[2]_INST_0_i_6 
       (.I0(\ALU_OUT[2]_INST_0_i_12_n_0 ),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(\ALU_OUT[2]_INST_0_i_13_n_0 ),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(\ALU_OUT[3]_INST_0_i_8_n_0 ),
        .O(data2[2]));
  LUT6 #(
    .INIT(64'h0000000050DD5088)) 
    \ALU_OUT[2]_INST_0_i_7 
       (.I0(D2[0]),
        .I1(\ALU_OUT[2]_INST_0_i_14_n_0 ),
        .I2(\ALU_OUT[2]_INST_0_i_15_n_0 ),
        .I3(p_0_in[1]),
        .I4(\ALU_OUT[2]_INST_0_i_16_n_0 ),
        .I5(p_0_in[2]),
        .O(\ALU_OUT[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAFCFCFFFFFCFC)) 
    \ALU_OUT[2]_INST_0_i_8 
       (.I0(SHIFT_LEFT2[14]),
        .I1(D2[14]),
        .I2(p_0_in[13]),
        .I3(SHIFT_LEFT2[15]),
        .I4(D2[15]),
        .I5(\_inferred__0/i__carry__2_n_0 ),
        .O(\ALU_OUT[2]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ALU_OUT[2]_INST_0_i_9 
       (.I0(\ALU_OUT[2]_INST_0_i_18_n_0 ),
        .I1(\ALU_OUT[2]_INST_0_i_19_n_0 ),
        .I2(\ALU_OUT[2]_INST_0_i_20_n_0 ),
        .I3(\ALU_OUT[2]_INST_0_i_21_n_0 ),
        .O(\ALU_OUT[2]_INST_0_i_9_n_0 ));
  MUXF7 \ALU_OUT[3]_INST_0 
       (.I0(\ALU_OUT[3]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[3]_INST_0_i_2_n_0 ),
        .O(\ALU_OPP[3]_2 ),
        .S(ALU_OPP[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[3]_INST_0_i_1 
       (.I0(data3[3]),
        .I1(data2[3]),
        .I2(ALU_OPP[1]),
        .I3(data1[3]),
        .I4(ALU_OPP[0]),
        .I5(data0[3]),
        .O(\ALU_OUT[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALU_OUT[3]_INST_0_i_10 
       (.I0(D1[0]),
        .I1(D2[1]),
        .I2(D2[3]),
        .I3(D1[2]),
        .I4(D2[4]),
        .I5(D2[2]),
        .O(\ALU_OUT[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[3]_INST_0_i_11 
       (.I0(\ALU_OUT[3]_INST_0_i_13_n_0 ),
        .I1(\ALU_OUT[3]_INST_0_i_14_n_0 ),
        .I2(p_0_in[2]),
        .I3(\ALU_OUT[3]_INST_0_i_15_n_0 ),
        .I4(p_0_in[3]),
        .I5(\ALU_OUT[3]_INST_0_i_16_n_0 ),
        .O(\ALU_OUT[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALU_OUT[3]_INST_0_i_12 
       (.I0(D1[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(D1[2]),
        .I4(p_0_in[4]),
        .I5(p_0_in[2]),
        .O(\ALU_OUT[3]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h082A)) 
    \ALU_OUT[3]_INST_0_i_13 
       (.I0(D1[15]),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[4]),
        .O(\ALU_OUT[3]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h082A)) 
    \ALU_OUT[3]_INST_0_i_14 
       (.I0(D1[7]),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[4]),
        .O(\ALU_OUT[3]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h082A)) 
    \ALU_OUT[3]_INST_0_i_15 
       (.I0(D1[11]),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[4]),
        .O(\ALU_OUT[3]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h082A)) 
    \ALU_OUT[3]_INST_0_i_16 
       (.I0(D1[3]),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[4]),
        .O(\ALU_OUT[3]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    \ALU_OUT[3]_INST_0_i_2 
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[3]),
        .I3(ALU_OPP[0]),
        .I4(D1[3]),
        .O(\ALU_OUT[3]_INST_0_i_2_n_0 ));
  MUXF7 \ALU_OUT[3]_INST_0_i_3 
       (.I0(SHIFT_RIGHT0[3]),
        .I1(\ALU_OUT[3]_INST_0_i_6_n_0 ),
        .O(data3[3]),
        .S(D2[15]));
  LUT6 #(
    .INIT(64'hDD55D5555555D555)) 
    \ALU_OUT[3]_INST_0_i_4 
       (.I0(\ALU_OUT[3]_INST_0_i_7_n_0 ),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(\ALU_OUT[3]_INST_0_i_8_n_0 ),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(\ALU_OUT[4]_INST_0_i_8_n_0 ),
        .O(data2[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[3]_INST_0_i_5 
       (.I0(\ALU_OUT[4]_INST_0_i_9_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[2]_INST_0_i_10_n_0 ),
        .I3(CARRY_FLAG_INST_0_i_5_n_0),
        .I4(D1[15]),
        .O(SHIFT_RIGHT0[3]));
  LUT5 #(
    .INIT(32'hFF40EA40)) 
    \ALU_OUT[3]_INST_0_i_6 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[3]_INST_0_i_9_n_0 ),
        .I2(CARRY_FLAG_INST_0_i_5_n_0),
        .I3(D1[0]),
        .I4(SHIFT_RIGHT3_carry_n_5),
        .O(\ALU_OUT[3]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBABFFFFF)) 
    \ALU_OUT[3]_INST_0_i_7 
       (.I0(D2[15]),
        .I1(\ALU_OUT[3]_INST_0_i_10_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[4]_INST_0_i_11_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[3]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[3]_INST_0_i_8 
       (.I0(\ALU_OUT[5]_INST_0_i_12_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[3]_INST_0_i_11_n_0 ),
        .O(\ALU_OUT[3]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[3]_INST_0_i_9 
       (.I0(\ALU_OUT[3]_INST_0_i_12_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[4]_INST_0_i_14_n_0 ),
        .O(\ALU_OUT[3]_INST_0_i_9_n_0 ));
  MUXF7 \ALU_OUT[4]_INST_0 
       (.I0(\ALU_OUT[4]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[4]_INST_0_i_2_n_0 ),
        .O(\ALU_OPP[3]_7 ),
        .S(ALU_OPP[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[4]_INST_0_i_1 
       (.I0(data3[4]),
        .I1(data2[4]),
        .I2(ALU_OPP[1]),
        .I3(data1[4]),
        .I4(ALU_OPP[0]),
        .I5(data0[4]),
        .O(\ALU_OUT[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALU_OUT[4]_INST_0_i_10 
       (.I0(\ALU_OUT[4]_INST_0_i_14_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[5]_INST_0_i_13_n_0 ),
        .I3(p_0_in[1]),
        .I4(\ALU_OUT[7]_INST_0_i_14_n_0 ),
        .O(\ALU_OUT[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALU_OUT[4]_INST_0_i_11 
       (.I0(D1[1]),
        .I1(D2[1]),
        .I2(D2[3]),
        .I3(D1[3]),
        .I4(D2[4]),
        .I5(D2[2]),
        .O(\ALU_OUT[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000B80000B8B8B8)) 
    \ALU_OUT[4]_INST_0_i_12 
       (.I0(D1[15]),
        .I1(p_0_in[3]),
        .I2(D1[8]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(\ALU_OUT[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000B80000B8B8B8)) 
    \ALU_OUT[4]_INST_0_i_13 
       (.I0(D1[12]),
        .I1(p_0_in[3]),
        .I2(D1[4]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(\ALU_OUT[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALU_OUT[4]_INST_0_i_14 
       (.I0(D1[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(D1[3]),
        .I4(p_0_in[4]),
        .I5(p_0_in[2]),
        .O(\ALU_OUT[4]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    \ALU_OUT[4]_INST_0_i_2 
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[4]),
        .I3(ALU_OPP[0]),
        .I4(D1[4]),
        .O(\ALU_OUT[4]_INST_0_i_2_n_0 ));
  MUXF7 \ALU_OUT[4]_INST_0_i_3 
       (.I0(SHIFT_RIGHT0[4]),
        .I1(\ALU_OUT[4]_INST_0_i_6_n_0 ),
        .O(data3[4]),
        .S(D2[15]));
  LUT6 #(
    .INIT(64'hDD55D5555555D555)) 
    \ALU_OUT[4]_INST_0_i_4 
       (.I0(\ALU_OUT[4]_INST_0_i_7_n_0 ),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(\ALU_OUT[4]_INST_0_i_8_n_0 ),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(\ALU_OUT[5]_INST_0_i_8_n_0 ),
        .O(data2[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[4]_INST_0_i_5 
       (.I0(\ALU_OUT[5]_INST_0_i_9_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[4]_INST_0_i_9_n_0 ),
        .I3(CARRY_FLAG_INST_0_i_5_n_0),
        .I4(D1[15]),
        .O(SHIFT_RIGHT0[4]));
  LUT5 #(
    .INIT(32'hFF40EA40)) 
    \ALU_OUT[4]_INST_0_i_6 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[4]_INST_0_i_10_n_0 ),
        .I2(CARRY_FLAG_INST_0_i_5_n_0),
        .I3(D1[0]),
        .I4(SHIFT_RIGHT3_carry_n_4),
        .O(\ALU_OUT[4]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBABFFFFF)) 
    \ALU_OUT[4]_INST_0_i_7 
       (.I0(D2[15]),
        .I1(\ALU_OUT[4]_INST_0_i_11_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[5]_INST_0_i_11_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[4]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALU_OUT[4]_INST_0_i_8 
       (.I0(\ALU_OUT[6]_INST_0_i_12_n_0 ),
        .I1(p_0_in[1]),
        .I2(\ALU_OUT[4]_INST_0_i_12_n_0 ),
        .I3(p_0_in[2]),
        .I4(\ALU_OUT[4]_INST_0_i_13_n_0 ),
        .O(\ALU_OUT[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[4]_INST_0_i_9 
       (.I0(\ALU_OUT[6]_INST_0_i_13_n_0 ),
        .I1(\ALU_OUT[2]_INST_0_i_28_n_0 ),
        .I2(p_0_in[1]),
        .I3(\ALU_OUT[2]_INST_0_i_26_n_0 ),
        .I4(p_0_in[2]),
        .I5(\ALU_OUT[2]_INST_0_i_27_n_0 ),
        .O(\ALU_OUT[4]_INST_0_i_9_n_0 ));
  MUXF7 \ALU_OUT[5]_INST_0 
       (.I0(\ALU_OUT[5]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[5]_INST_0_i_2_n_0 ),
        .O(\ALU_OPP[3]_6 ),
        .S(ALU_OPP[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[5]_INST_0_i_1 
       (.I0(data3[5]),
        .I1(data2[5]),
        .I2(ALU_OPP[1]),
        .I3(data1[5]),
        .I4(ALU_OPP[0]),
        .I5(data0[5]),
        .O(\ALU_OUT[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[5]_INST_0_i_10 
       (.I0(\ALU_OUT[5]_INST_0_i_13_n_0 ),
        .I1(p_0_in[1]),
        .I2(\ALU_OUT[7]_INST_0_i_14_n_0 ),
        .I3(D2[0]),
        .I4(\ALU_OUT[6]_INST_0_i_14_n_0 ),
        .O(\ALU_OUT[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALU_OUT[5]_INST_0_i_11 
       (.I0(D2[3]),
        .I1(D1[2]),
        .I2(D2[4]),
        .I3(D2[2]),
        .I4(D2[1]),
        .I5(\ALU_OUT[7]_INST_0_i_15_n_0 ),
        .O(\ALU_OUT[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALU_OUT[5]_INST_0_i_12 
       (.I0(D1[9]),
        .I1(p_0_in[2]),
        .I2(D1[13]),
        .I3(p_0_in[3]),
        .I4(D1[5]),
        .I5(p_0_in[4]),
        .O(\ALU_OUT[5]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400444)) 
    \ALU_OUT[5]_INST_0_i_13 
       (.I0(p_0_in[3]),
        .I1(D1[2]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[4]),
        .I5(p_0_in[2]),
        .O(\ALU_OUT[5]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    \ALU_OUT[5]_INST_0_i_2 
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[5]),
        .I3(ALU_OPP[0]),
        .I4(D1[5]),
        .O(\ALU_OUT[5]_INST_0_i_2_n_0 ));
  MUXF7 \ALU_OUT[5]_INST_0_i_3 
       (.I0(SHIFT_RIGHT0[5]),
        .I1(\ALU_OUT[5]_INST_0_i_6_n_0 ),
        .O(data3[5]),
        .S(D2[15]));
  LUT6 #(
    .INIT(64'hDD55D5555555D555)) 
    \ALU_OUT[5]_INST_0_i_4 
       (.I0(\ALU_OUT[5]_INST_0_i_7_n_0 ),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(\ALU_OUT[5]_INST_0_i_8_n_0 ),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(\ALU_OUT[6]_INST_0_i_8_n_0 ),
        .O(data2[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[5]_INST_0_i_5 
       (.I0(\ALU_OUT[6]_INST_0_i_9_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[5]_INST_0_i_9_n_0 ),
        .I3(CARRY_FLAG_INST_0_i_5_n_0),
        .I4(D1[15]),
        .O(SHIFT_RIGHT0[5]));
  LUT5 #(
    .INIT(32'hFF40EA40)) 
    \ALU_OUT[5]_INST_0_i_6 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[5]_INST_0_i_10_n_0 ),
        .I2(CARRY_FLAG_INST_0_i_5_n_0),
        .I3(D1[0]),
        .I4(SHIFT_RIGHT3_carry__0_n_7),
        .O(\ALU_OUT[5]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBABFFFFF)) 
    \ALU_OUT[5]_INST_0_i_7 
       (.I0(D2[15]),
        .I1(\ALU_OUT[5]_INST_0_i_11_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[6]_INST_0_i_11_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[5]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[5]_INST_0_i_8 
       (.I0(\ALU_OUT[7]_INST_0_i_12_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[5]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[5]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALU_OUT[5]_INST_0_i_9 
       (.I0(\ALU_OUT[7]_INST_0_i_13_n_0 ),
        .I1(p_0_in[1]),
        .I2(\ALU_OUT[2]_INST_0_i_22_n_0 ),
        .I3(p_0_in[2]),
        .I4(\ALU_OUT[2]_INST_0_i_23_n_0 ),
        .O(\ALU_OUT[5]_INST_0_i_9_n_0 ));
  MUXF7 \ALU_OUT[6]_INST_0 
       (.I0(\ALU_OUT[6]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[6]_INST_0_i_2_n_0 ),
        .O(ALU_OUT[0]),
        .S(ALU_OPP[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[6]_INST_0_i_1 
       (.I0(data3[6]),
        .I1(data2[6]),
        .I2(ALU_OPP[1]),
        .I3(data1[6]),
        .I4(ALU_OPP[0]),
        .I5(data0[6]),
        .O(\ALU_OUT[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALU_OUT[6]_INST_0_i_10 
       (.I0(\ALU_OUT[6]_INST_0_i_14_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[7]_INST_0_i_14_n_0 ),
        .I3(p_0_in[1]),
        .I4(\ALU_OUT[9]_INST_0_i_13_n_0 ),
        .O(\ALU_OUT[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALU_OUT[6]_INST_0_i_11 
       (.I0(D2[3]),
        .I1(D1[3]),
        .I2(D2[4]),
        .I3(D2[2]),
        .I4(D2[1]),
        .I5(\ALU_OUT[8]_INST_0_i_15_n_0 ),
        .O(\ALU_OUT[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALU_OUT[6]_INST_0_i_12 
       (.I0(D1[10]),
        .I1(p_0_in[2]),
        .I2(D1[14]),
        .I3(p_0_in[3]),
        .I4(D1[6]),
        .I5(p_0_in[4]),
        .O(\ALU_OUT[6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCCDDCDCDCC88C8C8)) 
    \ALU_OUT[6]_INST_0_i_13 
       (.I0(p_0_in[3]),
        .I1(D1[15]),
        .I2(D2[4]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[15]),
        .I5(D1[10]),
        .O(\ALU_OUT[6]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALU_OUT[6]_INST_0_i_14 
       (.I0(\ALU_OUT[3]_INST_0_i_16_n_0 ),
        .I1(p_0_in[1]),
        .I2(\ALU_OUT[1]_INST_0_i_11_n_0 ),
        .I3(p_0_in[2]),
        .I4(\ALU_OUT[6]_INST_0_i_15_n_0 ),
        .I5(p_0_in[3]),
        .O(\ALU_OUT[6]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h082A)) 
    \ALU_OUT[6]_INST_0_i_15 
       (.I0(D1[5]),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[4]),
        .O(\ALU_OUT[6]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    \ALU_OUT[6]_INST_0_i_2 
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[6]),
        .I3(ALU_OPP[0]),
        .I4(D1[6]),
        .O(\ALU_OUT[6]_INST_0_i_2_n_0 ));
  MUXF7 \ALU_OUT[6]_INST_0_i_3 
       (.I0(SHIFT_RIGHT0[6]),
        .I1(\ALU_OUT[6]_INST_0_i_6_n_0 ),
        .O(data3[6]),
        .S(D2[15]));
  LUT6 #(
    .INIT(64'hDD55D5555555D555)) 
    \ALU_OUT[6]_INST_0_i_4 
       (.I0(\ALU_OUT[6]_INST_0_i_7_n_0 ),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(\ALU_OUT[6]_INST_0_i_8_n_0 ),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(\ALU_OUT[7]_INST_0_i_8_n_0 ),
        .O(data2[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[6]_INST_0_i_5 
       (.I0(\ALU_OUT[7]_INST_0_i_9_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[6]_INST_0_i_9_n_0 ),
        .I3(CARRY_FLAG_INST_0_i_5_n_0),
        .I4(D1[15]),
        .O(SHIFT_RIGHT0[6]));
  LUT5 #(
    .INIT(32'hFF40EA40)) 
    \ALU_OUT[6]_INST_0_i_6 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[6]_INST_0_i_10_n_0 ),
        .I2(CARRY_FLAG_INST_0_i_5_n_0),
        .I3(D1[0]),
        .I4(SHIFT_RIGHT3_carry__0_n_6),
        .O(\ALU_OUT[6]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBABFFFFF)) 
    \ALU_OUT[6]_INST_0_i_7 
       (.I0(D2[15]),
        .I1(\ALU_OUT[6]_INST_0_i_11_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[7]_INST_0_i_11_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[6]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[6]_INST_0_i_8 
       (.I0(\ALU_OUT[8]_INST_0_i_12_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[6]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[6]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALU_OUT[6]_INST_0_i_9 
       (.I0(\ALU_OUT[8]_INST_0_i_13_n_0 ),
        .I1(p_0_in[1]),
        .I2(\ALU_OUT[6]_INST_0_i_13_n_0 ),
        .I3(p_0_in[2]),
        .I4(\ALU_OUT[2]_INST_0_i_28_n_0 ),
        .O(\ALU_OUT[6]_INST_0_i_9_n_0 ));
  MUXF7 \ALU_OUT[7]_INST_0 
       (.I0(\ALU_OUT[7]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[7]_INST_0_i_2_n_0 ),
        .O(\ALU_OPP[3]_12 ),
        .S(ALU_OPP[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[7]_INST_0_i_1 
       (.I0(data3[7]),
        .I1(data2[7]),
        .I2(ALU_OPP[1]),
        .I3(data1[7]),
        .I4(ALU_OPP[0]),
        .I5(data0[7]),
        .O(\ALU_OUT[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDD88F5F5DD88A0A0)) 
    \ALU_OUT[7]_INST_0_i_10 
       (.I0(D2[0]),
        .I1(\ALU_OUT[7]_INST_0_i_14_n_0 ),
        .I2(\ALU_OUT[9]_INST_0_i_13_n_0 ),
        .I3(\ALU_OUT[8]_INST_0_i_14_n_0 ),
        .I4(p_0_in[1]),
        .I5(\ALU_OUT[10]_INST_0_i_13_n_0 ),
        .O(\ALU_OUT[7]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[7]_INST_0_i_11 
       (.I0(\ALU_OUT[7]_INST_0_i_15_n_0 ),
        .I1(D2[1]),
        .I2(\ALU_OUT[9]_INST_0_i_16_n_0 ),
        .O(\ALU_OUT[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALU_OUT[7]_INST_0_i_12 
       (.I0(D1[11]),
        .I1(p_0_in[2]),
        .I2(D1[15]),
        .I3(p_0_in[3]),
        .I4(D1[7]),
        .I5(p_0_in[4]),
        .O(\ALU_OUT[7]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALU_OUT[7]_INST_0_i_13 
       (.I0(D1[11]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(D1[15]),
        .I4(p_0_in[4]),
        .I5(D1[7]),
        .O(\ALU_OUT[7]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALU_OUT[7]_INST_0_i_14 
       (.I0(D1[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[4]),
        .I3(D1[4]),
        .I4(p_0_in[3]),
        .O(\ALU_OUT[7]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALU_OUT[7]_INST_0_i_15 
       (.I0(D1[0]),
        .I1(D2[2]),
        .I2(D2[4]),
        .I3(D1[4]),
        .I4(D2[3]),
        .O(\ALU_OUT[7]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    \ALU_OUT[7]_INST_0_i_2 
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[7]),
        .I3(ALU_OPP[0]),
        .I4(D1[7]),
        .O(\ALU_OUT[7]_INST_0_i_2_n_0 ));
  MUXF7 \ALU_OUT[7]_INST_0_i_3 
       (.I0(SHIFT_RIGHT0[7]),
        .I1(\ALU_OUT[7]_INST_0_i_6_n_0 ),
        .O(data3[7]),
        .S(D2[15]));
  LUT6 #(
    .INIT(64'hDD55D5555555D555)) 
    \ALU_OUT[7]_INST_0_i_4 
       (.I0(\ALU_OUT[7]_INST_0_i_7_n_0 ),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(\ALU_OUT[7]_INST_0_i_8_n_0 ),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(\ALU_OUT[8]_INST_0_i_8_n_0 ),
        .O(data2[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[7]_INST_0_i_5 
       (.I0(\ALU_OUT[8]_INST_0_i_9_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[7]_INST_0_i_9_n_0 ),
        .I3(CARRY_FLAG_INST_0_i_5_n_0),
        .I4(D1[15]),
        .O(SHIFT_RIGHT0[7]));
  LUT5 #(
    .INIT(32'hFF40EA40)) 
    \ALU_OUT[7]_INST_0_i_6 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[7]_INST_0_i_10_n_0 ),
        .I2(CARRY_FLAG_INST_0_i_5_n_0),
        .I3(D1[0]),
        .I4(SHIFT_RIGHT3_carry__0_n_5),
        .O(\ALU_OUT[7]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBABFFFFF)) 
    \ALU_OUT[7]_INST_0_i_7 
       (.I0(D2[15]),
        .I1(\ALU_OUT[7]_INST_0_i_11_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[8]_INST_0_i_11_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[7]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[7]_INST_0_i_8 
       (.I0(\ALU_OUT[9]_INST_0_i_12_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[7]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[7]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[7]_INST_0_i_9 
       (.I0(\ALU_OUT[9]_INST_0_i_15_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[7]_INST_0_i_13_n_0 ),
        .O(\ALU_OUT[7]_INST_0_i_9_n_0 ));
  MUXF7 \ALU_OUT[8]_INST_0 
       (.I0(\ALU_OUT[8]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[8]_INST_0_i_2_n_0 ),
        .O(ALU_OUT[1]),
        .S(ALU_OPP[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[8]_INST_0_i_1 
       (.I0(data3[8]),
        .I1(data2[8]),
        .I2(ALU_OPP[1]),
        .I3(data1[8]),
        .I4(ALU_OPP[0]),
        .I5(data0[8]),
        .O(\ALU_OUT[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDD88F5F5DD88A0A0)) 
    \ALU_OUT[8]_INST_0_i_10 
       (.I0(D2[0]),
        .I1(\ALU_OUT[8]_INST_0_i_14_n_0 ),
        .I2(\ALU_OUT[10]_INST_0_i_13_n_0 ),
        .I3(\ALU_OUT[9]_INST_0_i_13_n_0 ),
        .I4(p_0_in[1]),
        .I5(\ALU_OUT[11]_INST_0_i_15_n_0 ),
        .O(\ALU_OUT[8]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[8]_INST_0_i_11 
       (.I0(\ALU_OUT[8]_INST_0_i_15_n_0 ),
        .I1(D2[1]),
        .I2(\ALU_OUT[10]_INST_0_i_16_n_0 ),
        .O(\ALU_OUT[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALU_OUT[8]_INST_0_i_12 
       (.I0(D1[12]),
        .I1(p_0_in[2]),
        .I2(D1[15]),
        .I3(p_0_in[3]),
        .I4(D1[8]),
        .I5(p_0_in[4]),
        .O(\ALU_OUT[8]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALU_OUT[8]_INST_0_i_13 
       (.I0(D1[12]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(D1[15]),
        .I4(p_0_in[4]),
        .I5(D1[8]),
        .O(\ALU_OUT[8]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALU_OUT[8]_INST_0_i_14 
       (.I0(D1[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[4]),
        .I3(D1[5]),
        .I4(p_0_in[3]),
        .O(\ALU_OUT[8]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALU_OUT[8]_INST_0_i_15 
       (.I0(D1[1]),
        .I1(D2[2]),
        .I2(D2[4]),
        .I3(D1[5]),
        .I4(D2[3]),
        .O(\ALU_OUT[8]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    \ALU_OUT[8]_INST_0_i_2 
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[8]),
        .I3(ALU_OPP[0]),
        .I4(D1[8]),
        .O(\ALU_OUT[8]_INST_0_i_2_n_0 ));
  MUXF7 \ALU_OUT[8]_INST_0_i_3 
       (.I0(SHIFT_RIGHT0[8]),
        .I1(\ALU_OUT[8]_INST_0_i_6_n_0 ),
        .O(data3[8]),
        .S(D2[15]));
  LUT6 #(
    .INIT(64'hDD55D5555555D555)) 
    \ALU_OUT[8]_INST_0_i_4 
       (.I0(\ALU_OUT[8]_INST_0_i_7_n_0 ),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(\ALU_OUT[8]_INST_0_i_8_n_0 ),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(\ALU_OUT[9]_INST_0_i_8_n_0 ),
        .O(data2[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[8]_INST_0_i_5 
       (.I0(\ALU_OUT[9]_INST_0_i_10_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[8]_INST_0_i_9_n_0 ),
        .I3(CARRY_FLAG_INST_0_i_5_n_0),
        .I4(D1[15]),
        .O(SHIFT_RIGHT0[8]));
  LUT5 #(
    .INIT(32'hFF40EA40)) 
    \ALU_OUT[8]_INST_0_i_6 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[8]_INST_0_i_10_n_0 ),
        .I2(CARRY_FLAG_INST_0_i_5_n_0),
        .I3(D1[0]),
        .I4(SHIFT_RIGHT3_carry__0_n_4),
        .O(\ALU_OUT[8]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBABFFFFF)) 
    \ALU_OUT[8]_INST_0_i_7 
       (.I0(D2[15]),
        .I1(\ALU_OUT[8]_INST_0_i_11_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[9]_INST_0_i_11_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[8]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[8]_INST_0_i_8 
       (.I0(\ALU_OUT[10]_INST_0_i_12_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[8]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[8]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[8]_INST_0_i_9 
       (.I0(\ALU_OUT[10]_INST_0_i_15_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[8]_INST_0_i_13_n_0 ),
        .O(\ALU_OUT[8]_INST_0_i_9_n_0 ));
  MUXF7 \ALU_OUT[9]_INST_0 
       (.I0(\ALU_OUT[9]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[9]_INST_0_i_2_n_0 ),
        .O(ALU_OPP_3_sn_1),
        .S(ALU_OPP[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[9]_INST_0_i_1 
       (.I0(data3[9]),
        .I1(data2[9]),
        .I2(ALU_OPP[1]),
        .I3(data1[9]),
        .I4(ALU_OPP[0]),
        .I5(data0[9]),
        .O(\ALU_OUT[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[9]_INST_0_i_10 
       (.I0(\ALU_OUT[9]_INST_0_i_14_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[9]_INST_0_i_15_n_0 ),
        .O(\ALU_OUT[9]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[9]_INST_0_i_11 
       (.I0(\ALU_OUT[9]_INST_0_i_16_n_0 ),
        .I1(D2[1]),
        .I2(\ALU_OUT[11]_INST_0_i_18_n_0 ),
        .O(\ALU_OUT[9]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALU_OUT[9]_INST_0_i_12 
       (.I0(D1[13]),
        .I1(p_0_in[2]),
        .I2(p_0_in[4]),
        .I3(D1[9]),
        .I4(p_0_in[3]),
        .O(\ALU_OUT[9]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALU_OUT[9]_INST_0_i_13 
       (.I0(D1[2]),
        .I1(p_0_in[2]),
        .I2(p_0_in[4]),
        .I3(D1[6]),
        .I4(p_0_in[3]),
        .O(\ALU_OUT[9]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \ALU_OUT[9]_INST_0_i_14 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(D1[15]),
        .I3(p_0_in[4]),
        .I4(D1[11]),
        .O(\ALU_OUT[9]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALU_OUT[9]_INST_0_i_15 
       (.I0(D1[13]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(D1[15]),
        .I4(p_0_in[4]),
        .I5(D1[9]),
        .O(\ALU_OUT[9]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALU_OUT[9]_INST_0_i_16 
       (.I0(D1[2]),
        .I1(D2[2]),
        .I2(D2[4]),
        .I3(D1[6]),
        .I4(D2[3]),
        .O(\ALU_OUT[9]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    \ALU_OUT[9]_INST_0_i_2 
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[9]),
        .I3(ALU_OPP[0]),
        .I4(D1[9]),
        .O(\ALU_OUT[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF4E4FFFFF4E40000)) 
    \ALU_OUT[9]_INST_0_i_3 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[9]_INST_0_i_5_n_0 ),
        .I2(D1[0]),
        .I3(SHIFT_RIGHT3_carry__1_n_7),
        .I4(D2[15]),
        .I5(SHIFT_RIGHT0[9]),
        .O(data3[9]));
  LUT6 #(
    .INIT(64'hDD55D5555555D555)) 
    \ALU_OUT[9]_INST_0_i_4 
       (.I0(\ALU_OUT[9]_INST_0_i_7_n_0 ),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(\ALU_OUT[9]_INST_0_i_8_n_0 ),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(\ALU_OUT[10]_INST_0_i_8_n_0 ),
        .O(data2[9]));
  LUT4 #(
    .INIT(16'hA808)) 
    \ALU_OUT[9]_INST_0_i_5 
       (.I0(CARRY_FLAG_INST_0_i_5_n_0),
        .I1(\ALU_OUT[10]_INST_0_i_9_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[9]_INST_0_i_9_n_0 ),
        .O(\ALU_OUT[9]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALU_OUT[9]_INST_0_i_6 
       (.I0(\ALU_OUT[10]_INST_0_i_10_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[9]_INST_0_i_10_n_0 ),
        .I3(CARRY_FLAG_INST_0_i_5_n_0),
        .I4(D1[15]),
        .O(SHIFT_RIGHT0[9]));
  LUT5 #(
    .INIT(32'hBABFFFFF)) 
    \ALU_OUT[9]_INST_0_i_7 
       (.I0(D2[15]),
        .I1(\ALU_OUT[9]_INST_0_i_11_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[10]_INST_0_i_11_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[9]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[9]_INST_0_i_8 
       (.I0(\ALU_OUT[11]_INST_0_i_13_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[9]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[9]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    \ALU_OUT[9]_INST_0_i_9 
       (.I0(\ALU_OUT[9]_INST_0_i_13_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[11]_INST_0_i_15_n_0 ),
        .O(\ALU_OUT[9]_INST_0_i_9_n_0 ));
  CARRY4 ALU_OUT_Internal0_carry
       (.CI(1'b0),
        .CO({ALU_OUT_Internal0_carry_n_0,ALU_OUT_Internal0_carry_n_1,ALU_OUT_Internal0_carry_n_2,ALU_OUT_Internal0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(D1[3:0]),
        .O(data0[3:0]),
        .S({ALU_OUT_Internal0_carry_i_1_n_0,ALU_OUT_Internal0_carry_i_2_n_0,ALU_OUT_Internal0_carry_i_3_n_0,ALU_OUT_Internal0_carry_i_4_n_0}));
  CARRY4 ALU_OUT_Internal0_carry__0
       (.CI(ALU_OUT_Internal0_carry_n_0),
        .CO({ALU_OUT_Internal0_carry__0_n_0,ALU_OUT_Internal0_carry__0_n_1,ALU_OUT_Internal0_carry__0_n_2,ALU_OUT_Internal0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(D1[7:4]),
        .O(data0[7:4]),
        .S({ALU_OUT_Internal0_carry__0_i_1_n_0,ALU_OUT_Internal0_carry__0_i_2_n_0,ALU_OUT_Internal0_carry__0_i_3_n_0,ALU_OUT_Internal0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__0_i_1
       (.I0(D1[7]),
        .I1(D2[7]),
        .O(ALU_OUT_Internal0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__0_i_2
       (.I0(D1[6]),
        .I1(D2[6]),
        .O(ALU_OUT_Internal0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__0_i_3
       (.I0(D1[5]),
        .I1(D2[5]),
        .O(ALU_OUT_Internal0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__0_i_4
       (.I0(D1[4]),
        .I1(D2[4]),
        .O(ALU_OUT_Internal0_carry__0_i_4_n_0));
  CARRY4 ALU_OUT_Internal0_carry__1
       (.CI(ALU_OUT_Internal0_carry__0_n_0),
        .CO({ALU_OUT_Internal0_carry__1_n_0,ALU_OUT_Internal0_carry__1_n_1,ALU_OUT_Internal0_carry__1_n_2,ALU_OUT_Internal0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(D1[11:8]),
        .O(data0[11:8]),
        .S({ALU_OUT_Internal0_carry__1_i_1_n_0,ALU_OUT_Internal0_carry__1_i_2_n_0,ALU_OUT_Internal0_carry__1_i_3_n_0,ALU_OUT_Internal0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__1_i_1
       (.I0(D1[11]),
        .I1(D2[11]),
        .O(ALU_OUT_Internal0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__1_i_2
       (.I0(D1[10]),
        .I1(D2[10]),
        .O(ALU_OUT_Internal0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__1_i_3
       (.I0(D1[9]),
        .I1(D2[9]),
        .O(ALU_OUT_Internal0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__1_i_4
       (.I0(D1[8]),
        .I1(D2[8]),
        .O(ALU_OUT_Internal0_carry__1_i_4_n_0));
  CARRY4 ALU_OUT_Internal0_carry__2
       (.CI(ALU_OUT_Internal0_carry__1_n_0),
        .CO({ALU_OUT_Internal0_carry__2_n_0,ALU_OUT_Internal0_carry__2_n_1,ALU_OUT_Internal0_carry__2_n_2,ALU_OUT_Internal0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ALU_OUT_Internal0_carry__2_i_1_n_0,D1[14:12]}),
        .O(data0[15:12]),
        .S({ALU_OUT_Internal0_carry__2_i_2_n_0,ALU_OUT_Internal0_carry__2_i_3_n_0,ALU_OUT_Internal0_carry__2_i_4_n_0,ALU_OUT_Internal0_carry__2_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    ALU_OUT_Internal0_carry__2_i_1
       (.I0(D1[15]),
        .O(ALU_OUT_Internal0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__2_i_2
       (.I0(D1[15]),
        .I1(D2[15]),
        .O(ALU_OUT_Internal0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__2_i_3
       (.I0(D1[14]),
        .I1(D2[14]),
        .O(ALU_OUT_Internal0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__2_i_4
       (.I0(D1[13]),
        .I1(D2[13]),
        .O(ALU_OUT_Internal0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__2_i_5
       (.I0(D1[12]),
        .I1(D2[12]),
        .O(ALU_OUT_Internal0_carry__2_i_5_n_0));
  CARRY4 ALU_OUT_Internal0_carry__3
       (.CI(ALU_OUT_Internal0_carry__2_n_0),
        .CO(NLW_ALU_OUT_Internal0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_ALU_OUT_Internal0_carry__3_O_UNCONNECTED[3:1],data0__0}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry_i_1
       (.I0(D1[3]),
        .I1(D2[3]),
        .O(ALU_OUT_Internal0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry_i_2
       (.I0(D1[2]),
        .I1(D2[2]),
        .O(ALU_OUT_Internal0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry_i_3
       (.I0(D1[1]),
        .I1(D2[1]),
        .O(ALU_OUT_Internal0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry_i_4
       (.I0(D1[0]),
        .I1(D2[0]),
        .O(ALU_OUT_Internal0_carry_i_4_n_0));
  CARRY4 \ALU_OUT_Internal0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ALU_OUT_Internal0_inferred__0/i__carry_n_0 ,\ALU_OUT_Internal0_inferred__0/i__carry_n_1 ,\ALU_OUT_Internal0_inferred__0/i__carry_n_2 ,\ALU_OUT_Internal0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(D1[3:0]),
        .O(data1[3:0]),
        .S({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \ALU_OUT_Internal0_inferred__0/i__carry__0 
       (.CI(\ALU_OUT_Internal0_inferred__0/i__carry_n_0 ),
        .CO({\ALU_OUT_Internal0_inferred__0/i__carry__0_n_0 ,\ALU_OUT_Internal0_inferred__0/i__carry__0_n_1 ,\ALU_OUT_Internal0_inferred__0/i__carry__0_n_2 ,\ALU_OUT_Internal0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(D1[7:4]),
        .O(data1[7:4]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}));
  CARRY4 \ALU_OUT_Internal0_inferred__0/i__carry__1 
       (.CI(\ALU_OUT_Internal0_inferred__0/i__carry__0_n_0 ),
        .CO({\ALU_OUT_Internal0_inferred__0/i__carry__1_n_0 ,\ALU_OUT_Internal0_inferred__0/i__carry__1_n_1 ,\ALU_OUT_Internal0_inferred__0/i__carry__1_n_2 ,\ALU_OUT_Internal0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(D1[11:8]),
        .O(data1[11:8]),
        .S({i__carry__1_i_1__1_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  CARRY4 \ALU_OUT_Internal0_inferred__0/i__carry__2 
       (.CI(\ALU_OUT_Internal0_inferred__0/i__carry__1_n_0 ),
        .CO({\ALU_OUT_Internal0_inferred__0/i__carry__2_n_0 ,\ALU_OUT_Internal0_inferred__0/i__carry__2_n_1 ,\ALU_OUT_Internal0_inferred__0/i__carry__2_n_2 ,\ALU_OUT_Internal0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({D2[15],D1[14:12]}),
        .O(data1[15:12]),
        .S({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4_n_0}));
  CARRY4 \ALU_OUT_Internal0_inferred__0/i__carry__3 
       (.CI(\ALU_OUT_Internal0_inferred__0/i__carry__2_n_0 ),
        .CO(\NLW_ALU_OUT_Internal0_inferred__0/i__carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ALU_OUT_Internal0_inferred__0/i__carry__3_O_UNCONNECTED [3:1],data1__0}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'h00FE)) 
    BIGGER_ZERO_FLAG_INST_0
       (.I0(BIGGER_ZERO_FLAG_INST_0_i_1_n_0),
        .I1(BIGGER_ZERO_FLAG_INST_0_i_2_n_0),
        .I2(BIGGER_ZERO_FLAG_INST_0_i_3_n_0),
        .I3(\ALU_OPP[3]_8 ),
        .O(BIGGER_ZERO_FLAG));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    BIGGER_ZERO_FLAG_INST_0_i_1
       (.I0(\ALU_OPP[3]_1 ),
        .I1(\ALU_OPP[3]_0 ),
        .I2(ALU_OUT[1]),
        .I3(ALU_OPP_3_sn_1),
        .O(BIGGER_ZERO_FLAG_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    BIGGER_ZERO_FLAG_INST_0_i_2
       (.I0(\ALU_OPP[3]_9 ),
        .I1(ALU_OPP_1_sn_1),
        .I2(\ALU_OPP[3]_11 ),
        .I3(\ALU_OPP[3]_10 ),
        .O(BIGGER_ZERO_FLAG_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    BIGGER_ZERO_FLAG_INST_0_i_3
       (.I0(\ALU_OPP[3]_6 ),
        .I1(\ALU_OPP[3]_7 ),
        .I2(\ALU_OPP[3]_12 ),
        .I3(ALU_OUT[0]),
        .I4(BIGGER_ZERO_FLAG_INST_0_i_4_n_0),
        .O(BIGGER_ZERO_FLAG_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    BIGGER_ZERO_FLAG_INST_0_i_4
       (.I0(\ALU_OPP[3]_5 ),
        .I1(\ALU_OPP[3]_2 ),
        .I2(\ALU_OPP[3]_3 ),
        .I3(\ALU_OPP[3]_4 ),
        .O(BIGGER_ZERO_FLAG_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    CARRY_FLAG_INST_0
       (.I0(CARRY_FLAG_INST_0_i_1_n_0),
        .I1(ALU_OPP[1]),
        .I2(data2[16]),
        .I3(ALU_OPP[0]),
        .I4(data3[16]),
        .I5(ALU_OPP[3]),
        .O(ALU_OPP_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    CARRY_FLAG_INST_0_i_1
       (.I0(data1__0),
        .I1(ALU_OPP[0]),
        .I2(data0__0),
        .O(CARRY_FLAG_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFAFFCAC)) 
    CARRY_FLAG_INST_0_i_10
       (.I0(SHIFT_LEFT2[14]),
        .I1(D2[14]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[13]),
        .I4(D2[13]),
        .O(CARRY_FLAG_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFACFCA)) 
    CARRY_FLAG_INST_0_i_11
       (.I0(D2[7]),
        .I1(SHIFT_LEFT2[7]),
        .I2(D2[15]),
        .I3(D2[8]),
        .I4(SHIFT_LEFT2[8]),
        .I5(\ALU_OUT[2]_INST_0_i_20_n_0 ),
        .O(CARRY_FLAG_INST_0_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFACFCA)) 
    CARRY_FLAG_INST_0_i_12
       (.I0(D2[11]),
        .I1(SHIFT_LEFT2[11]),
        .I2(D2[15]),
        .I3(D2[12]),
        .I4(SHIFT_LEFT2[12]),
        .I5(\ALU_OUT[2]_INST_0_i_18_n_0 ),
        .O(CARRY_FLAG_INST_0_i_12_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    CARRY_FLAG_INST_0_i_13
       (.I0(D1[4]),
        .I1(p_0_in[3]),
        .I2(D1[12]),
        .I3(p_0_in[4]),
        .I4(p_0_in[2]),
        .I5(CARRY_FLAG_INST_0_i_18_n_0),
        .O(CARRY_FLAG_INST_0_i_13_n_0));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    CARRY_FLAG_INST_0_i_14
       (.I0(CARRY_FLAG_INST_0_i_19_n_0),
        .I1(p_0_in[2]),
        .I2(D1[6]),
        .I3(p_0_in[3]),
        .I4(D1[14]),
        .I5(p_0_in[4]),
        .O(CARRY_FLAG_INST_0_i_14_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    CARRY_FLAG_INST_0_i_15
       (.I0(\ALU_OUT[13]_INST_0_i_16_n_0 ),
        .I1(p_0_in[1]),
        .I2(CARRY_FLAG_INST_0_i_20_n_0),
        .I3(p_0_in[2]),
        .I4(CARRY_FLAG_INST_0_i_21_n_0),
        .O(CARRY_FLAG_INST_0_i_15_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    CARRY_FLAG_INST_0_i_16
       (.I0(D1[8]),
        .I1(D2[3]),
        .I2(D1[0]),
        .I3(D2[4]),
        .I4(D1[15]),
        .O(CARRY_FLAG_INST_0_i_16_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    CARRY_FLAG_INST_0_i_17
       (.I0(D1[2]),
        .I1(D2[3]),
        .I2(D1[10]),
        .I3(D2[4]),
        .O(CARRY_FLAG_INST_0_i_17_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    CARRY_FLAG_INST_0_i_18
       (.I0(D1[8]),
        .I1(p_0_in[3]),
        .I2(D1[0]),
        .I3(p_0_in[4]),
        .I4(D1[15]),
        .O(CARRY_FLAG_INST_0_i_18_n_0));
  LUT6 #(
    .INIT(64'h0000B80000B8B8B8)) 
    CARRY_FLAG_INST_0_i_19
       (.I0(D1[2]),
        .I1(p_0_in[3]),
        .I2(D1[10]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(CARRY_FLAG_INST_0_i_19_n_0));
  LUT5 #(
    .INIT(32'h0CAA00AA)) 
    CARRY_FLAG_INST_0_i_2
       (.I0(SHIFT_LEFT00_in),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(D2[0]),
        .I3(D2[15]),
        .I4(CARRY_FLAG_INST_0_i_6_n_0),
        .O(data2[16]));
  LUT6 #(
    .INIT(64'h0000B80000B8B8B8)) 
    CARRY_FLAG_INST_0_i_20
       (.I0(D1[3]),
        .I1(p_0_in[3]),
        .I2(D1[11]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(CARRY_FLAG_INST_0_i_20_n_0));
  LUT6 #(
    .INIT(64'h0000B80000B8B8B8)) 
    CARRY_FLAG_INST_0_i_21
       (.I0(D1[7]),
        .I1(p_0_in[3]),
        .I2(D1[15]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(CARRY_FLAG_INST_0_i_21_n_0));
  LUT6 #(
    .INIT(64'hF4E4FFFFF4E40000)) 
    CARRY_FLAG_INST_0_i_3
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(CARRY_FLAG_INST_0_i_7_n_0),
        .I2(D1[0]),
        .I3(SHIFT_RIGHT3_carry__2_n_4),
        .I4(D2[15]),
        .I5(D1[15]),
        .O(data3[16]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    CARRY_FLAG_INST_0_i_4
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I1(CARRY_FLAG_INST_0_i_8_n_0),
        .I2(D2[1]),
        .I3(CARRY_FLAG_INST_0_i_9_n_0),
        .I4(D2[0]),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_7_n_0),
        .O(SHIFT_LEFT00_in));
  LUT6 #(
    .INIT(64'h000000000000003B)) 
    CARRY_FLAG_INST_0_i_5
       (.I0(\_inferred__0/i__carry__2_n_0 ),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[15]),
        .I3(CARRY_FLAG_INST_0_i_10_n_0),
        .I4(CARRY_FLAG_INST_0_i_11_n_0),
        .I5(CARRY_FLAG_INST_0_i_12_n_0),
        .O(CARRY_FLAG_INST_0_i_5_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    CARRY_FLAG_INST_0_i_6
       (.I0(p_0_in[2]),
        .I1(p_0_in[4]),
        .I2(D1[15]),
        .I3(p_0_in[3]),
        .I4(p_0_in[1]),
        .O(CARRY_FLAG_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hCCC888C844400040)) 
    CARRY_FLAG_INST_0_i_7
       (.I0(D2[0]),
        .I1(CARRY_FLAG_INST_0_i_5_n_0),
        .I2(CARRY_FLAG_INST_0_i_13_n_0),
        .I3(p_0_in[1]),
        .I4(CARRY_FLAG_INST_0_i_14_n_0),
        .I5(CARRY_FLAG_INST_0_i_15_n_0),
        .O(CARRY_FLAG_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    CARRY_FLAG_INST_0_i_8
       (.I0(D1[4]),
        .I1(D2[3]),
        .I2(D1[12]),
        .I3(D2[4]),
        .I4(D2[2]),
        .I5(CARRY_FLAG_INST_0_i_16_n_0),
        .O(CARRY_FLAG_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    CARRY_FLAG_INST_0_i_9
       (.I0(CARRY_FLAG_INST_0_i_17_n_0),
        .I1(D2[2]),
        .I2(D1[6]),
        .I3(D2[3]),
        .I4(D1[14]),
        .I5(D2[4]),
        .O(CARRY_FLAG_INST_0_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    NOT_ZERO_FLAG_INST_0
       (.I0(\ALU_OPP[3]_9 ),
        .I1(\ALU_OPP[3]_10 ),
        .I2(\ALU_OPP[3]_11 ),
        .I3(ALU_OPP_1_sn_1),
        .I4(NOT_ZERO_FLAG_INST_0_i_1_n_0),
        .I5(\ALU_OPP[3]_8 ),
        .O(NOT_ZERO_FLAG));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    NOT_ZERO_FLAG_INST_0_i_1
       (.I0(ZERO_FLAG_INST_0_i_4_n_0),
        .I1(NOT_ZERO_FLAG_INST_0_i_2_n_0),
        .I2(ZERO_FLAG_INST_0_i_2_n_0),
        .I3(\ALU_OPP[3]_0 ),
        .I4(\ALU_OPP[3]_1 ),
        .I5(ALU_OPP_3_sn_1),
        .O(NOT_ZERO_FLAG_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    NOT_ZERO_FLAG_INST_0_i_2
       (.I0(\ALU_OPP[3]_5 ),
        .I1(\ALU_OPP[3]_4 ),
        .I2(\ALU_OPP[3]_3 ),
        .I3(\ALU_OPP[3]_6 ),
        .I4(\ALU_OPP[3]_7 ),
        .I5(\ALU_OPP[3]_2 ),
        .O(NOT_ZERO_FLAG_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h1482)) 
    OVERFLOW_FLAG_INST_0
       (.I0(\ALU_OPP[3]_8 ),
        .I1(D2[15]),
        .I2(ALU_OPP[0]),
        .I3(D1[15]),
        .O(OVERFLOW_FLAG));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \SHIFT_RIGHT2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\SHIFT_RIGHT2_inferred__0/i__carry_n_0 ,\SHIFT_RIGHT2_inferred__0/i__carry_n_1 ,\SHIFT_RIGHT2_inferred__0/i__carry_n_2 ,\SHIFT_RIGHT2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,D2[5],i__carry_i_2_n_0,D2[1]}),
        .O(\NLW_SHIFT_RIGHT2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_3__1_n_0,i__carry_i_4__1_n_0,i__carry_i_5__0_n_0,i__carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \SHIFT_RIGHT2_inferred__0/i__carry__0 
       (.CI(\SHIFT_RIGHT2_inferred__0/i__carry_n_0 ),
        .CO({\SHIFT_RIGHT2_inferred__0/i__carry__0_n_0 ,\SHIFT_RIGHT2_inferred__0/i__carry__0_n_1 ,\SHIFT_RIGHT2_inferred__0/i__carry__0_n_2 ,\SHIFT_RIGHT2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_SHIFT_RIGHT2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \SHIFT_RIGHT2_inferred__0/i__carry__1 
       (.CI(\SHIFT_RIGHT2_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_SHIFT_RIGHT2_inferred__0/i__carry__1_CO_UNCONNECTED [3:1],\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_SHIFT_RIGHT2_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__1_i_1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SHIFT_RIGHT3_carry
       (.CI(1'b0),
        .CO({SHIFT_RIGHT3_carry_n_0,SHIFT_RIGHT3_carry_n_1,SHIFT_RIGHT3_carry_n_2,SHIFT_RIGHT3_carry_n_3}),
        .CYINIT(SHIFT_RIGHT4),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({SHIFT_RIGHT3_carry_n_4,SHIFT_RIGHT3_carry_n_5,SHIFT_RIGHT3_carry_n_6,SHIFT_RIGHT3_carry_n_7}),
        .S({SHIFT_RIGHT3_carry_i_2_n_0,SHIFT_RIGHT3_carry_i_3_n_0,SHIFT_RIGHT3_carry_i_4_n_0,SHIFT_RIGHT3_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SHIFT_RIGHT3_carry__0
       (.CI(SHIFT_RIGHT3_carry_n_0),
        .CO({SHIFT_RIGHT3_carry__0_n_0,SHIFT_RIGHT3_carry__0_n_1,SHIFT_RIGHT3_carry__0_n_2,SHIFT_RIGHT3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({SHIFT_RIGHT3_carry__0_n_4,SHIFT_RIGHT3_carry__0_n_5,SHIFT_RIGHT3_carry__0_n_6,SHIFT_RIGHT3_carry__0_n_7}),
        .S({SHIFT_RIGHT3_carry__0_i_1_n_0,SHIFT_RIGHT3_carry__0_i_2_n_0,SHIFT_RIGHT3_carry__0_i_3_n_0,SHIFT_RIGHT3_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFA)) 
    SHIFT_RIGHT3_carry__0_i_1
       (.I0(SHIFT_RIGHT3_carry__0_i_5_n_0),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBAFFFFFFFFFFFFF)) 
    SHIFT_RIGHT3_carry__0_i_2
       (.I0(SHIFT_RIGHT3_carry_i_6_n_0),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFBBAFFFFFFFFF)) 
    SHIFT_RIGHT3_carry__0_i_3
       (.I0(SHIFT_RIGHT3_carry_i_6_n_0),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFBFFBBBFFFFFFFF)) 
    SHIFT_RIGHT3_carry__0_i_4
       (.I0(SHIFT_RIGHT3_carry_i_6_n_0),
        .I1(D2[0]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[1]),
        .I4(D2[1]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFBEAFFEEFBFBFFFF)) 
    SHIFT_RIGHT3_carry__0_i_5
       (.I0(SHIFT_RIGHT3_carry__2_i_6_n_0),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[4]),
        .I4(SHIFT_LEFT2[3]),
        .I5(D2[3]),
        .O(SHIFT_RIGHT3_carry__0_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SHIFT_RIGHT3_carry__1
       (.CI(SHIFT_RIGHT3_carry__0_n_0),
        .CO({SHIFT_RIGHT3_carry__1_n_0,SHIFT_RIGHT3_carry__1_n_1,SHIFT_RIGHT3_carry__1_n_2,SHIFT_RIGHT3_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({SHIFT_RIGHT3_carry__1_n_4,SHIFT_RIGHT3_carry__1_n_5,SHIFT_RIGHT3_carry__1_n_6,SHIFT_RIGHT3_carry__1_n_7}),
        .S({SHIFT_RIGHT3_carry__1_i_1_n_0,SHIFT_RIGHT3_carry__1_i_2_n_0,SHIFT_RIGHT3_carry__1_i_3_n_0,SHIFT_RIGHT3_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFEEFAFFFFFFFF)) 
    SHIFT_RIGHT3_carry__1_i_1
       (.I0(SHIFT_RIGHT3_carry__0_i_5_n_0),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBAFFFFF)) 
    SHIFT_RIGHT3_carry__1_i_2
       (.I0(SHIFT_RIGHT3_carry__0_i_5_n_0),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBBAF)) 
    SHIFT_RIGHT3_carry__1_i_3
       (.I0(SHIFT_RIGHT3_carry__0_i_5_n_0),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFBBB)) 
    SHIFT_RIGHT3_carry__1_i_4
       (.I0(SHIFT_RIGHT3_carry__0_i_5_n_0),
        .I1(D2[0]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[1]),
        .I4(D2[1]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SHIFT_RIGHT3_carry__2
       (.CI(SHIFT_RIGHT3_carry__1_n_0),
        .CO({NLW_SHIFT_RIGHT3_carry__2_CO_UNCONNECTED[3],SHIFT_RIGHT3_carry__2_n_1,SHIFT_RIGHT3_carry__2_n_2,SHIFT_RIGHT3_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({SHIFT_RIGHT3_carry__2_n_4,SHIFT_RIGHT3_carry__2_n_5,SHIFT_RIGHT3_carry__2_n_6,SHIFT_RIGHT3_carry__2_n_7}),
        .S({SHIFT_RIGHT3_carry__2_i_1_n_0,SHIFT_RIGHT3_carry__2_i_2_n_0,SHIFT_RIGHT3_carry__2_i_3_n_0,SHIFT_RIGHT3_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    SHIFT_RIGHT3_carry__2_i_1
       (.I0(D2[0]),
        .I1(p_0_in[4]),
        .I2(SHIFT_RIGHT3_carry__2_i_6_n_0),
        .I3(p_0_in[3]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry__2_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFAFFCAC)) 
    SHIFT_RIGHT3_carry__2_i_10
       (.I0(SHIFT_LEFT2[8]),
        .I1(D2[8]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[9]),
        .I4(D2[9]),
        .O(SHIFT_RIGHT3_carry__2_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    SHIFT_RIGHT3_carry__2_i_11
       (.I0(D2[5]),
        .I1(SHIFT_LEFT2[5]),
        .I2(D2[15]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hFACCFFCC)) 
    SHIFT_RIGHT3_carry__2_i_12
       (.I0(SHIFT_LEFT2[15]),
        .I1(D2[14]),
        .I2(SHIFT_LEFT2[14]),
        .I3(D2[15]),
        .I4(\_inferred__0/i__carry__2_n_0 ),
        .O(SHIFT_RIGHT3_carry__2_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFAFFCAC)) 
    SHIFT_RIGHT3_carry__2_i_13
       (.I0(SHIFT_LEFT2[10]),
        .I1(D2[10]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[11]),
        .I4(D2[11]),
        .O(SHIFT_RIGHT3_carry__2_i_13_n_0));
  LUT5 #(
    .INIT(32'hFFAFFCAC)) 
    SHIFT_RIGHT3_carry__2_i_14
       (.I0(SHIFT_LEFT2[12]),
        .I1(D2[12]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[13]),
        .I4(D2[13]),
        .O(SHIFT_RIGHT3_carry__2_i_14_n_0));
  LUT6 #(
    .INIT(64'hBBAFFFFFFFFFFFFF)) 
    SHIFT_RIGHT3_carry__2_i_2
       (.I0(SHIFT_RIGHT3_carry__0_i_5_n_0),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFBBAFFFFFFFFF)) 
    SHIFT_RIGHT3_carry__2_i_3
       (.I0(SHIFT_RIGHT3_carry__0_i_5_n_0),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFBFFBBBFFFFFFFF)) 
    SHIFT_RIGHT3_carry__2_i_4
       (.I0(SHIFT_RIGHT3_carry__0_i_5_n_0),
        .I1(D2[0]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[1]),
        .I4(D2[1]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'hCA)) 
    SHIFT_RIGHT3_carry__2_i_5
       (.I0(D2[4]),
        .I1(SHIFT_LEFT2[4]),
        .I2(D2[15]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    SHIFT_RIGHT3_carry__2_i_6
       (.I0(SHIFT_RIGHT3_carry__2_i_9_n_0),
        .I1(SHIFT_RIGHT3_carry__2_i_10_n_0),
        .I2(p_0_in[5]),
        .I3(SHIFT_RIGHT3_carry__2_i_12_n_0),
        .I4(SHIFT_RIGHT3_carry__2_i_13_n_0),
        .I5(SHIFT_RIGHT3_carry__2_i_14_n_0),
        .O(SHIFT_RIGHT3_carry__2_i_6_n_0));
  LUT3 #(
    .INIT(8'hCA)) 
    SHIFT_RIGHT3_carry__2_i_7
       (.I0(D2[3]),
        .I1(SHIFT_LEFT2[3]),
        .I2(D2[15]),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'hCA)) 
    SHIFT_RIGHT3_carry__2_i_8
       (.I0(D2[1]),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[15]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hFFAFFCAC)) 
    SHIFT_RIGHT3_carry__2_i_9
       (.I0(SHIFT_LEFT2[6]),
        .I1(D2[6]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[7]),
        .I4(D2[7]),
        .O(SHIFT_RIGHT3_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000000001105)) 
    SHIFT_RIGHT3_carry_i_1
       (.I0(SHIFT_RIGHT3_carry_i_6_n_0),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT4));
  LUT6 #(
    .INIT(64'hFFFFEEFAFFFFFFFF)) 
    SHIFT_RIGHT3_carry_i_2
       (.I0(SHIFT_RIGHT3_carry_i_6_n_0),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBAFFFFF)) 
    SHIFT_RIGHT3_carry_i_3
       (.I0(SHIFT_RIGHT3_carry_i_6_n_0),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBBAF)) 
    SHIFT_RIGHT3_carry_i_4
       (.I0(SHIFT_RIGHT3_carry_i_6_n_0),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFBBB)) 
    SHIFT_RIGHT3_carry_i_5
       (.I0(SHIFT_RIGHT3_carry_i_6_n_0),
        .I1(D2[0]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[1]),
        .I4(D2[1]),
        .I5(p_0_in[2]),
        .O(SHIFT_RIGHT3_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAAFCFC)) 
    SHIFT_RIGHT3_carry_i_6
       (.I0(SHIFT_LEFT2[3]),
        .I1(D2[3]),
        .I2(D2[4]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[15]),
        .I5(SHIFT_RIGHT3_carry__2_i_6_n_0),
        .O(SHIFT_RIGHT3_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'hCA)) 
    SHIFT_RIGHT3_carry_i_7
       (.I0(D2[2]),
        .I1(SHIFT_LEFT2[2]),
        .I2(D2[15]),
        .O(p_0_in[2]));
  MUXF7 SMALLER_ZERO_FLAG_INST_0
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_1_n_0),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_2_n_0),
        .O(\ALU_OPP[3]_8 ),
        .S(ALU_OPP[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    SMALLER_ZERO_FLAG_INST_0_i_1
       (.I0(data3[15]),
        .I1(data2[15]),
        .I2(ALU_OPP[1]),
        .I3(data1[15]),
        .I4(ALU_OPP[0]),
        .I5(data0[15]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hAFBBA088)) 
    SMALLER_ZERO_FLAG_INST_0_i_10
       (.I0(\ALU_OUT[13]_INST_0_i_14_n_0 ),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[15]),
        .I4(CARRY_FLAG_INST_0_i_14_n_0),
        .O(SMALLER_ZERO_FLAG_INST_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    SMALLER_ZERO_FLAG_INST_0_i_11
       (.I0(D2[7]),
        .I1(D2[8]),
        .I2(D2[5]),
        .I3(D2[6]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    SMALLER_ZERO_FLAG_INST_0_i_12
       (.I0(D2[11]),
        .I1(D2[12]),
        .I2(D2[9]),
        .I3(D2[10]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_12_n_0));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    SMALLER_ZERO_FLAG_INST_0_i_13
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_16_n_0),
        .I1(D2[2]),
        .I2(D1[5]),
        .I3(D2[3]),
        .I4(D1[13]),
        .I5(D2[4]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_13_n_0));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    SMALLER_ZERO_FLAG_INST_0_i_14
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_17_n_0),
        .I1(D2[2]),
        .I2(D1[7]),
        .I3(D2[3]),
        .I4(D1[15]),
        .I5(D2[4]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_14_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    SMALLER_ZERO_FLAG_INST_0_i_15
       (.I0(D1[0]),
        .I1(D2[3]),
        .I2(D1[8]),
        .I3(D2[4]),
        .I4(D2[2]),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_18_n_0),
        .O(SMALLER_ZERO_FLAG_INST_0_i_15_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    SMALLER_ZERO_FLAG_INST_0_i_16
       (.I0(D1[1]),
        .I1(D2[3]),
        .I2(D1[9]),
        .I3(D2[4]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_16_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    SMALLER_ZERO_FLAG_INST_0_i_17
       (.I0(D1[3]),
        .I1(D2[3]),
        .I2(D1[11]),
        .I3(D2[4]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_17_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    SMALLER_ZERO_FLAG_INST_0_i_18
       (.I0(D1[4]),
        .I1(D2[3]),
        .I2(D1[12]),
        .I3(D2[4]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_18_n_0));
  LUT5 #(
    .INIT(32'h96556A6A)) 
    SMALLER_ZERO_FLAG_INST_0_i_2
       (.I0(ALU_OPP[2]),
        .I1(ALU_OPP[1]),
        .I2(D2[15]),
        .I3(ALU_OPP[0]),
        .I4(D1[15]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hF4E4FFFFF4E40000)) 
    SMALLER_ZERO_FLAG_INST_0_i_3
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_5_n_0),
        .I2(D1[0]),
        .I3(SHIFT_RIGHT3_carry__2_n_5),
        .I4(D2[15]),
        .I5(D1[15]),
        .O(data3[15]));
  LUT6 #(
    .INIT(64'hFFFF0000A808A808)) 
    SMALLER_ZERO_FLAG_INST_0_i_4
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_7_n_0),
        .I2(D2[0]),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_8_n_0),
        .I4(SHIFT_LEFT0),
        .I5(D2[15]),
        .O(data2[15]));
  LUT4 #(
    .INIT(16'hA808)) 
    SMALLER_ZERO_FLAG_INST_0_i_5
       (.I0(CARRY_FLAG_INST_0_i_5_n_0),
        .I1(CARRY_FLAG_INST_0_i_15_n_0),
        .I2(D2[0]),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .O(SMALLER_ZERO_FLAG_INST_0_i_5_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    SMALLER_ZERO_FLAG_INST_0_i_6
       (.I0(D2[15]),
        .I1(D2[13]),
        .I2(D2[14]),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_11_n_0),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_12_n_0),
        .O(SMALLER_ZERO_FLAG_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    SMALLER_ZERO_FLAG_INST_0_i_7
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_13_n_0),
        .I1(D2[1]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_14_n_0),
        .O(SMALLER_ZERO_FLAG_INST_0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    SMALLER_ZERO_FLAG_INST_0_i_8
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_15_n_0),
        .I1(D2[1]),
        .I2(CARRY_FLAG_INST_0_i_9_n_0),
        .O(SMALLER_ZERO_FLAG_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    SMALLER_ZERO_FLAG_INST_0_i_9
       (.I0(CARRY_FLAG_INST_0_i_5_n_0),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(D1[15]),
        .I4(p_0_in[4]),
        .I5(p_0_in[2]),
        .O(SHIFT_LEFT0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    ZERO_FLAG_INST_0
       (.I0(\ALU_OPP[3]_9 ),
        .I1(\ALU_OPP[3]_10 ),
        .I2(\ALU_OPP[3]_11 ),
        .I3(\ALU_OPP[3]_8 ),
        .I4(ZERO_FLAG_INST_0_i_1_n_0),
        .I5(ALU_OPP_1_sn_1),
        .O(ZERO_FLAG));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    ZERO_FLAG_INST_0_i_1
       (.I0(ALU_OPP_3_sn_1),
        .I1(ZERO_FLAG_INST_0_i_2_n_0),
        .I2(ZERO_FLAG_INST_0_i_3_n_0),
        .I3(ZERO_FLAG_INST_0_i_4_n_0),
        .I4(\ALU_OPP[3]_0 ),
        .I5(\ALU_OPP[3]_1 ),
        .O(ZERO_FLAG_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    ZERO_FLAG_INST_0_i_2
       (.I0(ALU_OUT[1]),
        .I1(\ALU_OPP[3]_12 ),
        .I2(ALU_OUT[0]),
        .O(ZERO_FLAG_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ZERO_FLAG_INST_0_i_3
       (.I0(\ALU_OPP[3]_2 ),
        .I1(\ALU_OPP[3]_3 ),
        .I2(\ALU_OPP[3]_4 ),
        .I3(\ALU_OPP[3]_5 ),
        .I4(\ALU_OPP[3]_6 ),
        .I5(\ALU_OPP[3]_7 ),
        .O(ZERO_FLAG_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ZERO_FLAG_INST_0_i_4
       (.I0(\ALU_OPP[3]_12 ),
        .I1(ALU_OUT[1]),
        .O(ZERO_FLAG_INST_0_i_4_n_0));
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(i__carry_i_1__0_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SHIFT_LEFT2[4:1]),
        .S({i__carry_i_2__0_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0}));
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SHIFT_LEFT2[8:5]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\_inferred__0/i__carry__1_n_0 ,\_inferred__0/i__carry__1_n_1 ,\_inferred__0/i__carry__1_n_2 ,\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SHIFT_LEFT2[12:9]),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \_inferred__0/i__carry__2 
       (.CI(\_inferred__0/i__carry__1_n_0 ),
        .CO({\_inferred__0/i__carry__2_n_0 ,\NLW__inferred__0/i__carry__2_CO_UNCONNECTED [2],\_inferred__0/i__carry__2_n_2 ,\_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b0,1'b0}),
        .O({\NLW__inferred__0/i__carry__2_O_UNCONNECTED [3],SHIFT_LEFT2[15:13]}),
        .S({1'b1,i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(D2[8]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__0
       (.I0(D1[7]),
        .I1(D2[7]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1__1
       (.I0(D2[14]),
        .I1(D2[15]),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(D2[12]),
        .I1(D2[13]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__0
       (.I0(D2[7]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__1
       (.I0(D1[6]),
        .I1(D2[6]),
        .O(i__carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3
       (.I0(D2[10]),
        .I1(D2[11]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3__0
       (.I0(D2[6]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__1
       (.I0(D1[5]),
        .I1(D2[5]),
        .O(i__carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4
       (.I0(D2[8]),
        .I1(D2[9]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4__0
       (.I0(D2[5]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__1
       (.I0(D1[4]),
        .I1(D2[4]),
        .O(i__carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(D2[14]),
        .I1(D2[15]),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6
       (.I0(D2[12]),
        .I1(D2[13]),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_7
       (.I0(D2[10]),
        .I1(D2[11]),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_8
       (.I0(D2[8]),
        .I1(D2[9]),
        .O(i__carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(D2[15]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__0
       (.I0(D2[12]),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__1
       (.I0(D1[11]),
        .I1(D2[11]),
        .O(i__carry__1_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(D2[11]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__0
       (.I0(D1[10]),
        .I1(D2[10]),
        .O(i__carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(D2[10]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3__0
       (.I0(D1[9]),
        .I1(D2[9]),
        .O(i__carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(D2[9]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4__0
       (.I0(D1[8]),
        .I1(D2[8]),
        .O(i__carry__1_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(D2[15]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1__0
       (.I0(D1[15]),
        .I1(D2[15]),
        .O(i__carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(D2[14]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2__0
       (.I0(D1[14]),
        .I1(D2[14]),
        .O(i__carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(D2[13]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3__0
       (.I0(D1[13]),
        .I1(D2[13]),
        .O(i__carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4
       (.I0(D1[12]),
        .I1(D2[12]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1
       (.I0(D2[6]),
        .I1(D2[7]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__0
       (.I0(D2[0]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__1
       (.I0(D1[3]),
        .I1(D2[3]),
        .O(i__carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2
       (.I0(D2[2]),
        .I1(D2[3]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__0
       (.I0(D2[4]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__1
       (.I0(D1[2]),
        .I1(D2[2]),
        .O(i__carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(D2[3]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__0
       (.I0(D1[1]),
        .I1(D2[1]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3__1
       (.I0(D2[6]),
        .I1(D2[7]),
        .O(i__carry_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(D2[2]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__0
       (.I0(D1[0]),
        .I1(D2[0]),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4__1
       (.I0(D2[4]),
        .I1(D2[5]),
        .O(i__carry_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_5
       (.I0(D2[1]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5__0
       (.I0(D2[2]),
        .I1(D2[3]),
        .O(i__carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_6
       (.I0(D2[0]),
        .I1(D2[1]),
        .O(i__carry_i_6_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
