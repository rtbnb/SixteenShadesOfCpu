// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:45:33 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_RegFile_0_0/main_RegFile_0_0_stub.v
// Design      : main_RegFile_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "RegFile,Vivado 2024.1" *)
module main_RegFile_0_0(AddrReg1, AddrReg2, AddrWriteReg, WriteData, 
  Flags, WE, OverwriteFl, clk, Reg1_data, Reg2_data, RegMA_data, BankID)
/* synthesis syn_black_box black_box_pad_pin="AddrReg1[3:0],AddrReg2[3:0],AddrWriteReg[3:0],WriteData[15:0],Flags[15:0],WE,OverwriteFl,Reg1_data[15:0],Reg2_data[15:0],RegMA_data[15:0],BankID[3:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input [3:0]AddrReg1;
  input [3:0]AddrReg2;
  input [3:0]AddrWriteReg;
  input [15:0]WriteData;
  input [15:0]Flags;
  input WE;
  input OverwriteFl;
  input clk /* synthesis syn_isclock = 1 */;
  output [15:0]Reg1_data;
  output [15:0]Reg2_data;
  output [15:0]RegMA_data;
  output [3:0]BankID;
endmodule
