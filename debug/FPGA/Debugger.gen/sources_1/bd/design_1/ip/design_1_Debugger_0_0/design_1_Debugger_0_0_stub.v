// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Nov 17 18:56:28 2024
// Host        : DESKTOP-E8CIL9E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Development/SixteenShadesOfCpu/debug/FPGA/Debugger.gen/sources_1/bd/design_1/ip/design_1_Debugger_0_0/design_1_Debugger_0_0_stub.v
// Design      : design_1_Debugger_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Debugger,Vivado 2024.1" *)
module design_1_Debugger_0_0(clk, rx_data, rx_data_valid, tx_data, 
  tx_data_valid, tx_data_sended)
/* synthesis syn_black_box black_box_pad_pin="rx_data[7:0],rx_data_valid,tx_data[7:0],tx_data_valid,tx_data_sended" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [7:0]rx_data;
  input rx_data_valid;
  output [7:0]tx_data;
  output tx_data_valid;
  input tx_data_sended;
endmodule
