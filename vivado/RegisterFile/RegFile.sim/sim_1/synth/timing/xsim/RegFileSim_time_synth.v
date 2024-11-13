// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov  7 09:06:09 2024
// Host        : BOOK-69BD3QPCMV running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Development/SixteenShadesOfCpu/vivado/RegisterFile/RegFile.sim/sim_1/synth/timing/xsim/RegFileSim_time_synth.v
// Design      : RegFile
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module RegFile
   (AddrReg1,
    AddrReg2,
    AddrWriteReg,
    WriteData,
    Flags,
    WE,
    OverwriteFl,
    RHOPin,
    clk,
    Reg1_data,
    Reg2_data,
    RegMA_data,
    BankID);
  input [3:0]AddrReg1;
  input [3:0]AddrReg2;
  input [3:0]AddrWriteReg;
  input [15:0]WriteData;
  input [15:0]Flags;
  input WE;
  input OverwriteFl;
  input RHOPin;
  input clk;
  output [15:0]Reg1_data;
  output [15:0]Reg2_data;
  output [15:0]RegMA_data;
  output [3:0]BankID;

  wire [3:0]AddrReg1;
  wire [3:0]AddrReg1_IBUF;
  wire [3:0]AddrReg2;
  wire [3:0]AddrReg2_IBUF;
  wire [3:0]AddrWriteReg;
  wire [3:0]AddrWriteReg_IBUF;
  wire [3:0]BankID;
  wire [3:0]BankID_OBUF;
  wire [15:0]Flags;
  wire [15:0]Flags_IBUF;
  wire OverwriteFl;
  wire OverwriteFl_IBUF;
  wire RHOPin;
  wire RHOPin_IBUF;
  wire Reg0;
  wire \Reg0_reg_n_0_[0] ;
  wire \Reg0_reg_n_0_[10] ;
  wire \Reg0_reg_n_0_[11] ;
  wire \Reg0_reg_n_0_[12] ;
  wire \Reg0_reg_n_0_[13] ;
  wire \Reg0_reg_n_0_[14] ;
  wire \Reg0_reg_n_0_[15] ;
  wire \Reg0_reg_n_0_[1] ;
  wire \Reg0_reg_n_0_[2] ;
  wire \Reg0_reg_n_0_[3] ;
  wire \Reg0_reg_n_0_[4] ;
  wire \Reg0_reg_n_0_[5] ;
  wire \Reg0_reg_n_0_[6] ;
  wire \Reg0_reg_n_0_[7] ;
  wire \Reg0_reg_n_0_[8] ;
  wire \Reg0_reg_n_0_[9] ;
  wire Reg1;
  wire [15:0]Reg1_data;
  wire [15:0]Reg1_data_OBUF;
  wire \Reg1_data_OBUF[0]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[0]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[0]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[0]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[0]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[0]_inst_i_7_n_0 ;
  wire \Reg1_data_OBUF[10]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[10]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[10]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[10]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[10]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[10]_inst_i_7_n_0 ;
  wire \Reg1_data_OBUF[11]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[11]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[11]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[11]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[11]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[11]_inst_i_7_n_0 ;
  wire \Reg1_data_OBUF[12]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[12]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[12]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[12]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[12]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[12]_inst_i_7_n_0 ;
  wire \Reg1_data_OBUF[13]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[13]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[13]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[13]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[13]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[13]_inst_i_7_n_0 ;
  wire \Reg1_data_OBUF[14]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[14]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[14]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[14]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[14]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[14]_inst_i_7_n_0 ;
  wire \Reg1_data_OBUF[15]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[15]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[15]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[15]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[15]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[15]_inst_i_7_n_0 ;
  wire \Reg1_data_OBUF[1]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[1]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[1]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[1]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[1]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[1]_inst_i_7_n_0 ;
  wire \Reg1_data_OBUF[2]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[2]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[2]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[2]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[2]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[2]_inst_i_7_n_0 ;
  wire \Reg1_data_OBUF[3]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[3]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[3]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[3]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[3]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[3]_inst_i_7_n_0 ;
  wire \Reg1_data_OBUF[4]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[4]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[4]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[4]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[4]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[4]_inst_i_7_n_0 ;
  wire \Reg1_data_OBUF[5]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[5]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[5]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[5]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[5]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[5]_inst_i_7_n_0 ;
  wire \Reg1_data_OBUF[6]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[6]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[6]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[6]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[6]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[6]_inst_i_7_n_0 ;
  wire \Reg1_data_OBUF[7]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[7]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[7]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[7]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[7]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[7]_inst_i_7_n_0 ;
  wire \Reg1_data_OBUF[8]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[8]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[8]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[8]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[8]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[8]_inst_i_7_n_0 ;
  wire \Reg1_data_OBUF[9]_inst_i_2_n_0 ;
  wire \Reg1_data_OBUF[9]_inst_i_3_n_0 ;
  wire \Reg1_data_OBUF[9]_inst_i_4_n_0 ;
  wire \Reg1_data_OBUF[9]_inst_i_5_n_0 ;
  wire \Reg1_data_OBUF[9]_inst_i_6_n_0 ;
  wire \Reg1_data_OBUF[9]_inst_i_7_n_0 ;
  wire \Reg1_reg_n_0_[0] ;
  wire \Reg1_reg_n_0_[10] ;
  wire \Reg1_reg_n_0_[11] ;
  wire \Reg1_reg_n_0_[12] ;
  wire \Reg1_reg_n_0_[13] ;
  wire \Reg1_reg_n_0_[14] ;
  wire \Reg1_reg_n_0_[15] ;
  wire \Reg1_reg_n_0_[1] ;
  wire \Reg1_reg_n_0_[2] ;
  wire \Reg1_reg_n_0_[3] ;
  wire \Reg1_reg_n_0_[4] ;
  wire \Reg1_reg_n_0_[5] ;
  wire \Reg1_reg_n_0_[6] ;
  wire \Reg1_reg_n_0_[7] ;
  wire \Reg1_reg_n_0_[8] ;
  wire \Reg1_reg_n_0_[9] ;
  wire Reg2;
  wire [15:0]Reg2_data;
  wire [15:0]Reg2_data_OBUF;
  wire \Reg2_data_OBUF[0]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[0]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[0]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[0]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[0]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[0]_inst_i_7_n_0 ;
  wire \Reg2_data_OBUF[10]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[10]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[10]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[10]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[10]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[10]_inst_i_7_n_0 ;
  wire \Reg2_data_OBUF[11]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[11]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[11]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[11]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[11]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[11]_inst_i_7_n_0 ;
  wire \Reg2_data_OBUF[12]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[12]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[12]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[12]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[12]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[12]_inst_i_7_n_0 ;
  wire \Reg2_data_OBUF[13]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[13]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[13]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[13]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[13]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[13]_inst_i_7_n_0 ;
  wire \Reg2_data_OBUF[14]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[14]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[14]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[14]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[14]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[14]_inst_i_7_n_0 ;
  wire \Reg2_data_OBUF[15]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[15]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[15]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[15]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[15]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[15]_inst_i_7_n_0 ;
  wire \Reg2_data_OBUF[1]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[1]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[1]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[1]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[1]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[1]_inst_i_7_n_0 ;
  wire \Reg2_data_OBUF[2]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[2]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[2]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[2]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[2]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[2]_inst_i_7_n_0 ;
  wire \Reg2_data_OBUF[3]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[3]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[3]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[3]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[3]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[3]_inst_i_7_n_0 ;
  wire \Reg2_data_OBUF[4]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[4]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[4]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[4]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[4]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[4]_inst_i_7_n_0 ;
  wire \Reg2_data_OBUF[5]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[5]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[5]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[5]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[5]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[5]_inst_i_7_n_0 ;
  wire \Reg2_data_OBUF[6]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[6]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[6]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[6]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[6]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[6]_inst_i_7_n_0 ;
  wire \Reg2_data_OBUF[7]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[7]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[7]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[7]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[7]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[7]_inst_i_7_n_0 ;
  wire \Reg2_data_OBUF[8]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[8]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[8]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[8]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[8]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[8]_inst_i_7_n_0 ;
  wire \Reg2_data_OBUF[9]_inst_i_2_n_0 ;
  wire \Reg2_data_OBUF[9]_inst_i_3_n_0 ;
  wire \Reg2_data_OBUF[9]_inst_i_4_n_0 ;
  wire \Reg2_data_OBUF[9]_inst_i_5_n_0 ;
  wire \Reg2_data_OBUF[9]_inst_i_6_n_0 ;
  wire \Reg2_data_OBUF[9]_inst_i_7_n_0 ;
  wire \Reg2_reg_n_0_[0] ;
  wire \Reg2_reg_n_0_[10] ;
  wire \Reg2_reg_n_0_[11] ;
  wire \Reg2_reg_n_0_[12] ;
  wire \Reg2_reg_n_0_[13] ;
  wire \Reg2_reg_n_0_[14] ;
  wire \Reg2_reg_n_0_[15] ;
  wire \Reg2_reg_n_0_[1] ;
  wire \Reg2_reg_n_0_[2] ;
  wire \Reg2_reg_n_0_[3] ;
  wire \Reg2_reg_n_0_[4] ;
  wire \Reg2_reg_n_0_[5] ;
  wire \Reg2_reg_n_0_[6] ;
  wire \Reg2_reg_n_0_[7] ;
  wire \Reg2_reg_n_0_[8] ;
  wire \Reg2_reg_n_0_[9] ;
  wire Reg3;
  wire \Reg3_reg_n_0_[0] ;
  wire \Reg3_reg_n_0_[10] ;
  wire \Reg3_reg_n_0_[11] ;
  wire \Reg3_reg_n_0_[12] ;
  wire \Reg3_reg_n_0_[13] ;
  wire \Reg3_reg_n_0_[14] ;
  wire \Reg3_reg_n_0_[15] ;
  wire \Reg3_reg_n_0_[1] ;
  wire \Reg3_reg_n_0_[2] ;
  wire \Reg3_reg_n_0_[3] ;
  wire \Reg3_reg_n_0_[4] ;
  wire \Reg3_reg_n_0_[5] ;
  wire \Reg3_reg_n_0_[6] ;
  wire \Reg3_reg_n_0_[7] ;
  wire \Reg3_reg_n_0_[8] ;
  wire \Reg3_reg_n_0_[9] ;
  wire Reg4;
  wire \Reg4_reg_n_0_[0] ;
  wire \Reg4_reg_n_0_[10] ;
  wire \Reg4_reg_n_0_[11] ;
  wire \Reg4_reg_n_0_[12] ;
  wire \Reg4_reg_n_0_[13] ;
  wire \Reg4_reg_n_0_[14] ;
  wire \Reg4_reg_n_0_[15] ;
  wire \Reg4_reg_n_0_[1] ;
  wire \Reg4_reg_n_0_[2] ;
  wire \Reg4_reg_n_0_[3] ;
  wire \Reg4_reg_n_0_[4] ;
  wire \Reg4_reg_n_0_[5] ;
  wire \Reg4_reg_n_0_[6] ;
  wire \Reg4_reg_n_0_[7] ;
  wire \Reg4_reg_n_0_[8] ;
  wire \Reg4_reg_n_0_[9] ;
  wire Reg5;
  wire \Reg5_reg_n_0_[0] ;
  wire \Reg5_reg_n_0_[10] ;
  wire \Reg5_reg_n_0_[11] ;
  wire \Reg5_reg_n_0_[12] ;
  wire \Reg5_reg_n_0_[13] ;
  wire \Reg5_reg_n_0_[14] ;
  wire \Reg5_reg_n_0_[15] ;
  wire \Reg5_reg_n_0_[1] ;
  wire \Reg5_reg_n_0_[2] ;
  wire \Reg5_reg_n_0_[3] ;
  wire \Reg5_reg_n_0_[4] ;
  wire \Reg5_reg_n_0_[5] ;
  wire \Reg5_reg_n_0_[6] ;
  wire \Reg5_reg_n_0_[7] ;
  wire \Reg5_reg_n_0_[8] ;
  wire \Reg5_reg_n_0_[9] ;
  wire Reg6;
  wire \Reg6_reg_n_0_[0] ;
  wire \Reg6_reg_n_0_[10] ;
  wire \Reg6_reg_n_0_[11] ;
  wire \Reg6_reg_n_0_[12] ;
  wire \Reg6_reg_n_0_[13] ;
  wire \Reg6_reg_n_0_[14] ;
  wire \Reg6_reg_n_0_[15] ;
  wire \Reg6_reg_n_0_[1] ;
  wire \Reg6_reg_n_0_[2] ;
  wire \Reg6_reg_n_0_[3] ;
  wire \Reg6_reg_n_0_[4] ;
  wire \Reg6_reg_n_0_[5] ;
  wire \Reg6_reg_n_0_[6] ;
  wire \Reg6_reg_n_0_[7] ;
  wire \Reg6_reg_n_0_[8] ;
  wire \Reg6_reg_n_0_[9] ;
  wire Reg7;
  wire \Reg7_reg_n_0_[0] ;
  wire \Reg7_reg_n_0_[10] ;
  wire \Reg7_reg_n_0_[11] ;
  wire \Reg7_reg_n_0_[12] ;
  wire \Reg7_reg_n_0_[13] ;
  wire \Reg7_reg_n_0_[14] ;
  wire \Reg7_reg_n_0_[15] ;
  wire \Reg7_reg_n_0_[1] ;
  wire \Reg7_reg_n_0_[2] ;
  wire \Reg7_reg_n_0_[3] ;
  wire \Reg7_reg_n_0_[4] ;
  wire \Reg7_reg_n_0_[5] ;
  wire \Reg7_reg_n_0_[6] ;
  wire \Reg7_reg_n_0_[7] ;
  wire \Reg7_reg_n_0_[8] ;
  wire \Reg7_reg_n_0_[9] ;
  wire Reg8;
  wire \Reg8_reg_n_0_[0] ;
  wire \Reg8_reg_n_0_[10] ;
  wire \Reg8_reg_n_0_[11] ;
  wire \Reg8_reg_n_0_[12] ;
  wire \Reg8_reg_n_0_[13] ;
  wire \Reg8_reg_n_0_[14] ;
  wire \Reg8_reg_n_0_[15] ;
  wire \Reg8_reg_n_0_[1] ;
  wire \Reg8_reg_n_0_[2] ;
  wire \Reg8_reg_n_0_[3] ;
  wire \Reg8_reg_n_0_[4] ;
  wire \Reg8_reg_n_0_[5] ;
  wire \Reg8_reg_n_0_[6] ;
  wire \Reg8_reg_n_0_[7] ;
  wire \Reg8_reg_n_0_[8] ;
  wire \Reg8_reg_n_0_[9] ;
  wire Reg9;
  wire \Reg9_reg_n_0_[0] ;
  wire \Reg9_reg_n_0_[10] ;
  wire \Reg9_reg_n_0_[11] ;
  wire \Reg9_reg_n_0_[12] ;
  wire \Reg9_reg_n_0_[13] ;
  wire \Reg9_reg_n_0_[14] ;
  wire \Reg9_reg_n_0_[15] ;
  wire \Reg9_reg_n_0_[1] ;
  wire \Reg9_reg_n_0_[2] ;
  wire \Reg9_reg_n_0_[3] ;
  wire \Reg9_reg_n_0_[4] ;
  wire \Reg9_reg_n_0_[5] ;
  wire \Reg9_reg_n_0_[6] ;
  wire \Reg9_reg_n_0_[7] ;
  wire \Reg9_reg_n_0_[8] ;
  wire \Reg9_reg_n_0_[9] ;
  wire RegA;
  wire RegB;
  wire \RegB_reg_n_0_[10] ;
  wire \RegB_reg_n_0_[11] ;
  wire \RegB_reg_n_0_[12] ;
  wire \RegB_reg_n_0_[13] ;
  wire \RegB_reg_n_0_[14] ;
  wire \RegB_reg_n_0_[15] ;
  wire \RegB_reg_n_0_[4] ;
  wire \RegB_reg_n_0_[5] ;
  wire \RegB_reg_n_0_[6] ;
  wire \RegB_reg_n_0_[7] ;
  wire \RegB_reg_n_0_[8] ;
  wire \RegB_reg_n_0_[9] ;
  wire RegC;
  wire \RegC_reg_n_0_[0] ;
  wire \RegC_reg_n_0_[10] ;
  wire \RegC_reg_n_0_[11] ;
  wire \RegC_reg_n_0_[12] ;
  wire \RegC_reg_n_0_[13] ;
  wire \RegC_reg_n_0_[14] ;
  wire \RegC_reg_n_0_[15] ;
  wire \RegC_reg_n_0_[1] ;
  wire \RegC_reg_n_0_[2] ;
  wire \RegC_reg_n_0_[3] ;
  wire \RegC_reg_n_0_[4] ;
  wire \RegC_reg_n_0_[5] ;
  wire \RegC_reg_n_0_[6] ;
  wire \RegC_reg_n_0_[7] ;
  wire \RegC_reg_n_0_[8] ;
  wire \RegC_reg_n_0_[9] ;
  wire RegD;
  wire \RegD_reg_n_0_[0] ;
  wire \RegD_reg_n_0_[10] ;
  wire \RegD_reg_n_0_[11] ;
  wire \RegD_reg_n_0_[12] ;
  wire \RegD_reg_n_0_[13] ;
  wire \RegD_reg_n_0_[14] ;
  wire \RegD_reg_n_0_[15] ;
  wire \RegD_reg_n_0_[1] ;
  wire \RegD_reg_n_0_[2] ;
  wire \RegD_reg_n_0_[3] ;
  wire \RegD_reg_n_0_[4] ;
  wire \RegD_reg_n_0_[5] ;
  wire \RegD_reg_n_0_[6] ;
  wire \RegD_reg_n_0_[7] ;
  wire \RegD_reg_n_0_[8] ;
  wire \RegD_reg_n_0_[9] ;
  wire RegE;
  wire \RegE_reg_n_0_[0] ;
  wire \RegE_reg_n_0_[10] ;
  wire \RegE_reg_n_0_[11] ;
  wire \RegE_reg_n_0_[12] ;
  wire \RegE_reg_n_0_[13] ;
  wire \RegE_reg_n_0_[14] ;
  wire \RegE_reg_n_0_[15] ;
  wire \RegE_reg_n_0_[1] ;
  wire \RegE_reg_n_0_[2] ;
  wire \RegE_reg_n_0_[3] ;
  wire \RegE_reg_n_0_[4] ;
  wire \RegE_reg_n_0_[5] ;
  wire \RegE_reg_n_0_[6] ;
  wire \RegE_reg_n_0_[7] ;
  wire \RegE_reg_n_0_[8] ;
  wire \RegE_reg_n_0_[9] ;
  wire [15:0]RegF;
  wire \RegF[0]_i_1_n_0 ;
  wire \RegF[10]_i_1_n_0 ;
  wire \RegF[11]_i_1_n_0 ;
  wire \RegF[12]_i_1_n_0 ;
  wire \RegF[13]_i_1_n_0 ;
  wire \RegF[14]_i_1_n_0 ;
  wire \RegF[15]_i_1_n_0 ;
  wire \RegF[15]_i_2_n_0 ;
  wire \RegF[15]_i_3_n_0 ;
  wire \RegF[1]_i_1_n_0 ;
  wire \RegF[2]_i_1_n_0 ;
  wire \RegF[3]_i_1_n_0 ;
  wire \RegF[4]_i_1_n_0 ;
  wire \RegF[5]_i_1_n_0 ;
  wire \RegF[6]_i_1_n_0 ;
  wire \RegF[7]_i_1_n_0 ;
  wire \RegF[8]_i_1_n_0 ;
  wire \RegF[9]_i_1_n_0 ;
  wire [15:0]RegMA_data;
  wire [15:0]RegMA_data_OBUF;
  wire WE;
  wire WE_IBUF;
  wire [15:0]WriteData;
  wire [15:0]WriteData_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;

