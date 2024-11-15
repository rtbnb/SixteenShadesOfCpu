// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:52:16 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Pipelining_Forwarder_0_0/main_Pipelining_Forwarder_0_0_stub.v
// Design      : main_Pipelining_Forwarder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Pipelining_Forwarder,Vivado 2024.1" *)
module main_Pipelining_Forwarder_0_0(CurrentOperand1, CurrentOperand2, CurrentMA, 
  ExecutionWriteData, ExecutionFlags, ForwardingConfiguration, ForwardedOperand1, 
  ForwardedOperand2, ForwardedMA)
/* synthesis syn_black_box black_box_pad_pin="CurrentOperand1[15:0],CurrentOperand2[15:0],CurrentMA[15:0],ExecutionWriteData[15:0],ExecutionFlags[15:0],ForwardingConfiguration[4:0],ForwardedOperand1[15:0],ForwardedOperand2[15:0],ForwardedMA[15:0]" */;
  input [15:0]CurrentOperand1;
  input [15:0]CurrentOperand2;
  input [15:0]CurrentMA;
  input [15:0]ExecutionWriteData;
  input [15:0]ExecutionFlags;
  input [4:0]ForwardingConfiguration;
  output [15:0]ForwardedOperand1;
  output [15:0]ForwardedOperand2;
  output [15:0]ForwardedMA;
endmodule
