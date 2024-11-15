// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov 15 10:21:30 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Pipelining_Controller_0_0/main_Pipelining_Controller_0_0_stub.v
// Design      : main_Pipelining_Controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Pipelining_Controller,Vivado 2024.1" *)
module main_Pipelining_Controller_0_0(InstrLoad_CLK, InstrExec_CLK, Reset, 
  Instruction, ResolveStall, Stalled, InstructionForwardConfiguration, 
  InstructionToExecute)
/* synthesis syn_black_box black_box_pad_pin="Reset,Instruction[15:0],ResolveStall,Stalled,InstructionForwardConfiguration[4:0],InstructionToExecute[15:0]" */
/* synthesis syn_force_seq_prim="InstrLoad_CLK" */
/* synthesis syn_force_seq_prim="InstrExec_CLK" */;
  input InstrLoad_CLK /* synthesis syn_isclock = 1 */;
  input InstrExec_CLK /* synthesis syn_isclock = 1 */;
  input Reset;
  input [15:0]Instruction;
  input ResolveStall;
  output Stalled;
  output [4:0]InstructionForwardConfiguration;
  output [15:0]InstructionToExecute;
endmodule
