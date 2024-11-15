// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:52:16 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_Decoder_0_0/main_CU_Decoder_0_0_stub.v
// Design      : main_CU_Decoder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "CU_Decoder,Vivado 2024.1" *)
module main_CU_Decoder_0_0(Instruction, Reg1Read, Reg2Read, RF_WHB, RF_WLB, 
  Write_Data_Sel, RAM_Address_Src, RAM_Read, RAM_Write, JMP, JMP_Conditional, JMP_Relative, 
  JMP_DestinationSource, Is_ALU_OP, Is_RAM_OP)
/* synthesis syn_black_box black_box_pad_pin="Instruction[15:0],Reg1Read,Reg2Read,RF_WHB,RF_WLB,Write_Data_Sel[1:0],RAM_Address_Src,RAM_Read,RAM_Write,JMP,JMP_Conditional,JMP_Relative,JMP_DestinationSource,Is_ALU_OP,Is_RAM_OP" */;
  input [15:0]Instruction;
  output Reg1Read;
  output Reg2Read;
  output RF_WHB;
  output RF_WLB;
  output [1:0]Write_Data_Sel;
  output RAM_Address_Src;
  output RAM_Read;
  output RAM_Write;
  output JMP;
  output JMP_Conditional;
  output JMP_Relative;
  output JMP_DestinationSource;
  output Is_ALU_OP;
  output Is_RAM_OP;
endmodule
