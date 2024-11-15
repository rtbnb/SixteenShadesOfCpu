// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov 15 10:21:30 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Pipelining_Execution_0_0/main_Pipelining_Execution_0_0_stub.v
// Design      : main_Pipelining_Execution_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Pipelining_ExecutionStage,Vivado 2024.1" *)
module main_Pipelining_Execution_0_0(InstrLoad_CLK, Reset, Operand1, Operand2, 
  Immediate, MA, WriteAddress, WHB, WLB, WriteDataSel, RAM_Src, RAM_Read, RAM_Write, Use_MA, JMP, 
  JMP_Conditional, JMP_Relative, JMP_DestinationSelect, JMP_Condition, Is_ALU_OP, Is_RAM_OP, 
  Operand1_out, Operand2_out, Immediate_out, MA_out, WriteAddress_out, WHB_out, WLB_out, 
  WriteDataSel_out, RAM_Src_out, RAM_Read_out, RAM_Write_out, Use_MA_out, JMP_out, 
  JMP_Conditional_out, JMP_Relative_out, JMP_DestinationSelect_out, JMP_Condition_out, 
  IS_ALU_OP_out, Is_RAM_OP_out)
/* synthesis syn_black_box black_box_pad_pin="Reset,Operand1[15:0],Operand2[15:0],Immediate[15:0],MA[15:0],WriteAddress[3:0],WHB,WLB,WriteDataSel[1:0],RAM_Src,RAM_Read,RAM_Write,Use_MA,JMP,JMP_Conditional,JMP_Relative,JMP_DestinationSelect,JMP_Condition[2:0],Is_ALU_OP,Is_RAM_OP,Operand1_out[15:0],Operand2_out[15:0],Immediate_out[15:0],MA_out[15:0],WriteAddress_out[3:0],WHB_out,WLB_out,WriteDataSel_out[1:0],RAM_Src_out,RAM_Read_out,RAM_Write_out,Use_MA_out,JMP_out,JMP_Conditional_out,JMP_Relative_out,JMP_DestinationSelect_out,JMP_Condition_out[2:0],IS_ALU_OP_out,Is_RAM_OP_out" */
/* synthesis syn_force_seq_prim="InstrLoad_CLK" */;
  input InstrLoad_CLK /* synthesis syn_isclock = 1 */;
  input Reset;
  input [15:0]Operand1;
  input [15:0]Operand2;
  input [15:0]Immediate;
  input [15:0]MA;
  input [3:0]WriteAddress;
  input WHB;
  input WLB;
  input [1:0]WriteDataSel;
  input RAM_Src;
  input RAM_Read;
  input RAM_Write;
  input Use_MA;
  input JMP;
  input JMP_Conditional;
  input JMP_Relative;
  input JMP_DestinationSelect;
  input [2:0]JMP_Condition;
  input Is_ALU_OP;
  input Is_RAM_OP;
  output [15:0]Operand1_out;
  output [15:0]Operand2_out;
  output [15:0]Immediate_out;
  output [15:0]MA_out;
  output [3:0]WriteAddress_out;
  output WHB_out;
  output WLB_out;
  output [1:0]WriteDataSel_out;
  output RAM_Src_out;
  output RAM_Read_out;
  output RAM_Write_out;
  output Use_MA_out;
  output JMP_out;
  output JMP_Conditional_out;
  output JMP_Relative_out;
  output JMP_DestinationSelect_out;
  output [2:0]JMP_Condition_out;
  output IS_ALU_OP_out;
  output Is_RAM_OP_out;
endmodule
