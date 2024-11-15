// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 18:05:02 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_WriteSelector_0_0/main_CU_WriteSelector_0_0_stub.v
// Design      : main_CU_WriteSelector_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "CU_WriteSelector,Vivado 2024.1" *)
module main_CU_WriteSelector_0_0(RAM_Out, Manipulated_Immidiate, Reg1, ALU_Out, 
  Write_Sel, Write_Data)
/* synthesis syn_black_box black_box_pad_pin="RAM_Out[15:0],Manipulated_Immidiate[15:0],Reg1[15:0],ALU_Out[15:0],Write_Sel[1:0],Write_Data[15:0]" */;
  input [15:0]RAM_Out;
  input [15:0]Manipulated_Immidiate;
  input [15:0]Reg1;
  input [15:0]ALU_Out;
  input [1:0]Write_Sel;
  output [15:0]Write_Data;
endmodule
