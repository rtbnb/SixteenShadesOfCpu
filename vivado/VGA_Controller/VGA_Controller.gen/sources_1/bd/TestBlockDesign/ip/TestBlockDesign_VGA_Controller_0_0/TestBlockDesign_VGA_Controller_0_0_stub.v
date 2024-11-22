// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov 22 12:43:43 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_CPU/vivado/VGA_Controller/VGA_Controller.gen/sources_1/bd/TestBlockDesign/ip/TestBlockDesign_VGA_Controller_0_0/TestBlockDesign_VGA_Controller_0_0_stub.v
// Design      : TestBlockDesign_VGA_Controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "VGA_Controller,Vivado 2024.1" *)
module TestBlockDesign_VGA_Controller_0_0(InstrExec_CLK, r, g, b, ioe, h_sync, v_sync, VRAM_Addr, 
  VRAM_Data, VRAM_Clk)
/* synthesis syn_black_box black_box_pad_pin="r[3:0],g[3:0],b[3:0],ioe,h_sync,v_sync,VRAM_Addr[15:0],VRAM_Data[15:0]" */
/* synthesis syn_force_seq_prim="InstrExec_CLK" */
/* synthesis syn_force_seq_prim="VRAM_Clk" */;
  input InstrExec_CLK /* synthesis syn_isclock = 1 */;
  output [3:0]r;
  output [3:0]g;
  output [3:0]b;
  output ioe;
  output h_sync;
  output v_sync;
  output [15:0]VRAM_Addr;
  input [15:0]VRAM_Data;
  output VRAM_Clk /* synthesis syn_isclock = 1 */;
endmodule
