// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov 15 11:23:48 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_JumpController_0_0/main_CU_JumpController_0_0_stub.v
// Design      : main_CU_JumpController_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "CU_JumpController,Vivado 2024.1" *)
module main_CU_JumpController_0_0(InstrExec_CLK, JMP, JMP_Conditional, 
  JMP_Relative, JMP_Condition, Flags, JMP_Address, PC_Current, PC_Load, PC_Next)
/* synthesis syn_black_box black_box_pad_pin="InstrExec_CLK,JMP,JMP_Conditional,JMP_Relative,JMP_Condition[2:0],Flags[15:0],JMP_Address[15:0],PC_Current[15:0],PC_Load,PC_Next[15:0]" */;
  input InstrExec_CLK;
  input JMP;
  input JMP_Conditional;
  input JMP_Relative;
  input [2:0]JMP_Condition;
  input [15:0]Flags;
  input [15:0]JMP_Address;
  input [15:0]PC_Current;
  output PC_Load;
  output [15:0]PC_Next;
endmodule
