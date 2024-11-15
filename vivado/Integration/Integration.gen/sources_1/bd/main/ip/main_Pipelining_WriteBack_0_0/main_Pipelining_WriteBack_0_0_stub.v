// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov 15 10:21:30 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Pipelining_WriteBack_0_0/main_Pipelining_WriteBack_0_0_stub.v
// Design      : main_Pipelining_WriteBack_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Pipelining_WriteBackStage,Vivado 2024.1" *)
module main_Pipelining_WriteBack_0_0(InstrLoad_CLK, Reset, WriteAddress, WriteData, 
  Flags, WHB, WLB, Is_ALU_OP, JMP, WriteAddress_out, WriteData_out, Flags_out, RF_WE_out, 
  Is_ALU_OP_out, JMP_out)
/* synthesis syn_black_box black_box_pad_pin="Reset,WriteAddress[3:0],WriteData[15:0],Flags[15:0],WHB,WLB,Is_ALU_OP,JMP,WriteAddress_out[3:0],WriteData_out[15:0],Flags_out[15:0],RF_WE_out,Is_ALU_OP_out,JMP_out" */
/* synthesis syn_force_seq_prim="InstrLoad_CLK" */;
  input InstrLoad_CLK /* synthesis syn_isclock = 1 */;
  input Reset;
  input [3:0]WriteAddress;
  input [15:0]WriteData;
  input [15:0]Flags;
  input WHB;
  input WLB;
  input Is_ALU_OP;
  input JMP;
  output [3:0]WriteAddress_out;
  output [15:0]WriteData_out;
  output [15:0]Flags_out;
  output RF_WE_out;
  output Is_ALU_OP_out;
  output JMP_out;
endmodule
