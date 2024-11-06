// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Nov  6 16:20:55 2024
// Host        : Robin_Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Entwicklung/SixteenShadesOfCpu/vivado/memory_tryout/memory_tryout.gen/sources_1/bd/main_block/ip/main_block_main_0_0/main_block_main_0_0_stub.v
// Design      : main_block_main_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "main,Vivado 2024.1" *)
module main_block_main_0_0(clk, led, addr1, addr2, din1, din2, we, oe, dout1, dout2)
/* synthesis syn_black_box black_box_pad_pin="led,addr1[15:0],addr2[15:0],din1[15:0],din2[15:0],we,oe,dout1[15:0],dout2[15:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  output led;
  output [15:0]addr1;
  output [15:0]addr2;
  output [15:0]din1;
  output [15:0]din2;
  output we;
  output oe;
  input [15:0]dout1;
  input [15:0]dout2;
endmodule
