// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov 15 10:58:32 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_ProgramCounter_0_1/main_ProgramCounter_0_1_stub.v
// Design      : main_ProgramCounter_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ProgramCounter,Vivado 2024.1" *)
module main_ProgramCounter_0_1(InstrExec_CLK, Stalled, JMP, Reset, Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Stalled,JMP,Reset,Din[15:0],Dout[15:0]" */
/* synthesis syn_force_seq_prim="InstrExec_CLK" */;
  input InstrExec_CLK /* synthesis syn_isclock = 1 */;
  input Stalled;
  input JMP;
  input Reset;
  input [15:0]Din;
  output [15:0]Dout;
endmodule
