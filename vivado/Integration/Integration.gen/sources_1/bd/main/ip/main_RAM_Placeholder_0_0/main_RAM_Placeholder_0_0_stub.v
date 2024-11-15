// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:52:16 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_RAM_Placeholder_0_0/main_RAM_Placeholder_0_0_stub.v
// Design      : main_RAM_Placeholder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "RAM_Placeholder,Vivado 2024.1" *)
module main_RAM_Placeholder_0_0(Address, DataIn, WE, OE, CLK, DataOut)
/* synthesis syn_black_box black_box_pad_pin="Address[15:0],DataIn[15:0],WE,OE,DataOut[15:0]" */
/* synthesis syn_force_seq_prim="CLK" */;
  input [15:0]Address;
  input [15:0]DataIn;
  input WE;
  input OE;
  input CLK /* synthesis syn_isclock = 1 */;
  output [15:0]DataOut;
endmodule
