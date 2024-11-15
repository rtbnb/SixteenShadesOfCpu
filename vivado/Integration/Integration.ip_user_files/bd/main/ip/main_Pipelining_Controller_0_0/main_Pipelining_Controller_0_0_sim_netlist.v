// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov 15 10:21:31 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Pipelining_Controller_0_0/main_Pipelining_Controller_0_0_sim_netlist.v
// Design      : main_Pipelining_Controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_Pipelining_Controller_0_0,Pipelining_Controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Pipelining_Controller,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module main_Pipelining_Controller_0_0
   (InstrLoad_CLK,
    InstrExec_CLK,
    Reset,
    Instruction,
    ResolveStall,
    Stalled,
    InstructionForwardConfiguration,
    InstructionToExecute);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 InstrLoad_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME InstrLoad_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input InstrLoad_CLK;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 InstrExec_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME InstrExec_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input InstrExec_CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  input [15:0]Instruction;
  input ResolveStall;
  output Stalled;
  output [4:0]InstructionForwardConfiguration;
  output [15:0]InstructionToExecute;

  wire InstrExec_CLK;
  wire InstrLoad_CLK;
  wire [15:0]Instruction;
  wire [4:0]InstructionForwardConfiguration;
  wire [15:0]InstructionToExecute;
  wire Reset;
  wire ResolveStall;
  wire Stalled;

  main_Pipelining_Controller_0_0_Pipelining_Controller U0
       (.InstrExec_CLK(InstrExec_CLK),
        .InstrLoad_CLK(InstrLoad_CLK),
        .Instruction(Instruction),
        .InstructionForwardConfiguration(InstructionForwardConfiguration),
        .InstructionToExecute(InstructionToExecute),
        .Reset(Reset),
        .ResolveStall(ResolveStall),
        .stalled_s_reg_0(Stalled));
endmodule

