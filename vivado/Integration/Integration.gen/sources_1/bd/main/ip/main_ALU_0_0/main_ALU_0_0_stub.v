// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:52:34 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_ALU_0_0/main_ALU_0_0_stub.v
// Design      : main_ALU_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ALU,Vivado 2024.1" *)
module main_ALU_0_0(D1, D2, ALU_OPP, RHO_PIN, ALU_OUT, CARRY_FLAG, 
  ZERO_FLAG, SMALLER_ZERO_FLAG, BIGGER_ZERO_FLAG, OVERFLOW_FLAG, RHO_FLAG, NOT_ZERO_FLAG)
/* synthesis syn_black_box black_box_pad_pin="D1[15:0],D2[15:0],ALU_OPP[15:0],RHO_PIN,ALU_OUT[15:0],CARRY_FLAG,ZERO_FLAG,SMALLER_ZERO_FLAG,BIGGER_ZERO_FLAG,OVERFLOW_FLAG,RHO_FLAG,NOT_ZERO_FLAG" */;
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
endmodule