initial begin
 $sdf_annotate("RegFileSim_time_synth.sdf",,,,"tool_control");
end
  IBUF \AddrReg1_IBUF[0]_inst 
       (.I(AddrReg1[0]),
        .O(AddrReg1_IBUF[0]));
  IBUF \AddrReg1_IBUF[1]_inst 
       (.I(AddrReg1[1]),
        .O(AddrReg1_IBUF[1]));
  IBUF \AddrReg1_IBUF[2]_inst 
       (.I(AddrReg1[2]),
        .O(AddrReg1_IBUF[2]));
  IBUF \AddrReg1_IBUF[3]_inst 
       (.I(AddrReg1[3]),
        .O(AddrReg1_IBUF[3]));
  IBUF \AddrReg2_IBUF[0]_inst 
       (.I(AddrReg2[0]),
        .O(AddrReg2_IBUF[0]));
  IBUF \AddrReg2_IBUF[1]_inst 
       (.I(AddrReg2[1]),
        .O(AddrReg2_IBUF[1]));
  IBUF \AddrReg2_IBUF[2]_inst 
       (.I(AddrReg2[2]),
        .O(AddrReg2_IBUF[2]));
  IBUF \AddrReg2_IBUF[3]_inst 
       (.I(AddrReg2[3]),
        .O(AddrReg2_IBUF[3]));
  IBUF \AddrWriteReg_IBUF[0]_inst 
       (.I(AddrWriteReg[0]),
        .O(AddrWriteReg_IBUF[0]));
  IBUF \AddrWriteReg_IBUF[1]_inst 
       (.I(AddrWriteReg[1]),
        .O(AddrWriteReg_IBUF[1]));
  IBUF \AddrWriteReg_IBUF[2]_inst 
       (.I(AddrWriteReg[2]),
        .O(AddrWriteReg_IBUF[2]));
  IBUF \AddrWriteReg_IBUF[3]_inst 
       (.I(AddrWriteReg[3]),
        .O(AddrWriteReg_IBUF[3]));
  OBUF \BankID_OBUF[0]_inst 
       (.I(BankID_OBUF[0]),
        .O(BankID[0]));
  OBUF \BankID_OBUF[1]_inst 
       (.I(BankID_OBUF[1]),
        .O(BankID[1]));
  OBUF \BankID_OBUF[2]_inst 
       (.I(BankID_OBUF[2]),
        .O(BankID[2]));
  OBUF \BankID_OBUF[3]_inst 
       (.I(BankID_OBUF[3]),
        .O(BankID[3]));
  IBUF \Flags_IBUF[0]_inst 
       (.I(Flags[0]),
        .O(Flags_IBUF[0]));
  IBUF \Flags_IBUF[10]_inst 
       (.I(Flags[10]),
        .O(Flags_IBUF[10]));
  IBUF \Flags_IBUF[11]_inst 
       (.I(Flags[11]),
        .O(Flags_IBUF[11]));
  IBUF \Flags_IBUF[12]_inst 
       (.I(Flags[12]),
        .O(Flags_IBUF[12]));
  IBUF \Flags_IBUF[13]_inst 
       (.I(Flags[13]),
        .O(Flags_IBUF[13]));
  IBUF \Flags_IBUF[14]_inst 
       (.I(Flags[14]),
        .O(Flags_IBUF[14]));
  IBUF \Flags_IBUF[15]_inst 
       (.I(Flags[15]),
        .O(Flags_IBUF[15]));
  IBUF \Flags_IBUF[1]_inst 
       (.I(Flags[1]),
        .O(Flags_IBUF[1]));
  IBUF \Flags_IBUF[2]_inst 
       (.I(Flags[2]),
        .O(Flags_IBUF[2]));
  IBUF \Flags_IBUF[3]_inst 
       (.I(Flags[3]),
        .O(Flags_IBUF[3]));
  IBUF \Flags_IBUF[4]_inst 
       (.I(Flags[4]),
        .O(Flags_IBUF[4]));
  IBUF \Flags_IBUF[5]_inst 
       (.I(Flags[5]),
        .O(Flags_IBUF[5]));
  IBUF \Flags_IBUF[6]_inst 
       (.I(Flags[6]),
        .O(Flags_IBUF[6]));
  IBUF \Flags_IBUF[7]_inst 
       (.I(Flags[7]),
        .O(Flags_IBUF[7]));
  IBUF \Flags_IBUF[8]_inst 
       (.I(Flags[8]),
        .O(Flags_IBUF[8]));
  IBUF \Flags_IBUF[9]_inst 
       (.I(Flags[9]),
        .O(Flags_IBUF[9]));
  IBUF OverwriteFl_IBUF_inst
       (.I(OverwriteFl),
        .O(OverwriteFl_IBUF));
  IBUF RHOPin_IBUF_inst
       (.I(RHOPin),
        .O(RHOPin_IBUF));
  LUT5 #(
    .INIT(32'h00000004)) 
    \Reg0[15]_i_1 
       (.I0(AddrWriteReg_IBUF[2]),
        .I1(WE_IBUF),
        .I2(AddrWriteReg_IBUF[3]),
        .I3(AddrWriteReg_IBUF[1]),
        .I4(AddrWriteReg_IBUF[0]),
        .O(Reg0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[0]),
        .Q(\Reg0_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[10]),
        .Q(\Reg0_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[11]),
        .Q(\Reg0_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[12]),
        .Q(\Reg0_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[13]),
        .Q(\Reg0_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[14]),
        .Q(\Reg0_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[15]),
        .Q(\Reg0_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[1]),
        .Q(\Reg0_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[2]),
        .Q(\Reg0_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[3]),
        .Q(\Reg0_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[4]),
        .Q(\Reg0_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[5]),
        .Q(\Reg0_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[6]),
        .Q(\Reg0_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[7]),
        .Q(\Reg0_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[8]),
        .Q(\Reg0_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg0),
        .D(WriteData_IBUF[9]),
        .Q(\Reg0_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00001000)) 
    \Reg1[15]_i_1 
       (.I0(AddrWriteReg_IBUF[2]),
        .I1(AddrWriteReg_IBUF[1]),
        .I2(AddrWriteReg_IBUF[0]),
        .I3(WE_IBUF),
        .I4(AddrWriteReg_IBUF[3]),
        .O(Reg1));
  OBUF \Reg1_data_OBUF[0]_inst 
       (.I(Reg1_data_OBUF[0]),
        .O(Reg1_data[0]));
  MUXF8 \Reg1_data_OBUF[0]_inst_i_1 
       (.I0(\Reg1_data_OBUF[0]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[0]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[0]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[0]_inst_i_2 
       (.I0(\Reg1_data_OBUF[0]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[0]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[0]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[0]_inst_i_3 
       (.I0(\Reg1_data_OBUF[0]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[0]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[0]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[0]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[0] ),
        .I1(\Reg2_reg_n_0_[0] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[0] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[0] ),
        .O(\Reg1_data_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[0]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[0] ),
        .I1(\Reg6_reg_n_0_[0] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[0] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[0] ),
        .O(\Reg1_data_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[0]_inst_i_6 
       (.I0(BankID_OBUF[0]),
        .I1(RegMA_data_OBUF[0]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[0] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[0] ),
        .O(\Reg1_data_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[0]_inst_i_7 
       (.I0(RegF[0]),
        .I1(\RegE_reg_n_0_[0] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[0] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[0] ),
        .O(\Reg1_data_OBUF[0]_inst_i_7_n_0 ));
  OBUF \Reg1_data_OBUF[10]_inst 
       (.I(Reg1_data_OBUF[10]),
        .O(Reg1_data[10]));
  MUXF8 \Reg1_data_OBUF[10]_inst_i_1 
       (.I0(\Reg1_data_OBUF[10]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[10]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[10]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[10]_inst_i_2 
       (.I0(\Reg1_data_OBUF[10]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[10]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[10]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[10]_inst_i_3 
       (.I0(\Reg1_data_OBUF[10]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[10]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[10]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[10]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[10] ),
        .I1(\Reg2_reg_n_0_[10] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[10] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[10] ),
        .O(\Reg1_data_OBUF[10]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[10]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[10] ),
        .I1(\Reg6_reg_n_0_[10] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[10] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[10] ),
        .O(\Reg1_data_OBUF[10]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[10]_inst_i_6 
       (.I0(\RegB_reg_n_0_[10] ),
        .I1(RegMA_data_OBUF[10]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[10] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[10] ),
        .O(\Reg1_data_OBUF[10]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[10]_inst_i_7 
       (.I0(RegF[10]),
        .I1(\RegE_reg_n_0_[10] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[10] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[10] ),
        .O(\Reg1_data_OBUF[10]_inst_i_7_n_0 ));
  OBUF \Reg1_data_OBUF[11]_inst 
       (.I(Reg1_data_OBUF[11]),
        .O(Reg1_data[11]));
  MUXF8 \Reg1_data_OBUF[11]_inst_i_1 
       (.I0(\Reg1_data_OBUF[11]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[11]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[11]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[11]_inst_i_2 
       (.I0(\Reg1_data_OBUF[11]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[11]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[11]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[11]_inst_i_3 
       (.I0(\Reg1_data_OBUF[11]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[11]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[11]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[11]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[11] ),
        .I1(\Reg2_reg_n_0_[11] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[11] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[11] ),
        .O(\Reg1_data_OBUF[11]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[11]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[11] ),
        .I1(\Reg6_reg_n_0_[11] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[11] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[11] ),
        .O(\Reg1_data_OBUF[11]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[11]_inst_i_6 
       (.I0(\RegB_reg_n_0_[11] ),
        .I1(RegMA_data_OBUF[11]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[11] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[11] ),
        .O(\Reg1_data_OBUF[11]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[11]_inst_i_7 
       (.I0(RegF[11]),
        .I1(\RegE_reg_n_0_[11] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[11] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[11] ),
        .O(\Reg1_data_OBUF[11]_inst_i_7_n_0 ));
  OBUF \Reg1_data_OBUF[12]_inst 
       (.I(Reg1_data_OBUF[12]),
        .O(Reg1_data[12]));
  MUXF8 \Reg1_data_OBUF[12]_inst_i_1 
       (.I0(\Reg1_data_OBUF[12]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[12]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[12]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[12]_inst_i_2 
       (.I0(\Reg1_data_OBUF[12]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[12]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[12]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[12]_inst_i_3 
       (.I0(\Reg1_data_OBUF[12]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[12]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[12]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[12]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[12] ),
        .I1(\Reg2_reg_n_0_[12] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[12] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[12] ),
        .O(\Reg1_data_OBUF[12]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[12]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[12] ),
        .I1(\Reg6_reg_n_0_[12] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[12] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[12] ),
        .O(\Reg1_data_OBUF[12]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[12]_inst_i_6 
       (.I0(\RegB_reg_n_0_[12] ),
        .I1(RegMA_data_OBUF[12]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[12] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[12] ),
        .O(\Reg1_data_OBUF[12]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[12]_inst_i_7 
       (.I0(RegF[12]),
        .I1(\RegE_reg_n_0_[12] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[12] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[12] ),
        .O(\Reg1_data_OBUF[12]_inst_i_7_n_0 ));
  OBUF \Reg1_data_OBUF[13]_inst 
       (.I(Reg1_data_OBUF[13]),
        .O(Reg1_data[13]));
  MUXF8 \Reg1_data_OBUF[13]_inst_i_1 
       (.I0(\Reg1_data_OBUF[13]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[13]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[13]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[13]_inst_i_2 
       (.I0(\Reg1_data_OBUF[13]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[13]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[13]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[13]_inst_i_3 
       (.I0(\Reg1_data_OBUF[13]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[13]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[13]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[13]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[13] ),
        .I1(\Reg2_reg_n_0_[13] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[13] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[13] ),
        .O(\Reg1_data_OBUF[13]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[13]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[13] ),
        .I1(\Reg6_reg_n_0_[13] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[13] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[13] ),
        .O(\Reg1_data_OBUF[13]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[13]_inst_i_6 
       (.I0(\RegB_reg_n_0_[13] ),
        .I1(RegMA_data_OBUF[13]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[13] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[13] ),
        .O(\Reg1_data_OBUF[13]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[13]_inst_i_7 
       (.I0(RegF[13]),
        .I1(\RegE_reg_n_0_[13] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[13] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[13] ),
        .O(\Reg1_data_OBUF[13]_inst_i_7_n_0 ));
  OBUF \Reg1_data_OBUF[14]_inst 
       (.I(Reg1_data_OBUF[14]),
        .O(Reg1_data[14]));
  MUXF8 \Reg1_data_OBUF[14]_inst_i_1 
       (.I0(\Reg1_data_OBUF[14]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[14]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[14]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[14]_inst_i_2 
       (.I0(\Reg1_data_OBUF[14]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[14]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[14]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[14]_inst_i_3 
       (.I0(\Reg1_data_OBUF[14]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[14]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[14]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[14]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[14] ),
        .I1(\Reg2_reg_n_0_[14] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[14] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[14] ),
        .O(\Reg1_data_OBUF[14]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[14]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[14] ),
        .I1(\Reg6_reg_n_0_[14] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[14] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[14] ),
        .O(\Reg1_data_OBUF[14]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[14]_inst_i_6 
       (.I0(\RegB_reg_n_0_[14] ),
        .I1(RegMA_data_OBUF[14]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[14] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[14] ),
        .O(\Reg1_data_OBUF[14]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[14]_inst_i_7 
       (.I0(RegF[14]),
        .I1(\RegE_reg_n_0_[14] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[14] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[14] ),
        .O(\Reg1_data_OBUF[14]_inst_i_7_n_0 ));
  OBUF \Reg1_data_OBUF[15]_inst 
       (.I(Reg1_data_OBUF[15]),
        .O(Reg1_data[15]));
  MUXF8 \Reg1_data_OBUF[15]_inst_i_1 
       (.I0(\Reg1_data_OBUF[15]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[15]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[15]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[15]_inst_i_2 
       (.I0(\Reg1_data_OBUF[15]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[15]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[15]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[15]_inst_i_3 
       (.I0(\Reg1_data_OBUF[15]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[15]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[15]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[15]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[15] ),
        .I1(\Reg2_reg_n_0_[15] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[15] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[15] ),
        .O(\Reg1_data_OBUF[15]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[15]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[15] ),
        .I1(\Reg6_reg_n_0_[15] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[15] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[15] ),
        .O(\Reg1_data_OBUF[15]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[15]_inst_i_6 
       (.I0(\RegB_reg_n_0_[15] ),
        .I1(RegMA_data_OBUF[15]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[15] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[15] ),
        .O(\Reg1_data_OBUF[15]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[15]_inst_i_7 
       (.I0(RegF[15]),
        .I1(\RegE_reg_n_0_[15] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[15] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[15] ),
        .O(\Reg1_data_OBUF[15]_inst_i_7_n_0 ));
  OBUF \Reg1_data_OBUF[1]_inst 
       (.I(Reg1_data_OBUF[1]),
        .O(Reg1_data[1]));
  MUXF8 \Reg1_data_OBUF[1]_inst_i_1 
       (.I0(\Reg1_data_OBUF[1]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[1]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[1]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[1]_inst_i_2 
       (.I0(\Reg1_data_OBUF[1]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[1]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[1]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[1]_inst_i_3 
       (.I0(\Reg1_data_OBUF[1]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[1]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[1]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[1]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[1] ),
        .I1(\Reg2_reg_n_0_[1] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[1] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[1] ),
        .O(\Reg1_data_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[1]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[1] ),
        .I1(\Reg6_reg_n_0_[1] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[1] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[1] ),
        .O(\Reg1_data_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[1]_inst_i_6 
       (.I0(BankID_OBUF[1]),
        .I1(RegMA_data_OBUF[1]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[1] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[1] ),
        .O(\Reg1_data_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[1]_inst_i_7 
       (.I0(RegF[1]),
        .I1(\RegE_reg_n_0_[1] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[1] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[1] ),
        .O(\Reg1_data_OBUF[1]_inst_i_7_n_0 ));
  OBUF \Reg1_data_OBUF[2]_inst 
       (.I(Reg1_data_OBUF[2]),
        .O(Reg1_data[2]));
  MUXF8 \Reg1_data_OBUF[2]_inst_i_1 
       (.I0(\Reg1_data_OBUF[2]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[2]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[2]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[2]_inst_i_2 
       (.I0(\Reg1_data_OBUF[2]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[2]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[2]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[2]_inst_i_3 
       (.I0(\Reg1_data_OBUF[2]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[2]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[2]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[2]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[2] ),
        .I1(\Reg2_reg_n_0_[2] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[2] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[2] ),
        .O(\Reg1_data_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[2]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[2] ),
        .I1(\Reg6_reg_n_0_[2] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[2] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[2] ),
        .O(\Reg1_data_OBUF[2]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[2]_inst_i_6 
       (.I0(BankID_OBUF[2]),
        .I1(RegMA_data_OBUF[2]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[2] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[2] ),
        .O(\Reg1_data_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[2]_inst_i_7 
       (.I0(RegF[2]),
        .I1(\RegE_reg_n_0_[2] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[2] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[2] ),
        .O(\Reg1_data_OBUF[2]_inst_i_7_n_0 ));
  OBUF \Reg1_data_OBUF[3]_inst 
       (.I(Reg1_data_OBUF[3]),
        .O(Reg1_data[3]));
  MUXF8 \Reg1_data_OBUF[3]_inst_i_1 
       (.I0(\Reg1_data_OBUF[3]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[3]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[3]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[3]_inst_i_2 
       (.I0(\Reg1_data_OBUF[3]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[3]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[3]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[3]_inst_i_3 
       (.I0(\Reg1_data_OBUF[3]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[3]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[3]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[3]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[3] ),
        .I1(\Reg2_reg_n_0_[3] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[3] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[3] ),
        .O(\Reg1_data_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[3]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[3] ),
        .I1(\Reg6_reg_n_0_[3] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[3] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[3] ),
        .O(\Reg1_data_OBUF[3]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[3]_inst_i_6 
       (.I0(BankID_OBUF[3]),
        .I1(RegMA_data_OBUF[3]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[3] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[3] ),
        .O(\Reg1_data_OBUF[3]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[3]_inst_i_7 
       (.I0(RegF[3]),
        .I1(\RegE_reg_n_0_[3] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[3] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[3] ),
        .O(\Reg1_data_OBUF[3]_inst_i_7_n_0 ));
  OBUF \Reg1_data_OBUF[4]_inst 
       (.I(Reg1_data_OBUF[4]),
        .O(Reg1_data[4]));
  MUXF8 \Reg1_data_OBUF[4]_inst_i_1 
       (.I0(\Reg1_data_OBUF[4]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[4]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[4]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[4]_inst_i_2 
       (.I0(\Reg1_data_OBUF[4]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[4]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[4]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[4]_inst_i_3 
       (.I0(\Reg1_data_OBUF[4]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[4]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[4]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[4]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[4] ),
        .I1(\Reg2_reg_n_0_[4] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[4] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[4] ),
        .O(\Reg1_data_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[4]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[4] ),
        .I1(\Reg6_reg_n_0_[4] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[4] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[4] ),
        .O(\Reg1_data_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[4]_inst_i_6 
       (.I0(\RegB_reg_n_0_[4] ),
        .I1(RegMA_data_OBUF[4]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[4] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[4] ),
        .O(\Reg1_data_OBUF[4]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[4]_inst_i_7 
       (.I0(RegF[4]),
        .I1(\RegE_reg_n_0_[4] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[4] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[4] ),
        .O(\Reg1_data_OBUF[4]_inst_i_7_n_0 ));
  OBUF \Reg1_data_OBUF[5]_inst 
       (.I(Reg1_data_OBUF[5]),
        .O(Reg1_data[5]));
  MUXF8 \Reg1_data_OBUF[5]_inst_i_1 
       (.I0(\Reg1_data_OBUF[5]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[5]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[5]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[5]_inst_i_2 
       (.I0(\Reg1_data_OBUF[5]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[5]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[5]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[5]_inst_i_3 
       (.I0(\Reg1_data_OBUF[5]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[5]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[5]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[5]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[5] ),
        .I1(\Reg2_reg_n_0_[5] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[5] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[5] ),
        .O(\Reg1_data_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[5]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[5] ),
        .I1(\Reg6_reg_n_0_[5] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[5] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[5] ),
        .O(\Reg1_data_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[5]_inst_i_6 
       (.I0(\RegB_reg_n_0_[5] ),
        .I1(RegMA_data_OBUF[5]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[5] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[5] ),
        .O(\Reg1_data_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[5]_inst_i_7 
       (.I0(RHOPin_IBUF),
        .I1(\RegE_reg_n_0_[5] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[5] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[5] ),
        .O(\Reg1_data_OBUF[5]_inst_i_7_n_0 ));
  OBUF \Reg1_data_OBUF[6]_inst 
       (.I(Reg1_data_OBUF[6]),
        .O(Reg1_data[6]));
  MUXF8 \Reg1_data_OBUF[6]_inst_i_1 
       (.I0(\Reg1_data_OBUF[6]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[6]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[6]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[6]_inst_i_2 
       (.I0(\Reg1_data_OBUF[6]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[6]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[6]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[6]_inst_i_3 
       (.I0(\Reg1_data_OBUF[6]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[6]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[6]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[6]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[6] ),
        .I1(\Reg2_reg_n_0_[6] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[6] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[6] ),
        .O(\Reg1_data_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[6]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[6] ),
        .I1(\Reg6_reg_n_0_[6] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[6] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[6] ),
        .O(\Reg1_data_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[6]_inst_i_6 
       (.I0(\RegB_reg_n_0_[6] ),
        .I1(RegMA_data_OBUF[6]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[6] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[6] ),
        .O(\Reg1_data_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[6]_inst_i_7 
       (.I0(RegF[6]),
        .I1(\RegE_reg_n_0_[6] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[6] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[6] ),
        .O(\Reg1_data_OBUF[6]_inst_i_7_n_0 ));
  OBUF \Reg1_data_OBUF[7]_inst 
       (.I(Reg1_data_OBUF[7]),
        .O(Reg1_data[7]));
  MUXF8 \Reg1_data_OBUF[7]_inst_i_1 
       (.I0(\Reg1_data_OBUF[7]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[7]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[7]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[7]_inst_i_2 
       (.I0(\Reg1_data_OBUF[7]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[7]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[7]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[7]_inst_i_3 
       (.I0(\Reg1_data_OBUF[7]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[7]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[7]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[7]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[7] ),
        .I1(\Reg2_reg_n_0_[7] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[7] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[7] ),
        .O(\Reg1_data_OBUF[7]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[7]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[7] ),
        .I1(\Reg6_reg_n_0_[7] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[7] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[7] ),
        .O(\Reg1_data_OBUF[7]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[7]_inst_i_6 
       (.I0(\RegB_reg_n_0_[7] ),
        .I1(RegMA_data_OBUF[7]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[7] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[7] ),
        .O(\Reg1_data_OBUF[7]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[7]_inst_i_7 
       (.I0(RegF[7]),
        .I1(\RegE_reg_n_0_[7] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[7] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[7] ),
        .O(\Reg1_data_OBUF[7]_inst_i_7_n_0 ));
  OBUF \Reg1_data_OBUF[8]_inst 
       (.I(Reg1_data_OBUF[8]),
        .O(Reg1_data[8]));
  MUXF8 \Reg1_data_OBUF[8]_inst_i_1 
       (.I0(\Reg1_data_OBUF[8]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[8]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[8]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[8]_inst_i_2 
       (.I0(\Reg1_data_OBUF[8]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[8]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[8]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[8]_inst_i_3 
       (.I0(\Reg1_data_OBUF[8]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[8]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[8]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[8]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[8] ),
        .I1(\Reg2_reg_n_0_[8] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[8] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[8] ),
        .O(\Reg1_data_OBUF[8]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[8]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[8] ),
        .I1(\Reg6_reg_n_0_[8] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[8] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[8] ),
        .O(\Reg1_data_OBUF[8]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[8]_inst_i_6 
       (.I0(\RegB_reg_n_0_[8] ),
        .I1(RegMA_data_OBUF[8]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[8] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[8] ),
        .O(\Reg1_data_OBUF[8]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[8]_inst_i_7 
       (.I0(RegF[8]),
        .I1(\RegE_reg_n_0_[8] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[8] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[8] ),
        .O(\Reg1_data_OBUF[8]_inst_i_7_n_0 ));
  OBUF \Reg1_data_OBUF[9]_inst 
       (.I(Reg1_data_OBUF[9]),
        .O(Reg1_data[9]));
  MUXF8 \Reg1_data_OBUF[9]_inst_i_1 
       (.I0(\Reg1_data_OBUF[9]_inst_i_2_n_0 ),
        .I1(\Reg1_data_OBUF[9]_inst_i_3_n_0 ),
        .O(Reg1_data_OBUF[9]),
        .S(AddrReg1_IBUF[3]));
  MUXF7 \Reg1_data_OBUF[9]_inst_i_2 
       (.I0(\Reg1_data_OBUF[9]_inst_i_4_n_0 ),
        .I1(\Reg1_data_OBUF[9]_inst_i_5_n_0 ),
        .O(\Reg1_data_OBUF[9]_inst_i_2_n_0 ),
        .S(AddrReg1_IBUF[2]));
  MUXF7 \Reg1_data_OBUF[9]_inst_i_3 
       (.I0(\Reg1_data_OBUF[9]_inst_i_6_n_0 ),
        .I1(\Reg1_data_OBUF[9]_inst_i_7_n_0 ),
        .O(\Reg1_data_OBUF[9]_inst_i_3_n_0 ),
        .S(AddrReg1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[9]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[9] ),
        .I1(\Reg2_reg_n_0_[9] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg1_reg_n_0_[9] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg0_reg_n_0_[9] ),
        .O(\Reg1_data_OBUF[9]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[9]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[9] ),
        .I1(\Reg6_reg_n_0_[9] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg5_reg_n_0_[9] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg4_reg_n_0_[9] ),
        .O(\Reg1_data_OBUF[9]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[9]_inst_i_6 
       (.I0(\RegB_reg_n_0_[9] ),
        .I1(RegMA_data_OBUF[9]),
        .I2(AddrReg1_IBUF[1]),
        .I3(\Reg9_reg_n_0_[9] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\Reg8_reg_n_0_[9] ),
        .O(\Reg1_data_OBUF[9]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data_OBUF[9]_inst_i_7 
       (.I0(RegF[9]),
        .I1(\RegE_reg_n_0_[9] ),
        .I2(AddrReg1_IBUF[1]),
        .I3(\RegD_reg_n_0_[9] ),
        .I4(AddrReg1_IBUF[0]),
        .I5(\RegC_reg_n_0_[9] ),
        .O(\Reg1_data_OBUF[9]_inst_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[0]),
        .Q(\Reg1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[10]),
        .Q(\Reg1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[11]),
        .Q(\Reg1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[12]),
        .Q(\Reg1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[13]),
        .Q(\Reg1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[14]),
        .Q(\Reg1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[15]),
        .Q(\Reg1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[1]),
        .Q(\Reg1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[2]),
        .Q(\Reg1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[3]),
        .Q(\Reg1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[4]),
        .Q(\Reg1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[5]),
        .Q(\Reg1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[6]),
        .Q(\Reg1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[7]),
        .Q(\Reg1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[8]),
        .Q(\Reg1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg1),
        .D(WriteData_IBUF[9]),
        .Q(\Reg1_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00040000)) 
    \Reg2[15]_i_1 
       (.I0(AddrWriteReg_IBUF[0]),
        .I1(WE_IBUF),
        .I2(AddrWriteReg_IBUF[3]),
        .I3(AddrWriteReg_IBUF[2]),
        .I4(AddrWriteReg_IBUF[1]),
        .O(Reg2));
  OBUF \Reg2_data_OBUF[0]_inst 
       (.I(Reg2_data_OBUF[0]),
        .O(Reg2_data[0]));
  MUXF8 \Reg2_data_OBUF[0]_inst_i_1 
       (.I0(\Reg2_data_OBUF[0]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[0]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[0]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[0]_inst_i_2 
       (.I0(\Reg2_data_OBUF[0]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[0]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[0]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[0]_inst_i_3 
       (.I0(\Reg2_data_OBUF[0]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[0]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[0]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[0]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[0] ),
        .I1(\Reg2_reg_n_0_[0] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[0] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[0] ),
        .O(\Reg2_data_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[0]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[0] ),
        .I1(\Reg6_reg_n_0_[0] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[0] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[0] ),
        .O(\Reg2_data_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[0]_inst_i_6 
       (.I0(BankID_OBUF[0]),
        .I1(RegMA_data_OBUF[0]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[0] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[0] ),
        .O(\Reg2_data_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[0]_inst_i_7 
       (.I0(RegF[0]),
        .I1(\RegE_reg_n_0_[0] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[0] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[0] ),
        .O(\Reg2_data_OBUF[0]_inst_i_7_n_0 ));
  OBUF \Reg2_data_OBUF[10]_inst 
       (.I(Reg2_data_OBUF[10]),
        .O(Reg2_data[10]));
  MUXF8 \Reg2_data_OBUF[10]_inst_i_1 
       (.I0(\Reg2_data_OBUF[10]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[10]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[10]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[10]_inst_i_2 
       (.I0(\Reg2_data_OBUF[10]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[10]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[10]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[10]_inst_i_3 
       (.I0(\Reg2_data_OBUF[10]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[10]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[10]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[10]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[10] ),
        .I1(\Reg2_reg_n_0_[10] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[10] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[10] ),
        .O(\Reg2_data_OBUF[10]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[10]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[10] ),
        .I1(\Reg6_reg_n_0_[10] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[10] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[10] ),
        .O(\Reg2_data_OBUF[10]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[10]_inst_i_6 
       (.I0(\RegB_reg_n_0_[10] ),
        .I1(RegMA_data_OBUF[10]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[10] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[10] ),
        .O(\Reg2_data_OBUF[10]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[10]_inst_i_7 
       (.I0(RegF[10]),
        .I1(\RegE_reg_n_0_[10] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[10] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[10] ),
        .O(\Reg2_data_OBUF[10]_inst_i_7_n_0 ));
  OBUF \Reg2_data_OBUF[11]_inst 
       (.I(Reg2_data_OBUF[11]),
        .O(Reg2_data[11]));
  MUXF8 \Reg2_data_OBUF[11]_inst_i_1 
       (.I0(\Reg2_data_OBUF[11]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[11]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[11]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[11]_inst_i_2 
       (.I0(\Reg2_data_OBUF[11]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[11]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[11]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[11]_inst_i_3 
       (.I0(\Reg2_data_OBUF[11]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[11]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[11]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[11]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[11] ),
        .I1(\Reg2_reg_n_0_[11] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[11] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[11] ),
        .O(\Reg2_data_OBUF[11]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[11]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[11] ),
        .I1(\Reg6_reg_n_0_[11] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[11] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[11] ),
        .O(\Reg2_data_OBUF[11]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[11]_inst_i_6 
       (.I0(\RegB_reg_n_0_[11] ),
        .I1(RegMA_data_OBUF[11]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[11] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[11] ),
        .O(\Reg2_data_OBUF[11]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[11]_inst_i_7 
       (.I0(RegF[11]),
        .I1(\RegE_reg_n_0_[11] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[11] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[11] ),
        .O(\Reg2_data_OBUF[11]_inst_i_7_n_0 ));
  OBUF \Reg2_data_OBUF[12]_inst 
       (.I(Reg2_data_OBUF[12]),
        .O(Reg2_data[12]));
  MUXF8 \Reg2_data_OBUF[12]_inst_i_1 
       (.I0(\Reg2_data_OBUF[12]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[12]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[12]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[12]_inst_i_2 
       (.I0(\Reg2_data_OBUF[12]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[12]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[12]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[12]_inst_i_3 
       (.I0(\Reg2_data_OBUF[12]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[12]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[12]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[12]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[12] ),
        .I1(\Reg2_reg_n_0_[12] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[12] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[12] ),
        .O(\Reg2_data_OBUF[12]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[12]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[12] ),
        .I1(\Reg6_reg_n_0_[12] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[12] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[12] ),
        .O(\Reg2_data_OBUF[12]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[12]_inst_i_6 
       (.I0(\RegB_reg_n_0_[12] ),
        .I1(RegMA_data_OBUF[12]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[12] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[12] ),
        .O(\Reg2_data_OBUF[12]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[12]_inst_i_7 
       (.I0(RegF[12]),
        .I1(\RegE_reg_n_0_[12] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[12] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[12] ),
        .O(\Reg2_data_OBUF[12]_inst_i_7_n_0 ));
  OBUF \Reg2_data_OBUF[13]_inst 
       (.I(Reg2_data_OBUF[13]),
        .O(Reg2_data[13]));
  MUXF8 \Reg2_data_OBUF[13]_inst_i_1 
       (.I0(\Reg2_data_OBUF[13]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[13]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[13]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[13]_inst_i_2 
       (.I0(\Reg2_data_OBUF[13]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[13]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[13]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[13]_inst_i_3 
       (.I0(\Reg2_data_OBUF[13]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[13]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[13]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[13]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[13] ),
        .I1(\Reg2_reg_n_0_[13] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[13] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[13] ),
        .O(\Reg2_data_OBUF[13]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[13]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[13] ),
        .I1(\Reg6_reg_n_0_[13] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[13] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[13] ),
        .O(\Reg2_data_OBUF[13]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[13]_inst_i_6 
       (.I0(\RegB_reg_n_0_[13] ),
        .I1(RegMA_data_OBUF[13]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[13] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[13] ),
        .O(\Reg2_data_OBUF[13]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[13]_inst_i_7 
       (.I0(RegF[13]),
        .I1(\RegE_reg_n_0_[13] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[13] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[13] ),
        .O(\Reg2_data_OBUF[13]_inst_i_7_n_0 ));
  OBUF \Reg2_data_OBUF[14]_inst 
       (.I(Reg2_data_OBUF[14]),
        .O(Reg2_data[14]));
  MUXF8 \Reg2_data_OBUF[14]_inst_i_1 
       (.I0(\Reg2_data_OBUF[14]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[14]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[14]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[14]_inst_i_2 
       (.I0(\Reg2_data_OBUF[14]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[14]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[14]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[14]_inst_i_3 
       (.I0(\Reg2_data_OBUF[14]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[14]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[14]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[14]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[14] ),
        .I1(\Reg2_reg_n_0_[14] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[14] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[14] ),
        .O(\Reg2_data_OBUF[14]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[14]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[14] ),
        .I1(\Reg6_reg_n_0_[14] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[14] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[14] ),
        .O(\Reg2_data_OBUF[14]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[14]_inst_i_6 
       (.I0(\RegB_reg_n_0_[14] ),
        .I1(RegMA_data_OBUF[14]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[14] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[14] ),
        .O(\Reg2_data_OBUF[14]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[14]_inst_i_7 
       (.I0(RegF[14]),
        .I1(\RegE_reg_n_0_[14] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[14] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[14] ),
        .O(\Reg2_data_OBUF[14]_inst_i_7_n_0 ));
  OBUF \Reg2_data_OBUF[15]_inst 
       (.I(Reg2_data_OBUF[15]),
        .O(Reg2_data[15]));
  MUXF8 \Reg2_data_OBUF[15]_inst_i_1 
       (.I0(\Reg2_data_OBUF[15]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[15]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[15]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[15]_inst_i_2 
       (.I0(\Reg2_data_OBUF[15]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[15]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[15]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[15]_inst_i_3 
       (.I0(\Reg2_data_OBUF[15]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[15]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[15]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[15]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[15] ),
        .I1(\Reg2_reg_n_0_[15] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[15] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[15] ),
        .O(\Reg2_data_OBUF[15]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[15]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[15] ),
        .I1(\Reg6_reg_n_0_[15] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[15] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[15] ),
        .O(\Reg2_data_OBUF[15]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[15]_inst_i_6 
       (.I0(\RegB_reg_n_0_[15] ),
        .I1(RegMA_data_OBUF[15]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[15] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[15] ),
        .O(\Reg2_data_OBUF[15]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[15]_inst_i_7 
       (.I0(RegF[15]),
        .I1(\RegE_reg_n_0_[15] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[15] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[15] ),
        .O(\Reg2_data_OBUF[15]_inst_i_7_n_0 ));
  OBUF \Reg2_data_OBUF[1]_inst 
       (.I(Reg2_data_OBUF[1]),
        .O(Reg2_data[1]));
  MUXF8 \Reg2_data_OBUF[1]_inst_i_1 
       (.I0(\Reg2_data_OBUF[1]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[1]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[1]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[1]_inst_i_2 
       (.I0(\Reg2_data_OBUF[1]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[1]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[1]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[1]_inst_i_3 
       (.I0(\Reg2_data_OBUF[1]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[1]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[1]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[1]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[1] ),
        .I1(\Reg2_reg_n_0_[1] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[1] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[1] ),
        .O(\Reg2_data_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[1]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[1] ),
        .I1(\Reg6_reg_n_0_[1] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[1] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[1] ),
        .O(\Reg2_data_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[1]_inst_i_6 
       (.I0(BankID_OBUF[1]),
        .I1(RegMA_data_OBUF[1]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[1] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[1] ),
        .O(\Reg2_data_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[1]_inst_i_7 
       (.I0(RegF[1]),
        .I1(\RegE_reg_n_0_[1] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[1] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[1] ),
        .O(\Reg2_data_OBUF[1]_inst_i_7_n_0 ));
  OBUF \Reg2_data_OBUF[2]_inst 
       (.I(Reg2_data_OBUF[2]),
        .O(Reg2_data[2]));
  MUXF8 \Reg2_data_OBUF[2]_inst_i_1 
       (.I0(\Reg2_data_OBUF[2]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[2]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[2]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[2]_inst_i_2 
       (.I0(\Reg2_data_OBUF[2]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[2]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[2]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[2]_inst_i_3 
       (.I0(\Reg2_data_OBUF[2]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[2]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[2]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[2]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[2] ),
        .I1(\Reg2_reg_n_0_[2] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[2] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[2] ),
        .O(\Reg2_data_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[2]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[2] ),
        .I1(\Reg6_reg_n_0_[2] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[2] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[2] ),
        .O(\Reg2_data_OBUF[2]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[2]_inst_i_6 
       (.I0(BankID_OBUF[2]),
        .I1(RegMA_data_OBUF[2]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[2] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[2] ),
        .O(\Reg2_data_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[2]_inst_i_7 
       (.I0(RegF[2]),
        .I1(\RegE_reg_n_0_[2] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[2] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[2] ),
        .O(\Reg2_data_OBUF[2]_inst_i_7_n_0 ));
  OBUF \Reg2_data_OBUF[3]_inst 
       (.I(Reg2_data_OBUF[3]),
        .O(Reg2_data[3]));
  MUXF8 \Reg2_data_OBUF[3]_inst_i_1 
       (.I0(\Reg2_data_OBUF[3]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[3]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[3]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[3]_inst_i_2 
       (.I0(\Reg2_data_OBUF[3]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[3]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[3]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[3]_inst_i_3 
       (.I0(\Reg2_data_OBUF[3]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[3]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[3]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[3]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[3] ),
        .I1(\Reg2_reg_n_0_[3] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[3] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[3] ),
        .O(\Reg2_data_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[3]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[3] ),
        .I1(\Reg6_reg_n_0_[3] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[3] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[3] ),
        .O(\Reg2_data_OBUF[3]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[3]_inst_i_6 
       (.I0(BankID_OBUF[3]),
        .I1(RegMA_data_OBUF[3]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[3] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[3] ),
        .O(\Reg2_data_OBUF[3]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[3]_inst_i_7 
       (.I0(RegF[3]),
        .I1(\RegE_reg_n_0_[3] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[3] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[3] ),
        .O(\Reg2_data_OBUF[3]_inst_i_7_n_0 ));
  OBUF \Reg2_data_OBUF[4]_inst 
       (.I(Reg2_data_OBUF[4]),
        .O(Reg2_data[4]));
  MUXF8 \Reg2_data_OBUF[4]_inst_i_1 
       (.I0(\Reg2_data_OBUF[4]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[4]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[4]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[4]_inst_i_2 
       (.I0(\Reg2_data_OBUF[4]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[4]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[4]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[4]_inst_i_3 
       (.I0(\Reg2_data_OBUF[4]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[4]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[4]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[4]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[4] ),
        .I1(\Reg2_reg_n_0_[4] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[4] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[4] ),
        .O(\Reg2_data_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[4]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[4] ),
        .I1(\Reg6_reg_n_0_[4] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[4] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[4] ),
        .O(\Reg2_data_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[4]_inst_i_6 
       (.I0(\RegB_reg_n_0_[4] ),
        .I1(RegMA_data_OBUF[4]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[4] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[4] ),
        .O(\Reg2_data_OBUF[4]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[4]_inst_i_7 
       (.I0(RegF[4]),
        .I1(\RegE_reg_n_0_[4] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[4] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[4] ),
        .O(\Reg2_data_OBUF[4]_inst_i_7_n_0 ));
  OBUF \Reg2_data_OBUF[5]_inst 
       (.I(Reg2_data_OBUF[5]),
        .O(Reg2_data[5]));
  MUXF8 \Reg2_data_OBUF[5]_inst_i_1 
       (.I0(\Reg2_data_OBUF[5]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[5]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[5]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[5]_inst_i_2 
       (.I0(\Reg2_data_OBUF[5]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[5]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[5]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[5]_inst_i_3 
       (.I0(\Reg2_data_OBUF[5]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[5]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[5]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[5]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[5] ),
        .I1(\Reg2_reg_n_0_[5] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[5] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[5] ),
        .O(\Reg2_data_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[5]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[5] ),
        .I1(\Reg6_reg_n_0_[5] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[5] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[5] ),
        .O(\Reg2_data_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[5]_inst_i_6 
       (.I0(\RegB_reg_n_0_[5] ),
        .I1(RegMA_data_OBUF[5]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[5] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[5] ),
        .O(\Reg2_data_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[5]_inst_i_7 
       (.I0(RHOPin_IBUF),
        .I1(\RegE_reg_n_0_[5] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[5] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[5] ),
        .O(\Reg2_data_OBUF[5]_inst_i_7_n_0 ));
  OBUF \Reg2_data_OBUF[6]_inst 
       (.I(Reg2_data_OBUF[6]),
        .O(Reg2_data[6]));
  MUXF8 \Reg2_data_OBUF[6]_inst_i_1 
       (.I0(\Reg2_data_OBUF[6]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[6]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[6]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[6]_inst_i_2 
       (.I0(\Reg2_data_OBUF[6]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[6]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[6]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[6]_inst_i_3 
       (.I0(\Reg2_data_OBUF[6]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[6]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[6]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[6]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[6] ),
        .I1(\Reg2_reg_n_0_[6] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[6] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[6] ),
        .O(\Reg2_data_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[6]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[6] ),
        .I1(\Reg6_reg_n_0_[6] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[6] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[6] ),
        .O(\Reg2_data_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[6]_inst_i_6 
       (.I0(\RegB_reg_n_0_[6] ),
        .I1(RegMA_data_OBUF[6]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[6] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[6] ),
        .O(\Reg2_data_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[6]_inst_i_7 
       (.I0(RegF[6]),
        .I1(\RegE_reg_n_0_[6] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[6] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[6] ),
        .O(\Reg2_data_OBUF[6]_inst_i_7_n_0 ));
  OBUF \Reg2_data_OBUF[7]_inst 
       (.I(Reg2_data_OBUF[7]),
        .O(Reg2_data[7]));
  MUXF8 \Reg2_data_OBUF[7]_inst_i_1 
       (.I0(\Reg2_data_OBUF[7]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[7]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[7]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[7]_inst_i_2 
       (.I0(\Reg2_data_OBUF[7]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[7]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[7]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[7]_inst_i_3 
       (.I0(\Reg2_data_OBUF[7]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[7]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[7]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[7]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[7] ),
        .I1(\Reg2_reg_n_0_[7] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[7] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[7] ),
        .O(\Reg2_data_OBUF[7]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[7]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[7] ),
        .I1(\Reg6_reg_n_0_[7] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[7] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[7] ),
        .O(\Reg2_data_OBUF[7]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[7]_inst_i_6 
       (.I0(\RegB_reg_n_0_[7] ),
        .I1(RegMA_data_OBUF[7]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[7] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[7] ),
        .O(\Reg2_data_OBUF[7]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[7]_inst_i_7 
       (.I0(RegF[7]),
        .I1(\RegE_reg_n_0_[7] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[7] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[7] ),
        .O(\Reg2_data_OBUF[7]_inst_i_7_n_0 ));
  OBUF \Reg2_data_OBUF[8]_inst 
       (.I(Reg2_data_OBUF[8]),
        .O(Reg2_data[8]));
  MUXF8 \Reg2_data_OBUF[8]_inst_i_1 
       (.I0(\Reg2_data_OBUF[8]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[8]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[8]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[8]_inst_i_2 
       (.I0(\Reg2_data_OBUF[8]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[8]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[8]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[8]_inst_i_3 
       (.I0(\Reg2_data_OBUF[8]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[8]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[8]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[8]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[8] ),
        .I1(\Reg2_reg_n_0_[8] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[8] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[8] ),
        .O(\Reg2_data_OBUF[8]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[8]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[8] ),
        .I1(\Reg6_reg_n_0_[8] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[8] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[8] ),
        .O(\Reg2_data_OBUF[8]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[8]_inst_i_6 
       (.I0(\RegB_reg_n_0_[8] ),
        .I1(RegMA_data_OBUF[8]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[8] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[8] ),
        .O(\Reg2_data_OBUF[8]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[8]_inst_i_7 
       (.I0(RegF[8]),
        .I1(\RegE_reg_n_0_[8] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[8] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[8] ),
        .O(\Reg2_data_OBUF[8]_inst_i_7_n_0 ));
  OBUF \Reg2_data_OBUF[9]_inst 
       (.I(Reg2_data_OBUF[9]),
        .O(Reg2_data[9]));
  MUXF8 \Reg2_data_OBUF[9]_inst_i_1 
       (.I0(\Reg2_data_OBUF[9]_inst_i_2_n_0 ),
        .I1(\Reg2_data_OBUF[9]_inst_i_3_n_0 ),
        .O(Reg2_data_OBUF[9]),
        .S(AddrReg2_IBUF[3]));
  MUXF7 \Reg2_data_OBUF[9]_inst_i_2 
       (.I0(\Reg2_data_OBUF[9]_inst_i_4_n_0 ),
        .I1(\Reg2_data_OBUF[9]_inst_i_5_n_0 ),
        .O(\Reg2_data_OBUF[9]_inst_i_2_n_0 ),
        .S(AddrReg2_IBUF[2]));
  MUXF7 \Reg2_data_OBUF[9]_inst_i_3 
       (.I0(\Reg2_data_OBUF[9]_inst_i_6_n_0 ),
        .I1(\Reg2_data_OBUF[9]_inst_i_7_n_0 ),
        .O(\Reg2_data_OBUF[9]_inst_i_3_n_0 ),
        .S(AddrReg2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[9]_inst_i_4 
       (.I0(\Reg3_reg_n_0_[9] ),
        .I1(\Reg2_reg_n_0_[9] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg1_reg_n_0_[9] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg0_reg_n_0_[9] ),
        .O(\Reg2_data_OBUF[9]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[9]_inst_i_5 
       (.I0(\Reg7_reg_n_0_[9] ),
        .I1(\Reg6_reg_n_0_[9] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg5_reg_n_0_[9] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg4_reg_n_0_[9] ),
        .O(\Reg2_data_OBUF[9]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[9]_inst_i_6 
       (.I0(\RegB_reg_n_0_[9] ),
        .I1(RegMA_data_OBUF[9]),
        .I2(AddrReg2_IBUF[1]),
        .I3(\Reg9_reg_n_0_[9] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\Reg8_reg_n_0_[9] ),
        .O(\Reg2_data_OBUF[9]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data_OBUF[9]_inst_i_7 
       (.I0(RegF[9]),
        .I1(\RegE_reg_n_0_[9] ),
        .I2(AddrReg2_IBUF[1]),
        .I3(\RegD_reg_n_0_[9] ),
        .I4(AddrReg2_IBUF[0]),
        .I5(\RegC_reg_n_0_[9] ),
        .O(\Reg2_data_OBUF[9]_inst_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[0]),
        .Q(\Reg2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[10]),
        .Q(\Reg2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[11]),
        .Q(\Reg2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[12]),
        .Q(\Reg2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[13]),
        .Q(\Reg2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[14]),
        .Q(\Reg2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[15]),
        .Q(\Reg2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[1]),
        .Q(\Reg2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[2]),
        .Q(\Reg2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[3]),
        .Q(\Reg2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[4]),
        .Q(\Reg2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[5]),
        .Q(\Reg2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[6]),
        .Q(\Reg2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[7]),
        .Q(\Reg2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[8]),
        .Q(\Reg2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg2),
        .D(WriteData_IBUF[9]),
        .Q(\Reg2_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00080000)) 
    \Reg3[15]_i_1 
       (.I0(AddrWriteReg_IBUF[0]),
        .I1(WE_IBUF),
        .I2(AddrWriteReg_IBUF[3]),
        .I3(AddrWriteReg_IBUF[2]),
        .I4(AddrWriteReg_IBUF[1]),
        .O(Reg3));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[0]),
        .Q(\Reg3_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[10]),
        .Q(\Reg3_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[11]),
        .Q(\Reg3_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[12]),
        .Q(\Reg3_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[13]),
        .Q(\Reg3_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[14]),
        .Q(\Reg3_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[15]),
        .Q(\Reg3_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[1]),
        .Q(\Reg3_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[2]),
        .Q(\Reg3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[3]),
        .Q(\Reg3_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[4]),
        .Q(\Reg3_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[5]),
        .Q(\Reg3_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[6]),
        .Q(\Reg3_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[7]),
        .Q(\Reg3_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[8]),
        .Q(\Reg3_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg3),
        .D(WriteData_IBUF[9]),
        .Q(\Reg3_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000008)) 
    \Reg4[15]_i_1 
       (.I0(AddrWriteReg_IBUF[2]),
        .I1(WE_IBUF),
        .I2(AddrWriteReg_IBUF[3]),
        .I3(AddrWriteReg_IBUF[1]),
        .I4(AddrWriteReg_IBUF[0]),
        .O(Reg4));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[0]),
        .Q(\Reg4_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[10]),
        .Q(\Reg4_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[11]),
        .Q(\Reg4_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[12]),
        .Q(\Reg4_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[13]),
        .Q(\Reg4_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[14]),
        .Q(\Reg4_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[15]),
        .Q(\Reg4_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[1]),
        .Q(\Reg4_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[2]),
        .Q(\Reg4_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[3]),
        .Q(\Reg4_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[4]),
        .Q(\Reg4_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[5]),
        .Q(\Reg4_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[6]),
        .Q(\Reg4_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[7]),
        .Q(\Reg4_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[8]),
        .Q(\Reg4_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg4),
        .D(WriteData_IBUF[9]),
        .Q(\Reg4_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \Reg5[15]_i_1 
       (.I0(AddrWriteReg_IBUF[1]),
        .I1(AddrWriteReg_IBUF[2]),
        .I2(AddrWriteReg_IBUF[0]),
        .I3(WE_IBUF),
        .I4(AddrWriteReg_IBUF[3]),
        .O(Reg5));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[0]),
        .Q(\Reg5_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[10]),
        .Q(\Reg5_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[11]),
        .Q(\Reg5_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[12]),
        .Q(\Reg5_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[13]),
        .Q(\Reg5_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[14]),
        .Q(\Reg5_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[15]),
        .Q(\Reg5_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[1]),
        .Q(\Reg5_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[2]),
        .Q(\Reg5_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[3]),
        .Q(\Reg5_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[4]),
        .Q(\Reg5_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[5]),
        .Q(\Reg5_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[6]),
        .Q(\Reg5_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[7]),
        .Q(\Reg5_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[8]),
        .Q(\Reg5_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg5),
        .D(WriteData_IBUF[9]),
        .Q(\Reg5_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h04000000)) 
    \Reg6[15]_i_1 
       (.I0(AddrWriteReg_IBUF[0]),
        .I1(WE_IBUF),
        .I2(AddrWriteReg_IBUF[3]),
        .I3(AddrWriteReg_IBUF[2]),
        .I4(AddrWriteReg_IBUF[1]),
        .O(Reg6));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[0]),
        .Q(\Reg6_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[10]),
        .Q(\Reg6_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[11]),
        .Q(\Reg6_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[12]),
        .Q(\Reg6_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[13]),
        .Q(\Reg6_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[14]),
        .Q(\Reg6_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[15]),
        .Q(\Reg6_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[1]),
        .Q(\Reg6_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[2]),
        .Q(\Reg6_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[3]),
        .Q(\Reg6_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[4]),
        .Q(\Reg6_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[5]),
        .Q(\Reg6_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[6]),
        .Q(\Reg6_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[7]),
        .Q(\Reg6_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[8]),
        .Q(\Reg6_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg6),
        .D(WriteData_IBUF[9]),
        .Q(\Reg6_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08000000)) 
    \Reg7[15]_i_1 
       (.I0(AddrWriteReg_IBUF[0]),
        .I1(WE_IBUF),
        .I2(AddrWriteReg_IBUF[3]),
        .I3(AddrWriteReg_IBUF[2]),
        .I4(AddrWriteReg_IBUF[1]),
        .O(Reg7));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[0]),
        .Q(\Reg7_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[10]),
        .Q(\Reg7_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[11]),
        .Q(\Reg7_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[12]),
        .Q(\Reg7_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[13]),
        .Q(\Reg7_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[14]),
        .Q(\Reg7_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[15]),
        .Q(\Reg7_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[1]),
        .Q(\Reg7_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[2]),
        .Q(\Reg7_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[3]),
        .Q(\Reg7_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[4]),
        .Q(\Reg7_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[5]),
        .Q(\Reg7_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[6]),
        .Q(\Reg7_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[7]),
        .Q(\Reg7_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[8]),
        .Q(\Reg7_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg7),
        .D(WriteData_IBUF[9]),
        .Q(\Reg7_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h01000000)) 
    \Reg8[15]_i_1 
       (.I0(AddrWriteReg_IBUF[2]),
        .I1(AddrWriteReg_IBUF[0]),
        .I2(AddrWriteReg_IBUF[1]),
        .I3(WE_IBUF),
        .I4(AddrWriteReg_IBUF[3]),
        .O(Reg8));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[0]),
        .Q(\Reg8_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[10]),
        .Q(\Reg8_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[11]),
        .Q(\Reg8_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[12]),
        .Q(\Reg8_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[13]),
        .Q(\Reg8_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[14]),
        .Q(\Reg8_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[15]),
        .Q(\Reg8_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[1]),
        .Q(\Reg8_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[2]),
        .Q(\Reg8_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[3]),
        .Q(\Reg8_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[4]),
        .Q(\Reg8_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[5]),
        .Q(\Reg8_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[6]),
        .Q(\Reg8_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[7]),
        .Q(\Reg8_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[8]),
        .Q(\Reg8_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg8),
        .D(WriteData_IBUF[9]),
        .Q(\Reg8_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h10000000)) 
    \Reg9[15]_i_1 
       (.I0(AddrWriteReg_IBUF[2]),
        .I1(AddrWriteReg_IBUF[1]),
        .I2(AddrWriteReg_IBUF[0]),
        .I3(AddrWriteReg_IBUF[3]),
        .I4(WE_IBUF),
        .O(Reg9));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[0]),
        .Q(\Reg9_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[10]),
        .Q(\Reg9_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[11]),
        .Q(\Reg9_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[12]),
        .Q(\Reg9_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[13]),
        .Q(\Reg9_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[14]),
        .Q(\Reg9_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[15]),
        .Q(\Reg9_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[1]),
        .Q(\Reg9_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[2]),
        .Q(\Reg9_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[3]),
        .Q(\Reg9_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[4]),
        .Q(\Reg9_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[5]),
        .Q(\Reg9_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[6]),
        .Q(\Reg9_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[7]),
        .Q(\Reg9_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[8]),
        .Q(\Reg9_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(Reg9),
        .D(WriteData_IBUF[9]),
        .Q(\Reg9_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h04000000)) 
    \RegA[15]_i_1 
       (.I0(AddrWriteReg_IBUF[0]),
        .I1(AddrWriteReg_IBUF[1]),
        .I2(AddrWriteReg_IBUF[2]),
        .I3(WE_IBUF),
        .I4(AddrWriteReg_IBUF[3]),
        .O(RegA));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[0]),
        .Q(RegMA_data_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[10]),
        .Q(RegMA_data_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[11]),
        .Q(RegMA_data_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[12]),
        .Q(RegMA_data_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[13]),
        .Q(RegMA_data_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[14]),
        .Q(RegMA_data_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[15]),
        .Q(RegMA_data_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[1]),
        .Q(RegMA_data_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[2]),
        .Q(RegMA_data_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[3]),
        .Q(RegMA_data_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[4]),
        .Q(RegMA_data_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[5]),
        .Q(RegMA_data_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[6]),
        .Q(RegMA_data_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[7]),
        .Q(RegMA_data_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[8]),
        .Q(RegMA_data_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(RegA),
        .D(WriteData_IBUF[9]),
        .Q(RegMA_data_OBUF[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40000000)) 
    \RegB[15]_i_1 
       (.I0(AddrWriteReg_IBUF[2]),
        .I1(AddrWriteReg_IBUF[1]),
        .I2(AddrWriteReg_IBUF[0]),
        .I3(AddrWriteReg_IBUF[3]),
        .I4(WE_IBUF),
        .O(RegB));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[0]),
        .Q(BankID_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[10]),
        .Q(\RegB_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[11]),
        .Q(\RegB_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[12]),
        .Q(\RegB_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[13]),
        .Q(\RegB_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[14]),
        .Q(\RegB_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[15]),
        .Q(\RegB_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[1]),
        .Q(BankID_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[2]),
        .Q(BankID_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[3]),
        .Q(BankID_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[4]),
        .Q(\RegB_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[5]),
        .Q(\RegB_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[6]),
        .Q(\RegB_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[7]),
        .Q(\RegB_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[8]),
        .Q(\RegB_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(RegB),
        .D(WriteData_IBUF[9]),
        .Q(\RegB_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \RegC[15]_i_1 
       (.I0(AddrWriteReg_IBUF[2]),
        .I1(AddrWriteReg_IBUF[0]),
        .I2(AddrWriteReg_IBUF[1]),
        .I3(WE_IBUF),
        .I4(AddrWriteReg_IBUF[3]),
        .O(RegC));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[0]),
        .Q(\RegC_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[10]),
        .Q(\RegC_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[11]),
        .Q(\RegC_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[12]),
        .Q(\RegC_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[13]),
        .Q(\RegC_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[14]),
        .Q(\RegC_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[15]),
        .Q(\RegC_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[1]),
        .Q(\RegC_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[2]),
        .Q(\RegC_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[3]),
        .Q(\RegC_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[4]),
        .Q(\RegC_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[5]),
        .Q(\RegC_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[6]),
        .Q(\RegC_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[7]),
        .Q(\RegC_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[8]),
        .Q(\RegC_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(RegC),
        .D(WriteData_IBUF[9]),
        .Q(\RegC_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40000000)) 
    \RegD[15]_i_1 
       (.I0(AddrWriteReg_IBUF[1]),
        .I1(AddrWriteReg_IBUF[2]),
        .I2(AddrWriteReg_IBUF[0]),
        .I3(AddrWriteReg_IBUF[3]),
        .I4(WE_IBUF),
        .O(RegD));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[0]),
        .Q(\RegD_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[10]),
        .Q(\RegD_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[11]),
        .Q(\RegD_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[12]),
        .Q(\RegD_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[13]),
        .Q(\RegD_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[14]),
        .Q(\RegD_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[15]),
        .Q(\RegD_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[1]),
        .Q(\RegD_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[2]),
        .Q(\RegD_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[3]),
        .Q(\RegD_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[4]),
        .Q(\RegD_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[5]),
        .Q(\RegD_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[6]),
        .Q(\RegD_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[7]),
        .Q(\RegD_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[8]),
        .Q(\RegD_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(RegD),
        .D(WriteData_IBUF[9]),
        .Q(\RegD_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40000000)) 
    \RegE[15]_i_1 
       (.I0(AddrWriteReg_IBUF[0]),
        .I1(AddrWriteReg_IBUF[1]),
        .I2(AddrWriteReg_IBUF[2]),
        .I3(WE_IBUF),
        .I4(AddrWriteReg_IBUF[3]),
        .O(RegE));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[0]),
        .Q(\RegE_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[10]),
        .Q(\RegE_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[11]),
        .Q(\RegE_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[12]),
        .Q(\RegE_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[13]),
        .Q(\RegE_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[14]),
        .Q(\RegE_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[15]),
        .Q(\RegE_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[1]),
        .Q(\RegE_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[2]),
        .Q(\RegE_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[3]),
        .Q(\RegE_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[4]),
        .Q(\RegE_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[5]),
        .Q(\RegE_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[6]),
        .Q(\RegE_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[7]),
        .Q(\RegE_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[8]),
        .Q(\RegE_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(RegE),
        .D(WriteData_IBUF[9]),
        .Q(\RegE_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[0]_i_1 
       (.I0(Flags_IBUF[0]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[0]),
        .O(\RegF[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[10]_i_1 
       (.I0(Flags_IBUF[10]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[10]),
        .O(\RegF[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[11]_i_1 
       (.I0(Flags_IBUF[11]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[11]),
        .O(\RegF[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[12]_i_1 
       (.I0(Flags_IBUF[12]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[12]),
        .O(\RegF[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[13]_i_1 
       (.I0(Flags_IBUF[13]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[13]),
        .O(\RegF[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[14]_i_1 
       (.I0(Flags_IBUF[14]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[14]),
        .O(\RegF[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \RegF[15]_i_1 
       (.I0(OverwriteFl_IBUF),
        .I1(AddrWriteReg_IBUF[1]),
        .I2(AddrWriteReg_IBUF[2]),
        .I3(WE_IBUF),
        .I4(AddrWriteReg_IBUF[3]),
        .I5(AddrWriteReg_IBUF[0]),
        .O(\RegF[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[15]_i_2 
       (.I0(Flags_IBUF[15]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[15]),
        .O(\RegF[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \RegF[15]_i_3 
       (.I0(AddrWriteReg_IBUF[0]),
        .I1(AddrWriteReg_IBUF[3]),
        .I2(WE_IBUF),
        .I3(AddrWriteReg_IBUF[2]),
        .I4(AddrWriteReg_IBUF[1]),
        .O(\RegF[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[1]_i_1 
       (.I0(Flags_IBUF[1]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[1]),
        .O(\RegF[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[2]_i_1 
       (.I0(Flags_IBUF[2]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[2]),
        .O(\RegF[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[3]_i_1 
       (.I0(Flags_IBUF[3]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[3]),
        .O(\RegF[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[4]_i_1 
       (.I0(Flags_IBUF[4]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[4]),
        .O(\RegF[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[5]_i_1 
       (.I0(Flags_IBUF[5]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[5]),
        .O(\RegF[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[6]_i_1 
       (.I0(Flags_IBUF[6]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[6]),
        .O(\RegF[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[7]_i_1 
       (.I0(Flags_IBUF[7]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[7]),
        .O(\RegF[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[8]_i_1 
       (.I0(Flags_IBUF[8]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[8]),
        .O(\RegF[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegF[9]_i_1 
       (.I0(Flags_IBUF[9]),
        .I1(\RegF[15]_i_3_n_0 ),
        .I2(WriteData_IBUF[9]),
        .O(\RegF[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[0]_i_1_n_0 ),
        .Q(RegF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[10]_i_1_n_0 ),
        .Q(RegF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[11]_i_1_n_0 ),
        .Q(RegF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[12]_i_1_n_0 ),
        .Q(RegF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[13]_i_1_n_0 ),
        .Q(RegF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[14]_i_1_n_0 ),
        .Q(RegF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[15]_i_2_n_0 ),
        .Q(RegF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[1]_i_1_n_0 ),
        .Q(RegF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[2]_i_1_n_0 ),
        .Q(RegF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[3]_i_1_n_0 ),
        .Q(RegF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[4]_i_1_n_0 ),
        .Q(RegF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[5]_i_1_n_0 ),
        .Q(RHOPin_IBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[6]_i_1_n_0 ),
        .Q(RegF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[7]_i_1_n_0 ),
        .Q(RegF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[8]_i_1_n_0 ),
        .Q(RegF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\RegF[15]_i_1_n_0 ),
        .D(\RegF[9]_i_1_n_0 ),
        .Q(RegF[9]),
        .R(1'b0));
  OBUF \RegMA_data_OBUF[0]_inst 
       (.I(RegMA_data_OBUF[0]),
        .O(RegMA_data[0]));
  OBUF \RegMA_data_OBUF[10]_inst 
       (.I(RegMA_data_OBUF[10]),
        .O(RegMA_data[10]));
  OBUF \RegMA_data_OBUF[11]_inst 
       (.I(RegMA_data_OBUF[11]),
        .O(RegMA_data[11]));
  OBUF \RegMA_data_OBUF[12]_inst 
       (.I(RegMA_data_OBUF[12]),
        .O(RegMA_data[12]));
  OBUF \RegMA_data_OBUF[13]_inst 
       (.I(RegMA_data_OBUF[13]),
        .O(RegMA_data[13]));
  OBUF \RegMA_data_OBUF[14]_inst 
       (.I(RegMA_data_OBUF[14]),
        .O(RegMA_data[14]));
  OBUF \RegMA_data_OBUF[15]_inst 
       (.I(RegMA_data_OBUF[15]),
        .O(RegMA_data[15]));
  OBUF \RegMA_data_OBUF[1]_inst 
       (.I(RegMA_data_OBUF[1]),
        .O(RegMA_data[1]));
  OBUF \RegMA_data_OBUF[2]_inst 
       (.I(RegMA_data_OBUF[2]),
        .O(RegMA_data[2]));
  OBUF \RegMA_data_OBUF[3]_inst 
       (.I(RegMA_data_OBUF[3]),
        .O(RegMA_data[3]));
  OBUF \RegMA_data_OBUF[4]_inst 
       (.I(RegMA_data_OBUF[4]),
        .O(RegMA_data[4]));
  OBUF \RegMA_data_OBUF[5]_inst 
       (.I(RegMA_data_OBUF[5]),
        .O(RegMA_data[5]));
  OBUF \RegMA_data_OBUF[6]_inst 
       (.I(RegMA_data_OBUF[6]),
        .O(RegMA_data[6]));
  OBUF \RegMA_data_OBUF[7]_inst 
       (.I(RegMA_data_OBUF[7]),
        .O(RegMA_data[7]));
  OBUF \RegMA_data_OBUF[8]_inst 
       (.I(RegMA_data_OBUF[8]),
        .O(RegMA_data[8]));
  OBUF \RegMA_data_OBUF[9]_inst 
       (.I(RegMA_data_OBUF[9]),
        .O(RegMA_data[9]));
  IBUF WE_IBUF_inst
       (.I(WE),
        .O(WE_IBUF));
  IBUF \WriteData_IBUF[0]_inst 
       (.I(WriteData[0]),
        .O(WriteData_IBUF[0]));
  IBUF \WriteData_IBUF[10]_inst 
       (.I(WriteData[10]),
        .O(WriteData_IBUF[10]));
  IBUF \WriteData_IBUF[11]_inst 
       (.I(WriteData[11]),
        .O(WriteData_IBUF[11]));
  IBUF \WriteData_IBUF[12]_inst 
       (.I(WriteData[12]),
        .O(WriteData_IBUF[12]));
  IBUF \WriteData_IBUF[13]_inst 
       (.I(WriteData[13]),
        .O(WriteData_IBUF[13]));
  IBUF \WriteData_IBUF[14]_inst 
       (.I(WriteData[14]),
        .O(WriteData_IBUF[14]));
  IBUF \WriteData_IBUF[15]_inst 
       (.I(WriteData[15]),
        .O(WriteData_IBUF[15]));
  IBUF \WriteData_IBUF[1]_inst 
       (.I(WriteData[1]),
        .O(WriteData_IBUF[1]));
  IBUF \WriteData_IBUF[2]_inst 
       (.I(WriteData[2]),
        .O(WriteData_IBUF[2]));
  IBUF \WriteData_IBUF[3]_inst 
       (.I(WriteData[3]),
        .O(WriteData_IBUF[3]));
  IBUF \WriteData_IBUF[4]_inst 
       (.I(WriteData[4]),
        .O(WriteData_IBUF[4]));
  IBUF \WriteData_IBUF[5]_inst 
       (.I(WriteData[5]),
        .O(WriteData_IBUF[5]));
  IBUF \WriteData_IBUF[6]_inst 
       (.I(WriteData[6]),
        .O(WriteData_IBUF[6]));
  IBUF \WriteData_IBUF[7]_inst 
       (.I(WriteData[7]),
        .O(WriteData_IBUF[7]));
  IBUF \WriteData_IBUF[8]_inst 
       (.I(WriteData[8]),
        .O(WriteData_IBUF[8]));
  IBUF \WriteData_IBUF[9]_inst 
       (.I(WriteData[9]),
        .O(WriteData_IBUF[9]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
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
