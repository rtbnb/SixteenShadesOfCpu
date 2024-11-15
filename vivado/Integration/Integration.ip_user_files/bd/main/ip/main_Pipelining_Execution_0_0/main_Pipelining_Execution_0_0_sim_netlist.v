// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov 15 10:21:31 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Pipelining_Execution_0_0/main_Pipelining_Execution_0_0_sim_netlist.v
// Design      : main_Pipelining_Execution_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_Pipelining_Execution_0_0,Pipelining_ExecutionStage,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Pipelining_ExecutionStage,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module main_Pipelining_Execution_0_0
   (InstrLoad_CLK,
    Reset,
    Operand1,
    Operand2,
    Immediate,
    MA,
    WriteAddress,
    WHB,
    WLB,
    WriteDataSel,
    RAM_Src,
    RAM_Read,
    RAM_Write,
    Use_MA,
    JMP,
    JMP_Conditional,
    JMP_Relative,
    JMP_DestinationSelect,
    JMP_Condition,
    Is_ALU_OP,
    Is_RAM_OP,
    Operand1_out,
    Operand2_out,
    Immediate_out,
    MA_out,
    WriteAddress_out,
    WHB_out,
    WLB_out,
    WriteDataSel_out,
    RAM_Src_out,
    RAM_Read_out,
    RAM_Write_out,
    Use_MA_out,
    JMP_out,
    JMP_Conditional_out,
    JMP_Relative_out,
    JMP_DestinationSelect_out,
    JMP_Condition_out,
    IS_ALU_OP_out,
    Is_RAM_OP_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 InstrLoad_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME InstrLoad_CLK, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input InstrLoad_CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
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

  wire IS_ALU_OP_out;
  wire [15:0]Immediate;
  wire [15:0]Immediate_out;
  wire InstrLoad_CLK;
  wire Is_ALU_OP;
  wire Is_RAM_OP;
  wire Is_RAM_OP_out;
  wire JMP;
  wire [2:0]JMP_Condition;
  wire [2:0]JMP_Condition_out;
  wire JMP_Conditional;
  wire JMP_Conditional_out;
  wire JMP_DestinationSelect;
  wire JMP_DestinationSelect_out;
  wire JMP_Relative;
  wire JMP_Relative_out;
  wire JMP_out;
  wire [15:0]MA;
  wire [15:0]MA_out;
  wire [15:0]Operand1;
  wire [15:0]Operand1_out;
  wire [15:0]Operand2;
  wire [15:0]Operand2_out;
  wire RAM_Read;
  wire RAM_Read_out;
  wire RAM_Src;
  wire RAM_Src_out;
  wire RAM_Write;
  wire RAM_Write_out;
  wire Reset;
  wire Use_MA;
  wire Use_MA_out;
  wire WHB;
  wire WHB_out;
  wire WLB;
  wire WLB_out;
  wire [3:0]WriteAddress;
  wire [3:0]WriteAddress_out;
  wire [1:0]WriteDataSel;
  wire [1:0]WriteDataSel_out;

  main_Pipelining_Execution_0_0_Pipelining_ExecutionStage U0
       (.IS_ALU_OP_out(IS_ALU_OP_out),
        .Immediate(Immediate),
        .Immediate_out(Immediate_out),
        .InstrLoad_CLK(InstrLoad_CLK),
        .Is_ALU_OP(Is_ALU_OP),
        .Is_RAM_OP(Is_RAM_OP),
        .Is_RAM_OP_out(Is_RAM_OP_out),
        .JMP(JMP),
        .JMP_Condition(JMP_Condition),
        .JMP_Condition_out(JMP_Condition_out),
        .JMP_Conditional(JMP_Conditional),
        .JMP_Conditional_out(JMP_Conditional_out),
        .JMP_DestinationSelect(JMP_DestinationSelect),
        .JMP_DestinationSelect_out(JMP_DestinationSelect_out),
        .JMP_Relative(JMP_Relative),
        .JMP_Relative_out(JMP_Relative_out),
        .JMP_out(JMP_out),
        .MA(MA),
        .MA_out(MA_out),
        .Operand1(Operand1),
        .Operand1_out(Operand1_out),
        .Operand2(Operand2),
        .Operand2_out(Operand2_out),
        .RAM_Read(RAM_Read),
        .RAM_Read_out(RAM_Read_out),
        .RAM_Src(RAM_Src),
        .RAM_Src_out(RAM_Src_out),
        .RAM_Write(RAM_Write),
        .RAM_Write_out(RAM_Write_out),
        .Reset(Reset),
        .Use_MA(Use_MA),
        .Use_MA_out(Use_MA_out),
        .WHB(WHB),
        .WHB_out(WHB_out),
        .WLB(WLB),
        .WLB_out(WLB_out),
        .WriteAddress(WriteAddress),
        .WriteAddress_out(WriteAddress_out),
        .WriteDataSel(WriteDataSel),
        .WriteDataSel_out(WriteDataSel_out));
endmodule

(* ORIG_REF_NAME = "Pipelining_ExecutionStage" *) 
module main_Pipelining_Execution_0_0_Pipelining_ExecutionStage
   (Operand1_out,
    Operand2_out,
    Immediate_out,
    MA_out,
    WriteAddress_out,
    WHB_out,
    WLB_out,
    WriteDataSel_out,
    RAM_Src_out,
    RAM_Read_out,
    RAM_Write_out,
    Use_MA_out,
    JMP_out,
    JMP_Conditional_out,
    JMP_Relative_out,
    JMP_DestinationSelect_out,
    JMP_Condition_out,
    IS_ALU_OP_out,
    Is_RAM_OP_out,
    Operand1,
    InstrLoad_CLK,
    Reset,
    Operand2,
    Immediate,
    MA,
    WriteAddress,
    WHB,
    WLB,
    WriteDataSel,
    RAM_Src,
    RAM_Read,
    RAM_Write,
    Use_MA,
    JMP,
    JMP_Conditional,
    JMP_Relative,
    JMP_DestinationSelect,
    JMP_Condition,
    Is_ALU_OP,
    Is_RAM_OP);
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
  input [15:0]Operand1;
  input InstrLoad_CLK;
  input Reset;
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

  wire IS_ALU_OP_out;
  wire [15:0]Immediate;
  wire [15:0]Immediate_out;
  wire InstrLoad_CLK;
  wire Is_ALU_OP;
  wire Is_RAM_OP;
  wire Is_RAM_OP_out;
  wire JMP;
  wire [2:0]JMP_Condition;
  wire [2:0]JMP_Condition_out;
  wire JMP_Conditional;
  wire JMP_Conditional_out;
  wire JMP_DestinationSelect;
  wire JMP_DestinationSelect_out;
  wire JMP_Relative;
  wire JMP_Relative_out;
  wire JMP_out;
  wire [15:0]MA;
  wire [15:0]MA_out;
  wire [15:0]Operand1;
  wire [15:0]Operand1_out;
  wire [15:0]Operand2;
  wire [15:0]Operand2_out;
  wire RAM_Read;
  wire RAM_Read_out;
  wire RAM_Src;
  wire RAM_Src_out;
  wire RAM_Write;
  wire RAM_Write_out;
  wire Reset;
  wire Use_MA;
  wire Use_MA_out;
  wire WHB;
  wire WHB_out;
  wire WLB;
  wire WLB_out;
  wire [3:0]WriteAddress;
  wire [3:0]WriteAddress_out;
  wire [1:0]WriteDataSel;
  wire [1:0]WriteDataSel_out;

  FDCE \immediate_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[0]),
        .Q(Immediate_out[0]));
  FDCE \immediate_s_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[10]),
        .Q(Immediate_out[10]));
  FDCE \immediate_s_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[11]),
        .Q(Immediate_out[11]));
  FDCE \immediate_s_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[12]),
        .Q(Immediate_out[12]));
  FDCE \immediate_s_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[13]),
        .Q(Immediate_out[13]));
  FDCE \immediate_s_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[14]),
        .Q(Immediate_out[14]));
  FDCE \immediate_s_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[15]),
        .Q(Immediate_out[15]));
  FDCE \immediate_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[1]),
        .Q(Immediate_out[1]));
  FDCE \immediate_s_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[2]),
        .Q(Immediate_out[2]));
  FDCE \immediate_s_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[3]),
        .Q(Immediate_out[3]));
  FDCE \immediate_s_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[4]),
        .Q(Immediate_out[4]));
  FDCE \immediate_s_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[5]),
        .Q(Immediate_out[5]));
  FDCE \immediate_s_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[6]),
        .Q(Immediate_out[6]));
  FDCE \immediate_s_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[7]),
        .Q(Immediate_out[7]));
  FDCE \immediate_s_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[8]),
        .Q(Immediate_out[8]));
  FDCE \immediate_s_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[9]),
        .Q(Immediate_out[9]));
  FDCE is_alu_op_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Is_ALU_OP),
        .Q(IS_ALU_OP_out));
  FDCE is_ram_op_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Is_RAM_OP),
        .Q(Is_RAM_OP_out));
  FDCE \jmp_condition_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(JMP_Condition[0]),
        .Q(JMP_Condition_out[0]));
  FDCE \jmp_condition_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(JMP_Condition[1]),
        .Q(JMP_Condition_out[1]));
  FDCE \jmp_condition_s_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(JMP_Condition[2]),
        .Q(JMP_Condition_out[2]));
  FDCE jmp_conditional_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(JMP_Conditional),
        .Q(JMP_Conditional_out));
  FDCE jmp_destination_sel_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(JMP_DestinationSelect),
        .Q(JMP_DestinationSelect_out));
  FDCE jmp_relative_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(JMP_Relative),
        .Q(JMP_Relative_out));
  FDCE jmp_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(JMP),
        .Q(JMP_out));
  FDCE \ma_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[0]),
        .Q(MA_out[0]));
  FDCE \ma_s_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[10]),
        .Q(MA_out[10]));
  FDCE \ma_s_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[11]),
        .Q(MA_out[11]));
  FDCE \ma_s_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[12]),
        .Q(MA_out[12]));
  FDCE \ma_s_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[13]),
        .Q(MA_out[13]));
  FDCE \ma_s_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[14]),
        .Q(MA_out[14]));
  FDCE \ma_s_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[15]),
        .Q(MA_out[15]));
  FDCE \ma_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[1]),
        .Q(MA_out[1]));
  FDCE \ma_s_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[2]),
        .Q(MA_out[2]));
  FDCE \ma_s_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[3]),
        .Q(MA_out[3]));
  FDCE \ma_s_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[4]),
        .Q(MA_out[4]));
  FDCE \ma_s_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[5]),
        .Q(MA_out[5]));
  FDCE \ma_s_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[6]),
        .Q(MA_out[6]));
  FDCE \ma_s_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[7]),
        .Q(MA_out[7]));
  FDCE \ma_s_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[8]),
        .Q(MA_out[8]));
  FDCE \ma_s_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[9]),
        .Q(MA_out[9]));
  FDCE \operand1_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[0]),
        .Q(Operand1_out[0]));
  FDCE \operand1_s_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[10]),
        .Q(Operand1_out[10]));
  FDCE \operand1_s_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[11]),
        .Q(Operand1_out[11]));
  FDCE \operand1_s_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[12]),
        .Q(Operand1_out[12]));
  FDCE \operand1_s_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[13]),
        .Q(Operand1_out[13]));
  FDCE \operand1_s_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[14]),
        .Q(Operand1_out[14]));
  FDCE \operand1_s_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[15]),
        .Q(Operand1_out[15]));
  FDCE \operand1_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[1]),
        .Q(Operand1_out[1]));
  FDCE \operand1_s_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[2]),
        .Q(Operand1_out[2]));
  FDCE \operand1_s_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[3]),
        .Q(Operand1_out[3]));
  FDCE \operand1_s_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[4]),
        .Q(Operand1_out[4]));
  FDCE \operand1_s_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[5]),
        .Q(Operand1_out[5]));
  FDCE \operand1_s_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[6]),
        .Q(Operand1_out[6]));
  FDCE \operand1_s_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[7]),
        .Q(Operand1_out[7]));
  FDCE \operand1_s_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[8]),
        .Q(Operand1_out[8]));
  FDCE \operand1_s_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[9]),
        .Q(Operand1_out[9]));
  FDCE \operand2_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[0]),
        .Q(Operand2_out[0]));
  FDCE \operand2_s_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[10]),
        .Q(Operand2_out[10]));
  FDCE \operand2_s_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[11]),
        .Q(Operand2_out[11]));
  FDCE \operand2_s_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[12]),
        .Q(Operand2_out[12]));
  FDCE \operand2_s_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[13]),
        .Q(Operand2_out[13]));
  FDCE \operand2_s_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[14]),
        .Q(Operand2_out[14]));
  FDCE \operand2_s_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[15]),
        .Q(Operand2_out[15]));
  FDCE \operand2_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[1]),
        .Q(Operand2_out[1]));
  FDCE \operand2_s_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[2]),
        .Q(Operand2_out[2]));
  FDCE \operand2_s_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[3]),
        .Q(Operand2_out[3]));
  FDCE \operand2_s_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[4]),
        .Q(Operand2_out[4]));
  FDCE \operand2_s_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[5]),
        .Q(Operand2_out[5]));
  FDCE \operand2_s_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[6]),
        .Q(Operand2_out[6]));
  FDCE \operand2_s_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[7]),
        .Q(Operand2_out[7]));
  FDCE \operand2_s_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[8]),
        .Q(Operand2_out[8]));
  FDCE \operand2_s_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[9]),
        .Q(Operand2_out[9]));
  FDCE ram_read_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(RAM_Read),
        .Q(RAM_Read_out));
  FDCE ram_src_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(RAM_Src),
        .Q(RAM_Src_out));
  FDCE ram_write_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(RAM_Write),
        .Q(RAM_Write_out));
  FDCE use_ma_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Use_MA),
        .Q(Use_MA_out));
  FDCE whb_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WHB),
        .Q(WHB_out));
  FDCE wlb_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WLB),
        .Q(WLB_out));
  FDCE \write_address_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteAddress[0]),
        .Q(WriteAddress_out[0]));
  FDCE \write_address_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteAddress[1]),
        .Q(WriteAddress_out[1]));
  FDCE \write_address_s_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteAddress[2]),
        .Q(WriteAddress_out[2]));
  FDCE \write_address_s_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteAddress[3]),
        .Q(WriteAddress_out[3]));
  FDCE \write_data_select_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteDataSel[0]),
        .Q(WriteDataSel_out[0]));
  FDCE \write_data_select_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteDataSel[1]),
        .Q(WriteDataSel_out[1]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
