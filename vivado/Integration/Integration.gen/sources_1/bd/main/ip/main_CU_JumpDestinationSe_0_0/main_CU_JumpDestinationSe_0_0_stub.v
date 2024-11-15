// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:58:38 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_JumpDestinationSe_0_0/main_CU_JumpDestinationSe_0_0_stub.v
// Design      : main_CU_JumpDestinationSe_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "CU_JumpDestinationSelector,Vivado 2024.1" *)
module main_CU_JumpDestinationSe_0_0(Immediate, Register1, JMP_DestinationSelect, 
  JMP_Address)
/* synthesis syn_black_box black_box_pad_pin="Immediate[15:0],Register1[15:0],JMP_DestinationSelect,JMP_Address[15:0]" */;
  input [15:0]Immediate;
  input [15:0]Register1;
  input JMP_DestinationSelect;
  output [15:0]JMP_Address;
endmodule
