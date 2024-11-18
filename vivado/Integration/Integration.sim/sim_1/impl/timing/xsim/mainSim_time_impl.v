// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov 15 23:20:49 2024
// Host        : DESKTOP-7KK7962 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Programmieren/Projekte/FPGA_CPU/SixteenShadesOfCpu/vivado/Integration/Integration.sim/sim_1/impl/timing/xsim/mainSim_time_impl.v
// Design      : main_wrapper
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM256X1S_UNIQ_BASE_
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD1
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD10
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD11
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD12
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD13
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD14
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD15
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD2
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD3
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD4
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD5
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD6
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD7
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD8
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD9
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b1),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module ALU
   (CARRY_FLAG,
    BIGGER_ZERO_FLAG,
    \immediate_s_reg[1] ,
    NOT_ZERO_FLAG,
    ZERO_FLAG,
    ALU_OUT,
    OVERFLOW_FLAG,
    D2,
    D1,
    ALU_OPP);
  output CARRY_FLAG;
  output BIGGER_ZERO_FLAG;
  output \immediate_s_reg[1] ;
  output NOT_ZERO_FLAG;
  output ZERO_FLAG;
  output [14:0]ALU_OUT;
  output OVERFLOW_FLAG;
  input [15:0]D2;
  input [15:0]D1;
  input [3:0]ALU_OPP;

  wire [3:0]ALU_OPP;
  wire [14:0]ALU_OUT;
  wire \ALU_OUT[0]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[0]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_16_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[10]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[11]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[12]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_16_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_17_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_18_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[13]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[14]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[1]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_16_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_17_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_18_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[2]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_16_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_17_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_18_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_19_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_20_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_21_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_22_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_23_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_24_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_25_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_26_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_27_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[3]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[4]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_16_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_17_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[5]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_16_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_17_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_18_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_19_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_20_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[6]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_15_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_16_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_17_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_18_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[7]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[8]_INST_0_i_9_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_10_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_11_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_12_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_13_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_14_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_1_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_2_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_3_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_4_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_5_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_6_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_7_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_8_n_0 ;
  wire \ALU_OUT[9]_INST_0_i_9_n_0 ;
  wire ALU_OUT_Internal0_carry__0_i_1_n_0;
  wire ALU_OUT_Internal0_carry__0_i_2_n_0;
  wire ALU_OUT_Internal0_carry__0_i_3_n_0;
  wire ALU_OUT_Internal0_carry__0_i_4_n_0;
  wire ALU_OUT_Internal0_carry__0_n_0;
  wire ALU_OUT_Internal0_carry__1_i_1_n_0;
  wire ALU_OUT_Internal0_carry__1_i_2_n_0;
  wire ALU_OUT_Internal0_carry__1_i_3_n_0;
  wire ALU_OUT_Internal0_carry__1_i_4_n_0;
  wire ALU_OUT_Internal0_carry__1_n_0;
  wire ALU_OUT_Internal0_carry__2_i_1_n_0;
  wire ALU_OUT_Internal0_carry__2_i_2_n_0;
  wire ALU_OUT_Internal0_carry__2_i_3_n_0;
  wire ALU_OUT_Internal0_carry__2_i_4_n_0;
  wire ALU_OUT_Internal0_carry__2_i_5_n_0;
  wire ALU_OUT_Internal0_carry__2_n_0;
  wire ALU_OUT_Internal0_carry_i_1_n_0;
  wire ALU_OUT_Internal0_carry_i_2_n_0;
  wire ALU_OUT_Internal0_carry_i_3_n_0;
  wire ALU_OUT_Internal0_carry_i_4_n_0;
  wire ALU_OUT_Internal0_carry_n_0;
  wire \ALU_OUT_Internal0_inferred__0/i__carry__0_n_0 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry__1_n_0 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry__2_n_0 ;
  wire \ALU_OUT_Internal0_inferred__0/i__carry_n_0 ;
  wire BIGGER_ZERO_FLAG;
  wire CARRY_FLAG;
  wire CARRY_FLAG_INST_0_i_10_n_0;
  wire CARRY_FLAG_INST_0_i_11_n_0;
  wire CARRY_FLAG_INST_0_i_12_n_0;
  wire CARRY_FLAG_INST_0_i_13_n_0;
  wire CARRY_FLAG_INST_0_i_14_n_0;
  wire CARRY_FLAG_INST_0_i_15_n_0;
  wire CARRY_FLAG_INST_0_i_16_n_0;
  wire CARRY_FLAG_INST_0_i_17_n_0;
  wire CARRY_FLAG_INST_0_i_1_n_0;
  wire CARRY_FLAG_INST_0_i_2_n_0;
  wire CARRY_FLAG_INST_0_i_3_n_0;
  wire CARRY_FLAG_INST_0_i_4_n_0;
  wire CARRY_FLAG_INST_0_i_5_n_3;
  wire CARRY_FLAG_INST_0_i_6_n_3;
  wire CARRY_FLAG_INST_0_i_7_n_0;
  wire CARRY_FLAG_INST_0_i_8_n_0;
  wire CARRY_FLAG_INST_0_i_9_n_0;
  wire [15:0]D1;
  wire [15:0]D2;
  wire NOT_ZERO_FLAG;
  wire OVERFLOW_FLAG;
  wire [15:1]SHIFT_LEFT2;
  wire \SHIFT_RIGHT2_inferred__0/i__carry__0_n_0 ;
  wire \SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ;
  wire \SHIFT_RIGHT2_inferred__0/i__carry_n_0 ;
  wire SHIFT_RIGHT3_carry__0_i_5_n_0;
  wire SHIFT_RIGHT3_carry__0_i_6_n_0;
  wire SHIFT_RIGHT3_carry__0_i_7_n_0;
  wire SHIFT_RIGHT3_carry__0_i_8_n_0;
  wire SHIFT_RIGHT3_carry__0_i_9_n_0;
  wire SHIFT_RIGHT3_carry__0_n_0;
  wire SHIFT_RIGHT3_carry__0_n_4;
  wire SHIFT_RIGHT3_carry__0_n_5;
  wire SHIFT_RIGHT3_carry__0_n_6;
  wire SHIFT_RIGHT3_carry__0_n_7;
  wire SHIFT_RIGHT3_carry__1_i_5_n_0;
  wire SHIFT_RIGHT3_carry__1_i_6_n_0;
  wire SHIFT_RIGHT3_carry__1_i_7_n_0;
  wire SHIFT_RIGHT3_carry__1_i_8_n_0;
  wire SHIFT_RIGHT3_carry__1_n_0;
  wire SHIFT_RIGHT3_carry__1_n_4;
  wire SHIFT_RIGHT3_carry__1_n_5;
  wire SHIFT_RIGHT3_carry__1_n_6;
  wire SHIFT_RIGHT3_carry__1_n_7;
  wire SHIFT_RIGHT3_carry__2_i_4_n_0;
  wire SHIFT_RIGHT3_carry__2_i_5_n_0;
  wire SHIFT_RIGHT3_carry__2_i_6_n_0;
  wire SHIFT_RIGHT3_carry__2_i_7_n_0;
  wire SHIFT_RIGHT3_carry__2_i_8_n_0;
  wire SHIFT_RIGHT3_carry__2_i_9_n_0;
  wire SHIFT_RIGHT3_carry__2_n_4;
  wire SHIFT_RIGHT3_carry__2_n_5;
  wire SHIFT_RIGHT3_carry__2_n_6;
  wire SHIFT_RIGHT3_carry__2_n_7;
  wire SHIFT_RIGHT3_carry_i_10_n_0;
  wire SHIFT_RIGHT3_carry_i_11_n_0;
  wire SHIFT_RIGHT3_carry_i_12_n_0;
  wire SHIFT_RIGHT3_carry_i_6_n_0;
  wire SHIFT_RIGHT3_carry_i_7_n_0;
  wire SHIFT_RIGHT3_carry_i_8_n_0;
  wire SHIFT_RIGHT3_carry_i_9_n_0;
  wire SHIFT_RIGHT3_carry_n_0;
  wire SHIFT_RIGHT3_carry_n_4;
  wire SHIFT_RIGHT3_carry_n_5;
  wire SHIFT_RIGHT3_carry_n_6;
  wire SHIFT_RIGHT3_carry_n_7;
  wire [15:0]SHIFT_RIGHT4;
  wire SMALLER_ZERO_FLAG_INST_0_i_10_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_11_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_12_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_13_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_14_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_15_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_16_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_17_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_18_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_19_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_1_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_20_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_21_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_22_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_23_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_24_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_25_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_26_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_27_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_28_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_29_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_2_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_30_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_31_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_32_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_33_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_34_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_35_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_36_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_37_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_38_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_39_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_3_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_40_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_41_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_4_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_5_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_6_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_7_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_8_n_0;
  wire SMALLER_ZERO_FLAG_INST_0_i_9_n_0;
  wire ZERO_FLAG;
  wire ZERO_FLAG_INST_0_i_1_n_0;
  wire ZERO_FLAG_INST_0_i_2_n_0;
  wire ZERO_FLAG_INST_0_i_3_n_0;
  wire ZERO_FLAG_INST_0_i_4_n_0;
  wire ZERO_FLAG_INST_0_i_5_n_0;
  wire ZERO_FLAG_INST_0_i_6_n_0;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__1_n_0 ;
  wire \_inferred__0/i__carry__2_n_0 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire [15:0]data0;
  wire [15:0]data1;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1__1_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire \immediate_s_reg[1] ;
  wire [2:0]NLW_ALU_OUT_Internal0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_ALU_OUT_Internal0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_ALU_OUT_Internal0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_ALU_OUT_Internal0_carry__2_CO_UNCONNECTED;
  wire [2:0]\NLW_ALU_OUT_Internal0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [2:0]\NLW_ALU_OUT_Internal0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_ALU_OUT_Internal0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_ALU_OUT_Internal0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:1]NLW_CARRY_FLAG_INST_0_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY_FLAG_INST_0_i_5_O_UNCONNECTED;
  wire [3:1]NLW_CARRY_FLAG_INST_0_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_CARRY_FLAG_INST_0_i_6_O_UNCONNECTED;
  wire [2:0]\NLW_SHIFT_RIGHT2_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_SHIFT_RIGHT2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [2:0]\NLW_SHIFT_RIGHT2_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_SHIFT_RIGHT2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_SHIFT_RIGHT2_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_SHIFT_RIGHT2_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [2:0]NLW_SHIFT_RIGHT3_carry_CO_UNCONNECTED;
  wire [2:0]NLW_SHIFT_RIGHT3_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_SHIFT_RIGHT3_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_SHIFT_RIGHT3_carry__2_CO_UNCONNECTED;
  wire [2:0]\NLW__inferred__0/i__carry_CO_UNCONNECTED ;
  wire [2:0]\NLW__inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW__inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [2:0]\NLW__inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW__inferred__0/i__carry__2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF55551151)) 
    \ALU_OUT[0]_INST_0 
       (.I0(\ALU_OUT[0]_INST_0_i_1_n_0 ),
        .I1(ALU_OPP[1]),
        .I2(\ALU_OUT[0]_INST_0_i_2_n_0 ),
        .I3(\ALU_OUT[0]_INST_0_i_3_n_0 ),
        .I4(\ALU_OUT[0]_INST_0_i_4_n_0 ),
        .I5(\ALU_OUT[0]_INST_0_i_5_n_0 ),
        .O(ALU_OUT[0]));
  LUT5 #(
    .INIT(32'hAAAABABF)) 
    \ALU_OUT[0]_INST_0_i_1 
       (.I0(ALU_OPP[3]),
        .I1(data1[0]),
        .I2(ALU_OPP[0]),
        .I3(data0[0]),
        .I4(ALU_OPP[1]),
        .O(\ALU_OUT[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000305050003)) 
    \ALU_OUT[0]_INST_0_i_10 
       (.I0(SHIFT_LEFT2[1]),
        .I1(D2[1]),
        .I2(D2[0]),
        .I3(D2[2]),
        .I4(D2[15]),
        .I5(SHIFT_LEFT2[2]),
        .O(\ALU_OUT[0]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hCCAFFFAF)) 
    \ALU_OUT[0]_INST_0_i_11 
       (.I0(D2[4]),
        .I1(SHIFT_LEFT2[4]),
        .I2(D2[3]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[3]),
        .O(\ALU_OUT[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFBBFCB8FFFFFFFF)) 
    \ALU_OUT[0]_INST_0_i_12 
       (.I0(SHIFT_LEFT2[3]),
        .I1(D2[15]),
        .I2(D2[3]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[4]),
        .I5(D1[0]),
        .O(\ALU_OUT[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCEFFCECFCEFCCECC)) 
    \ALU_OUT[0]_INST_0_i_13 
       (.I0(D1[8]),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(SHIFT_RIGHT3_carry__2_i_8_n_0),
        .I3(SHIFT_RIGHT3_carry__2_i_9_n_0),
        .I4(D1[15]),
        .I5(D1[0]),
        .O(\ALU_OUT[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFCFDFCFDFCFFFCFD)) 
    \ALU_OUT[0]_INST_0_i_2 
       (.I0(\ALU_OUT[0]_INST_0_i_6_n_0 ),
        .I1(\ALU_OUT[13]_INST_0_i_6_n_0 ),
        .I2(\ALU_OUT[0]_INST_0_i_7_n_0 ),
        .I3(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I4(D2[0]),
        .I5(\ALU_OUT[1]_INST_0_i_6_n_0 ),
        .O(\ALU_OUT[0]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \ALU_OUT[0]_INST_0_i_3 
       (.I0(D1[0]),
        .I1(D2[15]),
        .I2(ALU_OPP[0]),
        .O(\ALU_OUT[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000554055555555)) 
    \ALU_OUT[0]_INST_0_i_4 
       (.I0(ALU_OPP[0]),
        .I1(D2[0]),
        .I2(\ALU_OUT[1]_INST_0_i_9_n_0 ),
        .I3(\ALU_OUT[0]_INST_0_i_8_n_0 ),
        .I4(\ALU_OUT[14]_INST_0_i_11_n_0 ),
        .I5(\ALU_OUT[0]_INST_0_i_9_n_0 ),
        .O(\ALU_OUT[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h802220AA2A888A00)) 
    \ALU_OUT[0]_INST_0_i_5 
       (.I0(ALU_OPP[3]),
        .I1(D2[0]),
        .I2(ALU_OPP[0]),
        .I3(D1[0]),
        .I4(ALU_OPP[1]),
        .I5(ALU_OPP[2]),
        .O(\ALU_OUT[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF440CFFFF44FF)) 
    \ALU_OUT[0]_INST_0_i_6 
       (.I0(\ALU_OUT[2]_INST_0_i_11_n_0 ),
        .I1(\ALU_OUT[3]_INST_0_i_18_n_0 ),
        .I2(\ALU_OUT[3]_INST_0_i_19_n_0 ),
        .I3(SHIFT_RIGHT3_carry_i_12_n_0),
        .I4(D2[0]),
        .I5(SHIFT_RIGHT3_carry_i_10_n_0),
        .O(\ALU_OUT[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0400444444444444)) 
    \ALU_OUT[0]_INST_0_i_7 
       (.I0(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I1(\ALU_OUT[0]_INST_0_i_10_n_0 ),
        .I2(\ALU_OUT[0]_INST_0_i_11_n_0 ),
        .I3(D1[8]),
        .I4(\ALU_OUT[3]_INST_0_i_18_n_0 ),
        .I5(\ALU_OUT[0]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000AACF0000AA00)) 
    \ALU_OUT[0]_INST_0_i_8 
       (.I0(\ALU_OUT[2]_INST_0_i_11_n_0 ),
        .I1(\ALU_OUT[3]_INST_0_i_19_n_0 ),
        .I2(SHIFT_RIGHT3_carry_i_10_n_0),
        .I3(SHIFT_RIGHT3_carry_i_12_n_0),
        .I4(D2[0]),
        .I5(\ALU_OUT[0]_INST_0_i_13_n_0 ),
        .O(\ALU_OUT[0]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \ALU_OUT[0]_INST_0_i_9 
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .I1(D2[0]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[1]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551055)) 
    \ALU_OUT[10]_INST_0 
       (.I0(\ALU_OUT[10]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[10]_INST_0_i_2_n_0 ),
        .I2(\ALU_OUT[10]_INST_0_i_3_n_0 ),
        .I3(ALU_OPP[1]),
        .I4(\ALU_OUT[10]_INST_0_i_4_n_0 ),
        .I5(\ALU_OUT[10]_INST_0_i_5_n_0 ),
        .O(ALU_OUT[10]));
  LUT5 #(
    .INIT(32'hAAAABABF)) 
    \ALU_OUT[10]_INST_0_i_1 
       (.I0(ALU_OPP[3]),
        .I1(data1[10]),
        .I2(ALU_OPP[0]),
        .I3(data0[10]),
        .I4(ALU_OPP[1]),
        .O(\ALU_OUT[10]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[10]_INST_0_i_10 
       (.I0(\ALU_OUT[10]_INST_0_i_16_n_0 ),
        .I1(D2[1]),
        .I2(\ALU_OUT[12]_INST_0_i_11_n_0 ),
        .O(\ALU_OUT[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABF8A80)) 
    \ALU_OUT[10]_INST_0_i_11 
       (.I0(D1[14]),
        .I1(SHIFT_LEFT2[2]),
        .I2(D2[15]),
        .I3(D2[2]),
        .I4(D1[10]),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .O(\ALU_OUT[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4540FFFF757F)) 
    \ALU_OUT[10]_INST_0_i_12 
       (.I0(D1[3]),
        .I1(SHIFT_LEFT2[2]),
        .I2(D2[15]),
        .I3(D2[2]),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I5(D1[7]),
        .O(\ALU_OUT[10]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABF8A80)) 
    \ALU_OUT[10]_INST_0_i_13 
       (.I0(D1[15]),
        .I1(SHIFT_LEFT2[2]),
        .I2(D2[15]),
        .I3(D2[2]),
        .I4(D1[12]),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .O(\ALU_OUT[10]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0033000000B800B8)) 
    \ALU_OUT[10]_INST_0_i_14 
       (.I0(D1[4]),
        .I1(D2[2]),
        .I2(D1[8]),
        .I3(D2[4]),
        .I4(D1[0]),
        .I5(D2[3]),
        .O(\ALU_OUT[10]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000F0A0C00000A0C)) 
    \ALU_OUT[10]_INST_0_i_15 
       (.I0(D1[2]),
        .I1(D1[10]),
        .I2(D2[4]),
        .I3(D2[3]),
        .I4(D2[2]),
        .I5(D1[6]),
        .O(\ALU_OUT[10]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALU_OUT[10]_INST_0_i_16 
       (.I0(D1[3]),
        .I1(D2[2]),
        .I2(D2[4]),
        .I3(D1[7]),
        .I4(D2[3]),
        .O(\ALU_OUT[10]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h45454500FFFFFFFF)) 
    \ALU_OUT[10]_INST_0_i_2 
       (.I0(\ALU_OUT[13]_INST_0_i_6_n_0 ),
        .I1(\ALU_OUT[11]_INST_0_i_6_n_0 ),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I4(\ALU_OUT[10]_INST_0_i_6_n_0 ),
        .I5(ALU_OPP[0]),
        .O(\ALU_OUT[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDFFFF555F)) 
    \ALU_OUT[10]_INST_0_i_3 
       (.I0(D2[15]),
        .I1(D1[0]),
        .I2(\ALU_OUT[11]_INST_0_i_7_n_0 ),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I4(\ALU_OUT[10]_INST_0_i_7_n_0 ),
        .I5(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .O(\ALU_OUT[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4444444455544454)) 
    \ALU_OUT[10]_INST_0_i_4 
       (.I0(ALU_OPP[0]),
        .I1(\ALU_OUT[10]_INST_0_i_8_n_0 ),
        .I2(\ALU_OUT[10]_INST_0_i_9_n_0 ),
        .I3(D2[0]),
        .I4(\ALU_OUT[10]_INST_0_i_10_n_0 ),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .O(\ALU_OUT[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h800A08AA2AA0A200)) 
    \ALU_OUT[10]_INST_0_i_5 
       (.I0(ALU_OPP[3]),
        .I1(ALU_OPP[0]),
        .I2(D2[10]),
        .I3(D1[10]),
        .I4(ALU_OPP[1]),
        .I5(ALU_OPP[2]),
        .O(\ALU_OUT[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0010F0B0001FFFBF)) 
    \ALU_OUT[10]_INST_0_i_6 
       (.I0(SHIFT_RIGHT3_carry_i_10_n_0),
        .I1(D1[12]),
        .I2(SHIFT_RIGHT3_carry_i_12_n_0),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I4(D1[15]),
        .I5(\ALU_OUT[10]_INST_0_i_11_n_0 ),
        .O(\ALU_OUT[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF470047004700)) 
    \ALU_OUT[10]_INST_0_i_7 
       (.I0(\ALU_OUT[10]_INST_0_i_12_n_0 ),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(\ALU_OUT[12]_INST_0_i_10_n_0 ),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I4(SHIFT_RIGHT3_carry__1_n_6),
        .I5(D1[0]),
        .O(\ALU_OUT[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \ALU_OUT[10]_INST_0_i_8 
       (.I0(\ALU_OUT[10]_INST_0_i_13_n_0 ),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(\ALU_OUT[10]_INST_0_i_11_n_0 ),
        .I3(D2[0]),
        .I4(\ALU_OUT[11]_INST_0_i_9_n_0 ),
        .I5(\ALU_OUT[14]_INST_0_i_11_n_0 ),
        .O(\ALU_OUT[10]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[10]_INST_0_i_9 
       (.I0(\ALU_OUT[10]_INST_0_i_14_n_0 ),
        .I1(D2[1]),
        .I2(\ALU_OUT[10]_INST_0_i_15_n_0 ),
        .O(\ALU_OUT[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBABAABBBB)) 
    \ALU_OUT[11]_INST_0 
       (.I0(\ALU_OUT[11]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[11]_INST_0_i_2_n_0 ),
        .I2(\ALU_OUT[11]_INST_0_i_3_n_0 ),
        .I3(\ALU_OUT[11]_INST_0_i_4_n_0 ),
        .I4(ALU_OPP[1]),
        .I5(\ALU_OUT[11]_INST_0_i_5_n_0 ),
        .O(ALU_OUT[11]));
  LUT6 #(
    .INIT(64'h800A08AA2AA0A200)) 
    \ALU_OUT[11]_INST_0_i_1 
       (.I0(ALU_OPP[3]),
        .I1(ALU_OPP[0]),
        .I2(D2[11]),
        .I3(D1[11]),
        .I4(ALU_OPP[1]),
        .I5(ALU_OPP[2]),
        .O(\ALU_OUT[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00FF4747)) 
    \ALU_OUT[11]_INST_0_i_10 
       (.I0(\ALU_OUT[12]_INST_0_i_11_n_0 ),
        .I1(D2[1]),
        .I2(\ALU_OUT[14]_INST_0_i_14_n_0 ),
        .I3(\ALU_OUT[10]_INST_0_i_9_n_0 ),
        .I4(D2[0]),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .O(\ALU_OUT[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF47CC44FF47FF47)) 
    \ALU_OUT[11]_INST_0_i_11 
       (.I0(D1[4]),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(D1[8]),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I4(\ALU_OUT[0]_INST_0_i_11_n_0 ),
        .I5(D1[0]),
        .O(\ALU_OUT[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000155555555)) 
    \ALU_OUT[11]_INST_0_i_12 
       (.I0(D2[0]),
        .I1(SHIFT_LEFT2[5]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_14_n_0),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_15_n_0),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_16_n_0),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .O(\ALU_OUT[11]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hAAAABABF)) 
    \ALU_OUT[11]_INST_0_i_2 
       (.I0(ALU_OPP[3]),
        .I1(data1[11]),
        .I2(ALU_OPP[0]),
        .I3(data0[11]),
        .I4(ALU_OPP[1]),
        .O(\ALU_OUT[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45454500FFFFFFFF)) 
    \ALU_OUT[11]_INST_0_i_3 
       (.I0(\ALU_OUT[13]_INST_0_i_6_n_0 ),
        .I1(\ALU_OUT[12]_INST_0_i_6_n_0 ),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I4(\ALU_OUT[11]_INST_0_i_6_n_0 ),
        .I5(ALU_OPP[0]),
        .O(\ALU_OUT[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDFFFF55F5)) 
    \ALU_OUT[11]_INST_0_i_4 
       (.I0(D2[15]),
        .I1(D1[0]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I3(\ALU_OUT[11]_INST_0_i_7_n_0 ),
        .I4(\ALU_OUT[11]_INST_0_i_8_n_0 ),
        .I5(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .O(\ALU_OUT[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000454055555555)) 
    \ALU_OUT[11]_INST_0_i_5 
       (.I0(ALU_OPP[0]),
        .I1(\ALU_OUT[12]_INST_0_i_8_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[11]_INST_0_i_9_n_0 ),
        .I4(\ALU_OUT[14]_INST_0_i_11_n_0 ),
        .I5(\ALU_OUT[11]_INST_0_i_10_n_0 ),
        .O(\ALU_OUT[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FF04F400FF07F7)) 
    \ALU_OUT[11]_INST_0_i_6 
       (.I0(D1[13]),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(SHIFT_RIGHT3_carry_i_10_n_0),
        .I3(D1[15]),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I5(D1[11]),
        .O(\ALU_OUT[11]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ALU_OUT[11]_INST_0_i_7 
       (.I0(\ALU_OUT[11]_INST_0_i_11_n_0 ),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[13]_INST_0_i_15_n_0 ),
        .O(\ALU_OUT[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8F888FFF88888888)) 
    \ALU_OUT[11]_INST_0_i_8 
       (.I0(SHIFT_RIGHT3_carry__1_n_5),
        .I1(D1[0]),
        .I2(\ALU_OUT[12]_INST_0_i_10_n_0 ),
        .I3(SHIFT_RIGHT3_carry_i_12_n_0),
        .I4(\ALU_OUT[14]_INST_0_i_13_n_0 ),
        .I5(\ALU_OUT[11]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALU_OUT[11]_INST_0_i_9 
       (.I0(D1[13]),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(D1[15]),
        .I3(SHIFT_RIGHT3_carry_i_10_n_0),
        .I4(D1[11]),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .O(\ALU_OUT[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551055)) 
    \ALU_OUT[12]_INST_0 
       (.I0(\ALU_OUT[12]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[12]_INST_0_i_2_n_0 ),
        .I2(\ALU_OUT[12]_INST_0_i_3_n_0 ),
        .I3(ALU_OPP[1]),
        .I4(\ALU_OUT[12]_INST_0_i_4_n_0 ),
        .I5(\ALU_OUT[12]_INST_0_i_5_n_0 ),
        .O(ALU_OUT[12]));
  LUT5 #(
    .INIT(32'hAAAABABF)) 
    \ALU_OUT[12]_INST_0_i_1 
       (.I0(ALU_OPP[3]),
        .I1(data1[12]),
        .I2(ALU_OPP[0]),
        .I3(data0[12]),
        .I4(ALU_OPP[1]),
        .O(\ALU_OUT[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \ALU_OUT[12]_INST_0_i_10 
       (.I0(D1[5]),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(D1[1]),
        .I3(SHIFT_RIGHT3_carry__2_i_9_n_0),
        .I4(SHIFT_RIGHT3_carry__2_i_8_n_0),
        .I5(D1[9]),
        .O(\ALU_OUT[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000A0AFC0C)) 
    \ALU_OUT[12]_INST_0_i_11 
       (.I0(D1[1]),
        .I1(D1[9]),
        .I2(D2[2]),
        .I3(D1[5]),
        .I4(D2[3]),
        .I5(D2[4]),
        .O(\ALU_OUT[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h55545504FFFFFFFF)) 
    \ALU_OUT[12]_INST_0_i_2 
       (.I0(\ALU_OUT[13]_INST_0_i_6_n_0 ),
        .I1(\ALU_OUT[12]_INST_0_i_6_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I4(\ALU_OUT[13]_INST_0_i_7_n_0 ),
        .I5(ALU_OPP[0]),
        .O(\ALU_OUT[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDFFFF555F)) 
    \ALU_OUT[12]_INST_0_i_3 
       (.I0(D2[15]),
        .I1(D1[0]),
        .I2(\ALU_OUT[13]_INST_0_i_10_n_0 ),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I4(\ALU_OUT[12]_INST_0_i_7_n_0 ),
        .I5(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .O(\ALU_OUT[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ALU_OUT[12]_INST_0_i_4 
       (.I0(ALU_OPP[0]),
        .I1(\ALU_OUT[12]_INST_0_i_8_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[13]_INST_0_i_13_n_0 ),
        .I4(\ALU_OUT[14]_INST_0_i_11_n_0 ),
        .I5(\ALU_OUT[12]_INST_0_i_9_n_0 ),
        .O(\ALU_OUT[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h800A08AA2AA0A200)) 
    \ALU_OUT[12]_INST_0_i_5 
       (.I0(ALU_OPP[3]),
        .I1(ALU_OPP[0]),
        .I2(D2[12]),
        .I3(D1[12]),
        .I4(ALU_OPP[1]),
        .I5(ALU_OPP[2]),
        .O(\ALU_OUT[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5454545757575457)) 
    \ALU_OUT[12]_INST_0_i_6 
       (.I0(D1[15]),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I3(D1[12]),
        .I4(SHIFT_RIGHT3_carry_i_12_n_0),
        .I5(D1[14]),
        .O(\ALU_OUT[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF470047004700)) 
    \ALU_OUT[12]_INST_0_i_7 
       (.I0(\ALU_OUT[12]_INST_0_i_10_n_0 ),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(\ALU_OUT[14]_INST_0_i_13_n_0 ),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I4(SHIFT_RIGHT3_carry__1_n_4),
        .I5(D1[0]),
        .O(\ALU_OUT[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALU_OUT[12]_INST_0_i_8 
       (.I0(D1[14]),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(D1[15]),
        .I3(SHIFT_RIGHT3_carry_i_10_n_0),
        .I4(D1[12]),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .O(\ALU_OUT[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF470047FF)) 
    \ALU_OUT[12]_INST_0_i_9 
       (.I0(\ALU_OUT[12]_INST_0_i_11_n_0 ),
        .I1(D2[1]),
        .I2(\ALU_OUT[14]_INST_0_i_14_n_0 ),
        .I3(D2[0]),
        .I4(\ALU_OUT[13]_INST_0_i_16_n_0 ),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .O(\ALU_OUT[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551110)) 
    \ALU_OUT[13]_INST_0 
       (.I0(\ALU_OUT[13]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[13]_INST_0_i_2_n_0 ),
        .I2(\ALU_OUT[14]_INST_0_i_3_n_0 ),
        .I3(\ALU_OUT[13]_INST_0_i_3_n_0 ),
        .I4(\ALU_OUT[13]_INST_0_i_4_n_0 ),
        .I5(\ALU_OUT[13]_INST_0_i_5_n_0 ),
        .O(ALU_OUT[13]));
  LUT5 #(
    .INIT(32'hAAAABABF)) 
    \ALU_OUT[13]_INST_0_i_1 
       (.I0(ALU_OPP[3]),
        .I1(data1[13]),
        .I2(ALU_OPP[0]),
        .I3(data0[13]),
        .I4(ALU_OPP[1]),
        .O(\ALU_OUT[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ALU_OUT[13]_INST_0_i_10 
       (.I0(\ALU_OUT[13]_INST_0_i_15_n_0 ),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_17_n_0),
        .O(\ALU_OUT[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00FF4747)) 
    \ALU_OUT[13]_INST_0_i_11 
       (.I0(\ALU_OUT[14]_INST_0_i_14_n_0 ),
        .I1(D2[1]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_30_n_0),
        .I3(\ALU_OUT[13]_INST_0_i_16_n_0 ),
        .I4(D2[0]),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .O(\ALU_OUT[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFBAAFBFFAAAAAAAA)) 
    \ALU_OUT[13]_INST_0_i_12 
       (.I0(\ALU_OUT[14]_INST_0_i_11_n_0 ),
        .I1(\ALU_OUT[13]_INST_0_i_17_n_0 ),
        .I2(SHIFT_RIGHT3_carry_i_10_n_0),
        .I3(SHIFT_RIGHT3_carry_i_12_n_0),
        .I4(\ALU_OUT[13]_INST_0_i_18_n_0 ),
        .I5(D2[0]),
        .O(\ALU_OUT[13]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \ALU_OUT[13]_INST_0_i_13 
       (.I0(D1[15]),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(D1[13]),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I4(SHIFT_RIGHT3_carry_i_10_n_0),
        .O(\ALU_OUT[13]_INST_0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \ALU_OUT[13]_INST_0_i_14 
       (.I0(SHIFT_LEFT2[5]),
        .I1(SHIFT_LEFT2[9]),
        .I2(SHIFT_LEFT2[12]),
        .O(\ALU_OUT[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \ALU_OUT[13]_INST_0_i_15 
       (.I0(D1[6]),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(D1[2]),
        .I3(SHIFT_RIGHT3_carry__2_i_9_n_0),
        .I4(SHIFT_RIGHT3_carry__2_i_8_n_0),
        .I5(D1[10]),
        .O(\ALU_OUT[13]_INST_0_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[13]_INST_0_i_16 
       (.I0(\ALU_OUT[10]_INST_0_i_15_n_0 ),
        .I1(D2[1]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_28_n_0),
        .O(\ALU_OUT[13]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    \ALU_OUT[13]_INST_0_i_17 
       (.I0(D1[15]),
        .I1(SHIFT_LEFT2[3]),
        .I2(D2[15]),
        .I3(D2[3]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(\ALU_OUT[13]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00044404)) 
    \ALU_OUT[13]_INST_0_i_18 
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I1(D1[14]),
        .I2(D2[2]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[2]),
        .O(\ALU_OUT[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0B0B0B00FFFFFFFF)) 
    \ALU_OUT[13]_INST_0_i_2 
       (.I0(\ALU_OUT[14]_INST_0_i_7_n_0 ),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I2(\ALU_OUT[13]_INST_0_i_6_n_0 ),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I4(\ALU_OUT[13]_INST_0_i_7_n_0 ),
        .I5(ALU_OPP[0]),
        .O(\ALU_OUT[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555000155550051)) 
    \ALU_OUT[13]_INST_0_i_3 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[14]_INST_0_i_9_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I4(\ALU_OUT[13]_INST_0_i_9_n_0 ),
        .I5(\ALU_OUT[13]_INST_0_i_10_n_0 ),
        .O(\ALU_OUT[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00007775FFFFFFFF)) 
    \ALU_OUT[13]_INST_0_i_4 
       (.I0(\ALU_OUT[13]_INST_0_i_11_n_0 ),
        .I1(\ALU_OUT[13]_INST_0_i_12_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[13]_INST_0_i_13_n_0 ),
        .I4(ALU_OPP[0]),
        .I5(ALU_OPP[1]),
        .O(\ALU_OUT[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h855D7AA200000000)) 
    \ALU_OUT[13]_INST_0_i_5 
       (.I0(D1[13]),
        .I1(ALU_OPP[0]),
        .I2(D2[13]),
        .I3(ALU_OPP[1]),
        .I4(ALU_OPP[2]),
        .I5(ALU_OPP[3]),
        .O(\ALU_OUT[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEAAAAAAAAA)) 
    \ALU_OUT[13]_INST_0_i_6 
       (.I0(D2[15]),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_16_n_0),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_15_n_0),
        .I4(\ALU_OUT[13]_INST_0_i_14_n_0 ),
        .I5(D1[15]),
        .O(\ALU_OUT[13]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0F0E0F1F)) 
    \ALU_OUT[13]_INST_0_i_7 
       (.I0(SHIFT_RIGHT3_carry_i_12_n_0),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(D1[15]),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I4(D1[13]),
        .O(\ALU_OUT[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \ALU_OUT[13]_INST_0_i_8 
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_16_n_0),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_15_n_0),
        .I3(SHIFT_LEFT2[12]),
        .I4(SHIFT_LEFT2[9]),
        .I5(SHIFT_LEFT2[5]),
        .O(\ALU_OUT[13]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ALU_OUT[13]_INST_0_i_9 
       (.I0(D1[0]),
        .I1(SHIFT_RIGHT3_carry__2_n_7),
        .O(\ALU_OUT[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551110)) 
    \ALU_OUT[14]_INST_0 
       (.I0(\ALU_OUT[14]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[14]_INST_0_i_2_n_0 ),
        .I2(\ALU_OUT[14]_INST_0_i_3_n_0 ),
        .I3(\ALU_OUT[14]_INST_0_i_4_n_0 ),
        .I4(\ALU_OUT[14]_INST_0_i_5_n_0 ),
        .I5(\ALU_OUT[14]_INST_0_i_6_n_0 ),
        .O(ALU_OUT[14]));
  LUT5 #(
    .INIT(32'hAAAABABF)) 
    \ALU_OUT[14]_INST_0_i_1 
       (.I0(ALU_OPP[3]),
        .I1(data1[14]),
        .I2(ALU_OPP[0]),
        .I3(data0[14]),
        .I4(ALU_OPP[1]),
        .O(\ALU_OUT[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF47FFFFFF47FF00)) 
    \ALU_OUT[14]_INST_0_i_10 
       (.I0(\ALU_OUT[14]_INST_0_i_14_n_0 ),
        .I1(D2[1]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_30_n_0),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .I4(D2[0]),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_11_n_0),
        .O(\ALU_OUT[14]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ALU_OUT[14]_INST_0_i_11 
       (.I0(SHIFT_LEFT2[5]),
        .I1(SHIFT_LEFT2[9]),
        .I2(SHIFT_LEFT2[12]),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_15_n_0),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_16_n_0),
        .O(\ALU_OUT[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000004D0048)) 
    \ALU_OUT[14]_INST_0_i_12 
       (.I0(D2[0]),
        .I1(D1[15]),
        .I2(SHIFT_RIGHT3_carry_i_12_n_0),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I4(D1[14]),
        .I5(SHIFT_RIGHT3_carry_i_10_n_0),
        .O(\ALU_OUT[14]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF4444FFCF7747)) 
    \ALU_OUT[14]_INST_0_i_13 
       (.I0(D1[7]),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(D1[3]),
        .I3(\ALU_OUT[0]_INST_0_i_11_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I5(D1[11]),
        .O(\ALU_OUT[14]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033B800B8)) 
    \ALU_OUT[14]_INST_0_i_14 
       (.I0(D1[7]),
        .I1(D2[2]),
        .I2(D1[11]),
        .I3(D2[3]),
        .I4(D1[3]),
        .I5(D2[4]),
        .O(\ALU_OUT[14]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h1510FFFF)) 
    \ALU_OUT[14]_INST_0_i_2 
       (.I0(D2[15]),
        .I1(D1[15]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I3(\ALU_OUT[14]_INST_0_i_7_n_0 ),
        .I4(ALU_OPP[0]),
        .O(\ALU_OUT[14]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \ALU_OUT[14]_INST_0_i_3 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(D1[0]),
        .I2(D2[15]),
        .O(\ALU_OUT[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4544454445445555)) 
    \ALU_OUT[14]_INST_0_i_4 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[14]_INST_0_i_8_n_0 ),
        .I2(\ALU_OUT[14]_INST_0_i_9_n_0 ),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_7_n_0),
        .O(\ALU_OUT[14]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0075FFFF)) 
    \ALU_OUT[14]_INST_0_i_5 
       (.I0(\ALU_OUT[14]_INST_0_i_10_n_0 ),
        .I1(\ALU_OUT[14]_INST_0_i_11_n_0 ),
        .I2(\ALU_OUT[14]_INST_0_i_12_n_0 ),
        .I3(ALU_OPP[0]),
        .I4(ALU_OPP[1]),
        .O(\ALU_OUT[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h800A08AA2AA0A200)) 
    \ALU_OUT[14]_INST_0_i_6 
       (.I0(ALU_OPP[3]),
        .I1(ALU_OPP[0]),
        .I2(D2[14]),
        .I3(D1[14]),
        .I4(ALU_OPP[1]),
        .I5(ALU_OPP[2]),
        .O(\ALU_OUT[14]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFB)) 
    \ALU_OUT[14]_INST_0_i_7 
       (.I0(SHIFT_RIGHT3_carry_i_10_n_0),
        .I1(D1[14]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I3(SHIFT_RIGHT3_carry_i_12_n_0),
        .I4(D1[15]),
        .O(\ALU_OUT[14]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ALU_OUT[14]_INST_0_i_8 
       (.I0(D1[0]),
        .I1(SHIFT_RIGHT3_carry__2_n_6),
        .O(\ALU_OUT[14]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALU_OUT[14]_INST_0_i_9 
       (.I0(\ALU_OUT[14]_INST_0_i_13_n_0 ),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_20_n_0),
        .I3(SHIFT_RIGHT3_carry_i_10_n_0),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_21_n_0),
        .O(\ALU_OUT[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBABABBBAB)) 
    \ALU_OUT[1]_INST_0 
       (.I0(\ALU_OUT[1]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[1]_INST_0_i_2_n_0 ),
        .I2(ALU_OPP[1]),
        .I3(\ALU_OUT[1]_INST_0_i_3_n_0 ),
        .I4(\ALU_OUT[1]_INST_0_i_4_n_0 ),
        .I5(\ALU_OUT[1]_INST_0_i_5_n_0 ),
        .O(ALU_OUT[1]));
  LUT6 #(
    .INIT(64'h800A08AA2AA0A200)) 
    \ALU_OUT[1]_INST_0_i_1 
       (.I0(ALU_OPP[3]),
        .I1(ALU_OPP[0]),
        .I2(D2[1]),
        .I3(D1[1]),
        .I4(ALU_OPP[1]),
        .I5(ALU_OPP[2]),
        .O(\ALU_OUT[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFFEFFFFFFFEF)) 
    \ALU_OUT[1]_INST_0_i_10 
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .I1(D2[1]),
        .I2(D1[1]),
        .I3(\ALU_OUT[2]_INST_0_i_10_n_0 ),
        .I4(D2[0]),
        .I5(\ALU_OUT[1]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02020F02)) 
    \ALU_OUT[1]_INST_0_i_11 
       (.I0(D1[1]),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I2(SHIFT_RIGHT3_carry_i_10_n_0),
        .I3(D1[9]),
        .I4(\ALU_OUT[0]_INST_0_i_11_n_0 ),
        .I5(SHIFT_RIGHT3_carry_i_12_n_0),
        .O(\ALU_OUT[1]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \ALU_OUT[1]_INST_0_i_12 
       (.I0(D2[3]),
        .I1(D2[2]),
        .I2(D1[0]),
        .I3(D2[4]),
        .O(\ALU_OUT[1]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hAAAABABF)) 
    \ALU_OUT[1]_INST_0_i_2 
       (.I0(ALU_OPP[3]),
        .I1(data1[1]),
        .I2(ALU_OPP[0]),
        .I3(data0[1]),
        .I4(ALU_OPP[1]),
        .O(\ALU_OUT[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCDFDFFFF0131)) 
    \ALU_OUT[1]_INST_0_i_3 
       (.I0(\ALU_OUT[1]_INST_0_i_6_n_0 ),
        .I1(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[2]_INST_0_i_8_n_0 ),
        .I4(D2[15]),
        .I5(D1[15]),
        .O(\ALU_OUT[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h5554FFFF)) 
    \ALU_OUT[1]_INST_0_i_4 
       (.I0(\ALU_OUT[1]_INST_0_i_7_n_0 ),
        .I1(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I2(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I3(\ALU_OUT[1]_INST_0_i_8_n_0 ),
        .I4(ALU_OPP[0]),
        .O(\ALU_OUT[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ALU_OUT[1]_INST_0_i_5 
       (.I0(ALU_OPP[0]),
        .I1(\ALU_OUT[1]_INST_0_i_9_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[2]_INST_0_i_6_n_0 ),
        .I4(\ALU_OUT[14]_INST_0_i_11_n_0 ),
        .I5(\ALU_OUT[1]_INST_0_i_10_n_0 ),
        .O(\ALU_OUT[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88888FFF88888888)) 
    \ALU_OUT[1]_INST_0_i_6 
       (.I0(SHIFT_RIGHT3_carry_i_12_n_0),
        .I1(\ALU_OUT[2]_INST_0_i_12_n_0 ),
        .I2(\ALU_OUT[5]_INST_0_i_12_n_0 ),
        .I3(SHIFT_RIGHT3_carry_i_10_n_0),
        .I4(\ALU_OUT[1]_INST_0_i_11_n_0 ),
        .I5(\ALU_OUT[3]_INST_0_i_18_n_0 ),
        .O(\ALU_OUT[1]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFD55)) 
    \ALU_OUT[1]_INST_0_i_7 
       (.I0(D2[15]),
        .I1(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I2(SHIFT_RIGHT3_carry_n_7),
        .I3(D1[0]),
        .O(\ALU_OUT[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDDFFCF)) 
    \ALU_OUT[1]_INST_0_i_8 
       (.I0(D1[0]),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I2(D1[1]),
        .I3(SHIFT_RIGHT3_carry_i_12_n_0),
        .I4(D2[0]),
        .I5(SHIFT_RIGHT3_carry_i_10_n_0),
        .O(\ALU_OUT[1]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hEA00EAEA)) 
    \ALU_OUT[1]_INST_0_i_9 
       (.I0(\ALU_OUT[1]_INST_0_i_11_n_0 ),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(\ALU_OUT[5]_INST_0_i_12_n_0 ),
        .I3(\ALU_OUT[3]_INST_0_i_23_n_0 ),
        .I4(SHIFT_RIGHT3_carry_i_12_n_0),
        .O(\ALU_OUT[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB88888)) 
    \ALU_OUT[2]_INST_0 
       (.I0(\ALU_OUT[2]_INST_0_i_1_n_0 ),
        .I1(ALU_OPP[3]),
        .I2(\ALU_OUT[2]_INST_0_i_2_n_0 ),
        .I3(\ALU_OUT[2]_INST_0_i_3_n_0 ),
        .I4(ALU_OPP[1]),
        .I5(\ALU_OUT[2]_INST_0_i_4_n_0 ),
        .O(ALU_OUT[2]));
  LUT5 #(
    .INIT(32'h966A5666)) 
    \ALU_OUT[2]_INST_0_i_1 
       (.I0(ALU_OPP[2]),
        .I1(D1[2]),
        .I2(D2[2]),
        .I3(ALU_OPP[1]),
        .I4(ALU_OPP[0]),
        .O(\ALU_OUT[2]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \ALU_OUT[2]_INST_0_i_10 
       (.I0(D2[3]),
        .I1(D2[4]),
        .I2(D2[2]),
        .O(\ALU_OUT[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4F004F004FFF4F00)) 
    \ALU_OUT[2]_INST_0_i_11 
       (.I0(\ALU_OUT[0]_INST_0_i_11_n_0 ),
        .I1(D1[14]),
        .I2(\ALU_OUT[6]_INST_0_i_20_n_0 ),
        .I3(SHIFT_RIGHT3_carry_i_10_n_0),
        .I4(\ALU_OUT[2]_INST_0_i_15_n_0 ),
        .I5(\ALU_OUT[2]_INST_0_i_16_n_0 ),
        .O(\ALU_OUT[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF0040404040)) 
    \ALU_OUT[2]_INST_0_i_12 
       (.I0(\ALU_OUT[2]_INST_0_i_17_n_0 ),
        .I1(\ALU_OUT[3]_INST_0_i_27_n_0 ),
        .I2(\ALU_OUT[3]_INST_0_i_18_n_0 ),
        .I3(\ALU_OUT[2]_INST_0_i_18_n_0 ),
        .I4(\ALU_OUT[5]_INST_0_i_16_n_0 ),
        .I5(SHIFT_RIGHT3_carry_i_10_n_0),
        .O(\ALU_OUT[2]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ALU_OUT[2]_INST_0_i_13 
       (.I0(D1[0]),
        .I1(SHIFT_RIGHT3_carry_n_6),
        .O(\ALU_OUT[2]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \ALU_OUT[2]_INST_0_i_14 
       (.I0(D2[0]),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(D1[1]),
        .I3(SHIFT_RIGHT3_carry_i_10_n_0),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .O(\ALU_OUT[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h33F3555533F3F5F5)) 
    \ALU_OUT[2]_INST_0_i_15 
       (.I0(D2[3]),
        .I1(SHIFT_LEFT2[3]),
        .I2(D1[10]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[15]),
        .I5(D2[4]),
        .O(\ALU_OUT[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000F5DDDD00F5)) 
    \ALU_OUT[2]_INST_0_i_16 
       (.I0(D1[2]),
        .I1(SHIFT_LEFT2[4]),
        .I2(D2[4]),
        .I3(D2[3]),
        .I4(D2[15]),
        .I5(SHIFT_LEFT2[3]),
        .O(\ALU_OUT[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000080800A008A80)) 
    \ALU_OUT[2]_INST_0_i_17 
       (.I0(D1[11]),
        .I1(SHIFT_LEFT2[3]),
        .I2(D2[15]),
        .I3(D2[3]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(\ALU_OUT[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFACCFAFFFFFFFF)) 
    \ALU_OUT[2]_INST_0_i_18 
       (.I0(D2[4]),
        .I1(SHIFT_LEFT2[4]),
        .I2(D2[3]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[3]),
        .I5(D1[7]),
        .O(\ALU_OUT[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h4444444455544454)) 
    \ALU_OUT[2]_INST_0_i_2 
       (.I0(ALU_OPP[0]),
        .I1(\ALU_OUT[2]_INST_0_i_5_n_0 ),
        .I2(\ALU_OUT[2]_INST_0_i_6_n_0 ),
        .I3(D2[0]),
        .I4(\ALU_OUT[3]_INST_0_i_13_n_0 ),
        .I5(\ALU_OUT[14]_INST_0_i_11_n_0 ),
        .O(\ALU_OUT[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAB00AB00AB000000)) 
    \ALU_OUT[2]_INST_0_i_3 
       (.I0(\ALU_OUT[2]_INST_0_i_7_n_0 ),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I2(\ALU_OUT[2]_INST_0_i_8_n_0 ),
        .I3(ALU_OPP[0]),
        .I4(\ALU_OUT[14]_INST_0_i_3_n_0 ),
        .I5(\ALU_OUT[2]_INST_0_i_9_n_0 ),
        .O(\ALU_OUT[2]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[2]_INST_0_i_4 
       (.I0(data1[2]),
        .I1(ALU_OPP[0]),
        .I2(data0[2]),
        .O(\ALU_OUT[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \ALU_OUT[2]_INST_0_i_5 
       (.I0(\ALU_OUT[3]_INST_0_i_10_n_0 ),
        .I1(D2[0]),
        .I2(D2[1]),
        .I3(D1[1]),
        .I4(\ALU_OUT[2]_INST_0_i_10_n_0 ),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .O(\ALU_OUT[2]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ALU_OUT[2]_INST_0_i_6 
       (.I0(\ALU_OUT[3]_INST_0_i_22_n_0 ),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[2]_INST_0_i_11_n_0 ),
        .O(\ALU_OUT[2]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \ALU_OUT[2]_INST_0_i_7 
       (.I0(\ALU_OUT[13]_INST_0_i_6_n_0 ),
        .I1(\ALU_OUT[5]_INST_0_i_10_n_0 ),
        .I2(SHIFT_RIGHT3_carry_i_12_n_0),
        .I3(\ALU_OUT[2]_INST_0_i_12_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8B0088008BFF8800)) 
    \ALU_OUT[2]_INST_0_i_8 
       (.I0(\ALU_OUT[3]_INST_0_i_17_n_0 ),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(\ALU_OUT[3]_INST_0_i_19_n_0 ),
        .I3(SHIFT_RIGHT3_carry_i_12_n_0),
        .I4(\ALU_OUT[3]_INST_0_i_18_n_0 ),
        .I5(\ALU_OUT[2]_INST_0_i_11_n_0 ),
        .O(\ALU_OUT[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4445444544454455)) 
    \ALU_OUT[2]_INST_0_i_9 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[2]_INST_0_i_13_n_0 ),
        .I2(\ALU_OUT[2]_INST_0_i_14_n_0 ),
        .I3(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I4(D2[0]),
        .I5(\ALU_OUT[3]_INST_0_i_15_n_0 ),
        .O(\ALU_OUT[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBABAA)) 
    \ALU_OUT[3]_INST_0 
       (.I0(\ALU_OUT[3]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[3]_INST_0_i_2_n_0 ),
        .I2(\ALU_OUT[3]_INST_0_i_3_n_0 ),
        .I3(\ALU_OUT[3]_INST_0_i_4_n_0 ),
        .I4(\ALU_OUT[3]_INST_0_i_5_n_0 ),
        .I5(\ALU_OUT[3]_INST_0_i_6_n_0 ),
        .O(ALU_OUT[3]));
  LUT6 #(
    .INIT(64'h800A08AA2AA0A200)) 
    \ALU_OUT[3]_INST_0_i_1 
       (.I0(ALU_OPP[3]),
        .I1(ALU_OPP[0]),
        .I2(D2[3]),
        .I3(D1[3]),
        .I4(ALU_OPP[1]),
        .I5(ALU_OPP[2]),
        .O(\ALU_OUT[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000B8)) 
    \ALU_OUT[3]_INST_0_i_10 
       (.I0(D1[0]),
        .I1(D2[1]),
        .I2(D1[2]),
        .I3(D2[2]),
        .I4(D2[4]),
        .I5(D2[3]),
        .O(\ALU_OUT[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \ALU_OUT[3]_INST_0_i_11 
       (.I0(D1[3]),
        .I1(D2[1]),
        .I2(D1[1]),
        .I3(D2[2]),
        .I4(D2[4]),
        .I5(D2[3]),
        .O(\ALU_OUT[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hD0DF0000D0DFFFFF)) 
    \ALU_OUT[3]_INST_0_i_12 
       (.I0(D1[10]),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I2(SHIFT_RIGHT3_carry_i_10_n_0),
        .I3(\ALU_OUT[6]_INST_0_i_17_n_0 ),
        .I4(SHIFT_RIGHT3_carry_i_12_n_0),
        .I5(\ALU_OUT[3]_INST_0_i_22_n_0 ),
        .O(\ALU_OUT[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \ALU_OUT[3]_INST_0_i_13 
       (.I0(D1[9]),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I2(SHIFT_RIGHT3_carry_i_10_n_0),
        .I3(\ALU_OUT[5]_INST_0_i_12_n_0 ),
        .I4(SHIFT_RIGHT3_carry_i_12_n_0),
        .I5(\ALU_OUT[3]_INST_0_i_23_n_0 ),
        .O(\ALU_OUT[3]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    \ALU_OUT[3]_INST_0_i_14 
       (.I0(D1[1]),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I3(SHIFT_RIGHT3_carry_i_10_n_0),
        .I4(D1[3]),
        .O(\ALU_OUT[3]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    \ALU_OUT[3]_INST_0_i_15 
       (.I0(D1[0]),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(SHIFT_RIGHT3_carry_i_10_n_0),
        .I3(D1[2]),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .O(\ALU_OUT[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \ALU_OUT[3]_INST_0_i_16 
       (.I0(\ALU_OUT[6]_INST_0_i_13_n_0 ),
        .I1(\ALU_OUT[6]_INST_0_i_14_n_0 ),
        .I2(SHIFT_RIGHT3_carry_i_10_n_0),
        .I3(\ALU_OUT[3]_INST_0_i_24_n_0 ),
        .I4(SHIFT_RIGHT3_carry__2_i_9_n_0),
        .I5(\ALU_OUT[3]_INST_0_i_25_n_0 ),
        .O(\ALU_OUT[3]_INST_0_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \ALU_OUT[3]_INST_0_i_17 
       (.I0(D1[8]),
        .I1(D1[15]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .O(\ALU_OUT[3]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \ALU_OUT[3]_INST_0_i_18 
       (.I0(D1[15]),
        .I1(D2[4]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[4]),
        .O(\ALU_OUT[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0C0C0C0A0C)) 
    \ALU_OUT[3]_INST_0_i_19 
       (.I0(D1[12]),
        .I1(D1[4]),
        .I2(SHIFT_RIGHT3_carry__2_i_8_n_0),
        .I3(D2[3]),
        .I4(D2[15]),
        .I5(SHIFT_LEFT2[3]),
        .O(\ALU_OUT[3]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hAAAABABF)) 
    \ALU_OUT[3]_INST_0_i_2 
       (.I0(ALU_OPP[3]),
        .I1(data1[3]),
        .I2(ALU_OPP[0]),
        .I3(data0[3]),
        .I4(ALU_OPP[1]),
        .O(\ALU_OUT[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0C0C0C0A0C)) 
    \ALU_OUT[3]_INST_0_i_20 
       (.I0(D1[11]),
        .I1(D1[3]),
        .I2(SHIFT_RIGHT3_carry__2_i_8_n_0),
        .I3(D2[3]),
        .I4(D2[15]),
        .I5(SHIFT_LEFT2[3]),
        .O(\ALU_OUT[3]_INST_0_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \ALU_OUT[3]_INST_0_i_21 
       (.I0(D1[7]),
        .I1(D1[15]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .O(\ALU_OUT[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0F00FFFF3B3B3B3B)) 
    \ALU_OUT[3]_INST_0_i_22 
       (.I0(D1[12]),
        .I1(\ALU_OUT[6]_INST_0_i_18_n_0 ),
        .I2(\ALU_OUT[0]_INST_0_i_11_n_0 ),
        .I3(D1[15]),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_34_n_0),
        .I5(SHIFT_RIGHT3_carry_i_10_n_0),
        .O(\ALU_OUT[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hA0EFA0E0AFEFAFEF)) 
    \ALU_OUT[3]_INST_0_i_23 
       (.I0(\ALU_OUT[3]_INST_0_i_26_n_0 ),
        .I1(D1[15]),
        .I2(SHIFT_RIGHT3_carry_i_10_n_0),
        .I3(\ALU_OUT[0]_INST_0_i_11_n_0 ),
        .I4(D1[11]),
        .I5(\ALU_OUT[3]_INST_0_i_27_n_0 ),
        .O(\ALU_OUT[3]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h4540757F)) 
    \ALU_OUT[3]_INST_0_i_24 
       (.I0(D1[15]),
        .I1(SHIFT_LEFT2[4]),
        .I2(D2[15]),
        .I3(D2[4]),
        .I4(D1[14]),
        .O(\ALU_OUT[3]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h4540757F)) 
    \ALU_OUT[3]_INST_0_i_25 
       (.I0(D1[15]),
        .I1(SHIFT_LEFT2[4]),
        .I2(D2[15]),
        .I3(D2[4]),
        .I4(D1[6]),
        .O(\ALU_OUT[3]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    \ALU_OUT[3]_INST_0_i_26 
       (.I0(D1[7]),
        .I1(SHIFT_LEFT2[3]),
        .I2(D2[15]),
        .I3(D2[3]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(\ALU_OUT[3]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFBBFCB8FFFFFFFF)) 
    \ALU_OUT[3]_INST_0_i_27 
       (.I0(SHIFT_LEFT2[3]),
        .I1(D2[15]),
        .I2(D2[3]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[4]),
        .I5(D1[3]),
        .O(\ALU_OUT[3]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h7020FFFF)) 
    \ALU_OUT[3]_INST_0_i_3 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(D1[0]),
        .I2(D2[15]),
        .I3(\ALU_OUT[3]_INST_0_i_7_n_0 ),
        .I4(ALU_OPP[0]),
        .O(\ALU_OUT[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF4F7FFFF0407)) 
    \ALU_OUT[3]_INST_0_i_4 
       (.I0(\ALU_OUT[3]_INST_0_i_8_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I3(\ALU_OUT[3]_INST_0_i_9_n_0 ),
        .I4(D2[15]),
        .I5(D1[15]),
        .O(\ALU_OUT[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000B0008FFFFFFFF)) 
    \ALU_OUT[3]_INST_0_i_5 
       (.I0(\ALU_OUT[3]_INST_0_i_10_n_0 ),
        .I1(D2[0]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .I3(ALU_OPP[0]),
        .I4(\ALU_OUT[3]_INST_0_i_11_n_0 ),
        .I5(ALU_OPP[1]),
        .O(\ALU_OUT[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022F20000)) 
    \ALU_OUT[3]_INST_0_i_6 
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I1(\ALU_OUT[3]_INST_0_i_12_n_0 ),
        .I2(\ALU_OUT[3]_INST_0_i_13_n_0 ),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I4(D2[15]),
        .I5(ALU_OPP[0]),
        .O(\ALU_OUT[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0EEE0EEE00000EEE)) 
    \ALU_OUT[3]_INST_0_i_7 
       (.I0(\ALU_OUT[3]_INST_0_i_14_n_0 ),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I2(D1[0]),
        .I3(SHIFT_RIGHT3_carry_n_5),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I5(\ALU_OUT[3]_INST_0_i_15_n_0 ),
        .O(\ALU_OUT[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \ALU_OUT[3]_INST_0_i_8 
       (.I0(\ALU_OUT[3]_INST_0_i_16_n_0 ),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(\ALU_OUT[3]_INST_0_i_17_n_0 ),
        .I3(SHIFT_RIGHT3_carry_i_10_n_0),
        .I4(\ALU_OUT[3]_INST_0_i_18_n_0 ),
        .I5(\ALU_OUT[3]_INST_0_i_19_n_0 ),
        .O(\ALU_OUT[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB88888B888B88)) 
    \ALU_OUT[3]_INST_0_i_9 
       (.I0(\ALU_OUT[5]_INST_0_i_10_n_0 ),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(\ALU_OUT[3]_INST_0_i_20_n_0 ),
        .I3(\ALU_OUT[3]_INST_0_i_18_n_0 ),
        .I4(\ALU_OUT[3]_INST_0_i_21_n_0 ),
        .I5(SHIFT_RIGHT3_carry_i_10_n_0),
        .O(\ALU_OUT[3]_INST_0_i_9_n_0 ));
  MUXF7 \ALU_OUT[4]_INST_0 
       (.I0(\ALU_OUT[4]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[4]_INST_0_i_2_n_0 ),
        .O(ALU_OUT[4]),
        .S(ALU_OPP[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[4]_INST_0_i_1 
       (.I0(\ALU_OUT[4]_INST_0_i_3_n_0 ),
        .I1(\ALU_OUT[4]_INST_0_i_4_n_0 ),
        .I2(ALU_OPP[1]),
        .I3(data1[4]),
        .I4(ALU_OPP[0]),
        .I5(data0[4]),
        .O(\ALU_OUT[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h966A5666)) 
    \ALU_OUT[4]_INST_0_i_2 
       (.I0(ALU_OPP[2]),
        .I1(D1[4]),
        .I2(D2[4]),
        .I3(ALU_OPP[1]),
        .I4(ALU_OPP[0]),
        .O(\ALU_OUT[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF100F100F100F1F1)) 
    \ALU_OUT[4]_INST_0_i_3 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[4]_INST_0_i_5_n_0 ),
        .I2(\ALU_OUT[14]_INST_0_i_3_n_0 ),
        .I3(\ALU_OUT[4]_INST_0_i_6_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I5(\ALU_OUT[3]_INST_0_i_8_n_0 ),
        .O(\ALU_OUT[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABFFABABAAAAAAAA)) 
    \ALU_OUT[4]_INST_0_i_4 
       (.I0(\ALU_OUT[4]_INST_0_i_7_n_0 ),
        .I1(\ALU_OUT[3]_INST_0_i_12_n_0 ),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I3(\ALU_OUT[5]_INST_0_i_8_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I5(D2[15]),
        .O(\ALU_OUT[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000EE0EEE0EEE0E)) 
    \ALU_OUT[4]_INST_0_i_5 
       (.I0(\ALU_OUT[5]_INST_0_i_11_n_0 ),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I3(\ALU_OUT[3]_INST_0_i_14_n_0 ),
        .I4(D1[0]),
        .I5(SHIFT_RIGHT3_carry_n_4),
        .O(\ALU_OUT[4]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \ALU_OUT[4]_INST_0_i_6 
       (.I0(\ALU_OUT[13]_INST_0_i_6_n_0 ),
        .I1(\ALU_OUT[7]_INST_0_i_12_n_0 ),
        .I2(SHIFT_RIGHT3_carry_i_12_n_0),
        .I3(\ALU_OUT[5]_INST_0_i_10_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[4]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \ALU_OUT[4]_INST_0_i_7 
       (.I0(\ALU_OUT[5]_INST_0_i_13_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[3]_INST_0_i_11_n_0 ),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .O(\ALU_OUT[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551055)) 
    \ALU_OUT[5]_INST_0 
       (.I0(\ALU_OUT[5]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[5]_INST_0_i_2_n_0 ),
        .I2(\ALU_OUT[5]_INST_0_i_3_n_0 ),
        .I3(ALU_OPP[1]),
        .I4(\ALU_OUT[5]_INST_0_i_4_n_0 ),
        .I5(\ALU_OUT[5]_INST_0_i_5_n_0 ),
        .O(ALU_OUT[5]));
  LUT5 #(
    .INIT(32'hAAAABABF)) 
    \ALU_OUT[5]_INST_0_i_1 
       (.I0(ALU_OPP[3]),
        .I1(data1[5]),
        .I2(ALU_OPP[0]),
        .I3(data0[5]),
        .I4(ALU_OPP[1]),
        .O(\ALU_OUT[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000404000FF4040)) 
    \ALU_OUT[5]_INST_0_i_10 
       (.I0(\ALU_OUT[5]_INST_0_i_14_n_0 ),
        .I1(\ALU_OUT[5]_INST_0_i_15_n_0 ),
        .I2(\ALU_OUT[3]_INST_0_i_18_n_0 ),
        .I3(\ALU_OUT[5]_INST_0_i_16_n_0 ),
        .I4(SHIFT_RIGHT3_carry_i_10_n_0),
        .I5(\ALU_OUT[5]_INST_0_i_17_n_0 ),
        .O(\ALU_OUT[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \ALU_OUT[5]_INST_0_i_11 
       (.I0(D1[2]),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(D1[0]),
        .I3(SHIFT_RIGHT3_carry_i_10_n_0),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I5(D1[4]),
        .O(\ALU_OUT[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0C0C0C0A0C)) 
    \ALU_OUT[5]_INST_0_i_12 
       (.I0(D1[13]),
        .I1(D1[5]),
        .I2(SHIFT_RIGHT3_carry__2_i_8_n_0),
        .I3(D2[3]),
        .I4(D2[15]),
        .I5(SHIFT_LEFT2[3]),
        .O(\ALU_OUT[5]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \ALU_OUT[5]_INST_0_i_13 
       (.I0(D1[2]),
        .I1(D2[2]),
        .I2(D2[4]),
        .I3(D2[3]),
        .I4(D2[1]),
        .I5(\ALU_OUT[7]_INST_0_i_18_n_0 ),
        .O(\ALU_OUT[5]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000080800A008A80)) 
    \ALU_OUT[5]_INST_0_i_14 
       (.I0(D1[13]),
        .I1(SHIFT_LEFT2[3]),
        .I2(D2[15]),
        .I3(D2[3]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(\ALU_OUT[5]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFBBFCB8FFFFFFFF)) 
    \ALU_OUT[5]_INST_0_i_15 
       (.I0(SHIFT_LEFT2[3]),
        .I1(D2[15]),
        .I2(D2[3]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[4]),
        .I5(D1[5]),
        .O(\ALU_OUT[5]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFBBFCB800000000)) 
    \ALU_OUT[5]_INST_0_i_16 
       (.I0(SHIFT_LEFT2[3]),
        .I1(D2[15]),
        .I2(D2[3]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[4]),
        .I5(D1[15]),
        .O(\ALU_OUT[5]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    \ALU_OUT[5]_INST_0_i_17 
       (.I0(D1[9]),
        .I1(SHIFT_LEFT2[3]),
        .I2(D2[15]),
        .I3(D2[3]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(\ALU_OUT[5]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h54005454FFFFFFFF)) 
    \ALU_OUT[5]_INST_0_i_2 
       (.I0(\ALU_OUT[13]_INST_0_i_6_n_0 ),
        .I1(\ALU_OUT[5]_INST_0_i_6_n_0 ),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I3(\ALU_OUT[6]_INST_0_i_6_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I5(ALU_OPP[0]),
        .O(\ALU_OUT[5]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hDD5F)) 
    \ALU_OUT[5]_INST_0_i_3 
       (.I0(D2[15]),
        .I1(D1[0]),
        .I2(\ALU_OUT[5]_INST_0_i_7_n_0 ),
        .I3(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .O(\ALU_OUT[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000510155555555)) 
    \ALU_OUT[5]_INST_0_i_4 
       (.I0(ALU_OPP[0]),
        .I1(\ALU_OUT[5]_INST_0_i_8_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[6]_INST_0_i_9_n_0 ),
        .I4(\ALU_OUT[14]_INST_0_i_11_n_0 ),
        .I5(\ALU_OUT[5]_INST_0_i_9_n_0 ),
        .O(\ALU_OUT[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h800A08AA2AA0A200)) 
    \ALU_OUT[5]_INST_0_i_5 
       (.I0(ALU_OPP[3]),
        .I1(ALU_OPP[0]),
        .I2(D2[5]),
        .I3(D1[5]),
        .I4(ALU_OPP[1]),
        .I5(ALU_OPP[2]),
        .O(\ALU_OUT[5]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBBAF88A0)) 
    \ALU_OUT[5]_INST_0_i_6 
       (.I0(\ALU_OUT[7]_INST_0_i_12_n_0 ),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(\ALU_OUT[5]_INST_0_i_10_n_0 ),
        .O(\ALU_OUT[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000EFECEFECEFEC)) 
    \ALU_OUT[5]_INST_0_i_7 
       (.I0(\ALU_OUT[5]_INST_0_i_11_n_0 ),
        .I1(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[6]_INST_0_i_10_n_0 ),
        .I4(D1[0]),
        .I5(SHIFT_RIGHT3_carry__0_n_7),
        .O(\ALU_OUT[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFD0DFD0DF)) 
    \ALU_OUT[5]_INST_0_i_8 
       (.I0(D1[9]),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I2(SHIFT_RIGHT3_carry_i_10_n_0),
        .I3(\ALU_OUT[5]_INST_0_i_12_n_0 ),
        .I4(\ALU_OUT[7]_INST_0_i_17_n_0 ),
        .I5(SHIFT_RIGHT3_carry_i_12_n_0),
        .O(\ALU_OUT[5]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFF1D)) 
    \ALU_OUT[5]_INST_0_i_9 
       (.I0(\ALU_OUT[6]_INST_0_i_16_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[5]_INST_0_i_13_n_0 ),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .O(\ALU_OUT[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB88888)) 
    \ALU_OUT[6]_INST_0 
       (.I0(\ALU_OUT[6]_INST_0_i_1_n_0 ),
        .I1(ALU_OPP[3]),
        .I2(\ALU_OUT[6]_INST_0_i_2_n_0 ),
        .I3(\ALU_OUT[6]_INST_0_i_3_n_0 ),
        .I4(ALU_OPP[1]),
        .I5(\ALU_OUT[6]_INST_0_i_4_n_0 ),
        .O(ALU_OUT[6]));
  LUT5 #(
    .INIT(32'h966A5666)) 
    \ALU_OUT[6]_INST_0_i_1 
       (.I0(ALU_OPP[2]),
        .I1(D1[6]),
        .I2(D2[6]),
        .I3(ALU_OPP[1]),
        .I4(ALU_OPP[0]),
        .O(\ALU_OUT[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \ALU_OUT[6]_INST_0_i_10 
       (.I0(D1[3]),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(D1[1]),
        .I3(SHIFT_RIGHT3_carry_i_10_n_0),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I5(D1[5]),
        .O(\ALU_OUT[6]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ALU_OUT[6]_INST_0_i_11 
       (.I0(D1[0]),
        .I1(SHIFT_RIGHT3_carry__0_n_6),
        .O(\ALU_OUT[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALU_OUT[6]_INST_0_i_12 
       (.I0(\ALU_OUT[0]_INST_0_i_12_n_0 ),
        .I1(\ALU_OUT[6]_INST_0_i_18_n_0 ),
        .I2(SHIFT_RIGHT3_carry_i_12_n_0),
        .I3(\ALU_OUT[6]_INST_0_i_19_n_0 ),
        .I4(SHIFT_RIGHT3_carry_i_10_n_0),
        .I5(\ALU_OUT[6]_INST_0_i_20_n_0 ),
        .O(\ALU_OUT[6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h555555775F5F5577)) 
    \ALU_OUT[6]_INST_0_i_13 
       (.I0(D1[15]),
        .I1(D2[4]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D2[3]),
        .I4(D2[15]),
        .I5(SHIFT_LEFT2[3]),
        .O(\ALU_OUT[6]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    \ALU_OUT[6]_INST_0_i_14 
       (.I0(D1[10]),
        .I1(SHIFT_LEFT2[3]),
        .I2(D2[15]),
        .I3(D2[3]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(\ALU_OUT[6]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h0F440F77)) 
    \ALU_OUT[6]_INST_0_i_15 
       (.I0(D1[14]),
        .I1(SHIFT_RIGHT3_carry__2_i_9_n_0),
        .I2(D1[15]),
        .I3(SHIFT_RIGHT3_carry__2_i_8_n_0),
        .I4(D1[6]),
        .O(\ALU_OUT[6]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFF00100000)) 
    \ALU_OUT[6]_INST_0_i_16 
       (.I0(D2[3]),
        .I1(D2[2]),
        .I2(D1[3]),
        .I3(D2[4]),
        .I4(D2[1]),
        .I5(\ALU_OUT[8]_INST_0_i_9_n_0 ),
        .O(\ALU_OUT[6]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0C0C0C0A0C)) 
    \ALU_OUT[6]_INST_0_i_17 
       (.I0(D1[14]),
        .I1(D1[6]),
        .I2(SHIFT_RIGHT3_carry__2_i_8_n_0),
        .I3(D2[3]),
        .I4(D2[15]),
        .I5(SHIFT_LEFT2[3]),
        .O(\ALU_OUT[6]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFBBFCB8FFFFFFFF)) 
    \ALU_OUT[6]_INST_0_i_18 
       (.I0(SHIFT_LEFT2[3]),
        .I1(D2[15]),
        .I2(D2[3]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[4]),
        .I5(D1[4]),
        .O(\ALU_OUT[6]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFBBFCB8FFFFFFFF)) 
    \ALU_OUT[6]_INST_0_i_19 
       (.I0(SHIFT_LEFT2[3]),
        .I1(D2[15]),
        .I2(D2[3]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[4]),
        .I5(D1[2]),
        .O(\ALU_OUT[6]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E0E0000000E0)) 
    \ALU_OUT[6]_INST_0_i_2 
       (.I0(\ALU_OUT[6]_INST_0_i_5_n_0 ),
        .I1(\ALU_OUT[14]_INST_0_i_3_n_0 ),
        .I2(ALU_OPP[0]),
        .I3(\ALU_OUT[6]_INST_0_i_6_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I5(\ALU_OUT[6]_INST_0_i_7_n_0 ),
        .O(\ALU_OUT[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBBFCB8FFFFFFFF)) 
    \ALU_OUT[6]_INST_0_i_20 
       (.I0(SHIFT_LEFT2[3]),
        .I1(D2[15]),
        .I2(D2[3]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[4]),
        .I5(D1[6]),
        .O(\ALU_OUT[6]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h4444444455544454)) 
    \ALU_OUT[6]_INST_0_i_3 
       (.I0(ALU_OPP[0]),
        .I1(\ALU_OUT[6]_INST_0_i_8_n_0 ),
        .I2(\ALU_OUT[6]_INST_0_i_9_n_0 ),
        .I3(D2[0]),
        .I4(\ALU_OUT[7]_INST_0_i_11_n_0 ),
        .I5(\ALU_OUT[14]_INST_0_i_11_n_0 ),
        .O(\ALU_OUT[6]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[6]_INST_0_i_4 
       (.I0(data1[6]),
        .I1(ALU_OPP[0]),
        .I2(data0[6]),
        .O(\ALU_OUT[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5510551055105555)) 
    \ALU_OUT[6]_INST_0_i_5 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[6]_INST_0_i_10_n_0 ),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I3(\ALU_OUT[6]_INST_0_i_11_n_0 ),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I5(\ALU_OUT[6]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \ALU_OUT[6]_INST_0_i_6 
       (.I0(\ALU_OUT[7]_INST_0_i_13_n_0 ),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(\ALU_OUT[6]_INST_0_i_13_n_0 ),
        .I3(\ALU_OUT[6]_INST_0_i_14_n_0 ),
        .I4(SHIFT_RIGHT3_carry_i_10_n_0),
        .I5(\ALU_OUT[6]_INST_0_i_15_n_0 ),
        .O(\ALU_OUT[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFBAAFBFFAAAAAAAA)) 
    \ALU_OUT[6]_INST_0_i_7 
       (.I0(\ALU_OUT[13]_INST_0_i_6_n_0 ),
        .I1(\ALU_OUT[6]_INST_0_i_13_n_0 ),
        .I2(\ALU_OUT[9]_INST_0_i_13_n_0 ),
        .I3(SHIFT_RIGHT3_carry_i_12_n_0),
        .I4(\ALU_OUT[7]_INST_0_i_12_n_0 ),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .O(\ALU_OUT[6]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALU_OUT[6]_INST_0_i_8 
       (.I0(\ALU_OUT[6]_INST_0_i_16_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[7]_INST_0_i_16_n_0 ),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .O(\ALU_OUT[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \ALU_OUT[6]_INST_0_i_9 
       (.I0(\ALU_OUT[8]_INST_0_i_10_n_0 ),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(D1[10]),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I4(SHIFT_RIGHT3_carry_i_10_n_0),
        .I5(\ALU_OUT[6]_INST_0_i_17_n_0 ),
        .O(\ALU_OUT[6]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551055)) 
    \ALU_OUT[7]_INST_0 
       (.I0(\ALU_OUT[7]_INST_0_i_1_n_0 ),
        .I1(\ALU_OUT[7]_INST_0_i_2_n_0 ),
        .I2(\ALU_OUT[7]_INST_0_i_3_n_0 ),
        .I3(ALU_OPP[1]),
        .I4(\ALU_OUT[7]_INST_0_i_4_n_0 ),
        .I5(\ALU_OUT[7]_INST_0_i_5_n_0 ),
        .O(ALU_OUT[7]));
  LUT5 #(
    .INIT(32'hAAAABABF)) 
    \ALU_OUT[7]_INST_0_i_1 
       (.I0(ALU_OPP[3]),
        .I1(data1[7]),
        .I2(ALU_OPP[0]),
        .I3(data0[7]),
        .I4(ALU_OPP[1]),
        .O(\ALU_OUT[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00B8B8)) 
    \ALU_OUT[7]_INST_0_i_10 
       (.I0(\ALU_OUT[8]_INST_0_i_9_n_0 ),
        .I1(D2[1]),
        .I2(\ALU_OUT[10]_INST_0_i_16_n_0 ),
        .I3(\ALU_OUT[7]_INST_0_i_16_n_0 ),
        .I4(D2[0]),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .O(\ALU_OUT[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALU_OUT[7]_INST_0_i_11 
       (.I0(D1[13]),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(D1[9]),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I4(SHIFT_RIGHT3_carry_i_12_n_0),
        .I5(\ALU_OUT[7]_INST_0_i_17_n_0 ),
        .O(\ALU_OUT[7]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00FF4747)) 
    \ALU_OUT[7]_INST_0_i_12 
       (.I0(D1[11]),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(D1[7]),
        .I3(D1[15]),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .O(\ALU_OUT[7]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00FF4747)) 
    \ALU_OUT[7]_INST_0_i_13 
       (.I0(D1[12]),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(D1[8]),
        .I3(D1[15]),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .O(\ALU_OUT[7]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4540FFFF757F)) 
    \ALU_OUT[7]_INST_0_i_14 
       (.I0(D1[0]),
        .I1(SHIFT_LEFT2[2]),
        .I2(D2[15]),
        .I3(D2[2]),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I5(D1[4]),
        .O(\ALU_OUT[7]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4540FFFF757F)) 
    \ALU_OUT[7]_INST_0_i_15 
       (.I0(D1[2]),
        .I1(SHIFT_LEFT2[2]),
        .I2(D2[15]),
        .I3(D2[2]),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I5(D1[6]),
        .O(\ALU_OUT[7]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \ALU_OUT[7]_INST_0_i_16 
       (.I0(\ALU_OUT[7]_INST_0_i_18_n_0 ),
        .I1(D2[1]),
        .I2(D1[6]),
        .I3(D2[2]),
        .I4(D1[2]),
        .I5(\ALU_OUT[9]_INST_0_i_14_n_0 ),
        .O(\ALU_OUT[7]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0B083B3B0B080B08)) 
    \ALU_OUT[7]_INST_0_i_17 
       (.I0(D1[11]),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I3(D1[7]),
        .I4(\ALU_OUT[0]_INST_0_i_11_n_0 ),
        .I5(D1[15]),
        .O(\ALU_OUT[7]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALU_OUT[7]_INST_0_i_18 
       (.I0(D1[0]),
        .I1(D2[2]),
        .I2(D2[3]),
        .I3(D1[4]),
        .I4(D2[4]),
        .O(\ALU_OUT[7]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h55545504FFFFFFFF)) 
    \ALU_OUT[7]_INST_0_i_2 
       (.I0(\ALU_OUT[13]_INST_0_i_6_n_0 ),
        .I1(\ALU_OUT[7]_INST_0_i_6_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I4(\ALU_OUT[7]_INST_0_i_7_n_0 ),
        .I5(ALU_OPP[0]),
        .O(\ALU_OUT[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDFFFF555F)) 
    \ALU_OUT[7]_INST_0_i_3 
       (.I0(D2[15]),
        .I1(D1[0]),
        .I2(\ALU_OUT[7]_INST_0_i_8_n_0 ),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I4(\ALU_OUT[7]_INST_0_i_9_n_0 ),
        .I5(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .O(\ALU_OUT[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4444444455544454)) 
    \ALU_OUT[7]_INST_0_i_4 
       (.I0(ALU_OPP[0]),
        .I1(\ALU_OUT[7]_INST_0_i_10_n_0 ),
        .I2(\ALU_OUT[7]_INST_0_i_11_n_0 ),
        .I3(D2[0]),
        .I4(\ALU_OUT[8]_INST_0_i_8_n_0 ),
        .I5(\ALU_OUT[14]_INST_0_i_11_n_0 ),
        .O(\ALU_OUT[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h800A08AA2AA0A200)) 
    \ALU_OUT[7]_INST_0_i_5 
       (.I0(ALU_OPP[3]),
        .I1(ALU_OPP[0]),
        .I2(D2[7]),
        .I3(D1[7]),
        .I4(ALU_OPP[1]),
        .I5(ALU_OPP[2]),
        .O(\ALU_OUT[7]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h07FF0700)) 
    \ALU_OUT[7]_INST_0_i_6 
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I1(D1[15]),
        .I2(\ALU_OUT[9]_INST_0_i_13_n_0 ),
        .I3(SHIFT_RIGHT3_carry_i_12_n_0),
        .I4(\ALU_OUT[7]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[7]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h07FF0700)) 
    \ALU_OUT[7]_INST_0_i_7 
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I1(D1[15]),
        .I2(\ALU_OUT[10]_INST_0_i_11_n_0 ),
        .I3(SHIFT_RIGHT3_carry_i_12_n_0),
        .I4(\ALU_OUT[7]_INST_0_i_13_n_0 ),
        .O(\ALU_OUT[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF4F7FFFFF4F70000)) 
    \ALU_OUT[7]_INST_0_i_8 
       (.I0(D1[1]),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I3(D1[5]),
        .I4(SHIFT_RIGHT3_carry_i_12_n_0),
        .I5(\ALU_OUT[10]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF470047004700)) 
    \ALU_OUT[7]_INST_0_i_9 
       (.I0(\ALU_OUT[7]_INST_0_i_14_n_0 ),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(\ALU_OUT[7]_INST_0_i_15_n_0 ),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I4(SHIFT_RIGHT3_carry__0_n_5),
        .I5(D1[0]),
        .O(\ALU_OUT[7]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB88888)) 
    \ALU_OUT[8]_INST_0 
       (.I0(\ALU_OUT[8]_INST_0_i_1_n_0 ),
        .I1(ALU_OPP[3]),
        .I2(\ALU_OUT[8]_INST_0_i_2_n_0 ),
        .I3(\ALU_OUT[8]_INST_0_i_3_n_0 ),
        .I4(ALU_OPP[1]),
        .I5(\ALU_OUT[8]_INST_0_i_4_n_0 ),
        .O(ALU_OUT[8]));
  LUT5 #(
    .INIT(32'h966A5666)) 
    \ALU_OUT[8]_INST_0_i_1 
       (.I0(ALU_OPP[2]),
        .I1(D1[8]),
        .I2(D2[8]),
        .I3(ALU_OPP[1]),
        .I4(ALU_OPP[0]),
        .O(\ALU_OUT[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h03000300BBBB8B88)) 
    \ALU_OUT[8]_INST_0_i_10 
       (.I0(D1[12]),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(\ALU_OUT[0]_INST_0_i_11_n_0 ),
        .I3(D1[15]),
        .I4(D1[8]),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .O(\ALU_OUT[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B1FF0000)) 
    \ALU_OUT[8]_INST_0_i_2 
       (.I0(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I1(\ALU_OUT[8]_INST_0_i_5_n_0 ),
        .I2(D1[0]),
        .I3(D2[15]),
        .I4(ALU_OPP[0]),
        .I5(\ALU_OUT[8]_INST_0_i_6_n_0 ),
        .O(\ALU_OUT[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444455544454)) 
    \ALU_OUT[8]_INST_0_i_3 
       (.I0(ALU_OPP[0]),
        .I1(\ALU_OUT[8]_INST_0_i_7_n_0 ),
        .I2(\ALU_OUT[8]_INST_0_i_8_n_0 ),
        .I3(D2[0]),
        .I4(\ALU_OUT[9]_INST_0_i_8_n_0 ),
        .I5(\ALU_OUT[14]_INST_0_i_11_n_0 ),
        .O(\ALU_OUT[8]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALU_OUT[8]_INST_0_i_4 
       (.I0(data1[8]),
        .I1(ALU_OPP[0]),
        .I2(data0[8]),
        .O(\ALU_OUT[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000EE0EEE0EEE0E)) 
    \ALU_OUT[8]_INST_0_i_5 
       (.I0(\ALU_OUT[9]_INST_0_i_9_n_0 ),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I3(\ALU_OUT[7]_INST_0_i_8_n_0 ),
        .I4(D1[0]),
        .I5(SHIFT_RIGHT3_carry__0_n_4),
        .O(\ALU_OUT[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000032020000FECE)) 
    \ALU_OUT[8]_INST_0_i_6 
       (.I0(\ALU_OUT[7]_INST_0_i_7_n_0 ),
        .I1(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[9]_INST_0_i_11_n_0 ),
        .I4(D2[15]),
        .I5(D1[15]),
        .O(\ALU_OUT[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \ALU_OUT[8]_INST_0_i_7 
       (.I0(\ALU_OUT[8]_INST_0_i_9_n_0 ),
        .I1(D2[1]),
        .I2(\ALU_OUT[10]_INST_0_i_16_n_0 ),
        .I3(D2[0]),
        .I4(\ALU_OUT[9]_INST_0_i_12_n_0 ),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .O(\ALU_OUT[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALU_OUT[8]_INST_0_i_8 
       (.I0(D1[14]),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(D1[10]),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I4(SHIFT_RIGHT3_carry_i_12_n_0),
        .I5(\ALU_OUT[8]_INST_0_i_10_n_0 ),
        .O(\ALU_OUT[8]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \ALU_OUT[8]_INST_0_i_9 
       (.I0(D1[1]),
        .I1(D2[2]),
        .I2(D1[5]),
        .I3(D2[3]),
        .I4(D2[4]),
        .O(\ALU_OUT[8]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8B8BBB8)) 
    \ALU_OUT[9]_INST_0 
       (.I0(\ALU_OUT[9]_INST_0_i_1_n_0 ),
        .I1(ALU_OPP[3]),
        .I2(\ALU_OUT[9]_INST_0_i_2_n_0 ),
        .I3(\ALU_OUT[9]_INST_0_i_3_n_0 ),
        .I4(\ALU_OUT[9]_INST_0_i_4_n_0 ),
        .I5(\ALU_OUT[9]_INST_0_i_5_n_0 ),
        .O(ALU_OUT[9]));
  LUT5 #(
    .INIT(32'h966A5666)) 
    \ALU_OUT[9]_INST_0_i_1 
       (.I0(ALU_OPP[2]),
        .I1(D1[9]),
        .I2(D2[9]),
        .I3(ALU_OPP[1]),
        .I4(ALU_OPP[0]),
        .O(\ALU_OUT[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F888FFF88888888)) 
    \ALU_OUT[9]_INST_0_i_10 
       (.I0(SHIFT_RIGHT3_carry__1_n_7),
        .I1(D1[0]),
        .I2(\ALU_OUT[10]_INST_0_i_12_n_0 ),
        .I3(SHIFT_RIGHT3_carry_i_12_n_0),
        .I4(\ALU_OUT[12]_INST_0_i_10_n_0 ),
        .I5(\ALU_OUT[11]_INST_0_i_12_n_0 ),
        .O(\ALU_OUT[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0010F0B0001FFFBF)) 
    \ALU_OUT[9]_INST_0_i_11 
       (.I0(SHIFT_RIGHT3_carry_i_10_n_0),
        .I1(D1[11]),
        .I2(SHIFT_RIGHT3_carry_i_12_n_0),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I4(D1[15]),
        .I5(\ALU_OUT[9]_INST_0_i_13_n_0 ),
        .O(\ALU_OUT[9]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \ALU_OUT[9]_INST_0_i_12 
       (.I0(D1[6]),
        .I1(D2[2]),
        .I2(D1[2]),
        .I3(\ALU_OUT[9]_INST_0_i_14_n_0 ),
        .I4(D2[1]),
        .I5(\ALU_OUT[10]_INST_0_i_14_n_0 ),
        .O(\ALU_OUT[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABF8A80)) 
    \ALU_OUT[9]_INST_0_i_13 
       (.I0(D1[13]),
        .I1(SHIFT_LEFT2[2]),
        .I2(D2[15]),
        .I3(D2[2]),
        .I4(D1[9]),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .O(\ALU_OUT[9]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ALU_OUT[9]_INST_0_i_14 
       (.I0(D2[4]),
        .I1(D2[3]),
        .O(\ALU_OUT[9]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00007775FFFFFFFF)) 
    \ALU_OUT[9]_INST_0_i_2 
       (.I0(\ALU_OUT[9]_INST_0_i_6_n_0 ),
        .I1(\ALU_OUT[9]_INST_0_i_7_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[9]_INST_0_i_8_n_0 ),
        .I4(ALU_OPP[0]),
        .I5(ALU_OPP[1]),
        .O(\ALU_OUT[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDFFFF55F5)) 
    \ALU_OUT[9]_INST_0_i_3 
       (.I0(D2[15]),
        .I1(D1[0]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I3(\ALU_OUT[9]_INST_0_i_9_n_0 ),
        .I4(\ALU_OUT[9]_INST_0_i_10_n_0 ),
        .I5(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .O(\ALU_OUT[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55545504FFFFFFFF)) 
    \ALU_OUT[9]_INST_0_i_4 
       (.I0(\ALU_OUT[13]_INST_0_i_6_n_0 ),
        .I1(\ALU_OUT[9]_INST_0_i_11_n_0 ),
        .I2(D2[0]),
        .I3(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I4(\ALU_OUT[10]_INST_0_i_6_n_0 ),
        .I5(ALU_OPP[0]),
        .O(\ALU_OUT[9]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \ALU_OUT[9]_INST_0_i_5 
       (.I0(ALU_OPP[1]),
        .I1(data0[9]),
        .I2(ALU_OPP[0]),
        .I3(data1[9]),
        .O(\ALU_OUT[9]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF47)) 
    \ALU_OUT[9]_INST_0_i_6 
       (.I0(\ALU_OUT[9]_INST_0_i_12_n_0 ),
        .I1(D2[0]),
        .I2(\ALU_OUT[10]_INST_0_i_10_n_0 ),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .O(\ALU_OUT[9]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \ALU_OUT[9]_INST_0_i_7 
       (.I0(\ALU_OUT[14]_INST_0_i_11_n_0 ),
        .I1(\ALU_OUT[10]_INST_0_i_13_n_0 ),
        .I2(SHIFT_RIGHT3_carry_i_12_n_0),
        .I3(\ALU_OUT[10]_INST_0_i_11_n_0 ),
        .I4(D2[0]),
        .O(\ALU_OUT[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALU_OUT[9]_INST_0_i_8 
       (.I0(D1[15]),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(D1[11]),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I4(SHIFT_RIGHT3_carry_i_12_n_0),
        .I5(\ALU_OUT[9]_INST_0_i_13_n_0 ),
        .O(\ALU_OUT[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF4F7FFFFF4F70000)) 
    \ALU_OUT[9]_INST_0_i_9 
       (.I0(D1[2]),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I3(D1[6]),
        .I4(SHIFT_RIGHT3_carry_i_12_n_0),
        .I5(\ALU_OUT[11]_INST_0_i_11_n_0 ),
        .O(\ALU_OUT[9]_INST_0_i_9_n_0 ));
  CARRY4 ALU_OUT_Internal0_carry
       (.CI(1'b0),
        .CO({ALU_OUT_Internal0_carry_n_0,NLW_ALU_OUT_Internal0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(D1[3:0]),
        .O(data0[3:0]),
        .S({ALU_OUT_Internal0_carry_i_1_n_0,ALU_OUT_Internal0_carry_i_2_n_0,ALU_OUT_Internal0_carry_i_3_n_0,ALU_OUT_Internal0_carry_i_4_n_0}));
  CARRY4 ALU_OUT_Internal0_carry__0
       (.CI(ALU_OUT_Internal0_carry_n_0),
        .CO({ALU_OUT_Internal0_carry__0_n_0,NLW_ALU_OUT_Internal0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(D1[7:4]),
        .O(data0[7:4]),
        .S({ALU_OUT_Internal0_carry__0_i_1_n_0,ALU_OUT_Internal0_carry__0_i_2_n_0,ALU_OUT_Internal0_carry__0_i_3_n_0,ALU_OUT_Internal0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__0_i_1
       (.I0(D1[7]),
        .I1(D2[7]),
        .O(ALU_OUT_Internal0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__0_i_2
       (.I0(D1[6]),
        .I1(D2[6]),
        .O(ALU_OUT_Internal0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__0_i_3
       (.I0(D1[5]),
        .I1(D2[5]),
        .O(ALU_OUT_Internal0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__0_i_4
       (.I0(D1[4]),
        .I1(D2[4]),
        .O(ALU_OUT_Internal0_carry__0_i_4_n_0));
  CARRY4 ALU_OUT_Internal0_carry__1
       (.CI(ALU_OUT_Internal0_carry__0_n_0),
        .CO({ALU_OUT_Internal0_carry__1_n_0,NLW_ALU_OUT_Internal0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(D1[11:8]),
        .O(data0[11:8]),
        .S({ALU_OUT_Internal0_carry__1_i_1_n_0,ALU_OUT_Internal0_carry__1_i_2_n_0,ALU_OUT_Internal0_carry__1_i_3_n_0,ALU_OUT_Internal0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__1_i_1
       (.I0(D1[11]),
        .I1(D2[11]),
        .O(ALU_OUT_Internal0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__1_i_2
       (.I0(D1[10]),
        .I1(D2[10]),
        .O(ALU_OUT_Internal0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__1_i_3
       (.I0(D1[9]),
        .I1(D2[9]),
        .O(ALU_OUT_Internal0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__1_i_4
       (.I0(D1[8]),
        .I1(D2[8]),
        .O(ALU_OUT_Internal0_carry__1_i_4_n_0));
  CARRY4 ALU_OUT_Internal0_carry__2
       (.CI(ALU_OUT_Internal0_carry__1_n_0),
        .CO({ALU_OUT_Internal0_carry__2_n_0,NLW_ALU_OUT_Internal0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({ALU_OUT_Internal0_carry__2_i_1_n_0,D1[14:12]}),
        .O(data0[15:12]),
        .S({ALU_OUT_Internal0_carry__2_i_2_n_0,ALU_OUT_Internal0_carry__2_i_3_n_0,ALU_OUT_Internal0_carry__2_i_4_n_0,ALU_OUT_Internal0_carry__2_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    ALU_OUT_Internal0_carry__2_i_1
       (.I0(D1[15]),
        .O(ALU_OUT_Internal0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__2_i_2
       (.I0(D1[15]),
        .I1(D2[15]),
        .O(ALU_OUT_Internal0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__2_i_3
       (.I0(D1[14]),
        .I1(D2[14]),
        .O(ALU_OUT_Internal0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__2_i_4
       (.I0(D1[13]),
        .I1(D2[13]),
        .O(ALU_OUT_Internal0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry__2_i_5
       (.I0(D1[12]),
        .I1(D2[12]),
        .O(ALU_OUT_Internal0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry_i_1
       (.I0(D1[3]),
        .I1(D2[3]),
        .O(ALU_OUT_Internal0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry_i_2
       (.I0(D1[2]),
        .I1(D2[2]),
        .O(ALU_OUT_Internal0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry_i_3
       (.I0(D1[1]),
        .I1(D2[1]),
        .O(ALU_OUT_Internal0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ALU_OUT_Internal0_carry_i_4
       (.I0(D1[0]),
        .I1(D2[0]),
        .O(ALU_OUT_Internal0_carry_i_4_n_0));
  CARRY4 \ALU_OUT_Internal0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ALU_OUT_Internal0_inferred__0/i__carry_n_0 ,\NLW_ALU_OUT_Internal0_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(D1[3:0]),
        .O(data1[3:0]),
        .S({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}));
  CARRY4 \ALU_OUT_Internal0_inferred__0/i__carry__0 
       (.CI(\ALU_OUT_Internal0_inferred__0/i__carry_n_0 ),
        .CO({\ALU_OUT_Internal0_inferred__0/i__carry__0_n_0 ,\NLW_ALU_OUT_Internal0_inferred__0/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(D1[7:4]),
        .O(data1[7:4]),
        .S({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}));
  CARRY4 \ALU_OUT_Internal0_inferred__0/i__carry__1 
       (.CI(\ALU_OUT_Internal0_inferred__0/i__carry__0_n_0 ),
        .CO({\ALU_OUT_Internal0_inferred__0/i__carry__1_n_0 ,\NLW_ALU_OUT_Internal0_inferred__0/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(D1[11:8]),
        .O(data1[11:8]),
        .S({i__carry__1_i_1__1_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  CARRY4 \ALU_OUT_Internal0_inferred__0/i__carry__2 
       (.CI(\ALU_OUT_Internal0_inferred__0/i__carry__1_n_0 ),
        .CO({\ALU_OUT_Internal0_inferred__0/i__carry__2_n_0 ,\NLW_ALU_OUT_Internal0_inferred__0/i__carry__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,D1[14:12]}),
        .O(data1[15:12]),
        .S({i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4_n_0,i__carry__2_i_5_n_0}));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    BIGGER_ZERO_FLAG_INST_0
       (.I0(ZERO_FLAG_INST_0_i_1_n_0),
        .I1(ZERO_FLAG_INST_0_i_2_n_0),
        .I2(ZERO_FLAG_INST_0_i_3_n_0),
        .I3(ZERO_FLAG_INST_0_i_4_n_0),
        .I4(ZERO_FLAG_INST_0_i_5_n_0),
        .I5(\immediate_s_reg[1] ),
        .O(BIGGER_ZERO_FLAG));
  LUT6 #(
    .INIT(64'h4444444454554444)) 
    CARRY_FLAG_INST_0
       (.I0(ALU_OPP[3]),
        .I1(CARRY_FLAG_INST_0_i_1_n_0),
        .I2(CARRY_FLAG_INST_0_i_2_n_0),
        .I3(CARRY_FLAG_INST_0_i_3_n_0),
        .I4(ALU_OPP[1]),
        .I5(CARRY_FLAG_INST_0_i_4_n_0),
        .O(CARRY_FLAG));
  LUT4 #(
    .INIT(16'h0151)) 
    CARRY_FLAG_INST_0_i_1
       (.I0(ALU_OPP[1]),
        .I1(CARRY_FLAG_INST_0_i_5_n_3),
        .I2(ALU_OPP[0]),
        .I3(CARRY_FLAG_INST_0_i_6_n_3),
        .O(CARRY_FLAG_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FF550F33)) 
    CARRY_FLAG_INST_0_i_10
       (.I0(D1[0]),
        .I1(D1[15]),
        .I2(D1[8]),
        .I3(SHIFT_RIGHT3_carry__2_i_9_n_0),
        .I4(SHIFT_RIGHT3_carry__2_i_8_n_0),
        .I5(SHIFT_RIGHT3_carry_i_10_n_0),
        .O(CARRY_FLAG_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'hDDDCCCDCDDDFFFDF)) 
    CARRY_FLAG_INST_0_i_11
       (.I0(D1[4]),
        .I1(SHIFT_RIGHT3_carry__2_i_8_n_0),
        .I2(D2[3]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[3]),
        .I5(D1[12]),
        .O(CARRY_FLAG_INST_0_i_11_n_0));
  LUT4 #(
    .INIT(16'h3022)) 
    CARRY_FLAG_INST_0_i_12
       (.I0(D1[12]),
        .I1(D2[4]),
        .I2(D1[4]),
        .I3(D2[3]),
        .O(CARRY_FLAG_INST_0_i_12_n_0));
  LUT6 #(
    .INIT(64'h00000000F5F503F3)) 
    CARRY_FLAG_INST_0_i_13
       (.I0(D1[0]),
        .I1(D1[15]),
        .I2(D2[3]),
        .I3(D1[8]),
        .I4(D2[4]),
        .I5(D2[2]),
        .O(CARRY_FLAG_INST_0_i_13_n_0));
  LUT4 #(
    .INIT(16'hE2FF)) 
    CARRY_FLAG_INST_0_i_14
       (.I0(D2[4]),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D1[2]),
        .O(CARRY_FLAG_INST_0_i_14_n_0));
  LUT4 #(
    .INIT(16'hE2FF)) 
    CARRY_FLAG_INST_0_i_15
       (.I0(D2[4]),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[4]),
        .I3(D1[10]),
        .O(CARRY_FLAG_INST_0_i_15_n_0));
  LUT6 #(
    .INIT(64'hFF77CF47FFFFFFFF)) 
    CARRY_FLAG_INST_0_i_16
       (.I0(SHIFT_LEFT2[3]),
        .I1(D2[15]),
        .I2(D2[3]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[4]),
        .I5(D1[6]),
        .O(CARRY_FLAG_INST_0_i_16_n_0));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    CARRY_FLAG_INST_0_i_17
       (.I0(D1[14]),
        .I1(SHIFT_LEFT2[3]),
        .I2(D2[15]),
        .I3(D2[3]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(CARRY_FLAG_INST_0_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFF5DDDD5555DDDD)) 
    CARRY_FLAG_INST_0_i_2
       (.I0(ALU_OPP[0]),
        .I1(D1[15]),
        .I2(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I3(SHIFT_RIGHT3_carry__2_n_4),
        .I4(D2[15]),
        .I5(D1[0]),
        .O(CARRY_FLAG_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF45FF)) 
    CARRY_FLAG_INST_0_i_3
       (.I0(CARRY_FLAG_INST_0_i_7_n_0),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_8_n_0),
        .I2(D2[0]),
        .I3(D2[15]),
        .I4(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I5(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .O(CARRY_FLAG_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000FDFCFD00)) 
    CARRY_FLAG_INST_0_i_4
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_12_n_0),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .I2(CARRY_FLAG_INST_0_i_8_n_0),
        .I3(D2[0]),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_13_n_0),
        .I5(ALU_OPP[0]),
        .O(CARRY_FLAG_INST_0_i_4_n_0));
  CARRY4 CARRY_FLAG_INST_0_i_5
       (.CI(ALU_OUT_Internal0_carry__2_n_0),
        .CO({NLW_CARRY_FLAG_INST_0_i_5_CO_UNCONNECTED[3:1],CARRY_FLAG_INST_0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY_FLAG_INST_0_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 CARRY_FLAG_INST_0_i_6
       (.CI(\ALU_OUT_Internal0_inferred__0/i__carry__2_n_0 ),
        .CO({NLW_CARRY_FLAG_INST_0_i_6_CO_UNCONNECTED[3:1],CARRY_FLAG_INST_0_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CARRY_FLAG_INST_0_i_6_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT6 #(
    .INIT(64'h0050005300530053)) 
    CARRY_FLAG_INST_0_i_7
       (.I0(CARRY_FLAG_INST_0_i_9_n_0),
        .I1(CARRY_FLAG_INST_0_i_10_n_0),
        .I2(SHIFT_RIGHT3_carry_i_12_n_0),
        .I3(D2[0]),
        .I4(SHIFT_RIGHT3_carry_i_10_n_0),
        .I5(CARRY_FLAG_INST_0_i_11_n_0),
        .O(CARRY_FLAG_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h00000000FFF400F4)) 
    CARRY_FLAG_INST_0_i_8
       (.I0(CARRY_FLAG_INST_0_i_12_n_0),
        .I1(D2[2]),
        .I2(CARRY_FLAG_INST_0_i_13_n_0),
        .I3(D2[1]),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_29_n_0),
        .I5(D2[0]),
        .O(CARRY_FLAG_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    CARRY_FLAG_INST_0_i_9
       (.I0(CARRY_FLAG_INST_0_i_14_n_0),
        .I1(SHIFT_RIGHT3_carry__2_i_9_n_0),
        .I2(CARRY_FLAG_INST_0_i_15_n_0),
        .I3(SHIFT_RIGHT3_carry_i_10_n_0),
        .I4(CARRY_FLAG_INST_0_i_16_n_0),
        .I5(CARRY_FLAG_INST_0_i_17_n_0),
        .O(CARRY_FLAG_INST_0_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    NOT_ZERO_FLAG_INST_0
       (.I0(ZERO_FLAG_INST_0_i_5_n_0),
        .I1(ZERO_FLAG_INST_0_i_4_n_0),
        .I2(ZERO_FLAG_INST_0_i_3_n_0),
        .I3(ZERO_FLAG_INST_0_i_2_n_0),
        .I4(ZERO_FLAG_INST_0_i_1_n_0),
        .I5(\immediate_s_reg[1] ),
        .O(NOT_ZERO_FLAG));
  LUT4 #(
    .INIT(16'h1482)) 
    OVERFLOW_FLAG_INST_0
       (.I0(\immediate_s_reg[1] ),
        .I1(D2[15]),
        .I2(ALU_OPP[0]),
        .I3(D1[15]),
        .O(OVERFLOW_FLAG));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \SHIFT_RIGHT2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\SHIFT_RIGHT2_inferred__0/i__carry_n_0 ,\NLW_SHIFT_RIGHT2_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,D2[5],i__carry_i_2_n_0,D2[1]}),
        .O(\NLW_SHIFT_RIGHT2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \SHIFT_RIGHT2_inferred__0/i__carry__0 
       (.CI(\SHIFT_RIGHT2_inferred__0/i__carry_n_0 ),
        .CO({\SHIFT_RIGHT2_inferred__0/i__carry__0_n_0 ,\NLW_SHIFT_RIGHT2_inferred__0/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_SHIFT_RIGHT2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \SHIFT_RIGHT2_inferred__0/i__carry__1 
       (.CI(\SHIFT_RIGHT2_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_SHIFT_RIGHT2_inferred__0/i__carry__1_CO_UNCONNECTED [3:1],\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_SHIFT_RIGHT2_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__1_i_1__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SHIFT_RIGHT3_carry
       (.CI(1'b0),
        .CO({SHIFT_RIGHT3_carry_n_0,NLW_SHIFT_RIGHT3_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(SHIFT_RIGHT4[0]),
        .DI(SHIFT_RIGHT4[4:1]),
        .O({SHIFT_RIGHT3_carry_n_4,SHIFT_RIGHT3_carry_n_5,SHIFT_RIGHT3_carry_n_6,SHIFT_RIGHT3_carry_n_7}),
        .S({SHIFT_RIGHT3_carry_i_6_n_0,SHIFT_RIGHT3_carry_i_7_n_0,SHIFT_RIGHT3_carry_i_8_n_0,SHIFT_RIGHT3_carry_i_9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SHIFT_RIGHT3_carry__0
       (.CI(SHIFT_RIGHT3_carry_n_0),
        .CO({SHIFT_RIGHT3_carry__0_n_0,NLW_SHIFT_RIGHT3_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(SHIFT_RIGHT4[8:5]),
        .O({SHIFT_RIGHT3_carry__0_n_4,SHIFT_RIGHT3_carry__0_n_5,SHIFT_RIGHT3_carry__0_n_6,SHIFT_RIGHT3_carry__0_n_7}),
        .S({SHIFT_RIGHT3_carry__0_i_5_n_0,SHIFT_RIGHT3_carry__0_i_6_n_0,SHIFT_RIGHT3_carry__0_i_7_n_0,SHIFT_RIGHT3_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000011011)) 
    SHIFT_RIGHT3_carry__0_i_1
       (.I0(SHIFT_RIGHT3_carry_i_10_n_0),
        .I1(D2[0]),
        .I2(D2[15]),
        .I3(D2[1]),
        .I4(SHIFT_LEFT2[1]),
        .I5(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .O(SHIFT_RIGHT4[8]));
  LUT6 #(
    .INIT(64'h0000000080808800)) 
    SHIFT_RIGHT3_carry__0_i_2
       (.I0(SHIFT_RIGHT3_carry_i_10_n_0),
        .I1(D2[0]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[1]),
        .I4(D2[15]),
        .I5(SHIFT_RIGHT3_carry_i_11_n_0),
        .O(SHIFT_RIGHT4[7]));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    SHIFT_RIGHT3_carry__0_i_3
       (.I0(SHIFT_RIGHT3_carry_i_12_n_0),
        .I1(D2[0]),
        .I2(SHIFT_LEFT2[2]),
        .I3(D2[15]),
        .I4(D2[2]),
        .I5(SHIFT_RIGHT3_carry_i_11_n_0),
        .O(SHIFT_RIGHT4[6]));
  LUT6 #(
    .INIT(64'h0000000008080088)) 
    SHIFT_RIGHT3_carry__0_i_4
       (.I0(SHIFT_RIGHT3_carry_i_10_n_0),
        .I1(D2[0]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[1]),
        .I4(D2[15]),
        .I5(SHIFT_RIGHT3_carry_i_11_n_0),
        .O(SHIFT_RIGHT4[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFA)) 
    SHIFT_RIGHT3_carry__0_i_5
       (.I0(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(SHIFT_RIGHT3_carry_i_10_n_0),
        .O(SHIFT_RIGHT3_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hABEFFFFFFFFFFFFF)) 
    SHIFT_RIGHT3_carry__0_i_6
       (.I0(SHIFT_RIGHT3_carry_i_11_n_0),
        .I1(D2[15]),
        .I2(D2[1]),
        .I3(SHIFT_LEFT2[1]),
        .I4(D2[0]),
        .I5(SHIFT_RIGHT3_carry_i_10_n_0),
        .O(SHIFT_RIGHT3_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFABFBFFFFFFFF)) 
    SHIFT_RIGHT3_carry__0_i_7
       (.I0(SHIFT_RIGHT3_carry_i_11_n_0),
        .I1(D2[2]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[2]),
        .I4(D2[0]),
        .I5(SHIFT_RIGHT3_carry_i_12_n_0),
        .O(SHIFT_RIGHT3_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFEBAFFFFFFFFFFFF)) 
    SHIFT_RIGHT3_carry__0_i_8
       (.I0(SHIFT_RIGHT3_carry_i_11_n_0),
        .I1(D2[15]),
        .I2(D2[1]),
        .I3(SHIFT_LEFT2[1]),
        .I4(D2[0]),
        .I5(SHIFT_RIGHT3_carry_i_10_n_0),
        .O(SHIFT_RIGHT3_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFBFFAFFBABF)) 
    SHIFT_RIGHT3_carry__0_i_9
       (.I0(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I1(SHIFT_LEFT2[3]),
        .I2(D2[15]),
        .I3(D2[3]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(SHIFT_RIGHT3_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SHIFT_RIGHT3_carry__1
       (.CI(SHIFT_RIGHT3_carry__0_n_0),
        .CO({SHIFT_RIGHT3_carry__1_n_0,NLW_SHIFT_RIGHT3_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(SHIFT_RIGHT4[12:9]),
        .O({SHIFT_RIGHT3_carry__1_n_4,SHIFT_RIGHT3_carry__1_n_5,SHIFT_RIGHT3_carry__1_n_6,SHIFT_RIGHT3_carry__1_n_7}),
        .S({SHIFT_RIGHT3_carry__1_i_5_n_0,SHIFT_RIGHT3_carry__1_i_6_n_0,SHIFT_RIGHT3_carry__1_i_7_n_0,SHIFT_RIGHT3_carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000404000404)) 
    SHIFT_RIGHT3_carry__1_i_1
       (.I0(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(D2[0]),
        .I3(D2[15]),
        .I4(D2[1]),
        .I5(SHIFT_LEFT2[1]),
        .O(SHIFT_RIGHT4[12]));
  LUT6 #(
    .INIT(64'h0004440400000000)) 
    SHIFT_RIGHT3_carry__1_i_2
       (.I0(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .I1(D2[0]),
        .I2(D2[2]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[2]),
        .I5(SHIFT_RIGHT3_carry_i_12_n_0),
        .O(SHIFT_RIGHT4[11]));
  LUT6 #(
    .INIT(64'h0004000000040404)) 
    SHIFT_RIGHT3_carry__1_i_3
       (.I0(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(D2[0]),
        .I3(SHIFT_LEFT2[2]),
        .I4(D2[15]),
        .I5(D2[2]),
        .O(SHIFT_RIGHT4[10]));
  LUT6 #(
    .INIT(64'h0010000000101010)) 
    SHIFT_RIGHT3_carry__1_i_4
       (.I0(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(D2[0]),
        .I3(SHIFT_LEFT2[2]),
        .I4(D2[15]),
        .I5(D2[2]),
        .O(SHIFT_RIGHT4[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFACFFFF)) 
    SHIFT_RIGHT3_carry__1_i_5
       (.I0(SHIFT_LEFT2[1]),
        .I1(D2[1]),
        .I2(D2[15]),
        .I3(D2[0]),
        .I4(SHIFT_RIGHT3_carry_i_10_n_0),
        .I5(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .O(SHIFT_RIGHT3_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFD5FFFF)) 
    SHIFT_RIGHT3_carry__1_i_6
       (.I0(SHIFT_RIGHT3_carry_i_12_n_0),
        .I1(SHIFT_LEFT2[2]),
        .I2(D2[15]),
        .I3(D2[2]),
        .I4(D2[0]),
        .I5(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .O(SHIFT_RIGHT3_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE2FFFF)) 
    SHIFT_RIGHT3_carry__1_i_7
       (.I0(D2[2]),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[2]),
        .I3(D2[0]),
        .I4(SHIFT_RIGHT3_carry_i_12_n_0),
        .I5(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .O(SHIFT_RIGHT3_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE2FF)) 
    SHIFT_RIGHT3_carry__1_i_8
       (.I0(D2[2]),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[2]),
        .I3(D2[0]),
        .I4(SHIFT_RIGHT3_carry_i_12_n_0),
        .I5(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .O(SHIFT_RIGHT3_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 SHIFT_RIGHT3_carry__2
       (.CI(SHIFT_RIGHT3_carry__1_n_0),
        .CO(NLW_SHIFT_RIGHT3_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,SHIFT_RIGHT4[15:13]}),
        .O({SHIFT_RIGHT3_carry__2_n_4,SHIFT_RIGHT3_carry__2_n_5,SHIFT_RIGHT3_carry__2_n_6,SHIFT_RIGHT3_carry__2_n_7}),
        .S({SHIFT_RIGHT3_carry__2_i_4_n_0,SHIFT_RIGHT3_carry__2_i_5_n_0,SHIFT_RIGHT3_carry__2_i_6_n_0,SHIFT_RIGHT3_carry__2_i_7_n_0}));
  LUT6 #(
    .INIT(64'h0000000080808800)) 
    SHIFT_RIGHT3_carry__2_i_1
       (.I0(SHIFT_RIGHT3_carry_i_10_n_0),
        .I1(D2[0]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[1]),
        .I4(D2[15]),
        .I5(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .O(SHIFT_RIGHT4[15]));
  LUT6 #(
    .INIT(64'h0400040404000000)) 
    SHIFT_RIGHT3_carry__2_i_2
       (.I0(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(D2[0]),
        .I3(SHIFT_LEFT2[2]),
        .I4(D2[15]),
        .I5(D2[2]),
        .O(SHIFT_RIGHT4[14]));
  LUT6 #(
    .INIT(64'h0040004000004040)) 
    SHIFT_RIGHT3_carry__2_i_3
       (.I0(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(D2[0]),
        .I3(SHIFT_LEFT2[1]),
        .I4(D2[1]),
        .I5(D2[15]),
        .O(SHIFT_RIGHT4[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    SHIFT_RIGHT3_carry__2_i_4
       (.I0(SHIFT_RIGHT3_carry__2_i_8_n_0),
        .I1(SHIFT_RIGHT3_carry__2_i_9_n_0),
        .I2(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I3(SHIFT_RIGHT3_carry_i_12_n_0),
        .I4(D2[0]),
        .I5(SHIFT_RIGHT3_carry_i_10_n_0),
        .O(SHIFT_RIGHT3_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'hABEFFFFFFFFFFFFF)) 
    SHIFT_RIGHT3_carry__2_i_5
       (.I0(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .I1(D2[15]),
        .I2(D2[1]),
        .I3(SHIFT_LEFT2[1]),
        .I4(D2[0]),
        .I5(SHIFT_RIGHT3_carry_i_10_n_0),
        .O(SHIFT_RIGHT3_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF1DFFFF)) 
    SHIFT_RIGHT3_carry__2_i_6
       (.I0(D2[2]),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[2]),
        .I3(D2[0]),
        .I4(SHIFT_RIGHT3_carry_i_12_n_0),
        .I5(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .O(SHIFT_RIGHT3_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFE4FFFFFF)) 
    SHIFT_RIGHT3_carry__2_i_7
       (.I0(D2[15]),
        .I1(D2[1]),
        .I2(SHIFT_LEFT2[1]),
        .I3(D2[0]),
        .I4(SHIFT_RIGHT3_carry_i_10_n_0),
        .I5(SHIFT_RIGHT3_carry__0_i_9_n_0),
        .O(SHIFT_RIGHT3_carry__2_i_7_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    SHIFT_RIGHT3_carry__2_i_8
       (.I0(SHIFT_LEFT2[4]),
        .I1(D2[15]),
        .I2(D2[4]),
        .O(SHIFT_RIGHT3_carry__2_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    SHIFT_RIGHT3_carry__2_i_9
       (.I0(SHIFT_LEFT2[3]),
        .I1(D2[15]),
        .I2(D2[3]),
        .O(SHIFT_RIGHT3_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000000011011)) 
    SHIFT_RIGHT3_carry_i_1
       (.I0(SHIFT_RIGHT3_carry_i_10_n_0),
        .I1(D2[0]),
        .I2(D2[15]),
        .I3(D2[1]),
        .I4(SHIFT_LEFT2[1]),
        .I5(SHIFT_RIGHT3_carry_i_11_n_0),
        .O(SHIFT_RIGHT4[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    SHIFT_RIGHT3_carry_i_10
       (.I0(SHIFT_LEFT2[2]),
        .I1(D2[15]),
        .I2(D2[2]),
        .O(SHIFT_RIGHT3_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFEFEFFFFAEFEA)) 
    SHIFT_RIGHT3_carry_i_11
       (.I0(\ALU_OUT[13]_INST_0_i_8_n_0 ),
        .I1(SHIFT_LEFT2[3]),
        .I2(D2[15]),
        .I3(D2[3]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(SHIFT_RIGHT3_carry_i_11_n_0));
  LUT3 #(
    .INIT(8'hAC)) 
    SHIFT_RIGHT3_carry_i_12
       (.I0(SHIFT_LEFT2[1]),
        .I1(D2[1]),
        .I2(D2[15]),
        .O(SHIFT_RIGHT3_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000000022022)) 
    SHIFT_RIGHT3_carry_i_2
       (.I0(SHIFT_RIGHT3_carry_i_10_n_0),
        .I1(D2[0]),
        .I2(D2[15]),
        .I3(D2[1]),
        .I4(SHIFT_LEFT2[1]),
        .I5(SHIFT_RIGHT3_carry_i_11_n_0),
        .O(SHIFT_RIGHT4[4]));
  LUT6 #(
    .INIT(64'h0000000002A20000)) 
    SHIFT_RIGHT3_carry_i_3
       (.I0(D2[0]),
        .I1(D2[2]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[2]),
        .I4(SHIFT_RIGHT3_carry_i_12_n_0),
        .I5(SHIFT_RIGHT3_carry_i_11_n_0),
        .O(SHIFT_RIGHT4[3]));
  LUT6 #(
    .INIT(64'h0000000002000222)) 
    SHIFT_RIGHT3_carry_i_4
       (.I0(SHIFT_RIGHT3_carry_i_12_n_0),
        .I1(D2[0]),
        .I2(SHIFT_LEFT2[2]),
        .I3(D2[15]),
        .I4(D2[2]),
        .I5(SHIFT_RIGHT3_carry_i_11_n_0),
        .O(SHIFT_RIGHT4[2]));
  LUT6 #(
    .INIT(64'h0000000004000444)) 
    SHIFT_RIGHT3_carry_i_5
       (.I0(SHIFT_RIGHT3_carry_i_12_n_0),
        .I1(D2[0]),
        .I2(SHIFT_LEFT2[2]),
        .I3(D2[15]),
        .I4(D2[2]),
        .I5(SHIFT_RIGHT3_carry_i_11_n_0),
        .O(SHIFT_RIGHT4[1]));
  LUT6 #(
    .INIT(64'hFFFFEEFAFFFFFFFF)) 
    SHIFT_RIGHT3_carry_i_6
       (.I0(SHIFT_RIGHT3_carry_i_11_n_0),
        .I1(SHIFT_LEFT2[1]),
        .I2(D2[1]),
        .I3(D2[15]),
        .I4(D2[0]),
        .I5(SHIFT_RIGHT3_carry_i_10_n_0),
        .O(SHIFT_RIGHT3_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hFBFFFBBBFFFFFFFF)) 
    SHIFT_RIGHT3_carry_i_7
       (.I0(SHIFT_RIGHT3_carry_i_11_n_0),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(SHIFT_LEFT2[2]),
        .I3(D2[15]),
        .I4(D2[2]),
        .I5(D2[0]),
        .O(SHIFT_RIGHT3_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEAEFFFFFFFF)) 
    SHIFT_RIGHT3_carry_i_8
       (.I0(SHIFT_RIGHT3_carry_i_11_n_0),
        .I1(D2[2]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[2]),
        .I4(D2[0]),
        .I5(SHIFT_RIGHT3_carry_i_12_n_0),
        .O(SHIFT_RIGHT3_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEAEFFFF)) 
    SHIFT_RIGHT3_carry_i_9
       (.I0(SHIFT_RIGHT3_carry_i_11_n_0),
        .I1(D2[2]),
        .I2(D2[15]),
        .I3(SHIFT_LEFT2[2]),
        .I4(D2[0]),
        .I5(SHIFT_RIGHT3_carry_i_12_n_0),
        .O(SHIFT_RIGHT3_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAA)) 
    SMALLER_ZERO_FLAG_INST_0
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_1_n_0),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_2_n_0),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_3_n_0),
        .I3(ALU_OPP[1]),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_4_n_0),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_5_n_0),
        .O(\immediate_s_reg[1] ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    SMALLER_ZERO_FLAG_INST_0_i_1
       (.I0(ALU_OPP[3]),
        .I1(ALU_OPP[1]),
        .I2(data1[15]),
        .I3(ALU_OPP[0]),
        .I4(data0[15]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    SMALLER_ZERO_FLAG_INST_0_i_10
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_23_n_0),
        .I1(D2[5]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_24_n_0),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_25_n_0),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_26_n_0),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_27_n_0),
        .O(SMALLER_ZERO_FLAG_INST_0_i_10_n_0));
  LUT3 #(
    .INIT(8'h5C)) 
    SMALLER_ZERO_FLAG_INST_0_i_11
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_28_n_0),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_29_n_0),
        .I2(D2[1]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    SMALLER_ZERO_FLAG_INST_0_i_12
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_30_n_0),
        .I1(D2[1]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_31_n_0),
        .O(SMALLER_ZERO_FLAG_INST_0_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFB8FFFFFFFFFF)) 
    SMALLER_ZERO_FLAG_INST_0_i_13
       (.I0(SHIFT_LEFT2[2]),
        .I1(D2[15]),
        .I2(D2[2]),
        .I3(D1[15]),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_32_n_0),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_33_n_0),
        .O(SMALLER_ZERO_FLAG_INST_0_i_13_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    SMALLER_ZERO_FLAG_INST_0_i_14
       (.I0(SHIFT_LEFT2[12]),
        .I1(SHIFT_LEFT2[9]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_14_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    SMALLER_ZERO_FLAG_INST_0_i_15
       (.I0(SHIFT_LEFT2[11]),
        .I1(SHIFT_LEFT2[13]),
        .I2(SHIFT_LEFT2[7]),
        .I3(SHIFT_LEFT2[15]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    SMALLER_ZERO_FLAG_INST_0_i_16
       (.I0(\_inferred__0/i__carry__2_n_0 ),
        .I1(D2[15]),
        .I2(SHIFT_LEFT2[14]),
        .I3(SHIFT_LEFT2[10]),
        .I4(SHIFT_LEFT2[8]),
        .I5(SHIFT_LEFT2[6]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_16_n_0));
  LUT6 #(
    .INIT(64'hA0A02020AFAF202F)) 
    SMALLER_ZERO_FLAG_INST_0_i_17
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_34_n_0),
        .I1(D1[0]),
        .I2(SHIFT_RIGHT3_carry_i_10_n_0),
        .I3(D1[4]),
        .I4(\ALU_OUT[0]_INST_0_i_11_n_0 ),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_35_n_0),
        .O(SMALLER_ZERO_FLAG_INST_0_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFFF4540FFFF757F)) 
    SMALLER_ZERO_FLAG_INST_0_i_18
       (.I0(D1[2]),
        .I1(SHIFT_LEFT2[3]),
        .I2(D2[15]),
        .I3(D2[3]),
        .I4(SHIFT_RIGHT3_carry__2_i_8_n_0),
        .I5(D1[10]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_18_n_0));
  LUT6 #(
    .INIT(64'hDDDCCCDCDDDFFFDF)) 
    SMALLER_ZERO_FLAG_INST_0_i_19
       (.I0(D1[6]),
        .I1(SHIFT_RIGHT3_carry__2_i_8_n_0),
        .I2(D2[3]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[3]),
        .I5(D1[14]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFF5DDDD5555DDDD)) 
    SMALLER_ZERO_FLAG_INST_0_i_2
       (.I0(ALU_OPP[0]),
        .I1(D1[15]),
        .I2(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I3(SHIFT_RIGHT3_carry__2_n_5),
        .I4(D2[15]),
        .I5(D1[0]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF4540FFFF757F)) 
    SMALLER_ZERO_FLAG_INST_0_i_20
       (.I0(D1[1]),
        .I1(SHIFT_LEFT2[3]),
        .I2(D2[15]),
        .I3(D2[3]),
        .I4(SHIFT_RIGHT3_carry__2_i_8_n_0),
        .I5(D1[9]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_20_n_0));
  LUT6 #(
    .INIT(64'hDDDCCCDCDDDFFFDF)) 
    SMALLER_ZERO_FLAG_INST_0_i_21
       (.I0(D1[5]),
        .I1(SHIFT_RIGHT3_carry__2_i_8_n_0),
        .I2(D2[3]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[3]),
        .I5(D1[13]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_21_n_0));
  LUT6 #(
    .INIT(64'h303010103F3F101F)) 
    SMALLER_ZERO_FLAG_INST_0_i_22
       (.I0(D1[3]),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_36_n_0),
        .I2(SHIFT_RIGHT3_carry_i_10_n_0),
        .I3(D1[7]),
        .I4(\ALU_OUT[0]_INST_0_i_11_n_0 ),
        .I5(\ALU_OUT[13]_INST_0_i_17_n_0 ),
        .O(SMALLER_ZERO_FLAG_INST_0_i_22_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    SMALLER_ZERO_FLAG_INST_0_i_23
       (.I0(D2[11]),
        .I1(D2[10]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_23_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    SMALLER_ZERO_FLAG_INST_0_i_24
       (.I0(D2[9]),
        .I1(D2[8]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_24_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    SMALLER_ZERO_FLAG_INST_0_i_25
       (.I0(D2[7]),
        .I1(D2[6]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_25_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    SMALLER_ZERO_FLAG_INST_0_i_26
       (.I0(D2[15]),
        .I1(D2[14]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_26_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    SMALLER_ZERO_FLAG_INST_0_i_27
       (.I0(D2[13]),
        .I1(D2[12]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_27_n_0));
  LUT6 #(
    .INIT(64'h3022FFFF30220000)) 
    SMALLER_ZERO_FLAG_INST_0_i_28
       (.I0(D1[8]),
        .I1(D2[4]),
        .I2(D1[0]),
        .I3(D2[3]),
        .I4(D2[2]),
        .I5(CARRY_FLAG_INST_0_i_12_n_0),
        .O(SMALLER_ZERO_FLAG_INST_0_i_28_n_0));
  LUT6 #(
    .INIT(64'hF4F7F4F4F4F7F7F7)) 
    SMALLER_ZERO_FLAG_INST_0_i_29
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_37_n_0),
        .I1(D2[2]),
        .I2(D2[4]),
        .I3(D1[6]),
        .I4(D2[3]),
        .I5(D1[14]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_29_n_0));
  LUT6 #(
    .INIT(64'h00000000222F0000)) 
    SMALLER_ZERO_FLAG_INST_0_i_3
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_6_n_0),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_7_n_0),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_8_n_0),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_9_n_0),
        .I4(D2[15]),
        .I5(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .O(SMALLER_ZERO_FLAG_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000FF00B8B8)) 
    SMALLER_ZERO_FLAG_INST_0_i_30
       (.I0(D1[5]),
        .I1(D2[3]),
        .I2(D1[13]),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_38_n_0),
        .I4(D2[2]),
        .I5(D2[4]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_30_n_0));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    SMALLER_ZERO_FLAG_INST_0_i_31
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_39_n_0),
        .I1(D2[2]),
        .I2(D1[7]),
        .I3(D2[3]),
        .I4(D1[15]),
        .I5(D2[4]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_31_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    SMALLER_ZERO_FLAG_INST_0_i_32
       (.I0(D2[4]),
        .I1(SHIFT_LEFT2[4]),
        .I2(D2[3]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[3]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_32_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    SMALLER_ZERO_FLAG_INST_0_i_33
       (.I0(SHIFT_RIGHT3_carry_i_12_n_0),
        .I1(SHIFT_LEFT2[13]),
        .I2(\_inferred__0/i__carry__2_n_0 ),
        .I3(SHIFT_LEFT2[11]),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_40_n_0),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_41_n_0),
        .O(SMALLER_ZERO_FLAG_INST_0_i_33_n_0));
  LUT6 #(
    .INIT(64'hFFBBFCB8FFFFFFFF)) 
    SMALLER_ZERO_FLAG_INST_0_i_34
       (.I0(SHIFT_LEFT2[3]),
        .I1(D2[15]),
        .I2(D2[3]),
        .I3(SHIFT_LEFT2[4]),
        .I4(D2[4]),
        .I5(D1[8]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_34_n_0));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    SMALLER_ZERO_FLAG_INST_0_i_35
       (.I0(D1[12]),
        .I1(SHIFT_LEFT2[3]),
        .I2(D2[15]),
        .I3(D2[3]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_35_n_0));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    SMALLER_ZERO_FLAG_INST_0_i_36
       (.I0(D1[11]),
        .I1(SHIFT_LEFT2[3]),
        .I2(D2[15]),
        .I3(D2[3]),
        .I4(SHIFT_LEFT2[4]),
        .I5(D2[4]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_36_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    SMALLER_ZERO_FLAG_INST_0_i_37
       (.I0(D1[2]),
        .I1(D2[3]),
        .I2(D1[10]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_37_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    SMALLER_ZERO_FLAG_INST_0_i_38
       (.I0(D1[1]),
        .I1(D2[3]),
        .I2(D1[9]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_38_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    SMALLER_ZERO_FLAG_INST_0_i_39
       (.I0(D1[11]),
        .I1(D2[3]),
        .I2(D1[3]),
        .I3(D2[4]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_39_n_0));
  LUT6 #(
    .INIT(64'h00000000EAFB0000)) 
    SMALLER_ZERO_FLAG_INST_0_i_4
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .I1(D2[0]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_11_n_0),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_12_n_0),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_13_n_0),
        .I5(ALU_OPP[0]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    SMALLER_ZERO_FLAG_INST_0_i_40
       (.I0(SHIFT_LEFT2[8]),
        .I1(SHIFT_LEFT2[5]),
        .I2(SHIFT_LEFT2[6]),
        .I3(SHIFT_LEFT2[7]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_40_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    SMALLER_ZERO_FLAG_INST_0_i_41
       (.I0(SHIFT_LEFT2[9]),
        .I1(SHIFT_LEFT2[12]),
        .I2(SHIFT_LEFT2[10]),
        .I3(D2[15]),
        .I4(SHIFT_LEFT2[15]),
        .I5(SHIFT_LEFT2[14]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_41_n_0));
  LUT6 #(
    .INIT(64'h2AA0A020800A0A8A)) 
    SMALLER_ZERO_FLAG_INST_0_i_5
       (.I0(ALU_OPP[3]),
        .I1(ALU_OPP[0]),
        .I2(D1[15]),
        .I3(D2[15]),
        .I4(ALU_OPP[1]),
        .I5(ALU_OPP[2]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000002AAAAAAAA)) 
    SMALLER_ZERO_FLAG_INST_0_i_6
       (.I0(D2[0]),
        .I1(SHIFT_LEFT2[5]),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_14_n_0),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_15_n_0),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_16_n_0),
        .I5(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .O(SMALLER_ZERO_FLAG_INST_0_i_6_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    SMALLER_ZERO_FLAG_INST_0_i_7
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_17_n_0),
        .I1(SHIFT_RIGHT3_carry_i_12_n_0),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_18_n_0),
        .I3(SHIFT_RIGHT3_carry_i_10_n_0),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_19_n_0),
        .O(SMALLER_ZERO_FLAG_INST_0_i_7_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    SMALLER_ZERO_FLAG_INST_0_i_8
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_20_n_0),
        .I1(SHIFT_RIGHT3_carry_i_10_n_0),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_21_n_0),
        .I3(SHIFT_RIGHT3_carry_i_12_n_0),
        .I4(SMALLER_ZERO_FLAG_INST_0_i_22_n_0),
        .O(SMALLER_ZERO_FLAG_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    SMALLER_ZERO_FLAG_INST_0_i_9
       (.I0(SMALLER_ZERO_FLAG_INST_0_i_10_n_0),
        .I1(SMALLER_ZERO_FLAG_INST_0_i_16_n_0),
        .I2(SMALLER_ZERO_FLAG_INST_0_i_15_n_0),
        .I3(SMALLER_ZERO_FLAG_INST_0_i_14_n_0),
        .I4(SHIFT_LEFT2[5]),
        .I5(D2[0]),
        .O(SMALLER_ZERO_FLAG_INST_0_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ZERO_FLAG_INST_0
       (.I0(\immediate_s_reg[1] ),
        .I1(ZERO_FLAG_INST_0_i_1_n_0),
        .I2(ZERO_FLAG_INST_0_i_2_n_0),
        .I3(ZERO_FLAG_INST_0_i_3_n_0),
        .I4(ZERO_FLAG_INST_0_i_4_n_0),
        .I5(ZERO_FLAG_INST_0_i_5_n_0),
        .O(ZERO_FLAG));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEEE)) 
    ZERO_FLAG_INST_0_i_1
       (.I0(ALU_OUT[6]),
        .I1(ALU_OUT[7]),
        .I2(\ALU_OUT[4]_INST_0_i_2_n_0 ),
        .I3(ALU_OPP[3]),
        .I4(\ALU_OUT[4]_INST_0_i_1_n_0 ),
        .I5(ALU_OUT[5]),
        .O(ZERO_FLAG_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ZERO_FLAG_INST_0_i_2
       (.I0(ALU_OUT[2]),
        .I1(ALU_OUT[3]),
        .I2(ALU_OUT[0]),
        .I3(ALU_OUT[1]),
        .O(ZERO_FLAG_INST_0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ZERO_FLAG_INST_0_i_3
       (.I0(ALU_OUT[11]),
        .I1(ALU_OUT[10]),
        .O(ZERO_FLAG_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    ZERO_FLAG_INST_0_i_4
       (.I0(ALU_OUT[9]),
        .I1(\ALU_OUT[8]_INST_0_i_4_n_0 ),
        .I2(ALU_OPP[1]),
        .I3(ZERO_FLAG_INST_0_i_6_n_0),
        .I4(ALU_OPP[3]),
        .I5(\ALU_OUT[8]_INST_0_i_1_n_0 ),
        .O(ZERO_FLAG_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ZERO_FLAG_INST_0_i_5
       (.I0(ALU_OUT[14]),
        .I1(CARRY_FLAG),
        .I2(ALU_OUT[12]),
        .I3(ALU_OUT[13]),
        .O(ZERO_FLAG_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF40404044)) 
    ZERO_FLAG_INST_0_i_6
       (.I0(\ALU_OUT[8]_INST_0_i_6_n_0 ),
        .I1(ALU_OPP[0]),
        .I2(\ALU_OUT[14]_INST_0_i_3_n_0 ),
        .I3(\ALU_OUT[8]_INST_0_i_5_n_0 ),
        .I4(\SHIFT_RIGHT2_inferred__0/i__carry__1_n_3 ),
        .I5(\ALU_OUT[8]_INST_0_i_3_n_0 ),
        .O(ZERO_FLAG_INST_0_i_6_n_0));
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\NLW__inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(i__carry_i_1_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SHIFT_LEFT2[4:1]),
        .S({i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0,i__carry_i_5__0_n_0}));
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\NLW__inferred__0/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SHIFT_LEFT2[8:5]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\_inferred__0/i__carry__1_n_0 ,\NLW__inferred__0/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SHIFT_LEFT2[12:9]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \_inferred__0/i__carry__2 
       (.CI(\_inferred__0/i__carry__1_n_0 ),
        .CO({\_inferred__0/i__carry__2_n_0 ,\NLW__inferred__0/i__carry__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b0,1'b0}),
        .O({\NLW__inferred__0/i__carry__2_O_UNCONNECTED [3],SHIFT_LEFT2[15:13]}),
        .S({1'b1,i__carry__2_i_1__0_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(D2[8]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1__0
       (.I0(D2[15]),
        .I1(D2[14]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__1
       (.I0(D2[7]),
        .I1(D1[7]),
        .O(i__carry__0_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(D2[7]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2__0
       (.I0(D2[13]),
        .I1(D2[12]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__1
       (.I0(D2[6]),
        .I1(D1[6]),
        .O(i__carry__0_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(D2[6]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3__0
       (.I0(D2[11]),
        .I1(D2[10]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__1
       (.I0(D2[5]),
        .I1(D1[5]),
        .O(i__carry__0_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(D2[5]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4__0
       (.I0(D2[9]),
        .I1(D2[8]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__1
       (.I0(D2[4]),
        .I1(D1[4]),
        .O(i__carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(D2[14]),
        .I1(D2[15]),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6
       (.I0(D2[12]),
        .I1(D2[13]),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_7
       (.I0(D2[10]),
        .I1(D2[11]),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_8
       (.I0(D2[8]),
        .I1(D2[9]),
        .O(i__carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(D2[12]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__0
       (.I0(D2[15]),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__1
       (.I0(D2[11]),
        .I1(D1[11]),
        .O(i__carry__1_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(D2[11]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__0
       (.I0(D2[10]),
        .I1(D1[10]),
        .O(i__carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(D2[10]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3__0
       (.I0(D2[9]),
        .I1(D1[9]),
        .O(i__carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(D2[9]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4__0
       (.I0(D2[8]),
        .I1(D1[8]),
        .O(i__carry__1_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(D1[15]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1__0
       (.I0(D2[15]),
        .O(i__carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(D2[14]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2__0
       (.I0(D2[15]),
        .I1(D1[15]),
        .O(i__carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(D2[13]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3__0
       (.I0(D2[14]),
        .I1(D1[14]),
        .O(i__carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4
       (.I0(D2[13]),
        .I1(D1[13]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_5
       (.I0(D2[12]),
        .I1(D1[12]),
        .O(i__carry__2_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(D2[0]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1__0
       (.I0(D2[7]),
        .I1(D2[6]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__1
       (.I0(D2[3]),
        .I1(D1[3]),
        .O(i__carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2
       (.I0(D2[3]),
        .I1(D2[2]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__0
       (.I0(D2[4]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__1
       (.I0(D2[2]),
        .I1(D1[2]),
        .O(i__carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3
       (.I0(D2[6]),
        .I1(D2[7]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__0
       (.I0(D2[3]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__1
       (.I0(D2[1]),
        .I1(D1[1]),
        .O(i__carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4
       (.I0(D2[4]),
        .I1(D2[5]),
        .O(i__carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__0
       (.I0(D2[2]),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__1
       (.I0(D2[0]),
        .I1(D1[0]),
        .O(i__carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5
       (.I0(D2[2]),
        .I1(D2[3]),
        .O(i__carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_5__0
       (.I0(D2[1]),
        .O(i__carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_6
       (.I0(D2[0]),
        .I1(D2[1]),
        .O(i__carry_i_6_n_0));
endmodule

module CU_Decoder
   (Write_Data_Sel,
    JMP,
    Is_ALU_OP,
    JMP_Relative,
    JMP_DestinationSource,
    Instruction);
  output [1:0]Write_Data_Sel;
  output JMP;
  output Is_ALU_OP;
  output JMP_Relative;
  output JMP_DestinationSource;
  input [3:0]Instruction;

  wire [3:0]Instruction;
  wire Is_ALU_OP;
  wire JMP;
  wire JMP_DestinationSource;
  wire JMP_Relative;
  wire [1:0]Write_Data_Sel;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    Is_ALU_OP_INST_0
       (.I0(Instruction[2]),
        .I1(Instruction[0]),
        .I2(Instruction[3]),
        .I3(Instruction[1]),
        .O(Is_ALU_OP));
  LUT4 #(
    .INIT(16'h1000)) 
    JMP_DestinationSource_INST_0
       (.I0(Instruction[2]),
        .I1(Instruction[1]),
        .I2(Instruction[0]),
        .I3(Instruction[3]),
        .O(JMP_DestinationSource));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    JMP_INST_0
       (.I0(Instruction[2]),
        .I1(Instruction[1]),
        .I2(Instruction[0]),
        .I3(Instruction[3]),
        .O(JMP));
  LUT4 #(
    .INIT(16'h0004)) 
    JMP_Relative_INST_0
       (.I0(Instruction[2]),
        .I1(Instruction[3]),
        .I2(Instruction[0]),
        .I3(Instruction[1]),
        .O(JMP_Relative));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h1302)) 
    \Write_Data_Sel[0]_INST_0 
       (.I0(Instruction[1]),
        .I1(Instruction[3]),
        .I2(Instruction[0]),
        .I3(Instruction[2]),
        .O(Write_Data_Sel[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0A02)) 
    \Write_Data_Sel[1]_INST_0 
       (.I0(Instruction[1]),
        .I1(Instruction[3]),
        .I2(Instruction[0]),
        .I3(Instruction[2]),
        .O(Write_Data_Sel[1]));
endmodule

module CU_ImmediateManipulator
   (ManipulatedImmidiate,
    Immediate,
    RF_WLB,
    RF_WHB,
    Reg1);
  output [15:0]ManipulatedImmidiate;
  input [15:0]Immediate;
  input RF_WLB;
  input RF_WHB;
  input [15:0]Reg1;

  wire [15:0]Immediate;
  wire [15:0]ManipulatedImmidiate;
  wire RF_WHB;
  wire RF_WLB;
  wire [15:0]Reg1;

  LUT3 #(
    .INIT(8'hCA)) 
    \ManipulatedImmidiate[0]_INST_0 
       (.I0(Reg1[0]),
        .I1(Immediate[0]),
        .I2(RF_WLB),
        .O(ManipulatedImmidiate[0]));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \ManipulatedImmidiate[10]_INST_0 
       (.I0(Immediate[2]),
        .I1(Immediate[10]),
        .I2(RF_WLB),
        .I3(RF_WHB),
        .I4(Reg1[10]),
        .O(ManipulatedImmidiate[10]));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \ManipulatedImmidiate[11]_INST_0 
       (.I0(Immediate[3]),
        .I1(Immediate[11]),
        .I2(RF_WLB),
        .I3(RF_WHB),
        .I4(Reg1[11]),
        .O(ManipulatedImmidiate[11]));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \ManipulatedImmidiate[12]_INST_0 
       (.I0(Immediate[4]),
        .I1(Immediate[12]),
        .I2(RF_WLB),
        .I3(RF_WHB),
        .I4(Reg1[12]),
        .O(ManipulatedImmidiate[12]));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \ManipulatedImmidiate[13]_INST_0 
       (.I0(Immediate[5]),
        .I1(Immediate[13]),
        .I2(RF_WLB),
        .I3(RF_WHB),
        .I4(Reg1[13]),
        .O(ManipulatedImmidiate[13]));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \ManipulatedImmidiate[14]_INST_0 
       (.I0(Immediate[6]),
        .I1(Immediate[14]),
        .I2(RF_WLB),
        .I3(RF_WHB),
        .I4(Reg1[14]),
        .O(ManipulatedImmidiate[14]));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \ManipulatedImmidiate[15]_INST_0 
       (.I0(Immediate[7]),
        .I1(Immediate[15]),
        .I2(RF_WLB),
        .I3(RF_WHB),
        .I4(Reg1[15]),
        .O(ManipulatedImmidiate[15]));
  LUT3 #(
    .INIT(8'hCA)) 
    \ManipulatedImmidiate[1]_INST_0 
       (.I0(Reg1[1]),
        .I1(Immediate[1]),
        .I2(RF_WLB),
        .O(ManipulatedImmidiate[1]));
  LUT3 #(
    .INIT(8'hCA)) 
    \ManipulatedImmidiate[2]_INST_0 
       (.I0(Reg1[2]),
        .I1(Immediate[2]),
        .I2(RF_WLB),
        .O(ManipulatedImmidiate[2]));
  LUT3 #(
    .INIT(8'hCA)) 
    \ManipulatedImmidiate[3]_INST_0 
       (.I0(Reg1[3]),
        .I1(Immediate[3]),
        .I2(RF_WLB),
        .O(ManipulatedImmidiate[3]));
  LUT3 #(
    .INIT(8'hCA)) 
    \ManipulatedImmidiate[4]_INST_0 
       (.I0(Reg1[4]),
        .I1(Immediate[4]),
        .I2(RF_WLB),
        .O(ManipulatedImmidiate[4]));
  LUT3 #(
    .INIT(8'hCA)) 
    \ManipulatedImmidiate[5]_INST_0 
       (.I0(Reg1[5]),
        .I1(Immediate[5]),
        .I2(RF_WLB),
        .O(ManipulatedImmidiate[5]));
  LUT3 #(
    .INIT(8'hCA)) 
    \ManipulatedImmidiate[6]_INST_0 
       (.I0(Reg1[6]),
        .I1(Immediate[6]),
        .I2(RF_WLB),
        .O(ManipulatedImmidiate[6]));
  LUT3 #(
    .INIT(8'hCA)) 
    \ManipulatedImmidiate[7]_INST_0 
       (.I0(Reg1[7]),
        .I1(Immediate[7]),
        .I2(RF_WLB),
        .O(ManipulatedImmidiate[7]));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \ManipulatedImmidiate[8]_INST_0 
       (.I0(Immediate[0]),
        .I1(Immediate[8]),
        .I2(RF_WLB),
        .I3(RF_WHB),
        .I4(Reg1[8]),
        .O(ManipulatedImmidiate[8]));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \ManipulatedImmidiate[9]_INST_0 
       (.I0(Immediate[1]),
        .I1(Immediate[9]),
        .I2(RF_WLB),
        .I3(RF_WHB),
        .I4(Reg1[9]),
        .O(ManipulatedImmidiate[9]));
endmodule

module CU_JumpController
   (PC_Next,
    PC_Current,
    JMP_Address,
    JMP_Relative);
  output [15:0]PC_Next;
  input [15:0]PC_Current;
  input [15:0]JMP_Address;
  input JMP_Relative;

  wire [15:0]JMP_Address;
  wire JMP_Relative;
  wire [15:0]PC_Current;
  wire [15:0]PC_Next;
  wire [15:0]relative_jump_destination;
  wire relative_jump_destination__0_carry__0_i_1_n_0;
  wire relative_jump_destination__0_carry__0_i_2_n_0;
  wire relative_jump_destination__0_carry__0_i_3_n_0;
  wire relative_jump_destination__0_carry__0_i_4_n_0;
  wire relative_jump_destination__0_carry__0_i_5_n_0;
  wire relative_jump_destination__0_carry__0_i_6_n_0;
  wire relative_jump_destination__0_carry__0_i_7_n_0;
  wire relative_jump_destination__0_carry__0_i_8_n_0;
  wire relative_jump_destination__0_carry__0_n_0;
  wire relative_jump_destination__0_carry__1_i_1_n_0;
  wire relative_jump_destination__0_carry__1_i_2_n_0;
  wire relative_jump_destination__0_carry__1_i_3_n_0;
  wire relative_jump_destination__0_carry__1_i_4_n_0;
  wire relative_jump_destination__0_carry__1_i_5_n_0;
  wire relative_jump_destination__0_carry__1_i_6_n_0;
  wire relative_jump_destination__0_carry__1_i_7_n_0;
  wire relative_jump_destination__0_carry__1_i_8_n_0;
  wire relative_jump_destination__0_carry__1_n_0;
  wire relative_jump_destination__0_carry__2_i_1_n_0;
  wire relative_jump_destination__0_carry__2_i_2_n_0;
  wire relative_jump_destination__0_carry__2_i_3_n_0;
  wire relative_jump_destination__0_carry__2_i_4_n_0;
  wire relative_jump_destination__0_carry__2_i_5_n_0;
  wire relative_jump_destination__0_carry__2_i_6_n_0;
  wire relative_jump_destination__0_carry__2_i_7_n_0;
  wire relative_jump_destination__0_carry_i_1_n_0;
  wire relative_jump_destination__0_carry_i_2_n_0;
  wire relative_jump_destination__0_carry_i_3_n_0;
  wire relative_jump_destination__0_carry_i_4_n_0;
  wire relative_jump_destination__0_carry_i_5_n_0;
  wire relative_jump_destination__0_carry_i_6_n_0;
  wire relative_jump_destination__0_carry_i_7_n_0;
  wire relative_jump_destination__0_carry_i_8_n_0;
  wire relative_jump_destination__0_carry_n_0;
  wire [2:0]NLW_relative_jump_destination__0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_relative_jump_destination__0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_relative_jump_destination__0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_relative_jump_destination__0_carry__2_CO_UNCONNECTED;

  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[0]_INST_0 
       (.I0(relative_jump_destination[0]),
        .I1(JMP_Address[0]),
        .I2(JMP_Relative),
        .O(PC_Next[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[10]_INST_0 
       (.I0(relative_jump_destination[10]),
        .I1(JMP_Address[10]),
        .I2(JMP_Relative),
        .O(PC_Next[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[11]_INST_0 
       (.I0(relative_jump_destination[11]),
        .I1(JMP_Address[11]),
        .I2(JMP_Relative),
        .O(PC_Next[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[12]_INST_0 
       (.I0(relative_jump_destination[12]),
        .I1(JMP_Address[12]),
        .I2(JMP_Relative),
        .O(PC_Next[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[13]_INST_0 
       (.I0(relative_jump_destination[13]),
        .I1(JMP_Address[13]),
        .I2(JMP_Relative),
        .O(PC_Next[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[14]_INST_0 
       (.I0(relative_jump_destination[14]),
        .I1(JMP_Address[14]),
        .I2(JMP_Relative),
        .O(PC_Next[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[15]_INST_0 
       (.I0(relative_jump_destination[15]),
        .I1(JMP_Address[15]),
        .I2(JMP_Relative),
        .O(PC_Next[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[1]_INST_0 
       (.I0(relative_jump_destination[1]),
        .I1(JMP_Address[1]),
        .I2(JMP_Relative),
        .O(PC_Next[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[2]_INST_0 
       (.I0(relative_jump_destination[2]),
        .I1(JMP_Address[2]),
        .I2(JMP_Relative),
        .O(PC_Next[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[3]_INST_0 
       (.I0(relative_jump_destination[3]),
        .I1(JMP_Address[3]),
        .I2(JMP_Relative),
        .O(PC_Next[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[4]_INST_0 
       (.I0(relative_jump_destination[4]),
        .I1(JMP_Address[4]),
        .I2(JMP_Relative),
        .O(PC_Next[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[5]_INST_0 
       (.I0(relative_jump_destination[5]),
        .I1(JMP_Address[5]),
        .I2(JMP_Relative),
        .O(PC_Next[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[6]_INST_0 
       (.I0(relative_jump_destination[6]),
        .I1(JMP_Address[6]),
        .I2(JMP_Relative),
        .O(PC_Next[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[7]_INST_0 
       (.I0(relative_jump_destination[7]),
        .I1(JMP_Address[7]),
        .I2(JMP_Relative),
        .O(PC_Next[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[8]_INST_0 
       (.I0(relative_jump_destination[8]),
        .I1(JMP_Address[8]),
        .I2(JMP_Relative),
        .O(PC_Next[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[9]_INST_0 
       (.I0(relative_jump_destination[9]),
        .I1(JMP_Address[9]),
        .I2(JMP_Relative),
        .O(PC_Next[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 relative_jump_destination__0_carry
       (.CI(1'b0),
        .CO({relative_jump_destination__0_carry_n_0,NLW_relative_jump_destination__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({relative_jump_destination__0_carry_i_1_n_0,relative_jump_destination__0_carry_i_2_n_0,relative_jump_destination__0_carry_i_3_n_0,relative_jump_destination__0_carry_i_4_n_0}),
        .O(relative_jump_destination[3:0]),
        .S({relative_jump_destination__0_carry_i_5_n_0,relative_jump_destination__0_carry_i_6_n_0,relative_jump_destination__0_carry_i_7_n_0,relative_jump_destination__0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 relative_jump_destination__0_carry__0
       (.CI(relative_jump_destination__0_carry_n_0),
        .CO({relative_jump_destination__0_carry__0_n_0,NLW_relative_jump_destination__0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({relative_jump_destination__0_carry__0_i_1_n_0,relative_jump_destination__0_carry__0_i_2_n_0,relative_jump_destination__0_carry__0_i_3_n_0,relative_jump_destination__0_carry__0_i_4_n_0}),
        .O(relative_jump_destination[7:4]),
        .S({relative_jump_destination__0_carry__0_i_5_n_0,relative_jump_destination__0_carry__0_i_6_n_0,relative_jump_destination__0_carry__0_i_7_n_0,relative_jump_destination__0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry__0_i_1
       (.I0(JMP_Address[6]),
        .I1(PC_Current[6]),
        .O(relative_jump_destination__0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry__0_i_2
       (.I0(JMP_Address[5]),
        .I1(PC_Current[5]),
        .O(relative_jump_destination__0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry__0_i_3
       (.I0(JMP_Address[4]),
        .I1(PC_Current[4]),
        .O(relative_jump_destination__0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry__0_i_4
       (.I0(JMP_Address[3]),
        .I1(PC_Current[3]),
        .O(relative_jump_destination__0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry__0_i_5
       (.I0(PC_Current[6]),
        .I1(JMP_Address[6]),
        .I2(PC_Current[7]),
        .I3(JMP_Address[7]),
        .O(relative_jump_destination__0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry__0_i_6
       (.I0(PC_Current[5]),
        .I1(JMP_Address[5]),
        .I2(PC_Current[6]),
        .I3(JMP_Address[6]),
        .O(relative_jump_destination__0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry__0_i_7
       (.I0(PC_Current[4]),
        .I1(JMP_Address[4]),
        .I2(PC_Current[5]),
        .I3(JMP_Address[5]),
        .O(relative_jump_destination__0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry__0_i_8
       (.I0(PC_Current[3]),
        .I1(JMP_Address[3]),
        .I2(PC_Current[4]),
        .I3(JMP_Address[4]),
        .O(relative_jump_destination__0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 relative_jump_destination__0_carry__1
       (.CI(relative_jump_destination__0_carry__0_n_0),
        .CO({relative_jump_destination__0_carry__1_n_0,NLW_relative_jump_destination__0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({relative_jump_destination__0_carry__1_i_1_n_0,relative_jump_destination__0_carry__1_i_2_n_0,relative_jump_destination__0_carry__1_i_3_n_0,relative_jump_destination__0_carry__1_i_4_n_0}),
        .O(relative_jump_destination[11:8]),
        .S({relative_jump_destination__0_carry__1_i_5_n_0,relative_jump_destination__0_carry__1_i_6_n_0,relative_jump_destination__0_carry__1_i_7_n_0,relative_jump_destination__0_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry__1_i_1
       (.I0(JMP_Address[10]),
        .I1(PC_Current[10]),
        .O(relative_jump_destination__0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry__1_i_2
       (.I0(JMP_Address[9]),
        .I1(PC_Current[9]),
        .O(relative_jump_destination__0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry__1_i_3
       (.I0(JMP_Address[8]),
        .I1(PC_Current[8]),
        .O(relative_jump_destination__0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry__1_i_4
       (.I0(JMP_Address[7]),
        .I1(PC_Current[7]),
        .O(relative_jump_destination__0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry__1_i_5
       (.I0(PC_Current[10]),
        .I1(JMP_Address[10]),
        .I2(PC_Current[11]),
        .I3(JMP_Address[11]),
        .O(relative_jump_destination__0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry__1_i_6
       (.I0(PC_Current[9]),
        .I1(JMP_Address[9]),
        .I2(PC_Current[10]),
        .I3(JMP_Address[10]),
        .O(relative_jump_destination__0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry__1_i_7
       (.I0(PC_Current[8]),
        .I1(JMP_Address[8]),
        .I2(PC_Current[9]),
        .I3(JMP_Address[9]),
        .O(relative_jump_destination__0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry__1_i_8
       (.I0(PC_Current[7]),
        .I1(JMP_Address[7]),
        .I2(PC_Current[8]),
        .I3(JMP_Address[8]),
        .O(relative_jump_destination__0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 relative_jump_destination__0_carry__2
       (.CI(relative_jump_destination__0_carry__1_n_0),
        .CO(NLW_relative_jump_destination__0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,relative_jump_destination__0_carry__2_i_1_n_0,relative_jump_destination__0_carry__2_i_2_n_0,relative_jump_destination__0_carry__2_i_3_n_0}),
        .O(relative_jump_destination[15:12]),
        .S({relative_jump_destination__0_carry__2_i_4_n_0,relative_jump_destination__0_carry__2_i_5_n_0,relative_jump_destination__0_carry__2_i_6_n_0,relative_jump_destination__0_carry__2_i_7_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry__2_i_1
       (.I0(JMP_Address[13]),
        .I1(PC_Current[13]),
        .O(relative_jump_destination__0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry__2_i_2
       (.I0(JMP_Address[12]),
        .I1(PC_Current[12]),
        .O(relative_jump_destination__0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry__2_i_3
       (.I0(JMP_Address[11]),
        .I1(PC_Current[11]),
        .O(relative_jump_destination__0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry__2_i_4
       (.I0(PC_Current[14]),
        .I1(JMP_Address[14]),
        .I2(PC_Current[15]),
        .I3(JMP_Address[15]),
        .O(relative_jump_destination__0_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry__2_i_5
       (.I0(PC_Current[13]),
        .I1(JMP_Address[13]),
        .I2(PC_Current[14]),
        .I3(JMP_Address[14]),
        .O(relative_jump_destination__0_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry__2_i_6
       (.I0(PC_Current[12]),
        .I1(JMP_Address[12]),
        .I2(PC_Current[13]),
        .I3(JMP_Address[13]),
        .O(relative_jump_destination__0_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry__2_i_7
       (.I0(PC_Current[11]),
        .I1(JMP_Address[11]),
        .I2(PC_Current[12]),
        .I3(JMP_Address[12]),
        .O(relative_jump_destination__0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry_i_1
       (.I0(JMP_Address[2]),
        .I1(PC_Current[2]),
        .O(relative_jump_destination__0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    relative_jump_destination__0_carry_i_2
       (.I0(PC_Current[2]),
        .I1(JMP_Address[2]),
        .O(relative_jump_destination__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry_i_3
       (.I0(JMP_Address[0]),
        .I1(PC_Current[0]),
        .O(relative_jump_destination__0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    relative_jump_destination__0_carry_i_4
       (.I0(PC_Current[0]),
        .I1(JMP_Address[0]),
        .O(relative_jump_destination__0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry_i_5
       (.I0(PC_Current[2]),
        .I1(JMP_Address[2]),
        .I2(PC_Current[3]),
        .I3(JMP_Address[3]),
        .O(relative_jump_destination__0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6999)) 
    relative_jump_destination__0_carry_i_6
       (.I0(PC_Current[2]),
        .I1(JMP_Address[2]),
        .I2(JMP_Address[1]),
        .I3(PC_Current[1]),
        .O(relative_jump_destination__0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'hE11E)) 
    relative_jump_destination__0_carry_i_7
       (.I0(PC_Current[0]),
        .I1(JMP_Address[0]),
        .I2(PC_Current[1]),
        .I3(JMP_Address[1]),
        .O(relative_jump_destination__0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    relative_jump_destination__0_carry_i_8
       (.I0(JMP_Address[0]),
        .I1(PC_Current[0]),
        .O(relative_jump_destination__0_carry_i_8_n_0));
endmodule

module CU_JumpDestinationSelector
   (JMP_Address,
    Register1,
    Immediate,
    JMP_DestinationSelect);
  output [15:0]JMP_Address;
  input [15:0]Register1;
  input [15:0]Immediate;
  input JMP_DestinationSelect;

  wire [15:0]Immediate;
  wire [15:0]JMP_Address;
  wire JMP_DestinationSelect;
  wire [15:0]Register1;

  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[0]_INST_0 
       (.I0(Register1[0]),
        .I1(Immediate[0]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[10]_INST_0 
       (.I0(Register1[10]),
        .I1(Immediate[10]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[11]_INST_0 
       (.I0(Register1[11]),
        .I1(Immediate[11]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[12]_INST_0 
       (.I0(Register1[12]),
        .I1(Immediate[12]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[13]_INST_0 
       (.I0(Register1[13]),
        .I1(Immediate[13]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[14]_INST_0 
       (.I0(Register1[14]),
        .I1(Immediate[14]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[15]_INST_0 
       (.I0(Register1[15]),
        .I1(Immediate[15]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[1]_INST_0 
       (.I0(Register1[1]),
        .I1(Immediate[1]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[2]_INST_0 
       (.I0(Register1[2]),
        .I1(Immediate[2]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[3]_INST_0 
       (.I0(Register1[3]),
        .I1(Immediate[3]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[4]_INST_0 
       (.I0(Register1[4]),
        .I1(Immediate[4]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[5]_INST_0 
       (.I0(Register1[5]),
        .I1(Immediate[5]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[6]_INST_0 
       (.I0(Register1[6]),
        .I1(Immediate[6]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[7]_INST_0 
       (.I0(Register1[7]),
        .I1(Immediate[7]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[8]_INST_0 
       (.I0(Register1[8]),
        .I1(Immediate[8]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[9]_INST_0 
       (.I0(Register1[9]),
        .I1(Immediate[9]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[9]));
endmodule

module CU_RAMAddressController
   (RAM_Address,
    Immediate,
    Reg2,
    RAM_Address_Src,
    MA,
    Use_MA);
  output [7:0]RAM_Address;
  input [7:0]Immediate;
  input [7:0]Reg2;
  input RAM_Address_Src;
  input [7:0]MA;
  input Use_MA;

  wire [7:0]Immediate;
  wire [7:0]MA;
  wire [7:0]RAM_Address;
  wire RAM_Address0_carry__0_i_4_n_0;
  wire RAM_Address0_carry__0_i_5_n_0;
  wire RAM_Address0_carry__0_i_6_n_0;
  wire RAM_Address0_carry__0_i_7_n_0;
  wire RAM_Address0_carry_i_5_n_0;
  wire RAM_Address0_carry_i_6_n_0;
  wire RAM_Address0_carry_i_7_n_0;
  wire RAM_Address0_carry_i_8_n_0;
  wire RAM_Address0_carry_n_0;
  wire RAM_Address_Src;
  wire [7:0]Reg2;
  wire Use_MA;
  wire [6:0]used_address;
  wire [2:0]NLW_RAM_Address0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_RAM_Address0_carry__0_CO_UNCONNECTED;

  CARRY4 RAM_Address0_carry
       (.CI(1'b0),
        .CO({RAM_Address0_carry_n_0,NLW_RAM_Address0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(used_address[3:0]),
        .O(RAM_Address[3:0]),
        .S({RAM_Address0_carry_i_5_n_0,RAM_Address0_carry_i_6_n_0,RAM_Address0_carry_i_7_n_0,RAM_Address0_carry_i_8_n_0}));
  CARRY4 RAM_Address0_carry__0
       (.CI(RAM_Address0_carry_n_0),
        .CO(NLW_RAM_Address0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,used_address[6:4]}),
        .O(RAM_Address[7:4]),
        .S({RAM_Address0_carry__0_i_4_n_0,RAM_Address0_carry__0_i_5_n_0,RAM_Address0_carry__0_i_6_n_0,RAM_Address0_carry__0_i_7_n_0}));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry__0_i_1
       (.I0(Immediate[6]),
        .I1(Reg2[6]),
        .I2(RAM_Address_Src),
        .O(used_address[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry__0_i_2
       (.I0(Immediate[5]),
        .I1(Reg2[5]),
        .I2(RAM_Address_Src),
        .O(used_address[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry__0_i_3
       (.I0(Immediate[4]),
        .I1(Reg2[4]),
        .I2(RAM_Address_Src),
        .O(used_address[4]));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry__0_i_4
       (.I0(RAM_Address_Src),
        .I1(Reg2[7]),
        .I2(Immediate[7]),
        .I3(MA[7]),
        .I4(Use_MA),
        .O(RAM_Address0_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry__0_i_5
       (.I0(RAM_Address_Src),
        .I1(Reg2[6]),
        .I2(Immediate[6]),
        .I3(MA[6]),
        .I4(Use_MA),
        .O(RAM_Address0_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry__0_i_6
       (.I0(RAM_Address_Src),
        .I1(Reg2[5]),
        .I2(Immediate[5]),
        .I3(MA[5]),
        .I4(Use_MA),
        .O(RAM_Address0_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry__0_i_7
       (.I0(RAM_Address_Src),
        .I1(Reg2[4]),
        .I2(Immediate[4]),
        .I3(MA[4]),
        .I4(Use_MA),
        .O(RAM_Address0_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_1
       (.I0(Immediate[3]),
        .I1(Reg2[3]),
        .I2(RAM_Address_Src),
        .O(used_address[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_2
       (.I0(Immediate[2]),
        .I1(Reg2[2]),
        .I2(RAM_Address_Src),
        .O(used_address[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_3
       (.I0(Immediate[1]),
        .I1(Reg2[1]),
        .I2(RAM_Address_Src),
        .O(used_address[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_4
       (.I0(Immediate[0]),
        .I1(Reg2[0]),
        .I2(RAM_Address_Src),
        .O(used_address[0]));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry_i_5
       (.I0(RAM_Address_Src),
        .I1(Reg2[3]),
        .I2(Immediate[3]),
        .I3(MA[3]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry_i_6
       (.I0(RAM_Address_Src),
        .I1(Reg2[2]),
        .I2(Immediate[2]),
        .I3(MA[2]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry_i_7
       (.I0(RAM_Address_Src),
        .I1(Reg2[1]),
        .I2(Immediate[1]),
        .I3(MA[1]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry_i_8
       (.I0(RAM_Address_Src),
        .I1(Reg2[0]),
        .I2(Immediate[0]),
        .I3(MA[0]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_8_n_0));
endmodule

module CU_WriteSelector
   (Write_Data,
    Manipulated_Immidiate,
    ALU_Out,
    RAM_Out,
    Write_Sel,
    Reg1);
  output [15:0]Write_Data;
  input [15:0]Manipulated_Immidiate;
  input [15:0]ALU_Out;
  input [15:0]RAM_Out;
  input [1:0]Write_Sel;
  input [15:0]Reg1;

  wire [15:0]ALU_Out;
  wire [15:0]Manipulated_Immidiate;
  wire [15:0]RAM_Out;
  wire [15:0]Reg1;
  wire [15:0]Write_Data;
  wire [1:0]Write_Sel;

  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[0]_INST_0 
       (.I0(Manipulated_Immidiate[0]),
        .I1(ALU_Out[0]),
        .I2(RAM_Out[0]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[0]),
        .O(Write_Data[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[10]_INST_0 
       (.I0(Manipulated_Immidiate[10]),
        .I1(ALU_Out[10]),
        .I2(RAM_Out[10]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[10]),
        .O(Write_Data[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[11]_INST_0 
       (.I0(Manipulated_Immidiate[11]),
        .I1(ALU_Out[11]),
        .I2(RAM_Out[11]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[11]),
        .O(Write_Data[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[12]_INST_0 
       (.I0(Manipulated_Immidiate[12]),
        .I1(ALU_Out[12]),
        .I2(RAM_Out[12]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[12]),
        .O(Write_Data[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[13]_INST_0 
       (.I0(Manipulated_Immidiate[13]),
        .I1(ALU_Out[13]),
        .I2(RAM_Out[13]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[13]),
        .O(Write_Data[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[14]_INST_0 
       (.I0(Manipulated_Immidiate[14]),
        .I1(ALU_Out[14]),
        .I2(RAM_Out[14]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[14]),
        .O(Write_Data[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[15]_INST_0 
       (.I0(Manipulated_Immidiate[15]),
        .I1(ALU_Out[15]),
        .I2(RAM_Out[15]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[15]),
        .O(Write_Data[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[1]_INST_0 
       (.I0(Manipulated_Immidiate[1]),
        .I1(ALU_Out[1]),
        .I2(RAM_Out[1]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[1]),
        .O(Write_Data[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[2]_INST_0 
       (.I0(Manipulated_Immidiate[2]),
        .I1(ALU_Out[2]),
        .I2(RAM_Out[2]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[2]),
        .O(Write_Data[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[3]_INST_0 
       (.I0(Manipulated_Immidiate[3]),
        .I1(ALU_Out[3]),
        .I2(RAM_Out[3]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[3]),
        .O(Write_Data[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[4]_INST_0 
       (.I0(Manipulated_Immidiate[4]),
        .I1(ALU_Out[4]),
        .I2(RAM_Out[4]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[4]),
        .O(Write_Data[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[5]_INST_0 
       (.I0(Manipulated_Immidiate[5]),
        .I1(ALU_Out[5]),
        .I2(RAM_Out[5]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[5]),
        .O(Write_Data[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[6]_INST_0 
       (.I0(Manipulated_Immidiate[6]),
        .I1(ALU_Out[6]),
        .I2(RAM_Out[6]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[6]),
        .O(Write_Data[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[7]_INST_0 
       (.I0(Manipulated_Immidiate[7]),
        .I1(ALU_Out[7]),
        .I2(RAM_Out[7]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[7]),
        .O(Write_Data[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[8]_INST_0 
       (.I0(Manipulated_Immidiate[8]),
        .I1(ALU_Out[8]),
        .I2(RAM_Out[8]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[8]),
        .O(Write_Data[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Write_Data[9]_INST_0 
       (.I0(Manipulated_Immidiate[9]),
        .I1(ALU_Out[9]),
        .I2(RAM_Out[9]),
        .I3(Write_Sel[1]),
        .I4(Write_Sel[0]),
        .I5(Reg1[9]),
        .O(Write_Data[9]));
endmodule

module Decoder
   (Register1,
    Register2,
    WriteBackRegister,
    Use_MA,
    Immediate,
    Instruction);
  output [3:0]Register1;
  output [3:0]Register2;
  output [3:0]WriteBackRegister;
  output Use_MA;
  output [12:0]Immediate;
  input [15:0]Instruction;

  wire [12:0]Immediate;
  wire [15:0]Instruction;
  wire [3:0]Register1;
  wire [3:0]Register2;
  wire Use_MA;
  wire [3:0]WriteBackRegister;

  LUT6 #(
    .INIT(64'h004D444800484448)) 
    \Immediate[0]_INST_0 
       (.I0(Instruction[14]),
        .I1(Instruction[0]),
        .I2(Instruction[13]),
        .I3(Instruction[15]),
        .I4(Instruction[12]),
        .I5(Instruction[8]),
        .O(Immediate[0]));
  LUT6 #(
    .INIT(64'h1010100000001000)) 
    \Immediate[10]_INST_0 
       (.I0(Instruction[14]),
        .I1(Instruction[12]),
        .I2(Instruction[15]),
        .I3(Instruction[8]),
        .I4(Instruction[13]),
        .I5(Instruction[10]),
        .O(Immediate[10]));
  LUT6 #(
    .INIT(64'h1010100000001000)) 
    \Immediate[11]_INST_0 
       (.I0(Instruction[14]),
        .I1(Instruction[12]),
        .I2(Instruction[15]),
        .I3(Instruction[8]),
        .I4(Instruction[13]),
        .I5(Instruction[11]),
        .O(Immediate[11]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \Immediate[12]_INST_0 
       (.I0(Instruction[8]),
        .I1(Instruction[14]),
        .I2(Instruction[15]),
        .I3(Instruction[13]),
        .I4(Instruction[12]),
        .O(Immediate[12]));
  LUT6 #(
    .INIT(64'h004D444800484448)) 
    \Immediate[1]_INST_0 
       (.I0(Instruction[14]),
        .I1(Instruction[1]),
        .I2(Instruction[13]),
        .I3(Instruction[15]),
        .I4(Instruction[12]),
        .I5(Instruction[9]),
        .O(Immediate[1]));
  LUT6 #(
    .INIT(64'h004D444800484448)) 
    \Immediate[2]_INST_0 
       (.I0(Instruction[14]),
        .I1(Instruction[2]),
        .I2(Instruction[13]),
        .I3(Instruction[15]),
        .I4(Instruction[12]),
        .I5(Instruction[10]),
        .O(Immediate[2]));
  LUT6 #(
    .INIT(64'h004D444800484448)) 
    \Immediate[3]_INST_0 
       (.I0(Instruction[14]),
        .I1(Instruction[3]),
        .I2(Instruction[13]),
        .I3(Instruction[15]),
        .I4(Instruction[12]),
        .I5(Instruction[11]),
        .O(Immediate[3]));
  LUT5 #(
    .INIT(32'h02082228)) 
    \Immediate[4]_INST_0 
       (.I0(Instruction[4]),
        .I1(Instruction[14]),
        .I2(Instruction[15]),
        .I3(Instruction[13]),
        .I4(Instruction[12]),
        .O(Immediate[4]));
  LUT5 #(
    .INIT(32'h02082228)) 
    \Immediate[5]_INST_0 
       (.I0(Instruction[5]),
        .I1(Instruction[14]),
        .I2(Instruction[15]),
        .I3(Instruction[13]),
        .I4(Instruction[12]),
        .O(Immediate[5]));
  LUT5 #(
    .INIT(32'h02082228)) 
    \Immediate[6]_INST_0 
       (.I0(Instruction[6]),
        .I1(Instruction[14]),
        .I2(Instruction[15]),
        .I3(Instruction[13]),
        .I4(Instruction[12]),
        .O(Immediate[6]));
  LUT5 #(
    .INIT(32'h02082228)) 
    \Immediate[7]_INST_0 
       (.I0(Instruction[7]),
        .I1(Instruction[14]),
        .I2(Instruction[15]),
        .I3(Instruction[13]),
        .I4(Instruction[12]),
        .O(Immediate[7]));
  LUT4 #(
    .INIT(16'h1000)) 
    \Immediate[8]_INST_0 
       (.I0(Instruction[14]),
        .I1(Instruction[12]),
        .I2(Instruction[8]),
        .I3(Instruction[15]),
        .O(Immediate[8]));
  LUT6 #(
    .INIT(64'h1010100000001000)) 
    \Immediate[9]_INST_0 
       (.I0(Instruction[14]),
        .I1(Instruction[12]),
        .I2(Instruction[15]),
        .I3(Instruction[8]),
        .I4(Instruction[13]),
        .I5(Instruction[9]),
        .O(Immediate[9]));
  LUT6 #(
    .INIT(64'h1810F2E208001000)) 
    \Register1[0]_INST_0 
       (.I0(Instruction[14]),
        .I1(Instruction[13]),
        .I2(Instruction[12]),
        .I3(Instruction[4]),
        .I4(Instruction[15]),
        .I5(Instruction[8]),
        .O(Register1[0]));
  LUT6 #(
    .INIT(64'h1810F2E208001000)) 
    \Register1[1]_INST_0 
       (.I0(Instruction[14]),
        .I1(Instruction[13]),
        .I2(Instruction[12]),
        .I3(Instruction[5]),
        .I4(Instruction[15]),
        .I5(Instruction[9]),
        .O(Register1[1]));
  LUT6 #(
    .INIT(64'h1810F2E208001000)) 
    \Register1[2]_INST_0 
       (.I0(Instruction[14]),
        .I1(Instruction[13]),
        .I2(Instruction[12]),
        .I3(Instruction[6]),
        .I4(Instruction[15]),
        .I5(Instruction[10]),
        .O(Register1[2]));
  LUT6 #(
    .INIT(64'h1810F2E208001000)) 
    \Register1[3]_INST_0 
       (.I0(Instruction[14]),
        .I1(Instruction[13]),
        .I2(Instruction[12]),
        .I3(Instruction[7]),
        .I4(Instruction[15]),
        .I5(Instruction[11]),
        .O(Register1[3]));
  LUT6 #(
    .INIT(64'h0000888800333000)) 
    \Register2[0]_INST_0 
       (.I0(Instruction[4]),
        .I1(Instruction[14]),
        .I2(Instruction[0]),
        .I3(Instruction[12]),
        .I4(Instruction[15]),
        .I5(Instruction[13]),
        .O(Register2[0]));
  LUT6 #(
    .INIT(64'h0000888800333000)) 
    \Register2[1]_INST_0 
       (.I0(Instruction[5]),
        .I1(Instruction[14]),
        .I2(Instruction[1]),
        .I3(Instruction[12]),
        .I4(Instruction[15]),
        .I5(Instruction[13]),
        .O(Register2[1]));
  LUT6 #(
    .INIT(64'h0000888800333000)) 
    \Register2[2]_INST_0 
       (.I0(Instruction[6]),
        .I1(Instruction[14]),
        .I2(Instruction[2]),
        .I3(Instruction[12]),
        .I4(Instruction[15]),
        .I5(Instruction[13]),
        .O(Register2[2]));
  LUT6 #(
    .INIT(64'h0000888800333000)) 
    \Register2[3]_INST_0 
       (.I0(Instruction[7]),
        .I1(Instruction[14]),
        .I2(Instruction[3]),
        .I3(Instruction[12]),
        .I4(Instruction[15]),
        .I5(Instruction[13]),
        .O(Register2[3]));
  LUT4 #(
    .INIT(16'h4500)) 
    Use_MA_INST_0
       (.I0(Instruction[15]),
        .I1(Instruction[0]),
        .I2(Instruction[14]),
        .I3(Instruction[13]),
        .O(Use_MA));
  LUT5 #(
    .INIT(32'h0020A220)) 
    \WriteBackRegister[0]_INST_0 
       (.I0(Instruction[8]),
        .I1(Instruction[15]),
        .I2(Instruction[14]),
        .I3(Instruction[13]),
        .I4(Instruction[12]),
        .O(WriteBackRegister[0]));
  LUT5 #(
    .INIT(32'h35140004)) 
    \WriteBackRegister[1]_INST_0 
       (.I0(Instruction[15]),
        .I1(Instruction[12]),
        .I2(Instruction[13]),
        .I3(Instruction[14]),
        .I4(Instruction[9]),
        .O(WriteBackRegister[1]));
  LUT5 #(
    .INIT(32'h35140004)) 
    \WriteBackRegister[2]_INST_0 
       (.I0(Instruction[15]),
        .I1(Instruction[12]),
        .I2(Instruction[13]),
        .I3(Instruction[14]),
        .I4(Instruction[10]),
        .O(WriteBackRegister[2]));
  LUT5 #(
    .INIT(32'h35140004)) 
    \WriteBackRegister[3]_INST_0 
       (.I0(Instruction[15]),
        .I1(Instruction[12]),
        .I2(Instruction[13]),
        .I3(Instruction[14]),
        .I4(Instruction[11]),
        .O(WriteBackRegister[3]));
endmodule

module Pipelining_Controller
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

  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[0]),
        .Q(execution_buffer[0]));
  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[10]),
        .Q(execution_buffer[10]));
  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[11]),
        .Q(execution_buffer[11]));
  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[12]),
        .Q(execution_buffer[12]));
  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[13]),
        .Q(execution_buffer[13]));
  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[14]),
        .Q(execution_buffer[14]));
  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[15]),
        .Q(execution_buffer[15]));
  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer_reg_n_0_[1] ),
        .Q(execution_buffer[1]));
  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer_reg_n_0_[2] ),
        .Q(execution_buffer[2]));
  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer_reg_n_0_[3] ),
        .Q(execution_buffer[3]));
  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(p_0_in[0]),
        .Q(execution_buffer[4]));
  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(p_0_in[1]),
        .Q(execution_buffer[5]));
  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(p_0_in[2]),
        .Q(execution_buffer[6]));
  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(p_0_in[3]),
        .Q(execution_buffer[7]));
  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[8]),
        .Q(execution_buffer[8]));
  FDCE #(
    .INIT(1'b0)) 
    \execution_buffer_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_read_buffer[9]),
        .Q(execution_buffer[9]));
  (* OPT_MODIFIED = "MLO" *) 
  (* srl_bus_name = "main_i/Pipelining_Controller_0/\\U0/execution_forward_reg " *) 
  (* srl_name = "main_i/Pipelining_Controller_0/\\U0/execution_forward_reg[0]_srl2_U0_execution_forward_reg_c " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b1)) 
    \execution_forward_reg[0]_srl2_U0_execution_forward_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(InstrLoad_CLK),
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
  (* OPT_MODIFIED = "MLO" *) 
  (* srl_bus_name = "main_i/Pipelining_Controller_0/\\U0/execution_forward_reg " *) 
  (* srl_name = "main_i/Pipelining_Controller_0/\\U0/execution_forward_reg[1]_srl2_U0_execution_forward_reg_c " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b1)) 
    \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(InstrLoad_CLK),
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
  (* OPT_MODIFIED = "MLO" *) 
  (* srl_bus_name = "main_i/Pipelining_Controller_0/\\U0/execution_forward_reg " *) 
  (* srl_name = "main_i/Pipelining_Controller_0/\\U0/execution_forward_reg[2]_srl2_U0_execution_forward_reg_c " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b1)) 
    \execution_forward_reg[2]_srl2_U0_execution_forward_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(InstrLoad_CLK),
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
  (* OPT_MODIFIED = "MLO" *) 
  (* srl_bus_name = "main_i/Pipelining_Controller_0/\\U0/execution_forward_reg " *) 
  (* srl_name = "main_i/Pipelining_Controller_0/\\U0/execution_forward_reg[3]_srl2_U0_execution_forward_reg_c " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b1)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(InstrLoad_CLK),
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
  LUT4 #(
    .INIT(16'h0004)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_14 
       (.I0(execution_buffer[14]),
        .I1(execution_buffer[12]),
        .I2(execution_buffer[15]),
        .I3(execution_buffer[13]),
        .O(exc_alu));
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
  LUT5 #(
    .INIT(32'h0020A220)) 
    \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_9 
       (.I0(execution_buffer[8]),
        .I1(execution_buffer[15]),
        .I2(execution_buffer[14]),
        .I3(execution_buffer[13]),
        .I4(execution_buffer[12]),
        .O(exc_write_reg[0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* srl_bus_name = "main_i/Pipelining_Controller_0/\\U0/execution_forward_reg " *) 
  (* srl_name = "main_i/Pipelining_Controller_0/\\U0/execution_forward_reg[4]_srl2_U0_execution_forward_reg_c " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b1)) 
    \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(InstrLoad_CLK),
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
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    execution_forward_reg_c
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_forward_reg_c_n_0),
        .Q(execution_forward_reg_c_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[0]),
        .Q(InstructionToExecute[0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[10]),
        .Q(InstructionToExecute[10]));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[11]),
        .Q(InstructionToExecute[11]));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[12]),
        .Q(InstructionToExecute[12]));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[13]),
        .Q(InstructionToExecute[13]));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[14]),
        .Q(InstructionToExecute[14]));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[15]),
        .Q(InstructionToExecute[15]));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[1]),
        .Q(InstructionToExecute[1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[2]),
        .Q(InstructionToExecute[2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[3]),
        .Q(InstructionToExecute[3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[4]),
        .Q(InstructionToExecute[4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[5]),
        .Q(InstructionToExecute[5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[6]),
        .Q(InstructionToExecute[6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[7]),
        .Q(InstructionToExecute[7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[8]),
        .Q(InstructionToExecute[8]));
  FDCE #(
    .INIT(1'b0)) 
    \output_buffer_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_buffer[9]),
        .Q(InstructionToExecute[9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \output_forward_reg[0] 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_forward_reg_gate__3_n_0),
        .Q(InstructionForwardConfiguration[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \output_forward_reg[1] 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_forward_reg_gate__2_n_0),
        .Q(InstructionForwardConfiguration[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \output_forward_reg[2] 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_forward_reg_gate__1_n_0),
        .Q(InstructionForwardConfiguration[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \output_forward_reg[3] 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_forward_reg_gate__0_n_0),
        .Q(InstructionForwardConfiguration[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \output_forward_reg[4] 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(write_back_forward_reg_gate_n_0),
        .Q(InstructionForwardConfiguration[4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    rf_forward_reg_c
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(1'b1),
        .Q(rf_forward_reg_c_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[0]_i_1 
       (.I0(Instruction[0]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[10]_i_1 
       (.I0(Instruction[10]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[11]_i_1 
       (.I0(Instruction[11]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[12]_i_1 
       (.I0(Instruction[12]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[13]_i_1 
       (.I0(Instruction[13]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[14]_i_1 
       (.I0(Instruction[14]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[15]_i_1 
       (.I0(Instruction[15]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[1]_i_1 
       (.I0(Instruction[1]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[2]_i_1 
       (.I0(Instruction[2]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[3]_i_1 
       (.I0(Instruction[3]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[4]_i_1 
       (.I0(Instruction[4]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[5]_i_1 
       (.I0(Instruction[5]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[6]_i_1 
       (.I0(Instruction[6]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[7]_i_1 
       (.I0(Instruction[7]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[8]_i_1 
       (.I0(Instruction[8]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rf_read_buffer[9]_i_1 
       (.I0(Instruction[9]),
        .I1(stalled_s_reg_0),
        .O(\rf_read_buffer[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[0]_i_1_n_0 ),
        .Q(rf_read_buffer[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[10]_i_1_n_0 ),
        .Q(rf_read_buffer[10]));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[11]_i_1_n_0 ),
        .Q(rf_read_buffer[11]));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[12]_i_1_n_0 ),
        .Q(rf_read_buffer[12]));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[13]_i_1_n_0 ),
        .Q(rf_read_buffer[13]));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[14]_i_1_n_0 ),
        .Q(rf_read_buffer[14]));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[15]_i_1_n_0 ),
        .Q(rf_read_buffer[15]));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[1]_i_1_n_0 ),
        .Q(\rf_read_buffer_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[2]_i_1_n_0 ),
        .Q(\rf_read_buffer_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[3]_i_1_n_0 ),
        .Q(\rf_read_buffer_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[4]_i_1_n_0 ),
        .Q(p_0_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[5]_i_1_n_0 ),
        .Q(p_0_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[6]_i_1_n_0 ),
        .Q(p_0_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[7]_i_1_n_0 ),
        .Q(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(\rf_read_buffer[8]_i_1_n_0 ),
        .Q(rf_read_buffer[8]));
  FDCE #(
    .INIT(1'b0)) 
    \rf_read_buffer_reg[9] 
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
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    stalled_s_reg
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(stalled_s_i_1_n_0),
        .Q(stalled_s_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[0]),
        .Q(write_back_buffer[0]));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[10]),
        .Q(write_back_buffer[10]));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[11]),
        .Q(write_back_buffer[11]));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[12]),
        .Q(write_back_buffer[12]));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[13]),
        .Q(write_back_buffer[13]));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[14]),
        .Q(write_back_buffer[14]));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[15]),
        .Q(write_back_buffer[15]));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[1]),
        .Q(write_back_buffer[1]));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[2]),
        .Q(write_back_buffer[2]));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[3]),
        .Q(write_back_buffer[3]));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[4]),
        .Q(write_back_buffer[4]));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[5]),
        .Q(write_back_buffer[5]));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[6]),
        .Q(write_back_buffer[6]));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[7]),
        .Q(write_back_buffer[7]));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[8]),
        .Q(write_back_buffer[8]));
  FDCE #(
    .INIT(1'b0)) 
    \write_back_buffer_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_buffer[9]),
        .Q(write_back_buffer[9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \write_back_forward_reg[0]_U0_write_back_forward_reg_c 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .D(\execution_forward_reg[0]_srl2_U0_execution_forward_reg_c_n_0 ),
        .Q(\write_back_forward_reg[0]_U0_write_back_forward_reg_c_n_0 ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \write_back_forward_reg[1]_U0_write_back_forward_reg_c 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .D(\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_n_0 ),
        .Q(\write_back_forward_reg[1]_U0_write_back_forward_reg_c_n_0 ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \write_back_forward_reg[2]_U0_write_back_forward_reg_c 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .D(\execution_forward_reg[2]_srl2_U0_execution_forward_reg_c_n_0 ),
        .Q(\write_back_forward_reg[2]_U0_write_back_forward_reg_c_n_0 ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \write_back_forward_reg[3]_U0_write_back_forward_reg_c 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .D(\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_n_0 ),
        .Q(\write_back_forward_reg[3]_U0_write_back_forward_reg_c_n_0 ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \write_back_forward_reg[4]_U0_write_back_forward_reg_c 
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .D(\execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_n_0 ),
        .Q(\write_back_forward_reg[4]_U0_write_back_forward_reg_c_n_0 ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    write_back_forward_reg_c
       (.C(InstrExec_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(execution_forward_reg_c_n_0),
        .Q(write_back_forward_reg_c_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    write_back_forward_reg_gate
       (.I0(\write_back_forward_reg[4]_U0_write_back_forward_reg_c_n_0 ),
        .I1(write_back_forward_reg_c_n_0),
        .O(write_back_forward_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    write_back_forward_reg_gate__0
       (.I0(\write_back_forward_reg[3]_U0_write_back_forward_reg_c_n_0 ),
        .I1(write_back_forward_reg_c_n_0),
        .O(write_back_forward_reg_gate__0_n_0));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    write_back_forward_reg_gate__1
       (.I0(\write_back_forward_reg[2]_U0_write_back_forward_reg_c_n_0 ),
        .I1(write_back_forward_reg_c_n_0),
        .O(write_back_forward_reg_gate__1_n_0));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
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

module Pipelining_ExecutionStage
   (Operand1_out,
    Operand2_out,
    Immediate_out,
    MA_out,
    WriteAddress_out,
    WHB_out,
    WLB_out,
    WriteDataSel_out,
    RAM_Src_out,
    RAM_Write_out,
    Use_MA_out,
    JMP_out,
    JMP_Conditional_out,
    JMP_Relative_out,
    JMP_DestinationSelect_out,
    JMP_Condition_out,
    IS_ALU_OP_out,
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
    RAM_Write,
    Use_MA,
    JMP,
    JMP_Conditional,
    JMP_Relative,
    JMP_DestinationSelect,
    JMP_Condition,
    Is_ALU_OP);
  output [15:0]Operand1_out;
  output [15:0]Operand2_out;
  output [15:0]Immediate_out;
  output [7:0]MA_out;
  output [3:0]WriteAddress_out;
  output WHB_out;
  output WLB_out;
  output [1:0]WriteDataSel_out;
  output RAM_Src_out;
  output RAM_Write_out;
  output Use_MA_out;
  output JMP_out;
  output JMP_Conditional_out;
  output JMP_Relative_out;
  output JMP_DestinationSelect_out;
  output [2:0]JMP_Condition_out;
  output IS_ALU_OP_out;
  input [15:0]Operand1;
  input InstrLoad_CLK;
  input Reset;
  input [15:0]Operand2;
  input [15:0]Immediate;
  input [7:0]MA;
  input [3:0]WriteAddress;
  input WHB;
  input WLB;
  input [1:0]WriteDataSel;
  input RAM_Src;
  input RAM_Write;
  input Use_MA;
  input JMP;
  input JMP_Conditional;
  input JMP_Relative;
  input JMP_DestinationSelect;
  input [2:0]JMP_Condition;
  input Is_ALU_OP;

  wire IS_ALU_OP_out;
  wire [15:0]Immediate;
  wire [15:0]Immediate_out;
  wire InstrLoad_CLK;
  wire Is_ALU_OP;
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
  wire [7:0]MA;
  wire [7:0]MA_out;
  wire [15:0]Operand1;
  wire [15:0]Operand1_out;
  wire [15:0]Operand2;
  wire [15:0]Operand2_out;
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

  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[0]),
        .Q(Immediate_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[10]),
        .Q(Immediate_out[10]));
  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[11]),
        .Q(Immediate_out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[12]),
        .Q(Immediate_out[12]));
  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[13]),
        .Q(Immediate_out[13]));
  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[14]),
        .Q(Immediate_out[14]));
  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[15]),
        .Q(Immediate_out[15]));
  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[1]),
        .Q(Immediate_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[2]),
        .Q(Immediate_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[3]),
        .Q(Immediate_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[4]),
        .Q(Immediate_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[5]),
        .Q(Immediate_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[6]),
        .Q(Immediate_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[7]),
        .Q(Immediate_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[8]),
        .Q(Immediate_out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \immediate_s_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Immediate[9]),
        .Q(Immediate_out[9]));
  FDCE #(
    .INIT(1'b0)) 
    is_alu_op_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Is_ALU_OP),
        .Q(IS_ALU_OP_out));
  FDCE #(
    .INIT(1'b0)) 
    \jmp_condition_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(JMP_Condition[0]),
        .Q(JMP_Condition_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \jmp_condition_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(JMP_Condition[1]),
        .Q(JMP_Condition_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \jmp_condition_s_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(JMP_Condition[2]),
        .Q(JMP_Condition_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    jmp_conditional_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(JMP_Conditional),
        .Q(JMP_Conditional_out));
  FDCE #(
    .INIT(1'b0)) 
    jmp_destination_sel_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(JMP_DestinationSelect),
        .Q(JMP_DestinationSelect_out));
  FDCE #(
    .INIT(1'b0)) 
    jmp_relative_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(JMP_Relative),
        .Q(JMP_Relative_out));
  FDCE #(
    .INIT(1'b0)) 
    jmp_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(JMP),
        .Q(JMP_out));
  FDCE #(
    .INIT(1'b0)) 
    \ma_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[0]),
        .Q(MA_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ma_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[1]),
        .Q(MA_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ma_s_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[2]),
        .Q(MA_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ma_s_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[3]),
        .Q(MA_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \ma_s_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[4]),
        .Q(MA_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \ma_s_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[5]),
        .Q(MA_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \ma_s_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[6]),
        .Q(MA_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \ma_s_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(MA[7]),
        .Q(MA_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[0]),
        .Q(Operand1_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[10]),
        .Q(Operand1_out[10]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[11]),
        .Q(Operand1_out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[12]),
        .Q(Operand1_out[12]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[13]),
        .Q(Operand1_out[13]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[14]),
        .Q(Operand1_out[14]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[15]),
        .Q(Operand1_out[15]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[1]),
        .Q(Operand1_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[2]),
        .Q(Operand1_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[3]),
        .Q(Operand1_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[4]),
        .Q(Operand1_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[5]),
        .Q(Operand1_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[6]),
        .Q(Operand1_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[7]),
        .Q(Operand1_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[8]),
        .Q(Operand1_out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \operand1_s_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand1[9]),
        .Q(Operand1_out[9]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[0]),
        .Q(Operand2_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[10]),
        .Q(Operand2_out[10]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[11]),
        .Q(Operand2_out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[12]),
        .Q(Operand2_out[12]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[13]),
        .Q(Operand2_out[13]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[14]),
        .Q(Operand2_out[14]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[15]),
        .Q(Operand2_out[15]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[1]),
        .Q(Operand2_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[2]),
        .Q(Operand2_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[3]),
        .Q(Operand2_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[4]),
        .Q(Operand2_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[5]),
        .Q(Operand2_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[6]),
        .Q(Operand2_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[7]),
        .Q(Operand2_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[8]),
        .Q(Operand2_out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \operand2_s_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Operand2[9]),
        .Q(Operand2_out[9]));
  FDCE #(
    .INIT(1'b0)) 
    ram_src_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(RAM_Src),
        .Q(RAM_Src_out));
  FDCE #(
    .INIT(1'b0)) 
    ram_write_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(RAM_Write),
        .Q(RAM_Write_out));
  FDCE #(
    .INIT(1'b0)) 
    use_ma_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Use_MA),
        .Q(Use_MA_out));
  FDCE #(
    .INIT(1'b0)) 
    whb_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WHB),
        .Q(WHB_out));
  FDCE #(
    .INIT(1'b0)) 
    wlb_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WLB),
        .Q(WLB_out));
  FDCE #(
    .INIT(1'b0)) 
    \write_address_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteAddress[0]),
        .Q(WriteAddress_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \write_address_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteAddress[1]),
        .Q(WriteAddress_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \write_address_s_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteAddress[2]),
        .Q(WriteAddress_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \write_address_s_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteAddress[3]),
        .Q(WriteAddress_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_select_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteDataSel[0]),
        .Q(WriteDataSel_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_select_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteDataSel[1]),
        .Q(WriteDataSel_out[1]));
endmodule

module Pipelining_Forwarder
   (ForwardedOperand1,
    ForwardedOperand2,
    ForwardedMA,
    CurrentOperand1,
    ForwardingConfiguration,
    ExecutionWriteData,
    ExecutionFlags,
    CurrentOperand2,
    CurrentMA);
  output [15:0]ForwardedOperand1;
  output [15:0]ForwardedOperand2;
  output [7:0]ForwardedMA;
  input [15:0]CurrentOperand1;
  input [4:0]ForwardingConfiguration;
  input [15:0]ExecutionWriteData;
  input [5:0]ExecutionFlags;
  input [15:0]CurrentOperand2;
  input [7:0]CurrentMA;

  wire [7:0]CurrentMA;
  wire [15:0]CurrentOperand1;
  wire [15:0]CurrentOperand2;
  wire [5:0]ExecutionFlags;
  wire [15:0]ExecutionWriteData;
  wire [7:0]ForwardedMA;
  wire [15:0]ForwardedOperand1;
  wire [15:0]ForwardedOperand2;
  wire [4:0]ForwardingConfiguration;

  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[0]_INST_0 
       (.I0(ExecutionWriteData[0]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[0]),
        .O(ForwardedMA[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[1]_INST_0 
       (.I0(ExecutionWriteData[1]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[1]),
        .O(ForwardedMA[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[2]_INST_0 
       (.I0(ExecutionWriteData[2]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[2]),
        .O(ForwardedMA[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[3]_INST_0 
       (.I0(ExecutionWriteData[3]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[3]),
        .O(ForwardedMA[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[4]_INST_0 
       (.I0(ExecutionWriteData[4]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[4]),
        .O(ForwardedMA[4]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[5]_INST_0 
       (.I0(ExecutionWriteData[5]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[5]),
        .O(ForwardedMA[5]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[6]_INST_0 
       (.I0(ExecutionWriteData[6]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[6]),
        .O(ForwardedMA[6]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[7]_INST_0 
       (.I0(ExecutionWriteData[7]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[7]),
        .O(ForwardedMA[7]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[0]_INST_0 
       (.I0(CurrentOperand1[0]),
        .I1(ExecutionFlags[0]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[0]),
        .O(ForwardedOperand1[0]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand1[10]_INST_0 
       (.I0(CurrentOperand1[10]),
        .I1(ForwardingConfiguration[1]),
        .I2(ForwardingConfiguration[0]),
        .I3(ExecutionWriteData[10]),
        .O(ForwardedOperand1[10]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand1[11]_INST_0 
       (.I0(CurrentOperand1[11]),
        .I1(ForwardingConfiguration[1]),
        .I2(ForwardingConfiguration[0]),
        .I3(ExecutionWriteData[11]),
        .O(ForwardedOperand1[11]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand1[12]_INST_0 
       (.I0(CurrentOperand1[12]),
        .I1(ForwardingConfiguration[1]),
        .I2(ForwardingConfiguration[0]),
        .I3(ExecutionWriteData[12]),
        .O(ForwardedOperand1[12]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand1[13]_INST_0 
       (.I0(CurrentOperand1[13]),
        .I1(ForwardingConfiguration[1]),
        .I2(ForwardingConfiguration[0]),
        .I3(ExecutionWriteData[13]),
        .O(ForwardedOperand1[13]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand1[14]_INST_0 
       (.I0(CurrentOperand1[14]),
        .I1(ForwardingConfiguration[1]),
        .I2(ForwardingConfiguration[0]),
        .I3(ExecutionWriteData[14]),
        .O(ForwardedOperand1[14]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand1[15]_INST_0 
       (.I0(CurrentOperand1[15]),
        .I1(ForwardingConfiguration[1]),
        .I2(ForwardingConfiguration[0]),
        .I3(ExecutionWriteData[15]),
        .O(ForwardedOperand1[15]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[1]_INST_0 
       (.I0(CurrentOperand1[1]),
        .I1(ExecutionFlags[1]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[1]),
        .O(ForwardedOperand1[1]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[2]_INST_0 
       (.I0(CurrentOperand1[2]),
        .I1(ExecutionFlags[2]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[2]),
        .O(ForwardedOperand1[2]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[3]_INST_0 
       (.I0(CurrentOperand1[3]),
        .I1(ExecutionFlags[3]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[3]),
        .O(ForwardedOperand1[3]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[4]_INST_0 
       (.I0(CurrentOperand1[4]),
        .I1(ExecutionFlags[4]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[4]),
        .O(ForwardedOperand1[4]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand1[5]_INST_0 
       (.I0(CurrentOperand1[5]),
        .I1(ForwardingConfiguration[1]),
        .I2(ForwardingConfiguration[0]),
        .I3(ExecutionWriteData[5]),
        .O(ForwardedOperand1[5]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[6]_INST_0 
       (.I0(CurrentOperand1[6]),
        .I1(ExecutionFlags[5]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[6]),
        .O(ForwardedOperand1[6]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand1[7]_INST_0 
       (.I0(CurrentOperand1[7]),
        .I1(ForwardingConfiguration[1]),
        .I2(ForwardingConfiguration[0]),
        .I3(ExecutionWriteData[7]),
        .O(ForwardedOperand1[7]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand1[8]_INST_0 
       (.I0(CurrentOperand1[8]),
        .I1(ForwardingConfiguration[1]),
        .I2(ForwardingConfiguration[0]),
        .I3(ExecutionWriteData[8]),
        .O(ForwardedOperand1[8]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand1[9]_INST_0 
       (.I0(CurrentOperand1[9]),
        .I1(ForwardingConfiguration[1]),
        .I2(ForwardingConfiguration[0]),
        .I3(ExecutionWriteData[9]),
        .O(ForwardedOperand1[9]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[0]_INST_0 
       (.I0(CurrentOperand2[0]),
        .I1(ExecutionFlags[0]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[0]),
        .O(ForwardedOperand2[0]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand2[10]_INST_0 
       (.I0(CurrentOperand2[10]),
        .I1(ForwardingConfiguration[3]),
        .I2(ForwardingConfiguration[2]),
        .I3(ExecutionWriteData[10]),
        .O(ForwardedOperand2[10]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand2[11]_INST_0 
       (.I0(CurrentOperand2[11]),
        .I1(ForwardingConfiguration[3]),
        .I2(ForwardingConfiguration[2]),
        .I3(ExecutionWriteData[11]),
        .O(ForwardedOperand2[11]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand2[12]_INST_0 
       (.I0(CurrentOperand2[12]),
        .I1(ForwardingConfiguration[3]),
        .I2(ForwardingConfiguration[2]),
        .I3(ExecutionWriteData[12]),
        .O(ForwardedOperand2[12]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand2[13]_INST_0 
       (.I0(CurrentOperand2[13]),
        .I1(ForwardingConfiguration[3]),
        .I2(ForwardingConfiguration[2]),
        .I3(ExecutionWriteData[13]),
        .O(ForwardedOperand2[13]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand2[14]_INST_0 
       (.I0(CurrentOperand2[14]),
        .I1(ForwardingConfiguration[3]),
        .I2(ForwardingConfiguration[2]),
        .I3(ExecutionWriteData[14]),
        .O(ForwardedOperand2[14]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand2[15]_INST_0 
       (.I0(CurrentOperand2[15]),
        .I1(ForwardingConfiguration[3]),
        .I2(ForwardingConfiguration[2]),
        .I3(ExecutionWriteData[15]),
        .O(ForwardedOperand2[15]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[1]_INST_0 
       (.I0(CurrentOperand2[1]),
        .I1(ExecutionFlags[1]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[1]),
        .O(ForwardedOperand2[1]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[2]_INST_0 
       (.I0(CurrentOperand2[2]),
        .I1(ExecutionFlags[2]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[2]),
        .O(ForwardedOperand2[2]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[3]_INST_0 
       (.I0(CurrentOperand2[3]),
        .I1(ExecutionFlags[3]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[3]),
        .O(ForwardedOperand2[3]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[4]_INST_0 
       (.I0(CurrentOperand2[4]),
        .I1(ExecutionFlags[4]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[4]),
        .O(ForwardedOperand2[4]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand2[5]_INST_0 
       (.I0(CurrentOperand2[5]),
        .I1(ForwardingConfiguration[3]),
        .I2(ForwardingConfiguration[2]),
        .I3(ExecutionWriteData[5]),
        .O(ForwardedOperand2[5]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[6]_INST_0 
       (.I0(CurrentOperand2[6]),
        .I1(ExecutionFlags[5]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[6]),
        .O(ForwardedOperand2[6]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand2[7]_INST_0 
       (.I0(CurrentOperand2[7]),
        .I1(ForwardingConfiguration[3]),
        .I2(ForwardingConfiguration[2]),
        .I3(ExecutionWriteData[7]),
        .O(ForwardedOperand2[7]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand2[8]_INST_0 
       (.I0(CurrentOperand2[8]),
        .I1(ForwardingConfiguration[3]),
        .I2(ForwardingConfiguration[2]),
        .I3(ExecutionWriteData[8]),
        .O(ForwardedOperand2[8]));
  LUT4 #(
    .INIT(16'h2E22)) 
    \ForwardedOperand2[9]_INST_0 
       (.I0(CurrentOperand2[9]),
        .I1(ForwardingConfiguration[3]),
        .I2(ForwardingConfiguration[2]),
        .I3(ExecutionWriteData[9]),
        .O(ForwardedOperand2[9]));
endmodule

module Pipelining_WriteBackStage
   (WriteAddress_out,
    WriteData_out,
    Flags_out,
    RF_WE_out,
    Is_ALU_OP_out,
    JMP_out,
    WriteAddress,
    InstrLoad_CLK,
    Reset,
    WriteData,
    Flags,
    Is_ALU_OP,
    JMP,
    WHB,
    WLB);
  output [3:0]WriteAddress_out;
  output [15:0]WriteData_out;
  output [5:0]Flags_out;
  output RF_WE_out;
  output Is_ALU_OP_out;
  output JMP_out;
  input [3:0]WriteAddress;
  input InstrLoad_CLK;
  input Reset;
  input [15:0]WriteData;
  input [5:0]Flags;
  input Is_ALU_OP;
  input JMP;
  input WHB;
  input WLB;

  wire [5:0]Flags;
  wire [5:0]Flags_out;
  wire InstrLoad_CLK;
  wire Is_ALU_OP;
  wire Is_ALU_OP_out;
  wire JMP;
  wire JMP_out;
  wire RF_WE_out;
  wire Reset;
  wire WHB;
  wire WLB;
  wire [3:0]WriteAddress;
  wire [3:0]WriteAddress_out;
  wire [15:0]WriteData;
  wire [15:0]WriteData_out;
  wire rf_we_s_i_1_n_0;

  FDCE #(
    .INIT(1'b0)) 
    \flags_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[0]),
        .Q(Flags_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \flags_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[1]),
        .Q(Flags_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \flags_s_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[2]),
        .Q(Flags_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \flags_s_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[3]),
        .Q(Flags_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \flags_s_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[4]),
        .Q(Flags_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \flags_s_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[5]),
        .Q(Flags_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    is_alu_op_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Is_ALU_OP),
        .Q(Is_ALU_OP_out));
  FDCE #(
    .INIT(1'b0)) 
    jmp_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(JMP),
        .Q(JMP_out));
  LUT2 #(
    .INIT(4'hE)) 
    rf_we_s_i_1
       (.I0(WHB),
        .I1(WLB),
        .O(rf_we_s_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rf_we_s_reg
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rf_we_s_i_1_n_0),
        .Q(RF_WE_out));
  FDCE #(
    .INIT(1'b0)) 
    \write_address_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteAddress[0]),
        .Q(WriteAddress_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \write_address_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteAddress[1]),
        .Q(WriteAddress_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \write_address_s_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteAddress[2]),
        .Q(WriteAddress_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \write_address_s_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteAddress[3]),
        .Q(WriteAddress_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[0] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[0]),
        .Q(WriteData_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[10]),
        .Q(WriteData_out[10]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[11]),
        .Q(WriteData_out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[12]),
        .Q(WriteData_out[12]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[13]),
        .Q(WriteData_out[13]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[14]),
        .Q(WriteData_out[14]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[15]),
        .Q(WriteData_out[15]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[1] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[1]),
        .Q(WriteData_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[2] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[2]),
        .Q(WriteData_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[3] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[3]),
        .Q(WriteData_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[4] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[4]),
        .Q(WriteData_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[5]),
        .Q(WriteData_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[6]),
        .Q(WriteData_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[7]),
        .Q(WriteData_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[8]),
        .Q(WriteData_out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_s_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(WriteData[9]),
        .Q(WriteData_out[9]));
endmodule

module ProgramCounter
   (Dout,
    Din,
    JMP,
    InstrExec_CLK,
    Reset,
    Stalled);
  output [15:0]Dout;
  input [15:0]Din;
  input JMP;
  input InstrExec_CLK;
  input Reset;
  input Stalled;

  wire [15:0]Din;
  wire [15:0]Dout;
  wire \InstrAddr[11]_i_2_n_0 ;
  wire \InstrAddr[11]_i_3_n_0 ;
  wire \InstrAddr[11]_i_4_n_0 ;
  wire \InstrAddr[11]_i_5_n_0 ;
  wire \InstrAddr[15]_i_1_n_0 ;
  wire \InstrAddr[15]_i_3_n_0 ;
  wire \InstrAddr[15]_i_4_n_0 ;
  wire \InstrAddr[15]_i_5_n_0 ;
  wire \InstrAddr[15]_i_6_n_0 ;
  wire \InstrAddr[3]_i_2_n_0 ;
  wire \InstrAddr[3]_i_3_n_0 ;
  wire \InstrAddr[3]_i_4_n_0 ;
  wire \InstrAddr[3]_i_5_n_0 ;
  wire \InstrAddr[3]_i_6_n_0 ;
  wire \InstrAddr[7]_i_2_n_0 ;
  wire \InstrAddr[7]_i_3_n_0 ;
  wire \InstrAddr[7]_i_4_n_0 ;
  wire \InstrAddr[7]_i_5_n_0 ;
  wire \InstrAddr_reg[11]_i_1_n_0 ;
  wire \InstrAddr_reg[11]_i_1_n_4 ;
  wire \InstrAddr_reg[11]_i_1_n_5 ;
  wire \InstrAddr_reg[11]_i_1_n_6 ;
  wire \InstrAddr_reg[11]_i_1_n_7 ;
  wire \InstrAddr_reg[15]_i_2_n_4 ;
  wire \InstrAddr_reg[15]_i_2_n_5 ;
  wire \InstrAddr_reg[15]_i_2_n_6 ;
  wire \InstrAddr_reg[15]_i_2_n_7 ;
  wire \InstrAddr_reg[3]_i_1_n_0 ;
  wire \InstrAddr_reg[3]_i_1_n_4 ;
  wire \InstrAddr_reg[3]_i_1_n_5 ;
  wire \InstrAddr_reg[3]_i_1_n_6 ;
  wire \InstrAddr_reg[3]_i_1_n_7 ;
  wire \InstrAddr_reg[7]_i_1_n_0 ;
  wire \InstrAddr_reg[7]_i_1_n_4 ;
  wire \InstrAddr_reg[7]_i_1_n_5 ;
  wire \InstrAddr_reg[7]_i_1_n_6 ;
  wire \InstrAddr_reg[7]_i_1_n_7 ;
  wire InstrExec_CLK;
  wire JMP;
  wire Reset;
  wire Stalled;
  wire [2:0]\NLW_InstrAddr_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_InstrAddr_reg[15]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_InstrAddr_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_InstrAddr_reg[7]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[11]_i_2 
       (.I0(Din[11]),
        .I1(JMP),
        .I2(Dout[11]),
        .O(\InstrAddr[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[11]_i_3 
       (.I0(Din[10]),
        .I1(JMP),
        .I2(Dout[10]),
        .O(\InstrAddr[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[11]_i_4 
       (.I0(Din[9]),
        .I1(JMP),
        .I2(Dout[9]),
        .O(\InstrAddr[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[11]_i_5 
       (.I0(Din[8]),
        .I1(JMP),
        .I2(Dout[8]),
        .O(\InstrAddr[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \InstrAddr[15]_i_1 
       (.I0(JMP),
        .I1(Stalled),
        .O(\InstrAddr[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[15]_i_3 
       (.I0(Din[15]),
        .I1(JMP),
        .I2(Dout[15]),
        .O(\InstrAddr[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[15]_i_4 
       (.I0(Din[14]),
        .I1(JMP),
        .I2(Dout[14]),
        .O(\InstrAddr[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[15]_i_5 
       (.I0(Din[13]),
        .I1(JMP),
        .I2(Dout[13]),
        .O(\InstrAddr[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[15]_i_6 
       (.I0(Din[12]),
        .I1(JMP),
        .I2(Dout[12]),
        .O(\InstrAddr[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[3]_i_2 
       (.I0(Din[0]),
        .I1(JMP),
        .I2(Dout[0]),
        .O(\InstrAddr[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[3]_i_3 
       (.I0(Din[3]),
        .I1(JMP),
        .I2(Dout[3]),
        .O(\InstrAddr[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[3]_i_4 
       (.I0(Din[2]),
        .I1(JMP),
        .I2(Dout[2]),
        .O(\InstrAddr[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[3]_i_5 
       (.I0(Din[1]),
        .I1(JMP),
        .I2(Dout[1]),
        .O(\InstrAddr[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \InstrAddr[3]_i_6 
       (.I0(Dout[0]),
        .I1(Din[0]),
        .I2(JMP),
        .O(\InstrAddr[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[7]_i_2 
       (.I0(Din[7]),
        .I1(JMP),
        .I2(Dout[7]),
        .O(\InstrAddr[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[7]_i_3 
       (.I0(Din[6]),
        .I1(JMP),
        .I2(Dout[6]),
        .O(\InstrAddr[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[7]_i_4 
       (.I0(Din[5]),
        .I1(JMP),
        .I2(Dout[5]),
        .O(\InstrAddr[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \InstrAddr[7]_i_5 
       (.I0(Din[4]),
        .I1(JMP),
        .I2(Dout[4]),
        .O(\InstrAddr[7]_i_5_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[0] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[3]_i_1_n_7 ),
        .Q(Dout[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[10] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[11]_i_1_n_5 ),
        .Q(Dout[10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[11] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[11]_i_1_n_4 ),
        .Q(Dout[11]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \InstrAddr_reg[11]_i_1 
       (.CI(\InstrAddr_reg[7]_i_1_n_0 ),
        .CO({\InstrAddr_reg[11]_i_1_n_0 ,\NLW_InstrAddr_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\InstrAddr_reg[11]_i_1_n_4 ,\InstrAddr_reg[11]_i_1_n_5 ,\InstrAddr_reg[11]_i_1_n_6 ,\InstrAddr_reg[11]_i_1_n_7 }),
        .S({\InstrAddr[11]_i_2_n_0 ,\InstrAddr[11]_i_3_n_0 ,\InstrAddr[11]_i_4_n_0 ,\InstrAddr[11]_i_5_n_0 }));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[12] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[15]_i_2_n_7 ),
        .Q(Dout[12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[13] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[15]_i_2_n_6 ),
        .Q(Dout[13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[14] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[15]_i_2_n_5 ),
        .Q(Dout[14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[15] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[15]_i_2_n_4 ),
        .Q(Dout[15]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \InstrAddr_reg[15]_i_2 
       (.CI(\InstrAddr_reg[11]_i_1_n_0 ),
        .CO(\NLW_InstrAddr_reg[15]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\InstrAddr_reg[15]_i_2_n_4 ,\InstrAddr_reg[15]_i_2_n_5 ,\InstrAddr_reg[15]_i_2_n_6 ,\InstrAddr_reg[15]_i_2_n_7 }),
        .S({\InstrAddr[15]_i_3_n_0 ,\InstrAddr[15]_i_4_n_0 ,\InstrAddr[15]_i_5_n_0 ,\InstrAddr[15]_i_6_n_0 }));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[1] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[3]_i_1_n_6 ),
        .Q(Dout[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[2] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[3]_i_1_n_5 ),
        .Q(Dout[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[3] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[3]_i_1_n_4 ),
        .Q(Dout[3]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \InstrAddr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\InstrAddr_reg[3]_i_1_n_0 ,\NLW_InstrAddr_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\InstrAddr[3]_i_2_n_0 }),
        .O({\InstrAddr_reg[3]_i_1_n_4 ,\InstrAddr_reg[3]_i_1_n_5 ,\InstrAddr_reg[3]_i_1_n_6 ,\InstrAddr_reg[3]_i_1_n_7 }),
        .S({\InstrAddr[3]_i_3_n_0 ,\InstrAddr[3]_i_4_n_0 ,\InstrAddr[3]_i_5_n_0 ,\InstrAddr[3]_i_6_n_0 }));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[4] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[7]_i_1_n_7 ),
        .Q(Dout[4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[5] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[7]_i_1_n_6 ),
        .Q(Dout[5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[6] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[7]_i_1_n_5 ),
        .Q(Dout[6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[7] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[7]_i_1_n_4 ),
        .Q(Dout[7]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \InstrAddr_reg[7]_i_1 
       (.CI(\InstrAddr_reg[3]_i_1_n_0 ),
        .CO({\InstrAddr_reg[7]_i_1_n_0 ,\NLW_InstrAddr_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\InstrAddr_reg[7]_i_1_n_4 ,\InstrAddr_reg[7]_i_1_n_5 ,\InstrAddr_reg[7]_i_1_n_6 ,\InstrAddr_reg[7]_i_1_n_7 }),
        .S({\InstrAddr[7]_i_2_n_0 ,\InstrAddr[7]_i_3_n_0 ,\InstrAddr[7]_i_4_n_0 ,\InstrAddr[7]_i_5_n_0 }));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[8] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[11]_i_1_n_7 ),
        .Q(Dout[8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \InstrAddr_reg[9] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[11]_i_1_n_6 ),
        .Q(Dout[9]));
endmodule

module RAM_Placeholder
   (DataOut,
    CLK,
    DataIn,
    WE,
    Address,
    lopt);
  output [15:0]DataOut;
  input CLK;
  input [15:0]DataIn;
  input WE;
  input [7:0]Address;
  input lopt;

  wire [7:0]Address;
  wire [15:0]DataIn;
  wire [15:0]DataOut;
  wire WE;
  wire lopt;

  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S_UNIQ_BASE_ s_memContents_reg_0_255_0_0
       (.A(Address),
        .D(DataIn[0]),
        .O(DataOut[0]),
        .WCLK(lopt),
        .WE(WE));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM256X1S_HD1 s_memContents_reg_0_255_10_10
       (.A(Address),
        .D(DataIn[10]),
        .O(DataOut[10]),
        .WCLK(lopt),
        .WE(WE));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM256X1S_HD2 s_memContents_reg_0_255_11_11
       (.A(Address),
        .D(DataIn[11]),
        .O(DataOut[11]),
        .WCLK(lopt),
        .WE(WE));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM256X1S_HD3 s_memContents_reg_0_255_12_12
       (.A(Address),
        .D(DataIn[12]),
        .O(DataOut[12]),
        .WCLK(lopt),
        .WE(WE));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM256X1S_HD4 s_memContents_reg_0_255_13_13
       (.A(Address),
        .D(DataIn[13]),
        .O(DataOut[13]),
        .WCLK(lopt),
        .WE(WE));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM256X1S_HD5 s_memContents_reg_0_255_14_14
       (.A(Address),
        .D(DataIn[14]),
        .O(DataOut[14]),
        .WCLK(lopt),
        .WE(WE));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM256X1S_HD6 s_memContents_reg_0_255_15_15
       (.A(Address),
        .D(DataIn[15]),
        .O(DataOut[15]),
        .WCLK(lopt),
        .WE(WE));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S_HD7 s_memContents_reg_0_255_1_1
       (.A(Address),
        .D(DataIn[1]),
        .O(DataOut[1]),
        .WCLK(lopt),
        .WE(WE));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S_HD8 s_memContents_reg_0_255_2_2
       (.A(Address),
        .D(DataIn[2]),
        .O(DataOut[2]),
        .WCLK(lopt),
        .WE(WE));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S_HD9 s_memContents_reg_0_255_3_3
       (.A(Address),
        .D(DataIn[3]),
        .O(DataOut[3]),
        .WCLK(lopt),
        .WE(WE));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S_HD10 s_memContents_reg_0_255_4_4
       (.A(Address),
        .D(DataIn[4]),
        .O(DataOut[4]),
        .WCLK(lopt),
        .WE(WE));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S_HD11 s_memContents_reg_0_255_5_5
       (.A(Address),
        .D(DataIn[5]),
        .O(DataOut[5]),
        .WCLK(lopt),
        .WE(WE));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S_HD12 s_memContents_reg_0_255_6_6
       (.A(Address),
        .D(DataIn[6]),
        .O(DataOut[6]),
        .WCLK(lopt),
        .WE(WE));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S_HD13 s_memContents_reg_0_255_7_7
       (.A(Address),
        .D(DataIn[7]),
        .O(DataOut[7]),
        .WCLK(lopt),
        .WE(WE));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM256X1S_HD14 s_memContents_reg_0_255_8_8
       (.A(Address),
        .D(DataIn[8]),
        .O(DataOut[8]),
        .WCLK(lopt),
        .WE(WE));
  (* INIT = "256'h0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM256X1S_HD15 s_memContents_reg_0_255_9_9
       (.A(Address),
        .D(DataIn[9]),
        .O(DataOut[9]),
        .WCLK(lopt),
        .WE(WE));
endmodule

module RegFile
   (RegMA_data,
    Reg1_data,
    Reg2_data,
    WriteData,
    clk,
    OverwriteFl,
    Flags,
    AddrReg1,
    AddrReg2,
    WE,
    AddrWriteReg);
  output [7:0]RegMA_data;
  output [15:0]Reg1_data;
  output [15:0]Reg2_data;
  input [15:0]WriteData;
  input clk;
  input OverwriteFl;
  input [5:0]Flags;
  input [3:0]AddrReg1;
  input [3:0]AddrReg2;
  input WE;
  input [3:0]AddrWriteReg;

  wire [3:0]AddrReg1;
  wire [3:0]AddrReg2;
  wire [3:0]AddrWriteReg;
  wire [5:0]Flags;
  wire OverwriteFl;
  wire [15:0]Reg0;
  wire Reg0_0;
  wire [15:0]Reg1;
  wire Reg1_1;
  wire [15:0]Reg1_data;
  wire \Reg1_data[0]_INST_0_i_1_n_0 ;
  wire \Reg1_data[0]_INST_0_i_2_n_0 ;
  wire \Reg1_data[0]_INST_0_i_3_n_0 ;
  wire \Reg1_data[0]_INST_0_i_4_n_0 ;
  wire \Reg1_data[0]_INST_0_i_5_n_0 ;
  wire \Reg1_data[0]_INST_0_i_6_n_0 ;
  wire \Reg1_data[10]_INST_0_i_1_n_0 ;
  wire \Reg1_data[10]_INST_0_i_2_n_0 ;
  wire \Reg1_data[10]_INST_0_i_3_n_0 ;
  wire \Reg1_data[10]_INST_0_i_4_n_0 ;
  wire \Reg1_data[10]_INST_0_i_5_n_0 ;
  wire \Reg1_data[10]_INST_0_i_6_n_0 ;
  wire \Reg1_data[11]_INST_0_i_1_n_0 ;
  wire \Reg1_data[11]_INST_0_i_2_n_0 ;
  wire \Reg1_data[11]_INST_0_i_3_n_0 ;
  wire \Reg1_data[11]_INST_0_i_4_n_0 ;
  wire \Reg1_data[11]_INST_0_i_5_n_0 ;
  wire \Reg1_data[11]_INST_0_i_6_n_0 ;
  wire \Reg1_data[12]_INST_0_i_1_n_0 ;
  wire \Reg1_data[12]_INST_0_i_2_n_0 ;
  wire \Reg1_data[12]_INST_0_i_3_n_0 ;
  wire \Reg1_data[12]_INST_0_i_4_n_0 ;
  wire \Reg1_data[12]_INST_0_i_5_n_0 ;
  wire \Reg1_data[12]_INST_0_i_6_n_0 ;
  wire \Reg1_data[13]_INST_0_i_1_n_0 ;
  wire \Reg1_data[13]_INST_0_i_2_n_0 ;
  wire \Reg1_data[13]_INST_0_i_3_n_0 ;
  wire \Reg1_data[13]_INST_0_i_4_n_0 ;
  wire \Reg1_data[13]_INST_0_i_5_n_0 ;
  wire \Reg1_data[13]_INST_0_i_6_n_0 ;
  wire \Reg1_data[14]_INST_0_i_1_n_0 ;
  wire \Reg1_data[14]_INST_0_i_2_n_0 ;
  wire \Reg1_data[14]_INST_0_i_3_n_0 ;
  wire \Reg1_data[14]_INST_0_i_4_n_0 ;
  wire \Reg1_data[14]_INST_0_i_5_n_0 ;
  wire \Reg1_data[14]_INST_0_i_6_n_0 ;
  wire \Reg1_data[15]_INST_0_i_1_n_0 ;
  wire \Reg1_data[15]_INST_0_i_2_n_0 ;
  wire \Reg1_data[15]_INST_0_i_3_n_0 ;
  wire \Reg1_data[15]_INST_0_i_4_n_0 ;
  wire \Reg1_data[15]_INST_0_i_5_n_0 ;
  wire \Reg1_data[15]_INST_0_i_6_n_0 ;
  wire \Reg1_data[1]_INST_0_i_1_n_0 ;
  wire \Reg1_data[1]_INST_0_i_2_n_0 ;
  wire \Reg1_data[1]_INST_0_i_3_n_0 ;
  wire \Reg1_data[1]_INST_0_i_4_n_0 ;
  wire \Reg1_data[1]_INST_0_i_5_n_0 ;
  wire \Reg1_data[1]_INST_0_i_6_n_0 ;
  wire \Reg1_data[2]_INST_0_i_1_n_0 ;
  wire \Reg1_data[2]_INST_0_i_2_n_0 ;
  wire \Reg1_data[2]_INST_0_i_3_n_0 ;
  wire \Reg1_data[2]_INST_0_i_4_n_0 ;
  wire \Reg1_data[2]_INST_0_i_5_n_0 ;
  wire \Reg1_data[2]_INST_0_i_6_n_0 ;
  wire \Reg1_data[3]_INST_0_i_1_n_0 ;
  wire \Reg1_data[3]_INST_0_i_2_n_0 ;
  wire \Reg1_data[3]_INST_0_i_3_n_0 ;
  wire \Reg1_data[3]_INST_0_i_4_n_0 ;
  wire \Reg1_data[3]_INST_0_i_5_n_0 ;
  wire \Reg1_data[3]_INST_0_i_6_n_0 ;
  wire \Reg1_data[4]_INST_0_i_1_n_0 ;
  wire \Reg1_data[4]_INST_0_i_2_n_0 ;
  wire \Reg1_data[4]_INST_0_i_3_n_0 ;
  wire \Reg1_data[4]_INST_0_i_4_n_0 ;
  wire \Reg1_data[4]_INST_0_i_5_n_0 ;
  wire \Reg1_data[4]_INST_0_i_6_n_0 ;
  wire \Reg1_data[5]_INST_0_i_1_n_0 ;
  wire \Reg1_data[5]_INST_0_i_2_n_0 ;
  wire \Reg1_data[5]_INST_0_i_3_n_0 ;
  wire \Reg1_data[5]_INST_0_i_4_n_0 ;
  wire \Reg1_data[5]_INST_0_i_5_n_0 ;
  wire \Reg1_data[5]_INST_0_i_6_n_0 ;
  wire \Reg1_data[6]_INST_0_i_1_n_0 ;
  wire \Reg1_data[6]_INST_0_i_2_n_0 ;
  wire \Reg1_data[6]_INST_0_i_3_n_0 ;
  wire \Reg1_data[6]_INST_0_i_4_n_0 ;
  wire \Reg1_data[6]_INST_0_i_5_n_0 ;
  wire \Reg1_data[6]_INST_0_i_6_n_0 ;
  wire \Reg1_data[7]_INST_0_i_1_n_0 ;
  wire \Reg1_data[7]_INST_0_i_2_n_0 ;
  wire \Reg1_data[7]_INST_0_i_3_n_0 ;
  wire \Reg1_data[7]_INST_0_i_4_n_0 ;
  wire \Reg1_data[7]_INST_0_i_5_n_0 ;
  wire \Reg1_data[7]_INST_0_i_6_n_0 ;
  wire \Reg1_data[8]_INST_0_i_1_n_0 ;
  wire \Reg1_data[8]_INST_0_i_2_n_0 ;
  wire \Reg1_data[8]_INST_0_i_3_n_0 ;
  wire \Reg1_data[8]_INST_0_i_4_n_0 ;
  wire \Reg1_data[8]_INST_0_i_5_n_0 ;
  wire \Reg1_data[8]_INST_0_i_6_n_0 ;
  wire \Reg1_data[9]_INST_0_i_1_n_0 ;
  wire \Reg1_data[9]_INST_0_i_2_n_0 ;
  wire \Reg1_data[9]_INST_0_i_3_n_0 ;
  wire \Reg1_data[9]_INST_0_i_4_n_0 ;
  wire \Reg1_data[9]_INST_0_i_5_n_0 ;
  wire \Reg1_data[9]_INST_0_i_6_n_0 ;
  wire [15:0]Reg2;
  wire Reg2_2;
  wire [15:0]Reg2_data;
  wire \Reg2_data[0]_INST_0_i_1_n_0 ;
  wire \Reg2_data[0]_INST_0_i_2_n_0 ;
  wire \Reg2_data[0]_INST_0_i_3_n_0 ;
  wire \Reg2_data[0]_INST_0_i_4_n_0 ;
  wire \Reg2_data[0]_INST_0_i_5_n_0 ;
  wire \Reg2_data[0]_INST_0_i_6_n_0 ;
  wire \Reg2_data[10]_INST_0_i_1_n_0 ;
  wire \Reg2_data[10]_INST_0_i_2_n_0 ;
  wire \Reg2_data[10]_INST_0_i_3_n_0 ;
  wire \Reg2_data[10]_INST_0_i_4_n_0 ;
  wire \Reg2_data[10]_INST_0_i_5_n_0 ;
  wire \Reg2_data[10]_INST_0_i_6_n_0 ;
  wire \Reg2_data[11]_INST_0_i_1_n_0 ;
  wire \Reg2_data[11]_INST_0_i_2_n_0 ;
  wire \Reg2_data[11]_INST_0_i_3_n_0 ;
  wire \Reg2_data[11]_INST_0_i_4_n_0 ;
  wire \Reg2_data[11]_INST_0_i_5_n_0 ;
  wire \Reg2_data[11]_INST_0_i_6_n_0 ;
  wire \Reg2_data[12]_INST_0_i_1_n_0 ;
  wire \Reg2_data[12]_INST_0_i_2_n_0 ;
  wire \Reg2_data[12]_INST_0_i_3_n_0 ;
  wire \Reg2_data[12]_INST_0_i_4_n_0 ;
  wire \Reg2_data[12]_INST_0_i_5_n_0 ;
  wire \Reg2_data[12]_INST_0_i_6_n_0 ;
  wire \Reg2_data[13]_INST_0_i_1_n_0 ;
  wire \Reg2_data[13]_INST_0_i_2_n_0 ;
  wire \Reg2_data[13]_INST_0_i_3_n_0 ;
  wire \Reg2_data[13]_INST_0_i_4_n_0 ;
  wire \Reg2_data[13]_INST_0_i_5_n_0 ;
  wire \Reg2_data[13]_INST_0_i_6_n_0 ;
  wire \Reg2_data[14]_INST_0_i_1_n_0 ;
  wire \Reg2_data[14]_INST_0_i_2_n_0 ;
  wire \Reg2_data[14]_INST_0_i_3_n_0 ;
  wire \Reg2_data[14]_INST_0_i_4_n_0 ;
  wire \Reg2_data[14]_INST_0_i_5_n_0 ;
  wire \Reg2_data[14]_INST_0_i_6_n_0 ;
  wire \Reg2_data[15]_INST_0_i_1_n_0 ;
  wire \Reg2_data[15]_INST_0_i_2_n_0 ;
  wire \Reg2_data[15]_INST_0_i_3_n_0 ;
  wire \Reg2_data[15]_INST_0_i_4_n_0 ;
  wire \Reg2_data[15]_INST_0_i_5_n_0 ;
  wire \Reg2_data[15]_INST_0_i_6_n_0 ;
  wire \Reg2_data[1]_INST_0_i_1_n_0 ;
  wire \Reg2_data[1]_INST_0_i_2_n_0 ;
  wire \Reg2_data[1]_INST_0_i_3_n_0 ;
  wire \Reg2_data[1]_INST_0_i_4_n_0 ;
  wire \Reg2_data[1]_INST_0_i_5_n_0 ;
  wire \Reg2_data[1]_INST_0_i_6_n_0 ;
  wire \Reg2_data[2]_INST_0_i_1_n_0 ;
  wire \Reg2_data[2]_INST_0_i_2_n_0 ;
  wire \Reg2_data[2]_INST_0_i_3_n_0 ;
  wire \Reg2_data[2]_INST_0_i_4_n_0 ;
  wire \Reg2_data[2]_INST_0_i_5_n_0 ;
  wire \Reg2_data[2]_INST_0_i_6_n_0 ;
  wire \Reg2_data[3]_INST_0_i_1_n_0 ;
  wire \Reg2_data[3]_INST_0_i_2_n_0 ;
  wire \Reg2_data[3]_INST_0_i_3_n_0 ;
  wire \Reg2_data[3]_INST_0_i_4_n_0 ;
  wire \Reg2_data[3]_INST_0_i_5_n_0 ;
  wire \Reg2_data[3]_INST_0_i_6_n_0 ;
  wire \Reg2_data[4]_INST_0_i_1_n_0 ;
  wire \Reg2_data[4]_INST_0_i_2_n_0 ;
  wire \Reg2_data[4]_INST_0_i_3_n_0 ;
  wire \Reg2_data[4]_INST_0_i_4_n_0 ;
  wire \Reg2_data[4]_INST_0_i_5_n_0 ;
  wire \Reg2_data[4]_INST_0_i_6_n_0 ;
  wire \Reg2_data[5]_INST_0_i_1_n_0 ;
  wire \Reg2_data[5]_INST_0_i_2_n_0 ;
  wire \Reg2_data[5]_INST_0_i_3_n_0 ;
  wire \Reg2_data[5]_INST_0_i_4_n_0 ;
  wire \Reg2_data[5]_INST_0_i_5_n_0 ;
  wire \Reg2_data[5]_INST_0_i_6_n_0 ;
  wire \Reg2_data[6]_INST_0_i_1_n_0 ;
  wire \Reg2_data[6]_INST_0_i_2_n_0 ;
  wire \Reg2_data[6]_INST_0_i_3_n_0 ;
  wire \Reg2_data[6]_INST_0_i_4_n_0 ;
  wire \Reg2_data[6]_INST_0_i_5_n_0 ;
  wire \Reg2_data[6]_INST_0_i_6_n_0 ;
  wire \Reg2_data[7]_INST_0_i_1_n_0 ;
  wire \Reg2_data[7]_INST_0_i_2_n_0 ;
  wire \Reg2_data[7]_INST_0_i_3_n_0 ;
  wire \Reg2_data[7]_INST_0_i_4_n_0 ;
  wire \Reg2_data[7]_INST_0_i_5_n_0 ;
  wire \Reg2_data[7]_INST_0_i_6_n_0 ;
  wire \Reg2_data[8]_INST_0_i_1_n_0 ;
  wire \Reg2_data[8]_INST_0_i_2_n_0 ;
  wire \Reg2_data[8]_INST_0_i_3_n_0 ;
  wire \Reg2_data[8]_INST_0_i_4_n_0 ;
  wire \Reg2_data[8]_INST_0_i_5_n_0 ;
  wire \Reg2_data[8]_INST_0_i_6_n_0 ;
  wire \Reg2_data[9]_INST_0_i_1_n_0 ;
  wire \Reg2_data[9]_INST_0_i_2_n_0 ;
  wire \Reg2_data[9]_INST_0_i_3_n_0 ;
  wire \Reg2_data[9]_INST_0_i_4_n_0 ;
  wire \Reg2_data[9]_INST_0_i_5_n_0 ;
  wire \Reg2_data[9]_INST_0_i_6_n_0 ;
  wire [15:0]Reg3;
  wire Reg3_3;
  wire [15:0]Reg4;
  wire Reg4_4;
  wire [15:0]Reg5;
  wire Reg5_5;
  wire [15:0]Reg6;
  wire Reg6_6;
  wire [15:0]Reg7;
  wire Reg7_7;
  wire [15:0]Reg8;
  wire Reg8_8;
  wire [15:0]Reg9;
  wire Reg9_9;
  wire RegA;
  wire \RegA_reg_n_0_[10] ;
  wire \RegA_reg_n_0_[11] ;
  wire \RegA_reg_n_0_[12] ;
  wire \RegA_reg_n_0_[13] ;
  wire \RegA_reg_n_0_[14] ;
  wire \RegA_reg_n_0_[15] ;
  wire \RegA_reg_n_0_[8] ;
  wire \RegA_reg_n_0_[9] ;
  wire [15:4]RegB;
  wire RegB_10;
  wire \RegB_reg_n_0_[0] ;
  wire \RegB_reg_n_0_[1] ;
  wire \RegB_reg_n_0_[2] ;
  wire \RegB_reg_n_0_[3] ;
  wire [15:0]RegC;
  wire RegC_11;
  wire [15:0]RegD;
  wire RegD_12;
  wire [15:0]RegE;
  wire RegE_13;
  wire [6:0]RegF;
  wire [7:0]RegMA_data;
  wire WE;
  wire [15:0]WriteData;
  wire clk;

  LUT5 #(
    .INIT(32'h00000002)) 
    \Reg0[15]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[1]),
        .I2(AddrWriteReg[0]),
        .I3(AddrWriteReg[2]),
        .I4(AddrWriteReg[3]),
        .O(Reg0_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[0] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[0]),
        .Q(Reg0[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[10] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[10]),
        .Q(Reg0[10]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[11] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[11]),
        .Q(Reg0[11]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[12] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[12]),
        .Q(Reg0[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[13] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[13]),
        .Q(Reg0[13]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[14] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[14]),
        .Q(Reg0[14]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[15] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[15]),
        .Q(Reg0[15]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[1] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[1]),
        .Q(Reg0[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[2] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[2]),
        .Q(Reg0[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[3] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[3]),
        .Q(Reg0[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[4] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[4]),
        .Q(Reg0[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[5] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[5]),
        .Q(Reg0[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[6] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[6]),
        .Q(Reg0[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[7] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[7]),
        .Q(Reg0[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[8] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[8]),
        .Q(Reg0[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg0_reg[9] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[9]),
        .Q(Reg0[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \Reg1[15]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[1]),
        .I2(AddrWriteReg[0]),
        .I3(AddrWriteReg[2]),
        .I4(AddrWriteReg[3]),
        .O(Reg1_1));
  MUXF8 \Reg1_data[0]_INST_0 
       (.I0(\Reg1_data[0]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[0]_INST_0_i_2_n_0 ),
        .O(Reg1_data[0]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[0]_INST_0_i_1 
       (.I0(\Reg1_data[0]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[0]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[0]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[0]_INST_0_i_2 
       (.I0(\Reg1_data[0]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[0]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[0]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[0]_INST_0_i_3 
       (.I0(Reg3[0]),
        .I1(Reg2[0]),
        .I2(AddrReg1[1]),
        .I3(Reg1[0]),
        .I4(AddrReg1[0]),
        .I5(Reg0[0]),
        .O(\Reg1_data[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[0]_INST_0_i_4 
       (.I0(Reg7[0]),
        .I1(Reg6[0]),
        .I2(AddrReg1[1]),
        .I3(Reg5[0]),
        .I4(AddrReg1[0]),
        .I5(Reg4[0]),
        .O(\Reg1_data[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[0]_INST_0_i_5 
       (.I0(\RegB_reg_n_0_[0] ),
        .I1(RegMA_data[0]),
        .I2(AddrReg1[1]),
        .I3(Reg9[0]),
        .I4(AddrReg1[0]),
        .I5(Reg8[0]),
        .O(\Reg1_data[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[0]_INST_0_i_6 
       (.I0(RegF[0]),
        .I1(RegE[0]),
        .I2(AddrReg1[1]),
        .I3(RegD[0]),
        .I4(AddrReg1[0]),
        .I5(RegC[0]),
        .O(\Reg1_data[0]_INST_0_i_6_n_0 ));
  MUXF8 \Reg1_data[10]_INST_0 
       (.I0(\Reg1_data[10]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[10]_INST_0_i_2_n_0 ),
        .O(Reg1_data[10]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[10]_INST_0_i_1 
       (.I0(\Reg1_data[10]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[10]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[10]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[10]_INST_0_i_2 
       (.I0(\Reg1_data[10]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[10]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[10]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[10]_INST_0_i_3 
       (.I0(Reg3[10]),
        .I1(Reg2[10]),
        .I2(AddrReg1[1]),
        .I3(Reg1[10]),
        .I4(AddrReg1[0]),
        .I5(Reg0[10]),
        .O(\Reg1_data[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[10]_INST_0_i_4 
       (.I0(Reg7[10]),
        .I1(Reg6[10]),
        .I2(AddrReg1[1]),
        .I3(Reg5[10]),
        .I4(AddrReg1[0]),
        .I5(Reg4[10]),
        .O(\Reg1_data[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[10]_INST_0_i_5 
       (.I0(RegB[10]),
        .I1(\RegA_reg_n_0_[10] ),
        .I2(AddrReg1[1]),
        .I3(Reg9[10]),
        .I4(AddrReg1[0]),
        .I5(Reg8[10]),
        .O(\Reg1_data[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg1_data[10]_INST_0_i_6 
       (.I0(RegE[10]),
        .I1(AddrReg1[1]),
        .I2(RegD[10]),
        .I3(AddrReg1[0]),
        .I4(RegC[10]),
        .O(\Reg1_data[10]_INST_0_i_6_n_0 ));
  MUXF8 \Reg1_data[11]_INST_0 
       (.I0(\Reg1_data[11]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[11]_INST_0_i_2_n_0 ),
        .O(Reg1_data[11]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[11]_INST_0_i_1 
       (.I0(\Reg1_data[11]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[11]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[11]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[11]_INST_0_i_2 
       (.I0(\Reg1_data[11]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[11]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[11]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[11]_INST_0_i_3 
       (.I0(Reg3[11]),
        .I1(Reg2[11]),
        .I2(AddrReg1[1]),
        .I3(Reg1[11]),
        .I4(AddrReg1[0]),
        .I5(Reg0[11]),
        .O(\Reg1_data[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[11]_INST_0_i_4 
       (.I0(Reg7[11]),
        .I1(Reg6[11]),
        .I2(AddrReg1[1]),
        .I3(Reg5[11]),
        .I4(AddrReg1[0]),
        .I5(Reg4[11]),
        .O(\Reg1_data[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[11]_INST_0_i_5 
       (.I0(RegB[11]),
        .I1(\RegA_reg_n_0_[11] ),
        .I2(AddrReg1[1]),
        .I3(Reg9[11]),
        .I4(AddrReg1[0]),
        .I5(Reg8[11]),
        .O(\Reg1_data[11]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg1_data[11]_INST_0_i_6 
       (.I0(RegE[11]),
        .I1(AddrReg1[1]),
        .I2(RegD[11]),
        .I3(AddrReg1[0]),
        .I4(RegC[11]),
        .O(\Reg1_data[11]_INST_0_i_6_n_0 ));
  MUXF8 \Reg1_data[12]_INST_0 
       (.I0(\Reg1_data[12]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[12]_INST_0_i_2_n_0 ),
        .O(Reg1_data[12]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[12]_INST_0_i_1 
       (.I0(\Reg1_data[12]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[12]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[12]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[12]_INST_0_i_2 
       (.I0(\Reg1_data[12]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[12]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[12]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[12]_INST_0_i_3 
       (.I0(Reg3[12]),
        .I1(Reg2[12]),
        .I2(AddrReg1[1]),
        .I3(Reg1[12]),
        .I4(AddrReg1[0]),
        .I5(Reg0[12]),
        .O(\Reg1_data[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[12]_INST_0_i_4 
       (.I0(Reg7[12]),
        .I1(Reg6[12]),
        .I2(AddrReg1[1]),
        .I3(Reg5[12]),
        .I4(AddrReg1[0]),
        .I5(Reg4[12]),
        .O(\Reg1_data[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[12]_INST_0_i_5 
       (.I0(RegB[12]),
        .I1(\RegA_reg_n_0_[12] ),
        .I2(AddrReg1[1]),
        .I3(Reg9[12]),
        .I4(AddrReg1[0]),
        .I5(Reg8[12]),
        .O(\Reg1_data[12]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg1_data[12]_INST_0_i_6 
       (.I0(RegE[12]),
        .I1(AddrReg1[1]),
        .I2(RegD[12]),
        .I3(AddrReg1[0]),
        .I4(RegC[12]),
        .O(\Reg1_data[12]_INST_0_i_6_n_0 ));
  MUXF8 \Reg1_data[13]_INST_0 
       (.I0(\Reg1_data[13]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[13]_INST_0_i_2_n_0 ),
        .O(Reg1_data[13]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[13]_INST_0_i_1 
       (.I0(\Reg1_data[13]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[13]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[13]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[13]_INST_0_i_2 
       (.I0(\Reg1_data[13]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[13]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[13]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[13]_INST_0_i_3 
       (.I0(Reg3[13]),
        .I1(Reg2[13]),
        .I2(AddrReg1[1]),
        .I3(Reg1[13]),
        .I4(AddrReg1[0]),
        .I5(Reg0[13]),
        .O(\Reg1_data[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[13]_INST_0_i_4 
       (.I0(Reg7[13]),
        .I1(Reg6[13]),
        .I2(AddrReg1[1]),
        .I3(Reg5[13]),
        .I4(AddrReg1[0]),
        .I5(Reg4[13]),
        .O(\Reg1_data[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[13]_INST_0_i_5 
       (.I0(RegB[13]),
        .I1(\RegA_reg_n_0_[13] ),
        .I2(AddrReg1[1]),
        .I3(Reg9[13]),
        .I4(AddrReg1[0]),
        .I5(Reg8[13]),
        .O(\Reg1_data[13]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg1_data[13]_INST_0_i_6 
       (.I0(RegE[13]),
        .I1(AddrReg1[1]),
        .I2(RegD[13]),
        .I3(AddrReg1[0]),
        .I4(RegC[13]),
        .O(\Reg1_data[13]_INST_0_i_6_n_0 ));
  MUXF8 \Reg1_data[14]_INST_0 
       (.I0(\Reg1_data[14]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[14]_INST_0_i_2_n_0 ),
        .O(Reg1_data[14]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[14]_INST_0_i_1 
       (.I0(\Reg1_data[14]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[14]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[14]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[14]_INST_0_i_2 
       (.I0(\Reg1_data[14]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[14]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[14]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[14]_INST_0_i_3 
       (.I0(Reg3[14]),
        .I1(Reg2[14]),
        .I2(AddrReg1[1]),
        .I3(Reg1[14]),
        .I4(AddrReg1[0]),
        .I5(Reg0[14]),
        .O(\Reg1_data[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[14]_INST_0_i_4 
       (.I0(Reg7[14]),
        .I1(Reg6[14]),
        .I2(AddrReg1[1]),
        .I3(Reg5[14]),
        .I4(AddrReg1[0]),
        .I5(Reg4[14]),
        .O(\Reg1_data[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[14]_INST_0_i_5 
       (.I0(RegB[14]),
        .I1(\RegA_reg_n_0_[14] ),
        .I2(AddrReg1[1]),
        .I3(Reg9[14]),
        .I4(AddrReg1[0]),
        .I5(Reg8[14]),
        .O(\Reg1_data[14]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg1_data[14]_INST_0_i_6 
       (.I0(RegE[14]),
        .I1(AddrReg1[1]),
        .I2(RegD[14]),
        .I3(AddrReg1[0]),
        .I4(RegC[14]),
        .O(\Reg1_data[14]_INST_0_i_6_n_0 ));
  MUXF8 \Reg1_data[15]_INST_0 
       (.I0(\Reg1_data[15]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[15]_INST_0_i_2_n_0 ),
        .O(Reg1_data[15]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[15]_INST_0_i_1 
       (.I0(\Reg1_data[15]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[15]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[15]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[15]_INST_0_i_2 
       (.I0(\Reg1_data[15]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[15]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[15]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[15]_INST_0_i_3 
       (.I0(Reg3[15]),
        .I1(Reg2[15]),
        .I2(AddrReg1[1]),
        .I3(Reg1[15]),
        .I4(AddrReg1[0]),
        .I5(Reg0[15]),
        .O(\Reg1_data[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[15]_INST_0_i_4 
       (.I0(Reg7[15]),
        .I1(Reg6[15]),
        .I2(AddrReg1[1]),
        .I3(Reg5[15]),
        .I4(AddrReg1[0]),
        .I5(Reg4[15]),
        .O(\Reg1_data[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[15]_INST_0_i_5 
       (.I0(RegB[15]),
        .I1(\RegA_reg_n_0_[15] ),
        .I2(AddrReg1[1]),
        .I3(Reg9[15]),
        .I4(AddrReg1[0]),
        .I5(Reg8[15]),
        .O(\Reg1_data[15]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg1_data[15]_INST_0_i_6 
       (.I0(RegE[15]),
        .I1(AddrReg1[1]),
        .I2(RegD[15]),
        .I3(AddrReg1[0]),
        .I4(RegC[15]),
        .O(\Reg1_data[15]_INST_0_i_6_n_0 ));
  MUXF8 \Reg1_data[1]_INST_0 
       (.I0(\Reg1_data[1]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[1]_INST_0_i_2_n_0 ),
        .O(Reg1_data[1]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[1]_INST_0_i_1 
       (.I0(\Reg1_data[1]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[1]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[1]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[1]_INST_0_i_2 
       (.I0(\Reg1_data[1]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[1]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[1]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[1]_INST_0_i_3 
       (.I0(Reg3[1]),
        .I1(Reg2[1]),
        .I2(AddrReg1[1]),
        .I3(Reg1[1]),
        .I4(AddrReg1[0]),
        .I5(Reg0[1]),
        .O(\Reg1_data[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[1]_INST_0_i_4 
       (.I0(Reg7[1]),
        .I1(Reg6[1]),
        .I2(AddrReg1[1]),
        .I3(Reg5[1]),
        .I4(AddrReg1[0]),
        .I5(Reg4[1]),
        .O(\Reg1_data[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[1]_INST_0_i_5 
       (.I0(\RegB_reg_n_0_[1] ),
        .I1(RegMA_data[1]),
        .I2(AddrReg1[1]),
        .I3(Reg9[1]),
        .I4(AddrReg1[0]),
        .I5(Reg8[1]),
        .O(\Reg1_data[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[1]_INST_0_i_6 
       (.I0(RegF[1]),
        .I1(RegE[1]),
        .I2(AddrReg1[1]),
        .I3(RegD[1]),
        .I4(AddrReg1[0]),
        .I5(RegC[1]),
        .O(\Reg1_data[1]_INST_0_i_6_n_0 ));
  MUXF8 \Reg1_data[2]_INST_0 
       (.I0(\Reg1_data[2]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[2]_INST_0_i_2_n_0 ),
        .O(Reg1_data[2]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[2]_INST_0_i_1 
       (.I0(\Reg1_data[2]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[2]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[2]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[2]_INST_0_i_2 
       (.I0(\Reg1_data[2]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[2]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[2]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[2]_INST_0_i_3 
       (.I0(Reg3[2]),
        .I1(Reg2[2]),
        .I2(AddrReg1[1]),
        .I3(Reg1[2]),
        .I4(AddrReg1[0]),
        .I5(Reg0[2]),
        .O(\Reg1_data[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[2]_INST_0_i_4 
       (.I0(Reg7[2]),
        .I1(Reg6[2]),
        .I2(AddrReg1[1]),
        .I3(Reg5[2]),
        .I4(AddrReg1[0]),
        .I5(Reg4[2]),
        .O(\Reg1_data[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[2]_INST_0_i_5 
       (.I0(\RegB_reg_n_0_[2] ),
        .I1(RegMA_data[2]),
        .I2(AddrReg1[1]),
        .I3(Reg9[2]),
        .I4(AddrReg1[0]),
        .I5(Reg8[2]),
        .O(\Reg1_data[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[2]_INST_0_i_6 
       (.I0(RegF[2]),
        .I1(RegE[2]),
        .I2(AddrReg1[1]),
        .I3(RegD[2]),
        .I4(AddrReg1[0]),
        .I5(RegC[2]),
        .O(\Reg1_data[2]_INST_0_i_6_n_0 ));
  MUXF8 \Reg1_data[3]_INST_0 
       (.I0(\Reg1_data[3]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[3]_INST_0_i_2_n_0 ),
        .O(Reg1_data[3]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[3]_INST_0_i_1 
       (.I0(\Reg1_data[3]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[3]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[3]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[3]_INST_0_i_2 
       (.I0(\Reg1_data[3]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[3]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[3]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[3]_INST_0_i_3 
       (.I0(Reg3[3]),
        .I1(Reg2[3]),
        .I2(AddrReg1[1]),
        .I3(Reg1[3]),
        .I4(AddrReg1[0]),
        .I5(Reg0[3]),
        .O(\Reg1_data[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[3]_INST_0_i_4 
       (.I0(Reg7[3]),
        .I1(Reg6[3]),
        .I2(AddrReg1[1]),
        .I3(Reg5[3]),
        .I4(AddrReg1[0]),
        .I5(Reg4[3]),
        .O(\Reg1_data[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[3]_INST_0_i_5 
       (.I0(\RegB_reg_n_0_[3] ),
        .I1(RegMA_data[3]),
        .I2(AddrReg1[1]),
        .I3(Reg9[3]),
        .I4(AddrReg1[0]),
        .I5(Reg8[3]),
        .O(\Reg1_data[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[3]_INST_0_i_6 
       (.I0(RegF[3]),
        .I1(RegE[3]),
        .I2(AddrReg1[1]),
        .I3(RegD[3]),
        .I4(AddrReg1[0]),
        .I5(RegC[3]),
        .O(\Reg1_data[3]_INST_0_i_6_n_0 ));
  MUXF8 \Reg1_data[4]_INST_0 
       (.I0(\Reg1_data[4]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[4]_INST_0_i_2_n_0 ),
        .O(Reg1_data[4]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[4]_INST_0_i_1 
       (.I0(\Reg1_data[4]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[4]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[4]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[4]_INST_0_i_2 
       (.I0(\Reg1_data[4]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[4]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[4]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[4]_INST_0_i_3 
       (.I0(Reg3[4]),
        .I1(Reg2[4]),
        .I2(AddrReg1[1]),
        .I3(Reg1[4]),
        .I4(AddrReg1[0]),
        .I5(Reg0[4]),
        .O(\Reg1_data[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[4]_INST_0_i_4 
       (.I0(Reg7[4]),
        .I1(Reg6[4]),
        .I2(AddrReg1[1]),
        .I3(Reg5[4]),
        .I4(AddrReg1[0]),
        .I5(Reg4[4]),
        .O(\Reg1_data[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[4]_INST_0_i_5 
       (.I0(RegB[4]),
        .I1(RegMA_data[4]),
        .I2(AddrReg1[1]),
        .I3(Reg9[4]),
        .I4(AddrReg1[0]),
        .I5(Reg8[4]),
        .O(\Reg1_data[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[4]_INST_0_i_6 
       (.I0(RegF[4]),
        .I1(RegE[4]),
        .I2(AddrReg1[1]),
        .I3(RegD[4]),
        .I4(AddrReg1[0]),
        .I5(RegC[4]),
        .O(\Reg1_data[4]_INST_0_i_6_n_0 ));
  MUXF8 \Reg1_data[5]_INST_0 
       (.I0(\Reg1_data[5]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[5]_INST_0_i_2_n_0 ),
        .O(Reg1_data[5]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[5]_INST_0_i_1 
       (.I0(\Reg1_data[5]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[5]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[5]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[5]_INST_0_i_2 
       (.I0(\Reg1_data[5]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[5]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[5]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[5]_INST_0_i_3 
       (.I0(Reg3[5]),
        .I1(Reg2[5]),
        .I2(AddrReg1[1]),
        .I3(Reg1[5]),
        .I4(AddrReg1[0]),
        .I5(Reg0[5]),
        .O(\Reg1_data[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[5]_INST_0_i_4 
       (.I0(Reg7[5]),
        .I1(Reg6[5]),
        .I2(AddrReg1[1]),
        .I3(Reg5[5]),
        .I4(AddrReg1[0]),
        .I5(Reg4[5]),
        .O(\Reg1_data[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[5]_INST_0_i_5 
       (.I0(RegB[5]),
        .I1(RegMA_data[5]),
        .I2(AddrReg1[1]),
        .I3(Reg9[5]),
        .I4(AddrReg1[0]),
        .I5(Reg8[5]),
        .O(\Reg1_data[5]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg1_data[5]_INST_0_i_6 
       (.I0(RegE[5]),
        .I1(AddrReg1[1]),
        .I2(RegD[5]),
        .I3(AddrReg1[0]),
        .I4(RegC[5]),
        .O(\Reg1_data[5]_INST_0_i_6_n_0 ));
  MUXF8 \Reg1_data[6]_INST_0 
       (.I0(\Reg1_data[6]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[6]_INST_0_i_2_n_0 ),
        .O(Reg1_data[6]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[6]_INST_0_i_1 
       (.I0(\Reg1_data[6]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[6]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[6]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[6]_INST_0_i_2 
       (.I0(\Reg1_data[6]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[6]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[6]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[6]_INST_0_i_3 
       (.I0(Reg3[6]),
        .I1(Reg2[6]),
        .I2(AddrReg1[1]),
        .I3(Reg1[6]),
        .I4(AddrReg1[0]),
        .I5(Reg0[6]),
        .O(\Reg1_data[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[6]_INST_0_i_4 
       (.I0(Reg7[6]),
        .I1(Reg6[6]),
        .I2(AddrReg1[1]),
        .I3(Reg5[6]),
        .I4(AddrReg1[0]),
        .I5(Reg4[6]),
        .O(\Reg1_data[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[6]_INST_0_i_5 
       (.I0(RegB[6]),
        .I1(RegMA_data[6]),
        .I2(AddrReg1[1]),
        .I3(Reg9[6]),
        .I4(AddrReg1[0]),
        .I5(Reg8[6]),
        .O(\Reg1_data[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[6]_INST_0_i_6 
       (.I0(RegF[6]),
        .I1(RegE[6]),
        .I2(AddrReg1[1]),
        .I3(RegD[6]),
        .I4(AddrReg1[0]),
        .I5(RegC[6]),
        .O(\Reg1_data[6]_INST_0_i_6_n_0 ));
  MUXF8 \Reg1_data[7]_INST_0 
       (.I0(\Reg1_data[7]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[7]_INST_0_i_2_n_0 ),
        .O(Reg1_data[7]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[7]_INST_0_i_1 
       (.I0(\Reg1_data[7]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[7]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[7]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[7]_INST_0_i_2 
       (.I0(\Reg1_data[7]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[7]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[7]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[7]_INST_0_i_3 
       (.I0(Reg3[7]),
        .I1(Reg2[7]),
        .I2(AddrReg1[1]),
        .I3(Reg1[7]),
        .I4(AddrReg1[0]),
        .I5(Reg0[7]),
        .O(\Reg1_data[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[7]_INST_0_i_4 
       (.I0(Reg7[7]),
        .I1(Reg6[7]),
        .I2(AddrReg1[1]),
        .I3(Reg5[7]),
        .I4(AddrReg1[0]),
        .I5(Reg4[7]),
        .O(\Reg1_data[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[7]_INST_0_i_5 
       (.I0(RegB[7]),
        .I1(RegMA_data[7]),
        .I2(AddrReg1[1]),
        .I3(Reg9[7]),
        .I4(AddrReg1[0]),
        .I5(Reg8[7]),
        .O(\Reg1_data[7]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg1_data[7]_INST_0_i_6 
       (.I0(RegE[7]),
        .I1(AddrReg1[1]),
        .I2(RegD[7]),
        .I3(AddrReg1[0]),
        .I4(RegC[7]),
        .O(\Reg1_data[7]_INST_0_i_6_n_0 ));
  MUXF8 \Reg1_data[8]_INST_0 
       (.I0(\Reg1_data[8]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[8]_INST_0_i_2_n_0 ),
        .O(Reg1_data[8]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[8]_INST_0_i_1 
       (.I0(\Reg1_data[8]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[8]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[8]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[8]_INST_0_i_2 
       (.I0(\Reg1_data[8]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[8]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[8]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[8]_INST_0_i_3 
       (.I0(Reg3[8]),
        .I1(Reg2[8]),
        .I2(AddrReg1[1]),
        .I3(Reg1[8]),
        .I4(AddrReg1[0]),
        .I5(Reg0[8]),
        .O(\Reg1_data[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[8]_INST_0_i_4 
       (.I0(Reg7[8]),
        .I1(Reg6[8]),
        .I2(AddrReg1[1]),
        .I3(Reg5[8]),
        .I4(AddrReg1[0]),
        .I5(Reg4[8]),
        .O(\Reg1_data[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[8]_INST_0_i_5 
       (.I0(RegB[8]),
        .I1(\RegA_reg_n_0_[8] ),
        .I2(AddrReg1[1]),
        .I3(Reg9[8]),
        .I4(AddrReg1[0]),
        .I5(Reg8[8]),
        .O(\Reg1_data[8]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg1_data[8]_INST_0_i_6 
       (.I0(RegE[8]),
        .I1(AddrReg1[1]),
        .I2(RegD[8]),
        .I3(AddrReg1[0]),
        .I4(RegC[8]),
        .O(\Reg1_data[8]_INST_0_i_6_n_0 ));
  MUXF8 \Reg1_data[9]_INST_0 
       (.I0(\Reg1_data[9]_INST_0_i_1_n_0 ),
        .I1(\Reg1_data[9]_INST_0_i_2_n_0 ),
        .O(Reg1_data[9]),
        .S(AddrReg1[3]));
  MUXF7 \Reg1_data[9]_INST_0_i_1 
       (.I0(\Reg1_data[9]_INST_0_i_3_n_0 ),
        .I1(\Reg1_data[9]_INST_0_i_4_n_0 ),
        .O(\Reg1_data[9]_INST_0_i_1_n_0 ),
        .S(AddrReg1[2]));
  MUXF7 \Reg1_data[9]_INST_0_i_2 
       (.I0(\Reg1_data[9]_INST_0_i_5_n_0 ),
        .I1(\Reg1_data[9]_INST_0_i_6_n_0 ),
        .O(\Reg1_data[9]_INST_0_i_2_n_0 ),
        .S(AddrReg1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[9]_INST_0_i_3 
       (.I0(Reg3[9]),
        .I1(Reg2[9]),
        .I2(AddrReg1[1]),
        .I3(Reg1[9]),
        .I4(AddrReg1[0]),
        .I5(Reg0[9]),
        .O(\Reg1_data[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[9]_INST_0_i_4 
       (.I0(Reg7[9]),
        .I1(Reg6[9]),
        .I2(AddrReg1[1]),
        .I3(Reg5[9]),
        .I4(AddrReg1[0]),
        .I5(Reg4[9]),
        .O(\Reg1_data[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[9]_INST_0_i_5 
       (.I0(RegB[9]),
        .I1(\RegA_reg_n_0_[9] ),
        .I2(AddrReg1[1]),
        .I3(Reg9[9]),
        .I4(AddrReg1[0]),
        .I5(Reg8[9]),
        .O(\Reg1_data[9]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg1_data[9]_INST_0_i_6 
       (.I0(RegE[9]),
        .I1(AddrReg1[1]),
        .I2(RegD[9]),
        .I3(AddrReg1[0]),
        .I4(RegC[9]),
        .O(\Reg1_data[9]_INST_0_i_6_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[0] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[0]),
        .Q(Reg1[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[10] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[10]),
        .Q(Reg1[10]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[11] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[11]),
        .Q(Reg1[11]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[12] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[12]),
        .Q(Reg1[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[13] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[13]),
        .Q(Reg1[13]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[14] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[14]),
        .Q(Reg1[14]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[15] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[15]),
        .Q(Reg1[15]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[1] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[1]),
        .Q(Reg1[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[2] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[2]),
        .Q(Reg1[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[3] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[3]),
        .Q(Reg1[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[4] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[4]),
        .Q(Reg1[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[5] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[5]),
        .Q(Reg1[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[6] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[6]),
        .Q(Reg1[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[7] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[7]),
        .Q(Reg1[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[8] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[8]),
        .Q(Reg1[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg1_reg[9] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[9]),
        .Q(Reg1[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \Reg2[15]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[0]),
        .I2(AddrWriteReg[1]),
        .I3(AddrWriteReg[2]),
        .I4(AddrWriteReg[3]),
        .O(Reg2_2));
  MUXF8 \Reg2_data[0]_INST_0 
       (.I0(\Reg2_data[0]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[0]_INST_0_i_2_n_0 ),
        .O(Reg2_data[0]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[0]_INST_0_i_1 
       (.I0(\Reg2_data[0]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[0]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[0]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[0]_INST_0_i_2 
       (.I0(\Reg2_data[0]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[0]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[0]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[0]_INST_0_i_3 
       (.I0(Reg3[0]),
        .I1(Reg2[0]),
        .I2(AddrReg2[1]),
        .I3(Reg1[0]),
        .I4(AddrReg2[0]),
        .I5(Reg0[0]),
        .O(\Reg2_data[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[0]_INST_0_i_4 
       (.I0(Reg7[0]),
        .I1(Reg6[0]),
        .I2(AddrReg2[1]),
        .I3(Reg5[0]),
        .I4(AddrReg2[0]),
        .I5(Reg4[0]),
        .O(\Reg2_data[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[0]_INST_0_i_5 
       (.I0(\RegB_reg_n_0_[0] ),
        .I1(RegMA_data[0]),
        .I2(AddrReg2[1]),
        .I3(Reg9[0]),
        .I4(AddrReg2[0]),
        .I5(Reg8[0]),
        .O(\Reg2_data[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[0]_INST_0_i_6 
       (.I0(RegF[0]),
        .I1(RegE[0]),
        .I2(AddrReg2[1]),
        .I3(RegD[0]),
        .I4(AddrReg2[0]),
        .I5(RegC[0]),
        .O(\Reg2_data[0]_INST_0_i_6_n_0 ));
  MUXF8 \Reg2_data[10]_INST_0 
       (.I0(\Reg2_data[10]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[10]_INST_0_i_2_n_0 ),
        .O(Reg2_data[10]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[10]_INST_0_i_1 
       (.I0(\Reg2_data[10]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[10]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[10]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[10]_INST_0_i_2 
       (.I0(\Reg2_data[10]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[10]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[10]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[10]_INST_0_i_3 
       (.I0(Reg3[10]),
        .I1(Reg2[10]),
        .I2(AddrReg2[1]),
        .I3(Reg1[10]),
        .I4(AddrReg2[0]),
        .I5(Reg0[10]),
        .O(\Reg2_data[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[10]_INST_0_i_4 
       (.I0(Reg7[10]),
        .I1(Reg6[10]),
        .I2(AddrReg2[1]),
        .I3(Reg5[10]),
        .I4(AddrReg2[0]),
        .I5(Reg4[10]),
        .O(\Reg2_data[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[10]_INST_0_i_5 
       (.I0(RegB[10]),
        .I1(\RegA_reg_n_0_[10] ),
        .I2(AddrReg2[1]),
        .I3(Reg9[10]),
        .I4(AddrReg2[0]),
        .I5(Reg8[10]),
        .O(\Reg2_data[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg2_data[10]_INST_0_i_6 
       (.I0(RegE[10]),
        .I1(AddrReg2[1]),
        .I2(RegD[10]),
        .I3(AddrReg2[0]),
        .I4(RegC[10]),
        .O(\Reg2_data[10]_INST_0_i_6_n_0 ));
  MUXF8 \Reg2_data[11]_INST_0 
       (.I0(\Reg2_data[11]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[11]_INST_0_i_2_n_0 ),
        .O(Reg2_data[11]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[11]_INST_0_i_1 
       (.I0(\Reg2_data[11]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[11]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[11]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[11]_INST_0_i_2 
       (.I0(\Reg2_data[11]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[11]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[11]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[11]_INST_0_i_3 
       (.I0(Reg3[11]),
        .I1(Reg2[11]),
        .I2(AddrReg2[1]),
        .I3(Reg1[11]),
        .I4(AddrReg2[0]),
        .I5(Reg0[11]),
        .O(\Reg2_data[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[11]_INST_0_i_4 
       (.I0(Reg7[11]),
        .I1(Reg6[11]),
        .I2(AddrReg2[1]),
        .I3(Reg5[11]),
        .I4(AddrReg2[0]),
        .I5(Reg4[11]),
        .O(\Reg2_data[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[11]_INST_0_i_5 
       (.I0(RegB[11]),
        .I1(\RegA_reg_n_0_[11] ),
        .I2(AddrReg2[1]),
        .I3(Reg9[11]),
        .I4(AddrReg2[0]),
        .I5(Reg8[11]),
        .O(\Reg2_data[11]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg2_data[11]_INST_0_i_6 
       (.I0(RegE[11]),
        .I1(AddrReg2[1]),
        .I2(RegD[11]),
        .I3(AddrReg2[0]),
        .I4(RegC[11]),
        .O(\Reg2_data[11]_INST_0_i_6_n_0 ));
  MUXF8 \Reg2_data[12]_INST_0 
       (.I0(\Reg2_data[12]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[12]_INST_0_i_2_n_0 ),
        .O(Reg2_data[12]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[12]_INST_0_i_1 
       (.I0(\Reg2_data[12]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[12]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[12]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[12]_INST_0_i_2 
       (.I0(\Reg2_data[12]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[12]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[12]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[12]_INST_0_i_3 
       (.I0(Reg3[12]),
        .I1(Reg2[12]),
        .I2(AddrReg2[1]),
        .I3(Reg1[12]),
        .I4(AddrReg2[0]),
        .I5(Reg0[12]),
        .O(\Reg2_data[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[12]_INST_0_i_4 
       (.I0(Reg7[12]),
        .I1(Reg6[12]),
        .I2(AddrReg2[1]),
        .I3(Reg5[12]),
        .I4(AddrReg2[0]),
        .I5(Reg4[12]),
        .O(\Reg2_data[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[12]_INST_0_i_5 
       (.I0(RegB[12]),
        .I1(\RegA_reg_n_0_[12] ),
        .I2(AddrReg2[1]),
        .I3(Reg9[12]),
        .I4(AddrReg2[0]),
        .I5(Reg8[12]),
        .O(\Reg2_data[12]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg2_data[12]_INST_0_i_6 
       (.I0(RegE[12]),
        .I1(AddrReg2[1]),
        .I2(RegD[12]),
        .I3(AddrReg2[0]),
        .I4(RegC[12]),
        .O(\Reg2_data[12]_INST_0_i_6_n_0 ));
  MUXF8 \Reg2_data[13]_INST_0 
       (.I0(\Reg2_data[13]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[13]_INST_0_i_2_n_0 ),
        .O(Reg2_data[13]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[13]_INST_0_i_1 
       (.I0(\Reg2_data[13]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[13]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[13]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[13]_INST_0_i_2 
       (.I0(\Reg2_data[13]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[13]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[13]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[13]_INST_0_i_3 
       (.I0(Reg3[13]),
        .I1(Reg2[13]),
        .I2(AddrReg2[1]),
        .I3(Reg1[13]),
        .I4(AddrReg2[0]),
        .I5(Reg0[13]),
        .O(\Reg2_data[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[13]_INST_0_i_4 
       (.I0(Reg7[13]),
        .I1(Reg6[13]),
        .I2(AddrReg2[1]),
        .I3(Reg5[13]),
        .I4(AddrReg2[0]),
        .I5(Reg4[13]),
        .O(\Reg2_data[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[13]_INST_0_i_5 
       (.I0(RegB[13]),
        .I1(\RegA_reg_n_0_[13] ),
        .I2(AddrReg2[1]),
        .I3(Reg9[13]),
        .I4(AddrReg2[0]),
        .I5(Reg8[13]),
        .O(\Reg2_data[13]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg2_data[13]_INST_0_i_6 
       (.I0(RegE[13]),
        .I1(AddrReg2[1]),
        .I2(RegD[13]),
        .I3(AddrReg2[0]),
        .I4(RegC[13]),
        .O(\Reg2_data[13]_INST_0_i_6_n_0 ));
  MUXF8 \Reg2_data[14]_INST_0 
       (.I0(\Reg2_data[14]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[14]_INST_0_i_2_n_0 ),
        .O(Reg2_data[14]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[14]_INST_0_i_1 
       (.I0(\Reg2_data[14]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[14]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[14]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[14]_INST_0_i_2 
       (.I0(\Reg2_data[14]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[14]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[14]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[14]_INST_0_i_3 
       (.I0(Reg3[14]),
        .I1(Reg2[14]),
        .I2(AddrReg2[1]),
        .I3(Reg1[14]),
        .I4(AddrReg2[0]),
        .I5(Reg0[14]),
        .O(\Reg2_data[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[14]_INST_0_i_4 
       (.I0(Reg7[14]),
        .I1(Reg6[14]),
        .I2(AddrReg2[1]),
        .I3(Reg5[14]),
        .I4(AddrReg2[0]),
        .I5(Reg4[14]),
        .O(\Reg2_data[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[14]_INST_0_i_5 
       (.I0(RegB[14]),
        .I1(\RegA_reg_n_0_[14] ),
        .I2(AddrReg2[1]),
        .I3(Reg9[14]),
        .I4(AddrReg2[0]),
        .I5(Reg8[14]),
        .O(\Reg2_data[14]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg2_data[14]_INST_0_i_6 
       (.I0(RegE[14]),
        .I1(AddrReg2[1]),
        .I2(RegD[14]),
        .I3(AddrReg2[0]),
        .I4(RegC[14]),
        .O(\Reg2_data[14]_INST_0_i_6_n_0 ));
  MUXF8 \Reg2_data[15]_INST_0 
       (.I0(\Reg2_data[15]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[15]_INST_0_i_2_n_0 ),
        .O(Reg2_data[15]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[15]_INST_0_i_1 
       (.I0(\Reg2_data[15]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[15]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[15]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[15]_INST_0_i_2 
       (.I0(\Reg2_data[15]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[15]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[15]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[15]_INST_0_i_3 
       (.I0(Reg3[15]),
        .I1(Reg2[15]),
        .I2(AddrReg2[1]),
        .I3(Reg1[15]),
        .I4(AddrReg2[0]),
        .I5(Reg0[15]),
        .O(\Reg2_data[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[15]_INST_0_i_4 
       (.I0(Reg7[15]),
        .I1(Reg6[15]),
        .I2(AddrReg2[1]),
        .I3(Reg5[15]),
        .I4(AddrReg2[0]),
        .I5(Reg4[15]),
        .O(\Reg2_data[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[15]_INST_0_i_5 
       (.I0(RegB[15]),
        .I1(\RegA_reg_n_0_[15] ),
        .I2(AddrReg2[1]),
        .I3(Reg9[15]),
        .I4(AddrReg2[0]),
        .I5(Reg8[15]),
        .O(\Reg2_data[15]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg2_data[15]_INST_0_i_6 
       (.I0(RegE[15]),
        .I1(AddrReg2[1]),
        .I2(RegD[15]),
        .I3(AddrReg2[0]),
        .I4(RegC[15]),
        .O(\Reg2_data[15]_INST_0_i_6_n_0 ));
  MUXF8 \Reg2_data[1]_INST_0 
       (.I0(\Reg2_data[1]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[1]_INST_0_i_2_n_0 ),
        .O(Reg2_data[1]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[1]_INST_0_i_1 
       (.I0(\Reg2_data[1]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[1]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[1]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[1]_INST_0_i_2 
       (.I0(\Reg2_data[1]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[1]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[1]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[1]_INST_0_i_3 
       (.I0(Reg3[1]),
        .I1(Reg2[1]),
        .I2(AddrReg2[1]),
        .I3(Reg1[1]),
        .I4(AddrReg2[0]),
        .I5(Reg0[1]),
        .O(\Reg2_data[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[1]_INST_0_i_4 
       (.I0(Reg7[1]),
        .I1(Reg6[1]),
        .I2(AddrReg2[1]),
        .I3(Reg5[1]),
        .I4(AddrReg2[0]),
        .I5(Reg4[1]),
        .O(\Reg2_data[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[1]_INST_0_i_5 
       (.I0(\RegB_reg_n_0_[1] ),
        .I1(RegMA_data[1]),
        .I2(AddrReg2[1]),
        .I3(Reg9[1]),
        .I4(AddrReg2[0]),
        .I5(Reg8[1]),
        .O(\Reg2_data[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[1]_INST_0_i_6 
       (.I0(RegF[1]),
        .I1(RegE[1]),
        .I2(AddrReg2[1]),
        .I3(RegD[1]),
        .I4(AddrReg2[0]),
        .I5(RegC[1]),
        .O(\Reg2_data[1]_INST_0_i_6_n_0 ));
  MUXF8 \Reg2_data[2]_INST_0 
       (.I0(\Reg2_data[2]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[2]_INST_0_i_2_n_0 ),
        .O(Reg2_data[2]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[2]_INST_0_i_1 
       (.I0(\Reg2_data[2]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[2]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[2]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[2]_INST_0_i_2 
       (.I0(\Reg2_data[2]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[2]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[2]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[2]_INST_0_i_3 
       (.I0(Reg3[2]),
        .I1(Reg2[2]),
        .I2(AddrReg2[1]),
        .I3(Reg1[2]),
        .I4(AddrReg2[0]),
        .I5(Reg0[2]),
        .O(\Reg2_data[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[2]_INST_0_i_4 
       (.I0(Reg7[2]),
        .I1(Reg6[2]),
        .I2(AddrReg2[1]),
        .I3(Reg5[2]),
        .I4(AddrReg2[0]),
        .I5(Reg4[2]),
        .O(\Reg2_data[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[2]_INST_0_i_5 
       (.I0(\RegB_reg_n_0_[2] ),
        .I1(RegMA_data[2]),
        .I2(AddrReg2[1]),
        .I3(Reg9[2]),
        .I4(AddrReg2[0]),
        .I5(Reg8[2]),
        .O(\Reg2_data[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[2]_INST_0_i_6 
       (.I0(RegF[2]),
        .I1(RegE[2]),
        .I2(AddrReg2[1]),
        .I3(RegD[2]),
        .I4(AddrReg2[0]),
        .I5(RegC[2]),
        .O(\Reg2_data[2]_INST_0_i_6_n_0 ));
  MUXF8 \Reg2_data[3]_INST_0 
       (.I0(\Reg2_data[3]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[3]_INST_0_i_2_n_0 ),
        .O(Reg2_data[3]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[3]_INST_0_i_1 
       (.I0(\Reg2_data[3]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[3]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[3]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[3]_INST_0_i_2 
       (.I0(\Reg2_data[3]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[3]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[3]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[3]_INST_0_i_3 
       (.I0(Reg3[3]),
        .I1(Reg2[3]),
        .I2(AddrReg2[1]),
        .I3(Reg1[3]),
        .I4(AddrReg2[0]),
        .I5(Reg0[3]),
        .O(\Reg2_data[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[3]_INST_0_i_4 
       (.I0(Reg7[3]),
        .I1(Reg6[3]),
        .I2(AddrReg2[1]),
        .I3(Reg5[3]),
        .I4(AddrReg2[0]),
        .I5(Reg4[3]),
        .O(\Reg2_data[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[3]_INST_0_i_5 
       (.I0(\RegB_reg_n_0_[3] ),
        .I1(RegMA_data[3]),
        .I2(AddrReg2[1]),
        .I3(Reg9[3]),
        .I4(AddrReg2[0]),
        .I5(Reg8[3]),
        .O(\Reg2_data[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[3]_INST_0_i_6 
       (.I0(RegF[3]),
        .I1(RegE[3]),
        .I2(AddrReg2[1]),
        .I3(RegD[3]),
        .I4(AddrReg2[0]),
        .I5(RegC[3]),
        .O(\Reg2_data[3]_INST_0_i_6_n_0 ));
  MUXF8 \Reg2_data[4]_INST_0 
       (.I0(\Reg2_data[4]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[4]_INST_0_i_2_n_0 ),
        .O(Reg2_data[4]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[4]_INST_0_i_1 
       (.I0(\Reg2_data[4]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[4]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[4]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[4]_INST_0_i_2 
       (.I0(\Reg2_data[4]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[4]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[4]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[4]_INST_0_i_3 
       (.I0(Reg3[4]),
        .I1(Reg2[4]),
        .I2(AddrReg2[1]),
        .I3(Reg1[4]),
        .I4(AddrReg2[0]),
        .I5(Reg0[4]),
        .O(\Reg2_data[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[4]_INST_0_i_4 
       (.I0(Reg7[4]),
        .I1(Reg6[4]),
        .I2(AddrReg2[1]),
        .I3(Reg5[4]),
        .I4(AddrReg2[0]),
        .I5(Reg4[4]),
        .O(\Reg2_data[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[4]_INST_0_i_5 
       (.I0(RegB[4]),
        .I1(RegMA_data[4]),
        .I2(AddrReg2[1]),
        .I3(Reg9[4]),
        .I4(AddrReg2[0]),
        .I5(Reg8[4]),
        .O(\Reg2_data[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[4]_INST_0_i_6 
       (.I0(RegF[4]),
        .I1(RegE[4]),
        .I2(AddrReg2[1]),
        .I3(RegD[4]),
        .I4(AddrReg2[0]),
        .I5(RegC[4]),
        .O(\Reg2_data[4]_INST_0_i_6_n_0 ));
  MUXF8 \Reg2_data[5]_INST_0 
       (.I0(\Reg2_data[5]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[5]_INST_0_i_2_n_0 ),
        .O(Reg2_data[5]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[5]_INST_0_i_1 
       (.I0(\Reg2_data[5]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[5]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[5]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[5]_INST_0_i_2 
       (.I0(\Reg2_data[5]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[5]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[5]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[5]_INST_0_i_3 
       (.I0(Reg3[5]),
        .I1(Reg2[5]),
        .I2(AddrReg2[1]),
        .I3(Reg1[5]),
        .I4(AddrReg2[0]),
        .I5(Reg0[5]),
        .O(\Reg2_data[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[5]_INST_0_i_4 
       (.I0(Reg7[5]),
        .I1(Reg6[5]),
        .I2(AddrReg2[1]),
        .I3(Reg5[5]),
        .I4(AddrReg2[0]),
        .I5(Reg4[5]),
        .O(\Reg2_data[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[5]_INST_0_i_5 
       (.I0(RegB[5]),
        .I1(RegMA_data[5]),
        .I2(AddrReg2[1]),
        .I3(Reg9[5]),
        .I4(AddrReg2[0]),
        .I5(Reg8[5]),
        .O(\Reg2_data[5]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg2_data[5]_INST_0_i_6 
       (.I0(RegE[5]),
        .I1(AddrReg2[1]),
        .I2(RegD[5]),
        .I3(AddrReg2[0]),
        .I4(RegC[5]),
        .O(\Reg2_data[5]_INST_0_i_6_n_0 ));
  MUXF8 \Reg2_data[6]_INST_0 
       (.I0(\Reg2_data[6]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[6]_INST_0_i_2_n_0 ),
        .O(Reg2_data[6]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[6]_INST_0_i_1 
       (.I0(\Reg2_data[6]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[6]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[6]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[6]_INST_0_i_2 
       (.I0(\Reg2_data[6]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[6]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[6]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[6]_INST_0_i_3 
       (.I0(Reg3[6]),
        .I1(Reg2[6]),
        .I2(AddrReg2[1]),
        .I3(Reg1[6]),
        .I4(AddrReg2[0]),
        .I5(Reg0[6]),
        .O(\Reg2_data[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[6]_INST_0_i_4 
       (.I0(Reg7[6]),
        .I1(Reg6[6]),
        .I2(AddrReg2[1]),
        .I3(Reg5[6]),
        .I4(AddrReg2[0]),
        .I5(Reg4[6]),
        .O(\Reg2_data[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[6]_INST_0_i_5 
       (.I0(RegB[6]),
        .I1(RegMA_data[6]),
        .I2(AddrReg2[1]),
        .I3(Reg9[6]),
        .I4(AddrReg2[0]),
        .I5(Reg8[6]),
        .O(\Reg2_data[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[6]_INST_0_i_6 
       (.I0(RegF[6]),
        .I1(RegE[6]),
        .I2(AddrReg2[1]),
        .I3(RegD[6]),
        .I4(AddrReg2[0]),
        .I5(RegC[6]),
        .O(\Reg2_data[6]_INST_0_i_6_n_0 ));
  MUXF8 \Reg2_data[7]_INST_0 
       (.I0(\Reg2_data[7]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[7]_INST_0_i_2_n_0 ),
        .O(Reg2_data[7]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[7]_INST_0_i_1 
       (.I0(\Reg2_data[7]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[7]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[7]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[7]_INST_0_i_2 
       (.I0(\Reg2_data[7]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[7]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[7]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[7]_INST_0_i_3 
       (.I0(Reg3[7]),
        .I1(Reg2[7]),
        .I2(AddrReg2[1]),
        .I3(Reg1[7]),
        .I4(AddrReg2[0]),
        .I5(Reg0[7]),
        .O(\Reg2_data[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[7]_INST_0_i_4 
       (.I0(Reg7[7]),
        .I1(Reg6[7]),
        .I2(AddrReg2[1]),
        .I3(Reg5[7]),
        .I4(AddrReg2[0]),
        .I5(Reg4[7]),
        .O(\Reg2_data[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[7]_INST_0_i_5 
       (.I0(RegB[7]),
        .I1(RegMA_data[7]),
        .I2(AddrReg2[1]),
        .I3(Reg9[7]),
        .I4(AddrReg2[0]),
        .I5(Reg8[7]),
        .O(\Reg2_data[7]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg2_data[7]_INST_0_i_6 
       (.I0(RegE[7]),
        .I1(AddrReg2[1]),
        .I2(RegD[7]),
        .I3(AddrReg2[0]),
        .I4(RegC[7]),
        .O(\Reg2_data[7]_INST_0_i_6_n_0 ));
  MUXF8 \Reg2_data[8]_INST_0 
       (.I0(\Reg2_data[8]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[8]_INST_0_i_2_n_0 ),
        .O(Reg2_data[8]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[8]_INST_0_i_1 
       (.I0(\Reg2_data[8]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[8]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[8]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[8]_INST_0_i_2 
       (.I0(\Reg2_data[8]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[8]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[8]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[8]_INST_0_i_3 
       (.I0(Reg3[8]),
        .I1(Reg2[8]),
        .I2(AddrReg2[1]),
        .I3(Reg1[8]),
        .I4(AddrReg2[0]),
        .I5(Reg0[8]),
        .O(\Reg2_data[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[8]_INST_0_i_4 
       (.I0(Reg7[8]),
        .I1(Reg6[8]),
        .I2(AddrReg2[1]),
        .I3(Reg5[8]),
        .I4(AddrReg2[0]),
        .I5(Reg4[8]),
        .O(\Reg2_data[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[8]_INST_0_i_5 
       (.I0(RegB[8]),
        .I1(\RegA_reg_n_0_[8] ),
        .I2(AddrReg2[1]),
        .I3(Reg9[8]),
        .I4(AddrReg2[0]),
        .I5(Reg8[8]),
        .O(\Reg2_data[8]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg2_data[8]_INST_0_i_6 
       (.I0(RegE[8]),
        .I1(AddrReg2[1]),
        .I2(RegD[8]),
        .I3(AddrReg2[0]),
        .I4(RegC[8]),
        .O(\Reg2_data[8]_INST_0_i_6_n_0 ));
  MUXF8 \Reg2_data[9]_INST_0 
       (.I0(\Reg2_data[9]_INST_0_i_1_n_0 ),
        .I1(\Reg2_data[9]_INST_0_i_2_n_0 ),
        .O(Reg2_data[9]),
        .S(AddrReg2[3]));
  MUXF7 \Reg2_data[9]_INST_0_i_1 
       (.I0(\Reg2_data[9]_INST_0_i_3_n_0 ),
        .I1(\Reg2_data[9]_INST_0_i_4_n_0 ),
        .O(\Reg2_data[9]_INST_0_i_1_n_0 ),
        .S(AddrReg2[2]));
  MUXF7 \Reg2_data[9]_INST_0_i_2 
       (.I0(\Reg2_data[9]_INST_0_i_5_n_0 ),
        .I1(\Reg2_data[9]_INST_0_i_6_n_0 ),
        .O(\Reg2_data[9]_INST_0_i_2_n_0 ),
        .S(AddrReg2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[9]_INST_0_i_3 
       (.I0(Reg3[9]),
        .I1(Reg2[9]),
        .I2(AddrReg2[1]),
        .I3(Reg1[9]),
        .I4(AddrReg2[0]),
        .I5(Reg0[9]),
        .O(\Reg2_data[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[9]_INST_0_i_4 
       (.I0(Reg7[9]),
        .I1(Reg6[9]),
        .I2(AddrReg2[1]),
        .I3(Reg5[9]),
        .I4(AddrReg2[0]),
        .I5(Reg4[9]),
        .O(\Reg2_data[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[9]_INST_0_i_5 
       (.I0(RegB[9]),
        .I1(\RegA_reg_n_0_[9] ),
        .I2(AddrReg2[1]),
        .I3(Reg9[9]),
        .I4(AddrReg2[0]),
        .I5(Reg8[9]),
        .O(\Reg2_data[9]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Reg2_data[9]_INST_0_i_6 
       (.I0(RegE[9]),
        .I1(AddrReg2[1]),
        .I2(RegD[9]),
        .I3(AddrReg2[0]),
        .I4(RegC[9]),
        .O(\Reg2_data[9]_INST_0_i_6_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[0] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[0]),
        .Q(Reg2[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[10] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[10]),
        .Q(Reg2[10]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[11] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[11]),
        .Q(Reg2[11]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[12] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[12]),
        .Q(Reg2[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[13] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[13]),
        .Q(Reg2[13]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[14] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[14]),
        .Q(Reg2[14]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[15] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[15]),
        .Q(Reg2[15]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[1] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[1]),
        .Q(Reg2[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[2] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[2]),
        .Q(Reg2[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[3] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[3]),
        .Q(Reg2[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[4] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[4]),
        .Q(Reg2[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[5] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[5]),
        .Q(Reg2[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[6] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[6]),
        .Q(Reg2[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[7] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[7]),
        .Q(Reg2[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[8] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[8]),
        .Q(Reg2[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg2_reg[9] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[9]),
        .Q(Reg2[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Reg3[15]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[1]),
        .I2(AddrWriteReg[0]),
        .I3(AddrWriteReg[2]),
        .I4(AddrWriteReg[3]),
        .O(Reg3_3));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[0] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[0]),
        .Q(Reg3[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[10] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[10]),
        .Q(Reg3[10]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[11] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[11]),
        .Q(Reg3[11]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[12] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[12]),
        .Q(Reg3[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[13] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[13]),
        .Q(Reg3[13]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[14] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[14]),
        .Q(Reg3[14]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[15] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[15]),
        .Q(Reg3[15]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[1] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[1]),
        .Q(Reg3[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[2] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[2]),
        .Q(Reg3[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[3] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[3]),
        .Q(Reg3[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[4] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[4]),
        .Q(Reg3[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[5] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[5]),
        .Q(Reg3[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[6] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[6]),
        .Q(Reg3[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[7] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[7]),
        .Q(Reg3[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[8] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[8]),
        .Q(Reg3[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg3_reg[9] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[9]),
        .Q(Reg3[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \Reg4[15]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[1]),
        .I2(AddrWriteReg[2]),
        .I3(AddrWriteReg[0]),
        .I4(AddrWriteReg[3]),
        .O(Reg4_4));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[0] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[0]),
        .Q(Reg4[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[10] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[10]),
        .Q(Reg4[10]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[11] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[11]),
        .Q(Reg4[11]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[12] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[12]),
        .Q(Reg4[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[13] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[13]),
        .Q(Reg4[13]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[14] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[14]),
        .Q(Reg4[14]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[15] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[15]),
        .Q(Reg4[15]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[1] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[1]),
        .Q(Reg4[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[2] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[2]),
        .Q(Reg4[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[3] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[3]),
        .Q(Reg4[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[4] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[4]),
        .Q(Reg4[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[5] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[5]),
        .Q(Reg4[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[6] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[6]),
        .Q(Reg4[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[7] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[7]),
        .Q(Reg4[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[8] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[8]),
        .Q(Reg4[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg4_reg[9] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[9]),
        .Q(Reg4[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Reg5[15]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[2]),
        .I2(AddrWriteReg[0]),
        .I3(AddrWriteReg[1]),
        .I4(AddrWriteReg[3]),
        .O(Reg5_5));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[0] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[0]),
        .Q(Reg5[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[10] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[10]),
        .Q(Reg5[10]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[11] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[11]),
        .Q(Reg5[11]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[12] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[12]),
        .Q(Reg5[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[13] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[13]),
        .Q(Reg5[13]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[14] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[14]),
        .Q(Reg5[14]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[15] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[15]),
        .Q(Reg5[15]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[1] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[1]),
        .Q(Reg5[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[2] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[2]),
        .Q(Reg5[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[3] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[3]),
        .Q(Reg5[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[4] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[4]),
        .Q(Reg5[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[5] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[5]),
        .Q(Reg5[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[6] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[6]),
        .Q(Reg5[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[7] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[7]),
        .Q(Reg5[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[8] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[8]),
        .Q(Reg5[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg5_reg[9] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[9]),
        .Q(Reg5[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Reg6[15]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[2]),
        .I2(AddrWriteReg[1]),
        .I3(AddrWriteReg[0]),
        .I4(AddrWriteReg[3]),
        .O(Reg6_6));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[0] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[0]),
        .Q(Reg6[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[10] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[10]),
        .Q(Reg6[10]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[11] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[11]),
        .Q(Reg6[11]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[12] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[12]),
        .Q(Reg6[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[13] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[13]),
        .Q(Reg6[13]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[14] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[14]),
        .Q(Reg6[14]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[15] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[15]),
        .Q(Reg6[15]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[1] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[1]),
        .Q(Reg6[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[2] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[2]),
        .Q(Reg6[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[3] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[3]),
        .Q(Reg6[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[4] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[4]),
        .Q(Reg6[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[5] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[5]),
        .Q(Reg6[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[6] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[6]),
        .Q(Reg6[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[7] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[7]),
        .Q(Reg6[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[8] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[8]),
        .Q(Reg6[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg6_reg[9] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[9]),
        .Q(Reg6[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00800000)) 
    \Reg7[15]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[1]),
        .I2(AddrWriteReg[0]),
        .I3(AddrWriteReg[3]),
        .I4(AddrWriteReg[2]),
        .O(Reg7_7));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[0] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[0]),
        .Q(Reg7[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[10] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[10]),
        .Q(Reg7[10]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[11] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[11]),
        .Q(Reg7[11]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[12] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[12]),
        .Q(Reg7[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[13] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[13]),
        .Q(Reg7[13]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[14] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[14]),
        .Q(Reg7[14]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[15] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[15]),
        .Q(Reg7[15]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[1] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[1]),
        .Q(Reg7[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[2] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[2]),
        .Q(Reg7[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[3] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[3]),
        .Q(Reg7[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[4] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[4]),
        .Q(Reg7[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[5] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[5]),
        .Q(Reg7[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[6] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[6]),
        .Q(Reg7[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[7] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[7]),
        .Q(Reg7[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[8] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[8]),
        .Q(Reg7[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg7_reg[9] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[9]),
        .Q(Reg7[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \Reg8[15]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[1]),
        .I2(AddrWriteReg[3]),
        .I3(AddrWriteReg[2]),
        .I4(AddrWriteReg[0]),
        .O(Reg8_8));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[0] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[0]),
        .Q(Reg8[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[10] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[10]),
        .Q(Reg8[10]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[11] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[11]),
        .Q(Reg8[11]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[12] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[12]),
        .Q(Reg8[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[13] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[13]),
        .Q(Reg8[13]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[14] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[14]),
        .Q(Reg8[14]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[15] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[15]),
        .Q(Reg8[15]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[1] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[1]),
        .Q(Reg8[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[2] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[2]),
        .Q(Reg8[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[3] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[3]),
        .Q(Reg8[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[4] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[4]),
        .Q(Reg8[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[5] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[5]),
        .Q(Reg8[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[6] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[6]),
        .Q(Reg8[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[7] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[7]),
        .Q(Reg8[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[8] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[8]),
        .Q(Reg8[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg8_reg[9] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[9]),
        .Q(Reg8[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Reg9[15]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[3]),
        .I2(AddrWriteReg[0]),
        .I3(AddrWriteReg[2]),
        .I4(AddrWriteReg[1]),
        .O(Reg9_9));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[0] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[0]),
        .Q(Reg9[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[10] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[10]),
        .Q(Reg9[10]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[11] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[11]),
        .Q(Reg9[11]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[12] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[12]),
        .Q(Reg9[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[13] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[13]),
        .Q(Reg9[13]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[14] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[14]),
        .Q(Reg9[14]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[15] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[15]),
        .Q(Reg9[15]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[1] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[1]),
        .Q(Reg9[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[2] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[2]),
        .Q(Reg9[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[3] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[3]),
        .Q(Reg9[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[4] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[4]),
        .Q(Reg9[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[5] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[5]),
        .Q(Reg9[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[6] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[6]),
        .Q(Reg9[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[7] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[7]),
        .Q(Reg9[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[8] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[8]),
        .Q(Reg9[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Reg9_reg[9] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[9]),
        .Q(Reg9[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \RegA[7]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[3]),
        .I2(AddrWriteReg[1]),
        .I3(AddrWriteReg[2]),
        .I4(AddrWriteReg[0]),
        .O(RegA));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[0] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[0]),
        .Q(RegMA_data[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[10] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[10]),
        .Q(\RegA_reg_n_0_[10] ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[11] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[11]),
        .Q(\RegA_reg_n_0_[11] ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[12] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[12]),
        .Q(\RegA_reg_n_0_[12] ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[13] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[13]),
        .Q(\RegA_reg_n_0_[13] ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[14] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[14]),
        .Q(\RegA_reg_n_0_[14] ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[15] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[15]),
        .Q(\RegA_reg_n_0_[15] ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[1] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[1]),
        .Q(RegMA_data[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[2] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[2]),
        .Q(RegMA_data[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[3] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[3]),
        .Q(RegMA_data[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[4] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[4]),
        .Q(RegMA_data[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[5] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[5]),
        .Q(RegMA_data[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[6] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[6]),
        .Q(RegMA_data[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[7] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[7]),
        .Q(RegMA_data[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[8] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[8]),
        .Q(\RegA_reg_n_0_[8] ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegA_reg[9] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[9]),
        .Q(\RegA_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00800000)) 
    \RegB[15]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[1]),
        .I2(AddrWriteReg[0]),
        .I3(AddrWriteReg[2]),
        .I4(AddrWriteReg[3]),
        .O(RegB_10));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[0] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[0]),
        .Q(\RegB_reg_n_0_[0] ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[10] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[10]),
        .Q(RegB[10]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[11] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[11]),
        .Q(RegB[11]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[12] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[12]),
        .Q(RegB[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[13] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[13]),
        .Q(RegB[13]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[14] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[14]),
        .Q(RegB[14]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[15] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[15]),
        .Q(RegB[15]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[1] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[1]),
        .Q(\RegB_reg_n_0_[1] ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[2] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[2]),
        .Q(\RegB_reg_n_0_[2] ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[3] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[3]),
        .Q(\RegB_reg_n_0_[3] ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[4] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[4]),
        .Q(RegB[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[5] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[5]),
        .Q(RegB[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[6] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[6]),
        .Q(RegB[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[7] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[7]),
        .Q(RegB[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[8] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[8]),
        .Q(RegB[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegB_reg[9] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[9]),
        .Q(RegB[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \RegC[15]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[2]),
        .I2(AddrWriteReg[3]),
        .I3(AddrWriteReg[1]),
        .I4(AddrWriteReg[0]),
        .O(RegC_11));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[0] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[0]),
        .Q(RegC[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[10] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[10]),
        .Q(RegC[10]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[11] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[11]),
        .Q(RegC[11]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[12] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[12]),
        .Q(RegC[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[13] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[13]),
        .Q(RegC[13]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[14] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[14]),
        .Q(RegC[14]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[15] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[15]),
        .Q(RegC[15]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[1] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[1]),
        .Q(RegC[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[2] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[2]),
        .Q(RegC[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[3] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[3]),
        .Q(RegC[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[4] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[4]),
        .Q(RegC[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[5] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[5]),
        .Q(RegC[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[6] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[6]),
        .Q(RegC[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[7] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[7]),
        .Q(RegC[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[8] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[8]),
        .Q(RegC[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegC_reg[9] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[9]),
        .Q(RegC[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00800000)) 
    \RegD[15]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[3]),
        .I2(AddrWriteReg[0]),
        .I3(AddrWriteReg[1]),
        .I4(AddrWriteReg[2]),
        .O(RegD_12));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[0] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[0]),
        .Q(RegD[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[10] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[10]),
        .Q(RegD[10]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[11] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[11]),
        .Q(RegD[11]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[12] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[12]),
        .Q(RegD[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[13] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[13]),
        .Q(RegD[13]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[14] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[14]),
        .Q(RegD[14]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[15] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[15]),
        .Q(RegD[15]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[1] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[1]),
        .Q(RegD[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[2] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[2]),
        .Q(RegD[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[3] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[3]),
        .Q(RegD[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[4] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[4]),
        .Q(RegD[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[5] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[5]),
        .Q(RegD[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[6] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[6]),
        .Q(RegD[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[7] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[7]),
        .Q(RegD[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[8] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[8]),
        .Q(RegD[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegD_reg[9] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[9]),
        .Q(RegD[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00800000)) 
    \RegE[15]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[1]),
        .I2(AddrWriteReg[3]),
        .I3(AddrWriteReg[0]),
        .I4(AddrWriteReg[2]),
        .O(RegE_13));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[0] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[0]),
        .Q(RegE[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[10] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[10]),
        .Q(RegE[10]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[11] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[11]),
        .Q(RegE[11]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[12] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[12]),
        .Q(RegE[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[13] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[13]),
        .Q(RegE[13]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[14] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[14]),
        .Q(RegE[14]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[15] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[15]),
        .Q(RegE[15]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[1] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[1]),
        .Q(RegE[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[2] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[2]),
        .Q(RegE[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[3] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[3]),
        .Q(RegE[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[4] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[4]),
        .Q(RegE[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[5] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[5]),
        .Q(RegE[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[6] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[6]),
        .Q(RegE[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[7] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[7]),
        .Q(RegE[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[8] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[8]),
        .Q(RegE[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegE_reg[9] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[9]),
        .Q(RegE[9]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegF_reg[0] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[0]),
        .Q(RegF[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegF_reg[1] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[1]),
        .Q(RegF[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegF_reg[2] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[2]),
        .Q(RegF[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegF_reg[3] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[3]),
        .Q(RegF[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegF_reg[4] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[4]),
        .Q(RegF[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RegF_reg[6] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[5]),
        .Q(RegF[6]),
        .R(1'b0));
endmodule

(* hw_handoff = "main.hwdef" *) 
module main
   (InstrExec_CLK,
    InstrLoad_CLK,
    Reset,
    led);
  input InstrExec_CLK;
  input InstrLoad_CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input Reset;
  output led;

  wire ALU_0_BIGGER_ZERO_FLAG;
  wire ALU_0_CARRY_FLAG;
  wire ALU_0_NOT_ZERO_FLAG;
  wire ALU_0_OVERFLOW_FLAG;
  wire ALU_0_SMALLER_ZERO_FLAG;
  wire ALU_0_ZERO_FLAG;
  wire [6:0]ALU_FLAG_PACKER_0_ALU_FLAGS_0;
  wire [15:0]ALU_Out;
  wire [3:0]AddrReg1;
  wire [3:0]AddrReg2;
  wire [3:0]AddrWriteReg;
  wire [7:0]Address;
  wire CU_Decoder_0_Is_ALU_OP;
  wire CU_Decoder_0_JMP;
  wire CU_Decoder_0_JMP_Conditional;
  wire CU_Decoder_0_JMP_DestinationSource;
  wire CU_Decoder_0_JMP_Relative;
  wire CU_Decoder_0_RAM_Address_Src;
  wire CU_Decoder_0_RAM_Write;
  wire CU_Decoder_0_RF_WHB;
  wire CU_Decoder_0_RF_WLB;
  wire CU_JumpController_0_PC_Load;
  wire [15:0]CU_JumpDestinationSe_0_JMP_Address;
  wire [15:0]CU_WriteSelector_0_Write_Data_0;
  wire Decoder_0_Use_MA;
  wire [15:0]Din;
  wire [6:0]Flags;
  wire [4:0]ForwardingConfiguration;
  wire [15:0]Immediate;
  wire InstrExec_CLK;
  wire InstrLoad_CLK;
  wire [15:0]Instruction;
  wire [2:0]JMP_Condition;
  wire [15:0]Manipulated_Immidiate;
  wire [15:0]Pipelining_Controller_0_InstructionToExecute_0;
  wire Pipelining_Controller_0_Stalled;
  wire Pipelining_Execution_0_IS_ALU_OP_out;
  wire [15:0]Pipelining_Execution_0_Immediate_out_0;
  wire [2:0]Pipelining_Execution_0_JMP_Condition_out;
  wire Pipelining_Execution_0_JMP_Conditional_out;
  wire Pipelining_Execution_0_JMP_DestinationSelect_out;
  wire Pipelining_Execution_0_JMP_Relative_out;
  wire Pipelining_Execution_0_JMP_out;
  wire [7:0]Pipelining_Execution_0_MA_out;
  wire [15:0]Pipelining_Execution_0_Operand1_out_0;
  wire [15:0]Pipelining_Execution_0_Operand2_out_0;
  wire Pipelining_Execution_0_RAM_Src_out;
  wire Pipelining_Execution_0_RAM_Write_out;
  wire Pipelining_Execution_0_Use_MA_out;
  wire Pipelining_Execution_0_WHB_out;
  wire Pipelining_Execution_0_WLB_out;
  wire [1:0]Pipelining_Execution_0_WriteDataSel_out;
  wire Pipelining_Execution_0_n_64;
  wire Pipelining_Execution_0_n_65;
  wire Pipelining_Execution_0_n_66;
  wire Pipelining_Execution_0_n_67;
  wire [7:0]Pipelining_Forwarder_0_ForwardedMA;
  wire [15:0]Pipelining_Forwarder_0_ForwardedOperand1;
  wire [15:0]Pipelining_Forwarder_0_ForwardedOperand2;
  wire Pipelining_WriteBack_0_Is_ALU_OP_out;
  wire Pipelining_WriteBack_0_RF_WE_out;
  wire [15:0]ProgramCounter_0_Dout_0;
  wire [15:0]RAM_Placeholder_0_DataOut;
  wire [15:0]RegFile_0_Reg1_data;
  wire [15:0]RegFile_0_Reg2_data;
  wire [7:0]RegFile_0_RegMA_data;
  wire Reset;
  wire [3:0]WriteAddress;
  wire [15:0]WriteData;
  wire [1:0]WriteDataSel;
  wire led;
  wire NLW_ALU_0_RHO_FLAG_UNCONNECTED;
  wire NLW_ALU_0_RHO_PIN_UNCONNECTED;
  wire [15:4]NLW_ALU_0_ALU_OPP_UNCONNECTED;
  wire NLW_ALU_FLAG_PACKER_0_RHO_FLAG_UNCONNECTED;
  wire [15:5]NLW_ALU_FLAG_PACKER_0_ALU_FLAGS_UNCONNECTED;
  wire NLW_CU_Decoder_0_Is_RAM_OP_UNCONNECTED;
  wire NLW_CU_Decoder_0_RAM_Read_UNCONNECTED;
  wire NLW_CU_Decoder_0_Reg1Read_UNCONNECTED;
  wire NLW_CU_Decoder_0_Reg2Read_UNCONNECTED;
  wire [11:0]NLW_CU_Decoder_0_Instruction_UNCONNECTED;
  wire NLW_CU_JumpController_0_InstrExec_CLK_UNCONNECTED;
  wire [15:6]NLW_CU_JumpController_0_Flags_UNCONNECTED;
  wire [15:8]NLW_CU_RAMAddressControl_0_Immediate_UNCONNECTED;
  wire [15:8]NLW_CU_RAMAddressControl_0_MA_UNCONNECTED;
  wire [15:8]NLW_CU_RAMAddressControl_0_RAM_Address_UNCONNECTED;
  wire [15:8]NLW_CU_RAMAddressControl_0_Reg2_UNCONNECTED;
  wire NLW_Pipelining_Execution_0_Is_RAM_OP_UNCONNECTED;
  wire NLW_Pipelining_Execution_0_Is_RAM_OP_out_UNCONNECTED;
  wire NLW_Pipelining_Execution_0_RAM_Read_UNCONNECTED;
  wire NLW_Pipelining_Execution_0_RAM_Read_out_UNCONNECTED;
  wire [15:8]NLW_Pipelining_Execution_0_MA_UNCONNECTED;
  wire [15:8]NLW_Pipelining_Execution_0_MA_out_UNCONNECTED;
  wire [15:8]NLW_Pipelining_Forwarder_0_CurrentMA_UNCONNECTED;
  wire [15:5]NLW_Pipelining_Forwarder_0_ExecutionFlags_UNCONNECTED;
  wire [15:8]NLW_Pipelining_Forwarder_0_ForwardedMA_UNCONNECTED;
  wire [15:5]NLW_Pipelining_WriteBack_0_Flags_UNCONNECTED;
  wire [15:5]NLW_Pipelining_WriteBack_0_Flags_out_UNCONNECTED;
  wire NLW_RAM_Placeholder_0_CLK_UNCONNECTED;
  wire NLW_RAM_Placeholder_0_OE_UNCONNECTED;
  wire [15:8]NLW_RAM_Placeholder_0_Address_UNCONNECTED;
  wire [3:0]NLW_RegFile_0_BankID_UNCONNECTED;
  wire [15:5]NLW_RegFile_0_Flags_UNCONNECTED;
  wire [15:8]NLW_RegFile_0_RegMA_data_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "main_ALU_0_0,ALU,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "ALU,Vivado 2024.1" *) 
  main_ALU_0_0 ALU_0
       (.ALU_OPP({NLW_ALU_0_ALU_OPP_UNCONNECTED[15:4],Pipelining_Execution_0_Immediate_out_0[3:0]}),
        .ALU_OUT(ALU_Out),
        .BIGGER_ZERO_FLAG(ALU_0_BIGGER_ZERO_FLAG),
        .CARRY_FLAG(ALU_0_CARRY_FLAG),
        .D1(Pipelining_Execution_0_Operand1_out_0),
        .D2(Pipelining_Execution_0_Operand2_out_0),
        .NOT_ZERO_FLAG(ALU_0_NOT_ZERO_FLAG),
        .OVERFLOW_FLAG(ALU_0_OVERFLOW_FLAG),
        .RHO_FLAG(NLW_ALU_0_RHO_FLAG_UNCONNECTED),
        .RHO_PIN(NLW_ALU_0_RHO_PIN_UNCONNECTED),
        .SMALLER_ZERO_FLAG(ALU_0_SMALLER_ZERO_FLAG),
        .ZERO_FLAG(ALU_0_ZERO_FLAG));
  (* CHECK_LICENSE_TYPE = "main_ALU_FLAG_PACKER_0_1,ALU_FLAG_PACKER,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "ALU_FLAG_PACKER,Vivado 2024.1" *) 
  main_ALU_FLAG_PACKER_0_1 ALU_FLAG_PACKER_0
       (.ALU_FLAGS({NLW_ALU_FLAG_PACKER_0_ALU_FLAGS_UNCONNECTED[15:7],ALU_FLAG_PACKER_0_ALU_FLAGS_0}),
        .BIGGER_ZERO_FLAG(ALU_0_BIGGER_ZERO_FLAG),
        .CARRY_FLAG(ALU_0_CARRY_FLAG),
        .NOT_ZERO_FLAG(ALU_0_NOT_ZERO_FLAG),
        .OVERFLOW_FLAG(ALU_0_OVERFLOW_FLAG),
        .RHO_FLAG(NLW_ALU_FLAG_PACKER_0_RHO_FLAG_UNCONNECTED),
        .SMALLER_ZERO_FLAG(ALU_0_SMALLER_ZERO_FLAG),
        .ZERO_FLAG(ALU_0_ZERO_FLAG));
  (* CHECK_LICENSE_TYPE = "main_CU_Decoder_0_0,CU_Decoder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "CU_Decoder,Vivado 2024.1" *) 
  main_CU_Decoder_0_0 CU_Decoder_0
       (.Instruction({Pipelining_Controller_0_InstructionToExecute_0[15:12],NLW_CU_Decoder_0_Instruction_UNCONNECTED[11:0]}),
        .Is_ALU_OP(CU_Decoder_0_Is_ALU_OP),
        .Is_RAM_OP(NLW_CU_Decoder_0_Is_RAM_OP_UNCONNECTED),
        .JMP(CU_Decoder_0_JMP),
        .JMP_Conditional(CU_Decoder_0_JMP_Conditional),
        .JMP_DestinationSource(CU_Decoder_0_JMP_DestinationSource),
        .JMP_Relative(CU_Decoder_0_JMP_Relative),
        .RAM_Address_Src(CU_Decoder_0_RAM_Address_Src),
        .RAM_Read(NLW_CU_Decoder_0_RAM_Read_UNCONNECTED),
        .RAM_Write(CU_Decoder_0_RAM_Write),
        .RF_WHB(CU_Decoder_0_RF_WHB),
        .RF_WLB(CU_Decoder_0_RF_WLB),
        .Reg1Read(NLW_CU_Decoder_0_Reg1Read_UNCONNECTED),
        .Reg2Read(NLW_CU_Decoder_0_Reg2Read_UNCONNECTED),
        .Write_Data_Sel(WriteDataSel));
  (* CHECK_LICENSE_TYPE = "main_CU_ImmediateManipula_0_0,CU_ImmediateManipulator,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "CU_ImmediateManipulator,Vivado 2024.1" *) 
  main_CU_ImmediateManipula_0_0 CU_ImmediateManipula_0
       (.Immediate(Pipelining_Execution_0_Immediate_out_0),
        .ManipulatedImmidiate(Manipulated_Immidiate),
        .RF_WHB(Pipelining_Execution_0_WHB_out),
        .RF_WLB(Pipelining_Execution_0_WLB_out),
        .Reg1(Pipelining_Execution_0_Operand1_out_0));
  (* CHECK_LICENSE_TYPE = "main_CU_JumpController_0_0,CU_JumpController,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "CU_JumpController,Vivado 2024.1" *) 
  main_CU_JumpController_0_0 CU_JumpController_0
       (.Flags({NLW_CU_JumpController_0_Flags_UNCONNECTED[15:6],Pipelining_Execution_0_Operand2_out_0[5:0]}),
        .InstrExec_CLK(NLW_CU_JumpController_0_InstrExec_CLK_UNCONNECTED),
        .JMP(Pipelining_Execution_0_JMP_out),
        .JMP_Address(CU_JumpDestinationSe_0_JMP_Address),
        .JMP_Condition(Pipelining_Execution_0_JMP_Condition_out),
        .JMP_Conditional(Pipelining_Execution_0_JMP_Conditional_out),
        .JMP_Relative(Pipelining_Execution_0_JMP_Relative_out),
        .PC_Current(ProgramCounter_0_Dout_0),
        .PC_Load(CU_JumpController_0_PC_Load),
        .PC_Next(Din));
  (* CHECK_LICENSE_TYPE = "main_CU_JumpDestinationSe_0_0,CU_JumpDestinationSelector,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "CU_JumpDestinationSelector,Vivado 2024.1" *) 
  main_CU_JumpDestinationSe_0_0 CU_JumpDestinationSe_0
       (.Immediate(Pipelining_Execution_0_Immediate_out_0),
        .JMP_Address(CU_JumpDestinationSe_0_JMP_Address),
        .JMP_DestinationSelect(Pipelining_Execution_0_JMP_DestinationSelect_out),
        .Register1(Pipelining_Execution_0_Operand1_out_0));
  (* CHECK_LICENSE_TYPE = "main_CU_RAMAddressControl_0_0,CU_RAMAddressController,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "CU_RAMAddressController,Vivado 2024.1" *) 
  main_CU_RAMAddressControl_0_0 CU_RAMAddressControl_0
       (.Immediate({NLW_CU_RAMAddressControl_0_Immediate_UNCONNECTED[15:8],Pipelining_Execution_0_Immediate_out_0[7:0]}),
        .MA({NLW_CU_RAMAddressControl_0_MA_UNCONNECTED[15:8],Pipelining_Execution_0_MA_out}),
        .RAM_Address({NLW_CU_RAMAddressControl_0_RAM_Address_UNCONNECTED[15:8],Address}),
        .RAM_Address_Src(Pipelining_Execution_0_RAM_Src_out),
        .Reg2({NLW_CU_RAMAddressControl_0_Reg2_UNCONNECTED[15:8],Pipelining_Execution_0_Operand2_out_0[7:0]}),
        .Use_MA(Pipelining_Execution_0_Use_MA_out));
  (* CHECK_LICENSE_TYPE = "main_CU_WriteSelector_0_0,CU_WriteSelector,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "CU_WriteSelector,Vivado 2024.1" *) 
  main_CU_WriteSelector_0_0 CU_WriteSelector_0
       (.ALU_Out(ALU_Out),
        .Manipulated_Immidiate(Manipulated_Immidiate),
        .RAM_Out(RAM_Placeholder_0_DataOut),
        .Reg1(Pipelining_Execution_0_Operand1_out_0),
        .Write_Data(CU_WriteSelector_0_Write_Data_0),
        .Write_Sel(Pipelining_Execution_0_WriteDataSel_out));
  (* CHECK_LICENSE_TYPE = "main_Decoder_0_0,Decoder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "Decoder,Vivado 2024.1" *) 
  main_Decoder_0_0 Decoder_0
       (.Immediate(Immediate),
        .Instruction(Pipelining_Controller_0_InstructionToExecute_0),
        .JMP_Condition(JMP_Condition),
        .Register1(AddrReg1),
        .Register2(AddrReg2),
        .Use_MA(Decoder_0_Use_MA),
        .WriteBackRegister(WriteAddress));
  (* CHECK_LICENSE_TYPE = "main_IROM_0_1,IROM,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "IROM,Vivado 2024.1" *) 
  main_IROM_0_1 IROM_0
       (.Address(ProgramCounter_0_Dout_0),
        .Data(Instruction));
  (* CHECK_LICENSE_TYPE = "main_Pipelining_Controller_0_0,Pipelining_Controller,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "Pipelining_Controller,Vivado 2024.1" *) 
  main_Pipelining_Controller_0_0 Pipelining_Controller_0
       (.InstrExec_CLK(InstrExec_CLK),
        .InstrLoad_CLK(InstrLoad_CLK),
        .Instruction(Instruction),
        .InstructionForwardConfiguration(ForwardingConfiguration),
        .InstructionToExecute(Pipelining_Controller_0_InstructionToExecute_0),
        .Reset(Reset),
        .ResolveStall(Pipelining_Execution_0_JMP_out),
        .Stalled(Pipelining_Controller_0_Stalled));
  (* CHECK_LICENSE_TYPE = "main_Pipelining_Execution_0_0,Pipelining_ExecutionStage,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "Pipelining_ExecutionStage,Vivado 2024.1" *) 
  main_Pipelining_Execution_0_0 Pipelining_Execution_0
       (.IS_ALU_OP_out(Pipelining_Execution_0_IS_ALU_OP_out),
        .Immediate(Immediate),
        .Immediate_out(Pipelining_Execution_0_Immediate_out_0),
        .InstrLoad_CLK(InstrLoad_CLK),
        .Is_ALU_OP(CU_Decoder_0_Is_ALU_OP),
        .Is_RAM_OP(NLW_Pipelining_Execution_0_Is_RAM_OP_UNCONNECTED),
        .Is_RAM_OP_out(NLW_Pipelining_Execution_0_Is_RAM_OP_out_UNCONNECTED),
        .JMP(CU_Decoder_0_JMP),
        .JMP_Condition(JMP_Condition),
        .JMP_Condition_out(Pipelining_Execution_0_JMP_Condition_out),
        .JMP_Conditional(CU_Decoder_0_JMP_Conditional),
        .JMP_Conditional_out(Pipelining_Execution_0_JMP_Conditional_out),
        .JMP_DestinationSelect(CU_Decoder_0_JMP_DestinationSource),
        .JMP_DestinationSelect_out(Pipelining_Execution_0_JMP_DestinationSelect_out),
        .JMP_Relative(CU_Decoder_0_JMP_Relative),
        .JMP_Relative_out(Pipelining_Execution_0_JMP_Relative_out),
        .JMP_out(Pipelining_Execution_0_JMP_out),
        .MA({NLW_Pipelining_Execution_0_MA_UNCONNECTED[15:8],Pipelining_Forwarder_0_ForwardedMA}),
        .MA_out({NLW_Pipelining_Execution_0_MA_out_UNCONNECTED[15:8],Pipelining_Execution_0_MA_out}),
        .Operand1(Pipelining_Forwarder_0_ForwardedOperand1),
        .Operand1_out(Pipelining_Execution_0_Operand1_out_0),
        .Operand2(Pipelining_Forwarder_0_ForwardedOperand2),
        .Operand2_out(Pipelining_Execution_0_Operand2_out_0),
        .RAM_Read(NLW_Pipelining_Execution_0_RAM_Read_UNCONNECTED),
        .RAM_Read_out(NLW_Pipelining_Execution_0_RAM_Read_out_UNCONNECTED),
        .RAM_Src(CU_Decoder_0_RAM_Address_Src),
        .RAM_Src_out(Pipelining_Execution_0_RAM_Src_out),
        .RAM_Write(CU_Decoder_0_RAM_Write),
        .RAM_Write_out(Pipelining_Execution_0_RAM_Write_out),
        .Reset(Reset),
        .Use_MA(Decoder_0_Use_MA),
        .Use_MA_out(Pipelining_Execution_0_Use_MA_out),
        .WHB(CU_Decoder_0_RF_WHB),
        .WHB_out(Pipelining_Execution_0_WHB_out),
        .WLB(CU_Decoder_0_RF_WLB),
        .WLB_out(Pipelining_Execution_0_WLB_out),
        .WriteAddress(WriteAddress),
        .WriteAddress_out({Pipelining_Execution_0_n_64,Pipelining_Execution_0_n_65,Pipelining_Execution_0_n_66,Pipelining_Execution_0_n_67}),
        .WriteDataSel(WriteDataSel),
        .WriteDataSel_out(Pipelining_Execution_0_WriteDataSel_out));
  (* CHECK_LICENSE_TYPE = "main_Pipelining_Forwarder_0_0,Pipelining_Forwarder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "Pipelining_Forwarder,Vivado 2024.1" *) 
  main_Pipelining_Forwarder_0_0 Pipelining_Forwarder_0
       (.CurrentMA({NLW_Pipelining_Forwarder_0_CurrentMA_UNCONNECTED[15:8],RegFile_0_RegMA_data}),
        .CurrentOperand1(RegFile_0_Reg1_data),
        .CurrentOperand2(RegFile_0_Reg2_data),
        .ExecutionFlags({NLW_Pipelining_Forwarder_0_ExecutionFlags_UNCONNECTED[15:7],ALU_FLAG_PACKER_0_ALU_FLAGS_0}),
        .ExecutionWriteData(CU_WriteSelector_0_Write_Data_0),
        .ForwardedMA({NLW_Pipelining_Forwarder_0_ForwardedMA_UNCONNECTED[15:8],Pipelining_Forwarder_0_ForwardedMA}),
        .ForwardedOperand1(Pipelining_Forwarder_0_ForwardedOperand1),
        .ForwardedOperand2(Pipelining_Forwarder_0_ForwardedOperand2),
        .ForwardingConfiguration(ForwardingConfiguration));
  (* CHECK_LICENSE_TYPE = "main_Pipelining_WriteBack_0_0,Pipelining_WriteBackStage,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "Pipelining_WriteBackStage,Vivado 2024.1" *) 
  main_Pipelining_WriteBack_0_0 Pipelining_WriteBack_0
       (.Flags({NLW_Pipelining_WriteBack_0_Flags_UNCONNECTED[15:7],ALU_FLAG_PACKER_0_ALU_FLAGS_0}),
        .Flags_out({NLW_Pipelining_WriteBack_0_Flags_out_UNCONNECTED[15:7],Flags}),
        .InstrLoad_CLK(InstrLoad_CLK),
        .Is_ALU_OP(Pipelining_Execution_0_IS_ALU_OP_out),
        .Is_ALU_OP_out(Pipelining_WriteBack_0_Is_ALU_OP_out),
        .JMP(Pipelining_Execution_0_JMP_out),
        .JMP_out(led),
        .RF_WE_out(Pipelining_WriteBack_0_RF_WE_out),
        .Reset(Reset),
        .WHB(Pipelining_Execution_0_WHB_out),
        .WLB(Pipelining_Execution_0_WLB_out),
        .WriteAddress({Pipelining_Execution_0_n_64,Pipelining_Execution_0_n_65,Pipelining_Execution_0_n_66,Pipelining_Execution_0_n_67}),
        .WriteAddress_out(AddrWriteReg),
        .WriteData(CU_WriteSelector_0_Write_Data_0),
        .WriteData_out(WriteData));
  (* CHECK_LICENSE_TYPE = "main_ProgramCounter_0_0,ProgramCounter,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "ProgramCounter,Vivado 2024.1" *) 
  main_ProgramCounter_0_0 ProgramCounter_0
       (.Din(Din),
        .Dout(ProgramCounter_0_Dout_0),
        .InstrExec_CLK(InstrExec_CLK),
        .JMP(CU_JumpController_0_PC_Load),
        .Reset(Reset),
        .Stalled(Pipelining_Controller_0_Stalled));
  (* CHECK_LICENSE_TYPE = "main_RAM_Placeholder_0_0,RAM_Placeholder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "RAM_Placeholder,Vivado 2024.1" *) 
  main_RAM_Placeholder_0_0 RAM_Placeholder_0
       (.Address({NLW_RAM_Placeholder_0_Address_UNCONNECTED[15:8],Address}),
        .CLK(NLW_RAM_Placeholder_0_CLK_UNCONNECTED),
        .DataIn(Pipelining_Execution_0_Operand1_out_0),
        .DataOut(RAM_Placeholder_0_DataOut),
        .OE(NLW_RAM_Placeholder_0_OE_UNCONNECTED),
        .WE(Pipelining_Execution_0_RAM_Write_out),
        .lopt(InstrLoad_CLK));
  (* CHECK_LICENSE_TYPE = "main_RegFile_0_0,RegFile,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "RegFile,Vivado 2024.1" *) 
  main_RegFile_0_0 RegFile_0
       (.AddrReg1(AddrReg1),
        .AddrReg2(AddrReg2),
        .AddrWriteReg(AddrWriteReg),
        .BankID(NLW_RegFile_0_BankID_UNCONNECTED[3:0]),
        .Flags({NLW_RegFile_0_Flags_UNCONNECTED[15:7],Flags}),
        .OverwriteFl(Pipelining_WriteBack_0_Is_ALU_OP_out),
        .Reg1_data(RegFile_0_Reg1_data),
        .Reg2_data(RegFile_0_Reg2_data),
        .RegMA_data({NLW_RegFile_0_RegMA_data_UNCONNECTED[15:8],RegFile_0_RegMA_data}),
        .WE(Pipelining_WriteBack_0_RF_WE_out),
        .WriteData(WriteData),
        .clk(InstrExec_CLK));
endmodule

(* CHECK_LICENSE_TYPE = "main_ALU_0_0,ALU,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ALU,Vivado 2024.1" *) 
module main_ALU_0_0
   (D1,
    D2,
    ALU_OPP,
    RHO_PIN,
    ALU_OUT,
    CARRY_FLAG,
    ZERO_FLAG,
    SMALLER_ZERO_FLAG,
    BIGGER_ZERO_FLAG,
    OVERFLOW_FLAG,
    RHO_FLAG,
    NOT_ZERO_FLAG);
  input [15:0]D1;
  input [15:0]D2;
  input [15:0]ALU_OPP;
  input RHO_PIN;
  output [15:0]ALU_OUT;
  output CARRY_FLAG;
  output ZERO_FLAG;
  output SMALLER_ZERO_FLAG;
  output BIGGER_ZERO_FLAG;
  output OVERFLOW_FLAG;
  output RHO_FLAG;
  output NOT_ZERO_FLAG;

  wire [15:0]ALU_OPP;
  wire [14:0]\^ALU_OUT ;
  wire BIGGER_ZERO_FLAG;
  wire CARRY_FLAG;
  wire [15:0]D1;
  wire [15:0]D2;
  wire NOT_ZERO_FLAG;
  wire OVERFLOW_FLAG;
  wire SMALLER_ZERO_FLAG;
  wire ZERO_FLAG;

  assign ALU_OUT[15] = SMALLER_ZERO_FLAG;
  assign ALU_OUT[14:0] = \^ALU_OUT [14:0];
  ALU U0
       (.ALU_OPP(ALU_OPP[3:0]),
        .ALU_OUT(\^ALU_OUT ),
        .BIGGER_ZERO_FLAG(BIGGER_ZERO_FLAG),
        .CARRY_FLAG(CARRY_FLAG),
        .D1(D1),
        .D2(D2),
        .NOT_ZERO_FLAG(NOT_ZERO_FLAG),
        .OVERFLOW_FLAG(OVERFLOW_FLAG),
        .ZERO_FLAG(ZERO_FLAG),
        .\immediate_s_reg[1] (SMALLER_ZERO_FLAG));
endmodule

(* CHECK_LICENSE_TYPE = "main_ALU_FLAG_PACKER_0_1,ALU_FLAG_PACKER,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ALU_FLAG_PACKER,Vivado 2024.1" *) 
module main_ALU_FLAG_PACKER_0_1
   (CARRY_FLAG,
    ZERO_FLAG,
    SMALLER_ZERO_FLAG,
    BIGGER_ZERO_FLAG,
    OVERFLOW_FLAG,
    RHO_FLAG,
    NOT_ZERO_FLAG,
    ALU_FLAGS);
  input CARRY_FLAG;
  input ZERO_FLAG;
  input SMALLER_ZERO_FLAG;
  input BIGGER_ZERO_FLAG;
  input OVERFLOW_FLAG;
  input RHO_FLAG;
  input NOT_ZERO_FLAG;
  output [15:0]ALU_FLAGS;

  wire BIGGER_ZERO_FLAG;
  wire CARRY_FLAG;
  wire NOT_ZERO_FLAG;
  wire OVERFLOW_FLAG;
  wire SMALLER_ZERO_FLAG;
  wire ZERO_FLAG;

  assign ALU_FLAGS[6] = NOT_ZERO_FLAG;
  assign ALU_FLAGS[4] = OVERFLOW_FLAG;
  assign ALU_FLAGS[3] = BIGGER_ZERO_FLAG;
  assign ALU_FLAGS[2] = SMALLER_ZERO_FLAG;
  assign ALU_FLAGS[1] = ZERO_FLAG;
  assign ALU_FLAGS[0] = CARRY_FLAG;
endmodule

(* CHECK_LICENSE_TYPE = "main_CU_Decoder_0_0,CU_Decoder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CU_Decoder,Vivado 2024.1" *) 
module main_CU_Decoder_0_0
   (Instruction,
    Reg1Read,
    Reg2Read,
    RF_WHB,
    RF_WLB,
    Write_Data_Sel,
    RAM_Address_Src,
    RAM_Read,
    RAM_Write,
    JMP,
    JMP_Conditional,
    JMP_Relative,
    JMP_DestinationSource,
    Is_ALU_OP,
    Is_RAM_OP);
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

  wire [15:0]Instruction;
  wire Is_ALU_OP;
  wire JMP;
  wire JMP_DestinationSource;
  wire JMP_Relative;
  wire RAM_Address_Src;
  wire RAM_Write;
  wire RF_WHB;
  wire RF_WLB;
  wire [1:0]Write_Data_Sel;

  assign JMP_Conditional = JMP_Relative;
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h10)) 
    RAM_Address_Src_INST_0
       (.I0(Instruction[15]),
        .I1(Instruction[14]),
        .I2(Instruction[13]),
        .O(RAM_Address_Src));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    RAM_Write_INST_0
       (.I0(Instruction[15]),
        .I1(Instruction[12]),
        .I2(Instruction[13]),
        .O(RAM_Write));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h058A)) 
    RF_WHB_INST_0
       (.I0(Instruction[13]),
        .I1(Instruction[14]),
        .I2(Instruction[15]),
        .I3(Instruction[12]),
        .O(RF_WHB));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h081E)) 
    RF_WLB_INST_0
       (.I0(Instruction[13]),
        .I1(Instruction[14]),
        .I2(Instruction[12]),
        .I3(Instruction[15]),
        .O(RF_WLB));
  CU_Decoder U0
       (.Instruction(Instruction[15:12]),
        .Is_ALU_OP(Is_ALU_OP),
        .JMP(JMP),
        .JMP_DestinationSource(JMP_DestinationSource),
        .JMP_Relative(JMP_Relative),
        .Write_Data_Sel(Write_Data_Sel));
endmodule

(* CHECK_LICENSE_TYPE = "main_CU_ImmediateManipula_0_0,CU_ImmediateManipulator,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CU_ImmediateManipulator,Vivado 2024.1" *) 
module main_CU_ImmediateManipula_0_0
   (Reg1,
    Immediate,
    RF_WHB,
    RF_WLB,
    ManipulatedImmidiate);
  input [15:0]Reg1;
  input [15:0]Immediate;
  input RF_WHB;
  input RF_WLB;
  output [15:0]ManipulatedImmidiate;

  wire [15:0]Immediate;
  wire [15:0]ManipulatedImmidiate;
  wire RF_WHB;
  wire RF_WLB;
  wire [15:0]Reg1;

  CU_ImmediateManipulator U0
       (.Immediate(Immediate),
        .ManipulatedImmidiate(ManipulatedImmidiate),
        .RF_WHB(RF_WHB),
        .RF_WLB(RF_WLB),
        .Reg1(Reg1));
endmodule

(* CHECK_LICENSE_TYPE = "main_CU_JumpController_0_0,CU_JumpController,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CU_JumpController,Vivado 2024.1" *) 
module main_CU_JumpController_0_0
   (InstrExec_CLK,
    JMP,
    JMP_Conditional,
    JMP_Relative,
    JMP_Condition,
    Flags,
    JMP_Address,
    PC_Current,
    PC_Load,
    PC_Next);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 InstrExec_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME InstrExec_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input InstrExec_CLK;
  input JMP;
  input JMP_Conditional;
  input JMP_Relative;
  input [2:0]JMP_Condition;
  input [15:0]Flags;
  input [15:0]JMP_Address;
  input [15:0]PC_Current;
  output PC_Load;
  output [15:0]PC_Next;

  wire [15:0]Flags;
  wire JMP;
  wire [15:0]JMP_Address;
  wire [2:0]JMP_Condition;
  wire JMP_Conditional;
  wire JMP_Relative;
  wire [15:0]PC_Current;
  wire PC_Load;
  wire PC_Load_INST_0_i_1_n_0;
  wire PC_Load_INST_0_i_2_n_0;
  wire [15:0]PC_Next;

  LUT5 #(
    .INIT(32'hA2AAA222)) 
    PC_Load_INST_0
       (.I0(JMP),
        .I1(JMP_Conditional),
        .I2(PC_Load_INST_0_i_1_n_0),
        .I3(JMP_Condition[2]),
        .I4(PC_Load_INST_0_i_2_n_0),
        .O(PC_Load));
  LUT5 #(
    .INIT(32'hFC77FC44)) 
    PC_Load_INST_0_i_1
       (.I0(Flags[1]),
        .I1(JMP_Condition[1]),
        .I2(Flags[5]),
        .I3(JMP_Condition[0]),
        .I4(Flags[4]),
        .O(PC_Load_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    PC_Load_INST_0_i_2
       (.I0(Flags[3]),
        .I1(Flags[2]),
        .I2(JMP_Condition[1]),
        .I3(Flags[1]),
        .I4(JMP_Condition[0]),
        .I5(Flags[0]),
        .O(PC_Load_INST_0_i_2_n_0));
  CU_JumpController U0
       (.JMP_Address(JMP_Address),
        .JMP_Relative(JMP_Relative),
        .PC_Current(PC_Current),
        .PC_Next(PC_Next));
endmodule

(* CHECK_LICENSE_TYPE = "main_CU_JumpDestinationSe_0_0,CU_JumpDestinationSelector,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CU_JumpDestinationSelector,Vivado 2024.1" *) 
module main_CU_JumpDestinationSe_0_0
   (Immediate,
    Register1,
    JMP_DestinationSelect,
    JMP_Address);
  input [15:0]Immediate;
  input [15:0]Register1;
  input JMP_DestinationSelect;
  output [15:0]JMP_Address;

  wire [15:0]Immediate;
  wire [15:0]JMP_Address;
  wire JMP_DestinationSelect;
  wire [15:0]Register1;

  CU_JumpDestinationSelector U0
       (.Immediate(Immediate),
        .JMP_Address(JMP_Address),
        .JMP_DestinationSelect(JMP_DestinationSelect),
        .Register1(Register1));
endmodule

(* CHECK_LICENSE_TYPE = "main_CU_RAMAddressControl_0_0,CU_RAMAddressController,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CU_RAMAddressController,Vivado 2024.1" *) 
module main_CU_RAMAddressControl_0_0
   (Reg2,
    Immediate,
    MA,
    RAM_Address_Src,
    Use_MA,
    RAM_Address);
  input [15:0]Reg2;
  input [15:0]Immediate;
  input [15:0]MA;
  input RAM_Address_Src;
  input Use_MA;
  output [15:0]RAM_Address;

  wire [15:0]Immediate;
  wire [15:0]MA;
  wire [15:0]RAM_Address;
  wire RAM_Address_Src;
  wire [15:0]Reg2;
  wire Use_MA;

  CU_RAMAddressController U0
       (.Immediate(Immediate[7:0]),
        .MA(MA[7:0]),
        .RAM_Address(RAM_Address[7:0]),
        .RAM_Address_Src(RAM_Address_Src),
        .Reg2(Reg2[7:0]),
        .Use_MA(Use_MA));
endmodule

(* CHECK_LICENSE_TYPE = "main_CU_WriteSelector_0_0,CU_WriteSelector,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CU_WriteSelector,Vivado 2024.1" *) 
module main_CU_WriteSelector_0_0
   (RAM_Out,
    Manipulated_Immidiate,
    Reg1,
    ALU_Out,
    Write_Sel,
    Write_Data);
  input [15:0]RAM_Out;
  input [15:0]Manipulated_Immidiate;
  input [15:0]Reg1;
  input [15:0]ALU_Out;
  input [1:0]Write_Sel;
  output [15:0]Write_Data;

  wire [15:0]ALU_Out;
  wire [15:0]Manipulated_Immidiate;
  wire [15:0]RAM_Out;
  wire [15:0]Reg1;
  wire [15:0]Write_Data;
  wire [1:0]Write_Sel;

  CU_WriteSelector U0
       (.ALU_Out(ALU_Out),
        .Manipulated_Immidiate(Manipulated_Immidiate),
        .RAM_Out(RAM_Out),
        .Reg1(Reg1),
        .Write_Data(Write_Data),
        .Write_Sel(Write_Sel));
endmodule

(* CHECK_LICENSE_TYPE = "main_Decoder_0_0,Decoder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Decoder,Vivado 2024.1" *) 
module main_Decoder_0_0
   (Instruction,
    Register1,
    Register2,
    WriteBackRegister,
    Immediate,
    JMP_Condition,
    Use_MA);
  input [15:0]Instruction;
  output [3:0]Register1;
  output [3:0]Register2;
  output [3:0]WriteBackRegister;
  output [15:0]Immediate;
  output [2:0]JMP_Condition;
  output Use_MA;

  wire [12:0]\^Immediate ;
  wire [15:0]Instruction;
  wire [3:0]Register1;
  wire [3:0]Register2;
  wire Use_MA;
  wire [3:0]WriteBackRegister;

  assign Immediate[15] = \^Immediate [12];
  assign Immediate[14] = \^Immediate [12];
  assign Immediate[13] = \^Immediate [12];
  assign Immediate[12:0] = \^Immediate [12:0];
  assign JMP_Condition[2:0] = Instruction[11:9];
  Decoder U0
       (.Immediate(\^Immediate ),
        .Instruction(Instruction),
        .Register1(Register1),
        .Register2(Register2),
        .Use_MA(Use_MA),
        .WriteBackRegister(WriteBackRegister));
endmodule

(* CHECK_LICENSE_TYPE = "main_IROM_0_1,IROM,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "IROM,Vivado 2024.1" *) 
module main_IROM_0_1
   (Address,
    Data);
  input [15:0]Address;
  output [15:0]Data;

  wire [15:0]Address;
  wire [15:0]Data;
  wire \Data[15]_INST_0_i_1_n_0 ;
  wire \Data[15]_INST_0_i_2_n_0 ;
  wire g0_b0_n_0;
  wire g0_b10_n_0;
  wire g0_b11_n_0;
  wire g0_b12_n_0;
  wire g0_b13_n_0;
  wire g0_b14_n_0;
  wire g0_b15_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire g0_b7_n_0;
  wire g0_b8_n_0;
  wire g0_b9_n_0;

  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[0]_INST_0 
       (.I0(g0_b0_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[0]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[10]_INST_0 
       (.I0(g0_b10_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[10]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[11]_INST_0 
       (.I0(g0_b11_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[11]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[12]_INST_0 
       (.I0(g0_b12_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[12]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[13]_INST_0 
       (.I0(g0_b13_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[13]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[14]_INST_0 
       (.I0(g0_b14_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[14]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[15]_INST_0 
       (.I0(g0_b15_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[15]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Data[15]_INST_0_i_1 
       (.I0(Address[11]),
        .I1(Address[12]),
        .I2(Address[9]),
        .I3(Address[10]),
        .O(\Data[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Data[15]_INST_0_i_2 
       (.I0(Address[7]),
        .I1(Address[8]),
        .I2(Address[5]),
        .I3(Address[6]),
        .O(\Data[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[1]_INST_0 
       (.I0(g0_b1_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[1]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[2]_INST_0 
       (.I0(g0_b2_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[2]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[3]_INST_0 
       (.I0(g0_b3_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[3]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[4]_INST_0 
       (.I0(g0_b4_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[4]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[5]_INST_0 
       (.I0(g0_b5_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[5]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[6]_INST_0 
       (.I0(g0_b6_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[6]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[7]_INST_0 
       (.I0(g0_b7_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[7]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[8]_INST_0 
       (.I0(g0_b8_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[8]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Data[9]_INST_0 
       (.I0(g0_b9_n_0),
        .I1(\Data[15]_INST_0_i_1_n_0 ),
        .I2(\Data[15]_INST_0_i_2_n_0 ),
        .I3(Address[15]),
        .I4(Address[13]),
        .I5(Address[14]),
        .O(Data[9]));
  LUT5 #(
    .INIT(32'h34810190)) 
    g0_b0
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b0_n_0));
  LUT5 #(
    .INIT(32'h04811010)) 
    g0_b1
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b1_n_0));
  LUT5 #(
    .INIT(32'h2082FF00)) 
    g0_b10
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b10_n_0));
  LUT5 #(
    .INIT(32'h20040000)) 
    g0_b11
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b11_n_0));
  LUT5 #(
    .INIT(32'h165DAAAA)) 
    g0_b12
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b12_n_0));
  LUT5 #(
    .INIT(32'h082A0000)) 
    g0_b13
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b13_n_0));
  LUT5 #(
    .INIT(32'h0B2AFFFF)) 
    g0_b14
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b14_n_0));
  LUT5 #(
    .INIT(32'h28A20000)) 
    g0_b15
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b15_n_0));
  LUT5 #(
    .INIT(32'h20111010)) 
    g0_b2
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b2_n_0));
  LUT5 #(
    .INIT(32'h00804410)) 
    g0_b3
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b3_n_0));
  LUT5 #(
    .INIT(32'h24C41000)) 
    g0_b4
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b4_n_0));
  LUT5 #(
    .INIT(32'h38AB0000)) 
    g0_b5
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b5_n_0));
  LUT5 #(
    .INIT(32'h38EB0400)) 
    g0_b6
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b6_n_0));
  LUT5 #(
    .INIT(32'h28AA1400)) 
    g0_b7
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b7_n_0));
  LUT5 #(
    .INIT(32'h38C0CCCC)) 
    g0_b8
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b8_n_0));
  LUT5 #(
    .INIT(32'h008FF0F0)) 
    g0_b9
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b9_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "main_Pipelining_Controller_0_0,Pipelining_Controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Pipelining_Controller,Vivado 2024.1" *) 
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

  Pipelining_Controller U0
       (.InstrExec_CLK(InstrExec_CLK),
        .InstrLoad_CLK(InstrLoad_CLK),
        .Instruction(Instruction),
        .InstructionForwardConfiguration(InstructionForwardConfiguration),
        .InstructionToExecute(InstructionToExecute),
        .Reset(Reset),
        .ResolveStall(ResolveStall),
        .stalled_s_reg_0(Stalled));
endmodule

(* CHECK_LICENSE_TYPE = "main_Pipelining_Execution_0_0,Pipelining_ExecutionStage,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Pipelining_ExecutionStage,Vivado 2024.1" *) 
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

  Pipelining_ExecutionStage U0
       (.IS_ALU_OP_out(IS_ALU_OP_out),
        .Immediate(Immediate),
        .Immediate_out(Immediate_out),
        .InstrLoad_CLK(InstrLoad_CLK),
        .Is_ALU_OP(Is_ALU_OP),
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
        .MA(MA[7:0]),
        .MA_out(MA_out[7:0]),
        .Operand1(Operand1),
        .Operand1_out(Operand1_out),
        .Operand2(Operand2),
        .Operand2_out(Operand2_out),
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

(* CHECK_LICENSE_TYPE = "main_Pipelining_Forwarder_0_0,Pipelining_Forwarder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Pipelining_Forwarder,Vivado 2024.1" *) 
module main_Pipelining_Forwarder_0_0
   (CurrentOperand1,
    CurrentOperand2,
    CurrentMA,
    ExecutionWriteData,
    ExecutionFlags,
    ForwardingConfiguration,
    ForwardedOperand1,
    ForwardedOperand2,
    ForwardedMA);
  input [15:0]CurrentOperand1;
  input [15:0]CurrentOperand2;
  input [15:0]CurrentMA;
  input [15:0]ExecutionWriteData;
  input [15:0]ExecutionFlags;
  input [4:0]ForwardingConfiguration;
  output [15:0]ForwardedOperand1;
  output [15:0]ForwardedOperand2;
  output [15:0]ForwardedMA;

  wire [15:0]CurrentMA;
  wire [15:0]CurrentOperand1;
  wire [15:0]CurrentOperand2;
  wire [15:0]ExecutionFlags;
  wire [15:0]ExecutionWriteData;
  wire [15:0]ForwardedMA;
  wire [15:0]ForwardedOperand1;
  wire [15:0]ForwardedOperand2;
  wire [4:0]ForwardingConfiguration;

  Pipelining_Forwarder U0
       (.CurrentMA(CurrentMA[7:0]),
        .CurrentOperand1(CurrentOperand1),
        .CurrentOperand2(CurrentOperand2),
        .ExecutionFlags({ExecutionFlags[6],ExecutionFlags[4:0]}),
        .ExecutionWriteData(ExecutionWriteData),
        .ForwardedMA(ForwardedMA[7:0]),
        .ForwardedOperand1(ForwardedOperand1),
        .ForwardedOperand2(ForwardedOperand2),
        .ForwardingConfiguration(ForwardingConfiguration));
endmodule

(* CHECK_LICENSE_TYPE = "main_Pipelining_WriteBack_0_0,Pipelining_WriteBackStage,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Pipelining_WriteBackStage,Vivado 2024.1" *) 
module main_Pipelining_WriteBack_0_0
   (InstrLoad_CLK,
    Reset,
    WriteAddress,
    WriteData,
    Flags,
    WHB,
    WLB,
    Is_ALU_OP,
    JMP,
    WriteAddress_out,
    WriteData_out,
    Flags_out,
    RF_WE_out,
    Is_ALU_OP_out,
    JMP_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 InstrLoad_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME InstrLoad_CLK, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input InstrLoad_CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
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

  wire [15:0]Flags;
  wire [15:0]Flags_out;
  wire InstrLoad_CLK;
  wire Is_ALU_OP;
  wire Is_ALU_OP_out;
  wire JMP;
  wire JMP_out;
  wire RF_WE_out;
  wire Reset;
  wire WHB;
  wire WLB;
  wire [3:0]WriteAddress;
  wire [3:0]WriteAddress_out;
  wire [15:0]WriteData;
  wire [15:0]WriteData_out;

  Pipelining_WriteBackStage U0
       (.Flags({Flags[6],Flags[4:0]}),
        .Flags_out({Flags_out[6],Flags_out[4:0]}),
        .InstrLoad_CLK(InstrLoad_CLK),
        .Is_ALU_OP(Is_ALU_OP),
        .Is_ALU_OP_out(Is_ALU_OP_out),
        .JMP(JMP),
        .JMP_out(JMP_out),
        .RF_WE_out(RF_WE_out),
        .Reset(Reset),
        .WHB(WHB),
        .WLB(WLB),
        .WriteAddress(WriteAddress),
        .WriteAddress_out(WriteAddress_out),
        .WriteData(WriteData),
        .WriteData_out(WriteData_out));
endmodule

(* CHECK_LICENSE_TYPE = "main_ProgramCounter_0_0,ProgramCounter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ProgramCounter,Vivado 2024.1" *) 
module main_ProgramCounter_0_0
   (InstrExec_CLK,
    Stalled,
    JMP,
    Reset,
    Din,
    Dout);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 InstrExec_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME InstrExec_CLK, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input InstrExec_CLK;
  input Stalled;
  input JMP;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  input [15:0]Din;
  output [15:0]Dout;

  wire [15:0]Din;
  wire [15:0]Dout;
  wire InstrExec_CLK;
  wire JMP;
  wire Reset;
  wire Stalled;

  ProgramCounter U0
       (.Din(Din),
        .Dout(Dout),
        .InstrExec_CLK(InstrExec_CLK),
        .JMP(JMP),
        .Reset(Reset),
        .Stalled(Stalled));
endmodule

(* CHECK_LICENSE_TYPE = "main_RAM_Placeholder_0_0,RAM_Placeholder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "RAM_Placeholder,Vivado 2024.1" *) 
module main_RAM_Placeholder_0_0
   (Address,
    DataIn,
    WE,
    OE,
    CLK,
    DataOut,
    lopt);
  input [15:0]Address;
  input [15:0]DataIn;
  input WE;
  input OE;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  output [15:0]DataOut;
  input lopt;

  wire [15:0]Address;
  wire [15:0]DataIn;
  wire [15:0]DataOut;
  wire WE;
  wire lopt;
  wire NLW_U0_CLK_UNCONNECTED;

  RAM_Placeholder U0
       (.Address(Address[7:0]),
        .CLK(NLW_U0_CLK_UNCONNECTED),
        .DataIn(DataIn),
        .DataOut(DataOut),
        .WE(WE),
        .lopt(lopt));
endmodule

(* CHECK_LICENSE_TYPE = "main_RegFile_0_0,RegFile,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "RegFile,Vivado 2024.1" *) 
module main_RegFile_0_0
   (AddrReg1,
    AddrReg2,
    AddrWriteReg,
    WriteData,
    Flags,
    WE,
    OverwriteFl,
    clk,
    Reg1_data,
    Reg2_data,
    RegMA_data,
    BankID);
  input [3:0]AddrReg1;
  input [3:0]AddrReg2;
  input [3:0]AddrWriteReg;
  input [15:0]WriteData;
  input [15:0]Flags;
  input WE;
  input OverwriteFl;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  output [15:0]Reg1_data;
  output [15:0]Reg2_data;
  output [15:0]RegMA_data;
  output [3:0]BankID;

  wire [3:0]AddrReg1;
  wire [3:0]AddrReg2;
  wire [3:0]AddrWriteReg;
  wire [15:0]Flags;
  wire OverwriteFl;
  wire [15:0]Reg1_data;
  wire [15:0]Reg2_data;
  wire [15:0]RegMA_data;
  wire WE;
  wire [15:0]WriteData;
  wire clk;

  RegFile U0
       (.AddrReg1(AddrReg1),
        .AddrReg2(AddrReg2),
        .AddrWriteReg(AddrWriteReg),
        .Flags({Flags[6],Flags[4:0]}),
        .OverwriteFl(OverwriteFl),
        .Reg1_data(Reg1_data),
        .Reg2_data(Reg2_data),
        .RegMA_data(RegMA_data[7:0]),
        .WE(WE),
        .WriteData(WriteData),
        .clk(clk));
endmodule

(* ECO_CHECKSUM = "ccca8f00" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module main_wrapper
   (InstrLoad_CLK,
    Reset,
    led);
  input InstrLoad_CLK;
  input Reset;
  output led;

  wire InstrLoad_CLK;
  wire InstrLoad_CLK_IBUF;
  wire InstrLoad_CLK_IBUF_BUFG;
  wire Reset;
  wire Reset_IBUF;
  wire led;
  wire led_OBUF;

initial begin
 $sdf_annotate("mainSim_time_impl.sdf",,,,"tool_control");
end
  BUFG InstrLoad_CLK_IBUF_BUFG_inst
       (.I(InstrLoad_CLK_IBUF),
        .O(InstrLoad_CLK_IBUF_BUFG));
  IBUF InstrLoad_CLK_IBUF_inst
       (.I(InstrLoad_CLK),
        .O(InstrLoad_CLK_IBUF));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  OBUF led_OBUF_inst
       (.I(led_OBUF),
        .O(led));
  (* hw_handoff = "main.hwdef" *) 
  main main_i
       (.InstrExec_CLK(InstrLoad_CLK_IBUF_BUFG),
        .InstrLoad_CLK(InstrLoad_CLK_IBUF_BUFG),
        .Reset(Reset_IBUF),
        .led(led_OBUF));
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
