// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Nov 16 22:58:56 2024
// Host        : DESKTOP-E8CIL9E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Development/SixteenShadesOfCpu/debug/FPGA/Debugger.gen/sources_1/bd/design_1/ip/design_1_TX_UART_0_0/design_1_TX_UART_0_0_stub.v
// Design      : design_1_TX_UART_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "TX_UART,Vivado 2024.1" *)
module design_1_TX_UART_0_0(send_data, data_in, clk, tx_output, send_valid)
/* synthesis syn_black_box black_box_pad_pin="send_data,data_in[7:0],tx_output,send_valid" */
/* synthesis syn_force_seq_prim="clk" */;
  input send_data;
  input [7:0]data_in;
  input clk /* synthesis syn_isclock = 1 */;
  output tx_output;
  output send_valid;
endmodule
