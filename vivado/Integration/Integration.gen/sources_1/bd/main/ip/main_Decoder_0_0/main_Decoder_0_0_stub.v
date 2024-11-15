// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:45:30 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Decoder_0_0/main_Decoder_0_0_stub.v
// Design      : main_Decoder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Decoder,Vivado 2024.1" *)
module main_Decoder_0_0(Instruction, Register1, Register2, 
  WriteBackRegister, Immediate, JMP_Condition, Use_MA)
/* synthesis syn_black_box black_box_pad_pin="Instruction[15:0],Register1[3:0],Register2[3:0],WriteBackRegister[3:0],Immediate[15:0],JMP_Condition[2:0],Use_MA" */;
  input [15:0]Instruction;
  output [3:0]Register1;
  output [3:0]Register2;
  output [3:0]WriteBackRegister;
  output [15:0]Immediate;
  output [2:0]JMP_Condition;
  output Use_MA;
endmodule
