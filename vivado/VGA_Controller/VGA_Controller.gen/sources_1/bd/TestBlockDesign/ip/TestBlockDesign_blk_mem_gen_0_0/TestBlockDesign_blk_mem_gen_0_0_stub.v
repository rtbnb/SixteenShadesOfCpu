// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 21 21:33:30 2024
// Host        : DESKTOP-7KK7962 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Programmieren/Projekte/FPGA_CPU/SixteenShadesOfCpu/vivado/VGA_Controller/VGA_Controller.gen/sources_1/bd/TestBlockDesign/ip/TestBlockDesign_blk_mem_gen_0_0/TestBlockDesign_blk_mem_gen_0_0_stub.v
// Design      : TestBlockDesign_blk_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *)
module TestBlockDesign_blk_mem_gen_0_0(clka, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="wea[0:0],addra[14:0],dina[11:0],douta[11:0]" */
/* synthesis syn_force_seq_prim="clka" */;
  input clka /* synthesis syn_isclock = 1 */;
  input [0:0]wea;
  input [14:0]addra;
  input [11:0]dina;
  output [11:0]douta;
endmodule