(* ORIG_REF_NAME = "Pipelining_Controller" *) 
module main_Pipelining_Controller_0_0_Pipelining_Controller
   (InstructionForwardConfiguration,
    stalled_s_reg_0,
    InstructionToExecute,
    InstrExec_CLK,
    Reset,
    Instruction,
    InstrLoad_CLK,
    ResolveStall);
  output [4:0]InstructionForwardConfiguration;
  output stalled_s_reg_0;
  output [15:0]InstructionToExecute;
  input InstrExec_CLK;
  input Reset;
  input [15:0]Instruction;
  input InstrLoad_CLK;
  input ResolveStall;

  wire InstrExec_CLK;
  wire InstrLoad_CLK;
  wire [15:0]Instruction;
  wire [4:0]InstructionForwardConfiguration;
  wire [15:0]InstructionToExecute;
  wire Reset;
  wire ResolveStall;
  wire exc_alu;
  wire exc_write__1;
  wire [3:0]exc_write_reg;
  wire [15:0]execution_buffer;
  wire \execution_forward_reg[0]_srl2_U0_execution_forward_reg_c_n_0 ;
  wire \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_3_n_0 ;
  wire \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_5_n_0 ;
  wire \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_n_0 ;
  wire \execution_forward_reg[2]_srl2_U0_execution_forward_reg_c_n_0 ;
  wire \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_3_n_0 ;
  wire \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_7_n_0 ;
  wire \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_n_0 ;
  wire \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_2_n_0 ;
  wire \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_3_n_0 ;
  wire \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_n_0 ;
  wire execution_forward_reg_c_n_0;
  wire [4:0]input_forward;
  wire [3:0]p_0_in;
  wire rf_forward_reg_c_n_0;
  wire [15:0]rf_read_buffer;
  wire \rf_read_buffer[0]_i_1_n_0 ;
  wire \rf_read_buffer[10]_i_1_n_0 ;
  wire \rf_read_buffer[11]_i_1_n_0 ;
  wire \rf_read_buffer[12]_i_1_n_0 ;
  wire \rf_read_buffer[13]_i_1_n_0 ;
  wire \rf_read_buffer[14]_i_1_n_0 ;
  wire \rf_read_buffer[15]_i_1_n_0 ;
  wire \rf_read_buffer[1]_i_1_n_0 ;
  wire \rf_read_buffer[2]_i_1_n_0 ;
  wire \rf_read_buffer[3]_i_1_n_0 ;
  wire \rf_read_buffer[4]_i_1_n_0 ;
  wire \rf_read_buffer[5]_i_1_n_0 ;
  wire \rf_read_buffer[6]_i_1_n_0 ;
  wire \rf_read_buffer[7]_i_1_n_0 ;
  wire \rf_read_buffer[8]_i_1_n_0 ;
  wire \rf_read_buffer[9]_i_1_n_0 ;
  wire \rf_read_buffer_reg_n_0_[1] ;
  wire \rf_read_buffer_reg_n_0_[2] ;
  wire \rf_read_buffer_reg_n_0_[3] ;
  wire [3:0]rf_reg_1;
  wire rf_reg_1_read;
  wire [3:0]rf_reg_2;
  wire rf_reg_2_read;
  wire stalled_s_i_1_n_0;
  wire stalled_s_reg_0;
  wire [15:0]write_back_buffer;
  wire \write_back_forward_reg[0]_U0_write_back_forward_reg_c_n_0 ;
  wire \write_back_forward_reg[1]_U0_write_back_forward_reg_c_n_0 ;
  wire \write_back_forward_reg[2]_U0_write_back_forward_reg_c_n_0 ;
  wire \write_back_forward_reg[3]_U0_write_back_forward_reg_c_n_0 ;
  wire \write_back_forward_reg[4]_U0_write_back_forward_reg_c_n_0 ;
  wire write_back_forward_reg_c_n_0;
  wire write_back_forward_reg_gate__0_n_0;
  wire write_back_forward_reg_gate__1_n_0;
  wire write_back_forward_reg_gate__2_n_0;
  wire write_back_forward_reg_gate__3_n_0;
  wire write_back_forward_reg_gate_n_0;

  FDCE \execution_buffer_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[0]),
        .Q(execution_buffer[0]));
  FDCE \execution_buffer_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[10]),
        .Q(execution_buffer[10]));
  FDCE \execution_buffer_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[11]),
        .Q(execution_buffer[11]));
  FDCE \execution_buffer_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[12]),
        .Q(execution_buffer[12]));
  FDCE \execution_buffer_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[13]),
        .Q(execution_buffer[13]));
  FDCE \execution_buffer_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[14]),
        .Q(execution_buffer[14]));
  FDCE \execution_buffer_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[15]),
        .Q(execution_buffer[15]));
  FDCE \execution_buffer_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer_reg_n_0_[1] ),
        .Q(execution_buffer[1]));
  FDCE \execution_buffer_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer_reg_n_0_[2] ),
        .Q(execution_buffer[2]));
  FDCE \execution_buffer_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer_reg_n_0_[3] ),
        .Q(execution_buffer[3]));
  FDCE \execution_buffer_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(p_0_in[0]),
        .Q(execution_buffer[4]));
  FDCE \execution_buffer_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(p_0_in[1]),
        .Q(execution_buffer[5]));
  FDCE \execution_buffer_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(p_0_in[2]),
        .Q(execution_buffer[6]));
  FDCE \execution_buffer_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(p_0_in[3]),
        .Q(execution_buffer[7]));
  FDCE \execution_buffer_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[8]),
        .Q(execution_buffer[8]));
  FDCE \execution_buffer_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[9]),
        .Q(execution_buffer[9]));
  (* srl_bus_name = "\\U0/execution_forward_reg " *) 
  (* srl_name = "\\U0/execution_forward_reg[0]_srl2_U0_execution_forward_reg_c " *) 
  SRL16E \execution_forward_reg[0]_srl2_U0_execution_forward_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(InstrExec_CLK),
        .D(input_forward[0]),
        .Q(\execution_forward_reg[0]_srl2_U0_execution_forward_reg_c_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFBFFFFFFFFF)) 
    \execution_forward_reg[0]_srl2_U0_execution_forward_reg_c_i_1 
       (.I0(\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_5_n_0 ),
        .I1(rf_reg_1_read),
        .I2(\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_3_n_0 ),
        .I3(exc_write_reg[3]),
        .I4(rf_reg_1[3]),
        .I5(exc_write__1),
        .O(input_forward[0]));
  (* srl_bus_name = "\\U0/execution_forward_reg " *) 
  (* srl_name = "\\U0/execution_forward_reg[1]_srl2_U0_execution_forward_reg_c " *) 
  SRL16E \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(InstrExec_CLK),
        .D(input_forward[1]),
        .Q(\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80080000)) 
    \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_1 
       (.I0(rf_reg_1_read),
        .I1(\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_3_n_0 ),
        .I2(exc_write_reg[3]),
        .I3(rf_reg_1[3]),
        .I4(exc_write__1),
        .I5(\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_5_n_0 ),
        .O(input_forward[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1F84)) 
    \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_2 
       (.I0(rf_read_buffer[13]),
        .I1(rf_read_buffer[14]),
        .I2(rf_read_buffer[15]),
        .I3(rf_read_buffer[12]),
        .O(rf_reg_1_read));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_3 
       (.I0(rf_reg_1[0]),
        .I1(exc_write_reg[0]),
        .I2(exc_write_reg[2]),
        .I3(rf_reg_1[2]),
        .I4(exc_write_reg[1]),
        .I5(rf_reg_1[1]),
        .O(\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1810F2E208001000)) 
    \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_4 
       (.I0(rf_read_buffer[14]),
        .I1(rf_read_buffer[13]),
        .I2(rf_read_buffer[12]),
        .I3(p_0_in[3]),
        .I4(rf_read_buffer[15]),
        .I5(rf_read_buffer[11]),
        .O(rf_reg_1[3]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_5 
       (.I0(exc_alu),
        .I1(rf_reg_1[3]),
        .I2(rf_reg_1[2]),
        .I3(rf_reg_1[0]),
        .I4(rf_reg_1[1]),
        .I5(rf_reg_1_read),
        .O(\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1810F2E208001000)) 
    \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_6 
       (.I0(rf_read_buffer[14]),
        .I1(rf_read_buffer[13]),
        .I2(rf_read_buffer[12]),
        .I3(p_0_in[0]),
        .I4(rf_read_buffer[15]),
        .I5(rf_read_buffer[8]),
        .O(rf_reg_1[0]));
  LUT6 #(
    .INIT(64'h1810F2E208001000)) 
    \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_7 
       (.I0(rf_read_buffer[14]),
        .I1(rf_read_buffer[13]),
        .I2(rf_read_buffer[12]),
        .I3(p_0_in[2]),
        .I4(rf_read_buffer[15]),
        .I5(rf_read_buffer[10]),
        .O(rf_reg_1[2]));
  LUT6 #(
    .INIT(64'h1810F2E208001000)) 
    \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_8 
       (.I0(rf_read_buffer[14]),
        .I1(rf_read_buffer[13]),
        .I2(rf_read_buffer[12]),
        .I3(p_0_in[1]),
        .I4(rf_read_buffer[15]),
        .I5(rf_read_buffer[9]),
        .O(rf_reg_1[1]));
  (* srl_bus_name = "\\U0/execution_forward_reg " *) 
  (* srl_name = "\\U0/execution_forward_reg[2]_srl2_U0_execution_forward_reg_c " *) 
  SRL16E \execution_forward_reg[2]_srl2_U0_execution_forward_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(InstrExec_CLK),
        .D(input_forward[2]),
        .Q(\execution_forward_reg[2]_srl2_U0_execution_forward_reg_c_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFBFFFFFFFFF)) 
    \execution_forward_reg[2]_srl2_U0_execution_forward_reg_c_i_1 
       (.I0(\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_7_n_0 ),
        .I1(rf_reg_2_read),
        .I2(\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_3_n_0 ),
        .I3(exc_write_reg[3]),
        .I4(rf_reg_2[3]),
        .I5(exc_write__1),
        .O(input_forward[2]));
  (* srl_bus_name = "\\U0/execution_forward_reg " *) 
  (* srl_name = "\\U0/execution_forward_reg[3]_srl2_U0_execution_forward_reg_c " *) 
  SRL16E \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(InstrExec_CLK),
        .D(input_forward[3]),
        .Q(\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80080000)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_1 
       (.I0(rf_reg_2_read),
        .I1(\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_3_n_0 ),
        .I2(exc_write_reg[3]),
        .I3(rf_reg_2[3]),
        .I4(exc_write__1),
        .I5(\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_7_n_0 ),
        .O(input_forward[3]));
  LUT5 #(
    .INIT(32'h35140004)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_10 
       (.I0(execution_buffer[15]),
        .I1(execution_buffer[12]),
        .I2(execution_buffer[13]),
        .I3(execution_buffer[14]),
        .I4(execution_buffer[10]),
        .O(exc_write_reg[2]));
  LUT6 #(
    .INIT(64'h0000888800333000)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_11 
       (.I0(p_0_in[2]),
        .I1(rf_read_buffer[14]),
        .I2(\rf_read_buffer_reg_n_0_[2] ),
        .I3(rf_read_buffer[12]),
        .I4(rf_read_buffer[15]),
        .I5(rf_read_buffer[13]),
        .O(rf_reg_2[2]));
  LUT5 #(
    .INIT(32'h35140004)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_12 
       (.I0(execution_buffer[15]),
        .I1(execution_buffer[12]),
        .I2(execution_buffer[13]),
        .I3(execution_buffer[14]),
        .I4(execution_buffer[9]),
        .O(exc_write_reg[1]));
  LUT6 #(
    .INIT(64'h0000888800333000)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_13 
       (.I0(p_0_in[1]),
        .I1(rf_read_buffer[14]),
        .I2(\rf_read_buffer_reg_n_0_[1] ),
        .I3(rf_read_buffer[12]),
        .I4(rf_read_buffer[15]),
        .I5(rf_read_buffer[13]),
        .O(rf_reg_2[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_14 
       (.I0(execution_buffer[14]),
        .I1(execution_buffer[12]),
        .I2(execution_buffer[15]),
        .I3(execution_buffer[13]),
        .O(exc_alu));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2214)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_2 
       (.I0(rf_read_buffer[14]),
        .I1(rf_read_buffer[15]),
        .I2(rf_read_buffer[12]),
        .I3(rf_read_buffer[13]),
        .O(rf_reg_2_read));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_3 
       (.I0(rf_reg_2[0]),
        .I1(exc_write_reg[0]),
        .I2(exc_write_reg[2]),
        .I3(rf_reg_2[2]),
        .I4(exc_write_reg[1]),
        .I5(rf_reg_2[1]),
        .O(\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h35140004)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_4 
       (.I0(execution_buffer[15]),
        .I1(execution_buffer[12]),
        .I2(execution_buffer[13]),
        .I3(execution_buffer[14]),
        .I4(execution_buffer[11]),
        .O(exc_write_reg[3]));
  LUT6 #(
    .INIT(64'h0000888800333000)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_5 
       (.I0(p_0_in[3]),
        .I1(rf_read_buffer[14]),
        .I2(\rf_read_buffer_reg_n_0_[3] ),
        .I3(rf_read_buffer[12]),
        .I4(rf_read_buffer[15]),
        .I5(rf_read_buffer[13]),
        .O(rf_reg_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h085E)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_6 
       (.I0(execution_buffer[13]),
        .I1(execution_buffer[14]),
        .I2(execution_buffer[12]),
        .I3(execution_buffer[15]),
        .O(exc_write__1));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_7 
       (.I0(exc_alu),
        .I1(rf_reg_2[3]),
        .I2(rf_reg_2[2]),
        .I3(rf_reg_2[0]),
        .I4(rf_reg_2[1]),
        .I5(rf_reg_2_read),
        .O(\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000888800333000)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_8 
       (.I0(p_0_in[0]),
        .I1(rf_read_buffer[14]),
        .I2(rf_read_buffer[0]),
        .I3(rf_read_buffer[12]),
        .I4(rf_read_buffer[15]),
        .I5(rf_read_buffer[13]),
        .O(rf_reg_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0020A220)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_9 
       (.I0(execution_buffer[8]),
        .I1(execution_buffer[15]),
        .I2(execution_buffer[14]),
        .I3(execution_buffer[13]),
        .I4(execution_buffer[12]),
        .O(exc_write_reg[0]));
  (* srl_bus_name = "\\U0/execution_forward_reg " *) 
  (* srl_name = "\\U0/execution_forward_reg[4]_srl2_U0_execution_forward_reg_c " *) 
  SRL16E \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(InstrExec_CLK),
        .D(input_forward[4]),
        .Q(\execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000A2)) 
    \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_1 
       (.I0(rf_read_buffer[13]),
        .I1(rf_read_buffer[14]),
        .I2(rf_read_buffer[0]),
        .I3(rf_read_buffer[15]),
        .I4(\execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_2_n_0 ),
        .I5(\execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_3_n_0 ),
        .O(input_forward[4]));
  LUT6 #(
    .INIT(64'hFFFF7FFFFF70777F)) 
    \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_2 
       (.I0(execution_buffer[11]),
        .I1(execution_buffer[9]),
        .I2(execution_buffer[14]),
        .I3(execution_buffer[13]),
        .I4(execution_buffer[12]),
        .I5(execution_buffer[15]),
        .O(\execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h30003F3C20002A2C)) 
    \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_3 
       (.I0(execution_buffer[10]),
        .I1(execution_buffer[12]),
        .I2(execution_buffer[13]),
        .I3(execution_buffer[14]),
        .I4(execution_buffer[15]),
        .I5(execution_buffer[8]),
        .O(\execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_3_n_0 ));
  FDCE execution_forward_reg_c
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_forward_reg_c_n_0),
        .Q(execution_forward_reg_c_n_0));
  FDCE \output_buffer_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[0]),
        .Q(InstructionToExecute[0]));
  FDCE \output_buffer_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[10]),
        .Q(InstructionToExecute[10]));
  FDCE \output_buffer_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[11]),
        .Q(InstructionToExecute[11]));
  FDCE \output_buffer_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[12]),
        .Q(InstructionToExecute[12]));
  FDCE \output_buffer_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[13]),
        .Q(InstructionToExecute[13]));
  FDCE \output_buffer_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[14]),
        .Q(InstructionToExecute[14]));
  FDCE \output_buffer_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[15]),
        .Q(InstructionToExecute[15]));
  FDCE \output_buffer_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[1]),
        .Q(InstructionToExecute[1]));
  FDCE \output_buffer_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[2]),
        .Q(InstructionToExecute[2]));
  FDCE \output_buffer_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[3]),
        .Q(InstructionToExecute[3]));
  FDCE \output_buffer_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[4]),
        .Q(InstructionToExecute[4]));
  FDCE \output_buffer_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[5]),
        .Q(InstructionToExecute[5]));
  FDCE \output_buffer_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[6]),
        .Q(InstructionToExecute[6]));
  FDCE \output_buffer_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[7]),
        .Q(InstructionToExecute[7]));
  FDCE \output_buffer_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[8]),
        .Q(InstructionToExecute[8]));
  FDCE \output_buffer_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[9]),
        .Q(InstructionToExecute[9]));
  FDCE \output_forward_reg[0] 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_forward_reg_gate__3_n_0),
        .Q(InstructionForwardConfiguration[0]));
  FDCE \output_forward_reg[1] 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_forward_reg_gate__2_n_0),
        .Q(InstructionForwardConfiguration[1]));
  FDCE \output_forward_reg[2] 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_forward_reg_gate__1_n_0),
        .Q(InstructionForwardConfiguration[2]));
  FDCE \output_forward_reg[3] 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_forward_reg_gate__0_n_0),
        .Q(InstructionForwardConfiguration[3]));
  FDCE \output_forward_reg[4] 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_forward_reg_gate_n_0),
        .Q(InstructionForwardConfiguration[4]));
  FDCE rf_forward_reg_c
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(1'b1),
        .Q(rf_forward_reg_c_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[0]_i_1 
       (.I0(Instruction[0]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[10]_i_1 
       (.I0(Instruction[10]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[11]_i_1 
       (.I0(Instruction[11]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[12]_i_1 
       (.I0(Instruction[12]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[13]_i_1 
       (.I0(Instruction[13]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[14]_i_1 
       (.I0(Instruction[14]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[15]_i_1 
       (.I0(Instruction[15]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[1]_i_1 
       (.I0(Instruction[1]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[2]_i_1 
       (.I0(Instruction[2]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[3]_i_1 
       (.I0(Instruction[3]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[4]_i_1 
       (.I0(Instruction[4]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[5]_i_1 
       (.I0(Instruction[5]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[6]_i_1 
       (.I0(Instruction[6]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[7]_i_1 
       (.I0(Instruction[7]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[8]_i_1 
       (.I0(Instruction[8]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[9]_i_1 
       (.I0(Instruction[9]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[9]_i_1_n_0 ));
  FDCE \rf_read_buffer_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[0]_i_1_n_0 ),
        .Q(rf_read_buffer[0]));
  FDCE \rf_read_buffer_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[10]_i_1_n_0 ),
        .Q(rf_read_buffer[10]));
  FDCE \rf_read_buffer_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[11]_i_1_n_0 ),
        .Q(rf_read_buffer[11]));
  FDCE \rf_read_buffer_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[12]_i_1_n_0 ),
        .Q(rf_read_buffer[12]));
  FDCE \rf_read_buffer_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[13]_i_1_n_0 ),
        .Q(rf_read_buffer[13]));
  FDCE \rf_read_buffer_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[14]_i_1_n_0 ),
        .Q(rf_read_buffer[14]));
  FDCE \rf_read_buffer_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[15]_i_1_n_0 ),
        .Q(rf_read_buffer[15]));
  FDCE \rf_read_buffer_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[1]_i_1_n_0 ),
        .Q(\rf_read_buffer_reg_n_0_[1] ));
  FDCE \rf_read_buffer_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[2]_i_1_n_0 ),
        .Q(\rf_read_buffer_reg_n_0_[2] ));
  FDCE \rf_read_buffer_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[3]_i_1_n_0 ),
        .Q(\rf_read_buffer_reg_n_0_[3] ));
  FDCE \rf_read_buffer_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[4]_i_1_n_0 ),
        .Q(p_0_in[0]));
  FDCE \rf_read_buffer_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[5]_i_1_n_0 ),
        .Q(p_0_in[1]));
  FDCE \rf_read_buffer_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[6]_i_1_n_0 ),
        .Q(p_0_in[2]));
  FDCE \rf_read_buffer_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[7]_i_1_n_0 ),
        .Q(p_0_in[3]));
  FDCE \rf_read_buffer_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[8]_i_1_n_0 ),
        .Q(rf_read_buffer[8]));
  FDCE \rf_read_buffer_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[9]_i_1_n_0 ),
        .Q(rf_read_buffer[9]));
  LUT6 #(
    .INIT(64'h002AFFFF002A002A)) 
    stalled_s_i_1
       (.I0(rf_read_buffer[15]),
        .I1(rf_read_buffer[12]),
        .I2(rf_read_buffer[13]),
        .I3(rf_read_buffer[14]),
        .I4(ResolveStall),
        .I5(stalled_s_reg_0),
        .O(stalled_s_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    stalled_s_reg
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(stalled_s_i_1_n_0),
        .Q(stalled_s_reg_0));
  FDCE \write_back_buffer_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[0]),
        .Q(write_back_buffer[0]));
  FDCE \write_back_buffer_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[10]),
        .Q(write_back_buffer[10]));
  FDCE \write_back_buffer_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[11]),
        .Q(write_back_buffer[11]));
  FDCE \write_back_buffer_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[12]),
        .Q(write_back_buffer[12]));
  FDCE \write_back_buffer_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[13]),
        .Q(write_back_buffer[13]));
  FDCE \write_back_buffer_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[14]),
        .Q(write_back_buffer[14]));
  FDCE \write_back_buffer_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[15]),
        .Q(write_back_buffer[15]));
  FDCE \write_back_buffer_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[1]),
        .Q(write_back_buffer[1]));
  FDCE \write_back_buffer_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[2]),
        .Q(write_back_buffer[2]));
  FDCE \write_back_buffer_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[3]),
        .Q(write_back_buffer[3]));
  FDCE \write_back_buffer_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[4]),
        .Q(write_back_buffer[4]));
  FDCE \write_back_buffer_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[5]),
        .Q(write_back_buffer[5]));
  FDCE \write_back_buffer_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[6]),
        .Q(write_back_buffer[6]));
  FDCE \write_back_buffer_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[7]),
        .Q(write_back_buffer[7]));
  FDCE \write_back_buffer_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[8]),
        .Q(write_back_buffer[8]));
  FDCE \write_back_buffer_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[9]),
        .Q(write_back_buffer[9]));
  FDRE \write_back_forward_reg[0]_U0_write_back_forward_reg_c 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .D(\execution_forward_reg[0]_srl2_U0_execution_forward_reg_c_n_0 ),
        .Q(\write_back_forward_reg[0]_U0_write_back_forward_reg_c_n_0 ),
        .R(1'b0));
  FDRE \write_back_forward_reg[1]_U0_write_back_forward_reg_c 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .D(\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_n_0 ),
        .Q(\write_back_forward_reg[1]_U0_write_back_forward_reg_c_n_0 ),
        .R(1'b0));
  FDRE \write_back_forward_reg[2]_U0_write_back_forward_reg_c 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .D(\execution_forward_reg[2]_srl2_U0_execution_forward_reg_c_n_0 ),
        .Q(\write_back_forward_reg[2]_U0_write_back_forward_reg_c_n_0 ),
        .R(1'b0));
  FDRE \write_back_forward_reg[3]_U0_write_back_forward_reg_c 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .D(\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_n_0 ),
        .Q(\write_back_forward_reg[3]_U0_write_back_forward_reg_c_n_0 ),
        .R(1'b0));
  FDRE \write_back_forward_reg[4]_U0_write_back_forward_reg_c 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .D(\execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_n_0 ),
        .Q(\write_back_forward_reg[4]_U0_write_back_forward_reg_c_n_0 ),
        .R(1'b0));
  FDCE write_back_forward_reg_c
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_forward_reg_c_n_0),
        .Q(write_back_forward_reg_c_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    write_back_forward_reg_gate
       (.I0(\write_back_forward_reg[4]_U0_write_back_forward_reg_c_n_0 ),
        .I1(write_back_forward_reg_c_n_0),
        .O(write_back_forward_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    write_back_forward_reg_gate__0
       (.I0(\write_back_forward_reg[3]_U0_write_back_forward_reg_c_n_0 ),
        .I1(write_back_forward_reg_c_n_0),
        .O(write_back_forward_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    write_back_forward_reg_gate__1
       (.I0(\write_back_forward_reg[2]_U0_write_back_forward_reg_c_n_0 ),
        .I1(write_back_forward_reg_c_n_0),
        .O(write_back_forward_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    write_back_forward_reg_gate__2
       (.I0(\write_back_forward_reg[1]_U0_write_back_forward_reg_c_n_0 ),
        .I1(write_back_forward_reg_c_n_0),
        .O(write_back_forward_reg_gate__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    write_back_forward_reg_gate__3
       (.I0(\write_back_forward_reg[0]_U0_write_back_forward_reg_c_n_0 ),
        .I1(write_back_forward_reg_c_n_0),
        .O(write_back_forward_reg_gate__3_n_0));
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
