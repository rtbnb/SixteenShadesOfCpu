// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:45:33 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_RegFile_0_0/main_RegFile_0_0_sim_netlist.v
// Design      : main_RegFile_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_RegFile_0_0,RegFile,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "RegFile,Vivado 2024.1" *) 
(* NotValidForBitStream *)
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
  wire [3:0]BankID;
  wire [15:0]Flags;
  wire OverwriteFl;
  wire [15:0]Reg1_data;
  wire [15:0]Reg2_data;
  wire [15:0]RegMA_data;
  wire WE;
  wire [15:0]WriteData;
  wire clk;

  main_RegFile_0_0_RegFile U0
       (.AddrReg1(AddrReg1),
        .AddrReg2(AddrReg2),
        .AddrWriteReg(AddrWriteReg),
        .BankID(BankID),
        .Flags(Flags),
        .OverwriteFl(OverwriteFl),
        .Reg1_data(Reg1_data),
        .Reg2_data(Reg2_data),
        .RegMA_data(RegMA_data),
        .WE(WE),
        .WriteData(WriteData),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "RegFile" *) 
module main_RegFile_0_0_RegFile
   (RegMA_data,
    BankID,
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
  output [15:0]RegMA_data;
  output [3:0]BankID;
  output [15:0]Reg1_data;
  output [15:0]Reg2_data;
  input [15:0]WriteData;
  input clk;
  input OverwriteFl;
  input [15:0]Flags;
  input [3:0]AddrReg1;
  input [3:0]AddrReg2;
  input WE;
  input [3:0]AddrWriteReg;

  wire [3:0]AddrReg1;
  wire [3:0]AddrReg2;
  wire [3:0]AddrWriteReg;
  wire [3:0]BankID;
  wire [15:0]Flags;
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
  wire [15:4]RegB;
  wire RegB_10;
  wire [15:0]RegC;
  wire RegC_11;
  wire [15:0]RegD;
  wire RegD_12;
  wire [15:0]RegE;
  wire RegE_13;
  wire [15:0]RegF;
  wire [15:0]RegMA_data;
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
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[0] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[0]),
        .Q(Reg0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[10] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[10]),
        .Q(Reg0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[11] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[11]),
        .Q(Reg0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[12] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[12]),
        .Q(Reg0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[13] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[13]),
        .Q(Reg0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[14] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[14]),
        .Q(Reg0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[15] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[15]),
        .Q(Reg0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[1] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[1]),
        .Q(Reg0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[2] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[2]),
        .Q(Reg0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[3] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[3]),
        .Q(Reg0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[4] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[4]),
        .Q(Reg0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[5] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[5]),
        .Q(Reg0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[6] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[6]),
        .Q(Reg0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[7] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[7]),
        .Q(Reg0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg0_reg[8] 
       (.C(clk),
        .CE(Reg0_0),
        .D(WriteData[8]),
        .Q(Reg0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
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
       (.I0(BankID[0]),
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
        .I1(RegMA_data[10]),
        .I2(AddrReg1[1]),
        .I3(Reg9[10]),
        .I4(AddrReg1[0]),
        .I5(Reg8[10]),
        .O(\Reg1_data[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[10]_INST_0_i_6 
       (.I0(RegF[10]),
        .I1(RegE[10]),
        .I2(AddrReg1[1]),
        .I3(RegD[10]),
        .I4(AddrReg1[0]),
        .I5(RegC[10]),
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
        .I1(RegMA_data[11]),
        .I2(AddrReg1[1]),
        .I3(Reg9[11]),
        .I4(AddrReg1[0]),
        .I5(Reg8[11]),
        .O(\Reg1_data[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[11]_INST_0_i_6 
       (.I0(RegF[11]),
        .I1(RegE[11]),
        .I2(AddrReg1[1]),
        .I3(RegD[11]),
        .I4(AddrReg1[0]),
        .I5(RegC[11]),
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
        .I1(RegMA_data[12]),
        .I2(AddrReg1[1]),
        .I3(Reg9[12]),
        .I4(AddrReg1[0]),
        .I5(Reg8[12]),
        .O(\Reg1_data[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[12]_INST_0_i_6 
       (.I0(RegF[12]),
        .I1(RegE[12]),
        .I2(AddrReg1[1]),
        .I3(RegD[12]),
        .I4(AddrReg1[0]),
        .I5(RegC[12]),
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
        .I1(RegMA_data[13]),
        .I2(AddrReg1[1]),
        .I3(Reg9[13]),
        .I4(AddrReg1[0]),
        .I5(Reg8[13]),
        .O(\Reg1_data[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[13]_INST_0_i_6 
       (.I0(RegF[13]),
        .I1(RegE[13]),
        .I2(AddrReg1[1]),
        .I3(RegD[13]),
        .I4(AddrReg1[0]),
        .I5(RegC[13]),
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
        .I1(RegMA_data[14]),
        .I2(AddrReg1[1]),
        .I3(Reg9[14]),
        .I4(AddrReg1[0]),
        .I5(Reg8[14]),
        .O(\Reg1_data[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[14]_INST_0_i_6 
       (.I0(RegF[14]),
        .I1(RegE[14]),
        .I2(AddrReg1[1]),
        .I3(RegD[14]),
        .I4(AddrReg1[0]),
        .I5(RegC[14]),
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
        .I1(RegMA_data[15]),
        .I2(AddrReg1[1]),
        .I3(Reg9[15]),
        .I4(AddrReg1[0]),
        .I5(Reg8[15]),
        .O(\Reg1_data[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[15]_INST_0_i_6 
       (.I0(RegF[15]),
        .I1(RegE[15]),
        .I2(AddrReg1[1]),
        .I3(RegD[15]),
        .I4(AddrReg1[0]),
        .I5(RegC[15]),
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
       (.I0(BankID[1]),
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
       (.I0(BankID[2]),
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
       (.I0(BankID[3]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[5]_INST_0_i_6 
       (.I0(RegF[5]),
        .I1(RegE[5]),
        .I2(AddrReg1[1]),
        .I3(RegD[5]),
        .I4(AddrReg1[0]),
        .I5(RegC[5]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[7]_INST_0_i_6 
       (.I0(RegF[7]),
        .I1(RegE[7]),
        .I2(AddrReg1[1]),
        .I3(RegD[7]),
        .I4(AddrReg1[0]),
        .I5(RegC[7]),
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
        .I1(RegMA_data[8]),
        .I2(AddrReg1[1]),
        .I3(Reg9[8]),
        .I4(AddrReg1[0]),
        .I5(Reg8[8]),
        .O(\Reg1_data[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[8]_INST_0_i_6 
       (.I0(RegF[8]),
        .I1(RegE[8]),
        .I2(AddrReg1[1]),
        .I3(RegD[8]),
        .I4(AddrReg1[0]),
        .I5(RegC[8]),
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
        .I1(RegMA_data[9]),
        .I2(AddrReg1[1]),
        .I3(Reg9[9]),
        .I4(AddrReg1[0]),
        .I5(Reg8[9]),
        .O(\Reg1_data[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg1_data[9]_INST_0_i_6 
       (.I0(RegF[9]),
        .I1(RegE[9]),
        .I2(AddrReg1[1]),
        .I3(RegD[9]),
        .I4(AddrReg1[0]),
        .I5(RegC[9]),
        .O(\Reg1_data[9]_INST_0_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[0] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[0]),
        .Q(Reg1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[10] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[10]),
        .Q(Reg1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[11] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[11]),
        .Q(Reg1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[12] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[12]),
        .Q(Reg1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[13] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[13]),
        .Q(Reg1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[14] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[14]),
        .Q(Reg1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[15] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[15]),
        .Q(Reg1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[1] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[1]),
        .Q(Reg1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[2] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[2]),
        .Q(Reg1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[3] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[3]),
        .Q(Reg1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[4] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[4]),
        .Q(Reg1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[5] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[5]),
        .Q(Reg1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[6] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[6]),
        .Q(Reg1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[7] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[7]),
        .Q(Reg1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg1_reg[8] 
       (.C(clk),
        .CE(Reg1_1),
        .D(WriteData[8]),
        .Q(Reg1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
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
       (.I0(BankID[0]),
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
        .I1(RegMA_data[10]),
        .I2(AddrReg2[1]),
        .I3(Reg9[10]),
        .I4(AddrReg2[0]),
        .I5(Reg8[10]),
        .O(\Reg2_data[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[10]_INST_0_i_6 
       (.I0(RegF[10]),
        .I1(RegE[10]),
        .I2(AddrReg2[1]),
        .I3(RegD[10]),
        .I4(AddrReg2[0]),
        .I5(RegC[10]),
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
        .I1(RegMA_data[11]),
        .I2(AddrReg2[1]),
        .I3(Reg9[11]),
        .I4(AddrReg2[0]),
        .I5(Reg8[11]),
        .O(\Reg2_data[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[11]_INST_0_i_6 
       (.I0(RegF[11]),
        .I1(RegE[11]),
        .I2(AddrReg2[1]),
        .I3(RegD[11]),
        .I4(AddrReg2[0]),
        .I5(RegC[11]),
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
        .I1(RegMA_data[12]),
        .I2(AddrReg2[1]),
        .I3(Reg9[12]),
        .I4(AddrReg2[0]),
        .I5(Reg8[12]),
        .O(\Reg2_data[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[12]_INST_0_i_6 
       (.I0(RegF[12]),
        .I1(RegE[12]),
        .I2(AddrReg2[1]),
        .I3(RegD[12]),
        .I4(AddrReg2[0]),
        .I5(RegC[12]),
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
        .I1(RegMA_data[13]),
        .I2(AddrReg2[1]),
        .I3(Reg9[13]),
        .I4(AddrReg2[0]),
        .I5(Reg8[13]),
        .O(\Reg2_data[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[13]_INST_0_i_6 
       (.I0(RegF[13]),
        .I1(RegE[13]),
        .I2(AddrReg2[1]),
        .I3(RegD[13]),
        .I4(AddrReg2[0]),
        .I5(RegC[13]),
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
        .I1(RegMA_data[14]),
        .I2(AddrReg2[1]),
        .I3(Reg9[14]),
        .I4(AddrReg2[0]),
        .I5(Reg8[14]),
        .O(\Reg2_data[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[14]_INST_0_i_6 
       (.I0(RegF[14]),
        .I1(RegE[14]),
        .I2(AddrReg2[1]),
        .I3(RegD[14]),
        .I4(AddrReg2[0]),
        .I5(RegC[14]),
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
        .I1(RegMA_data[15]),
        .I2(AddrReg2[1]),
        .I3(Reg9[15]),
        .I4(AddrReg2[0]),
        .I5(Reg8[15]),
        .O(\Reg2_data[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[15]_INST_0_i_6 
       (.I0(RegF[15]),
        .I1(RegE[15]),
        .I2(AddrReg2[1]),
        .I3(RegD[15]),
        .I4(AddrReg2[0]),
        .I5(RegC[15]),
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
       (.I0(BankID[1]),
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
       (.I0(BankID[2]),
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
       (.I0(BankID[3]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[5]_INST_0_i_6 
       (.I0(RegF[5]),
        .I1(RegE[5]),
        .I2(AddrReg2[1]),
        .I3(RegD[5]),
        .I4(AddrReg2[0]),
        .I5(RegC[5]),
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
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[7]_INST_0_i_6 
       (.I0(RegF[7]),
        .I1(RegE[7]),
        .I2(AddrReg2[1]),
        .I3(RegD[7]),
        .I4(AddrReg2[0]),
        .I5(RegC[7]),
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
        .I1(RegMA_data[8]),
        .I2(AddrReg2[1]),
        .I3(Reg9[8]),
        .I4(AddrReg2[0]),
        .I5(Reg8[8]),
        .O(\Reg2_data[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[8]_INST_0_i_6 
       (.I0(RegF[8]),
        .I1(RegE[8]),
        .I2(AddrReg2[1]),
        .I3(RegD[8]),
        .I4(AddrReg2[0]),
        .I5(RegC[8]),
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
        .I1(RegMA_data[9]),
        .I2(AddrReg2[1]),
        .I3(Reg9[9]),
        .I4(AddrReg2[0]),
        .I5(Reg8[9]),
        .O(\Reg2_data[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Reg2_data[9]_INST_0_i_6 
       (.I0(RegF[9]),
        .I1(RegE[9]),
        .I2(AddrReg2[1]),
        .I3(RegD[9]),
        .I4(AddrReg2[0]),
        .I5(RegC[9]),
        .O(\Reg2_data[9]_INST_0_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[0] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[0]),
        .Q(Reg2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[10] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[10]),
        .Q(Reg2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[11] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[11]),
        .Q(Reg2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[12] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[12]),
        .Q(Reg2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[13] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[13]),
        .Q(Reg2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[14] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[14]),
        .Q(Reg2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[15] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[15]),
        .Q(Reg2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[1] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[1]),
        .Q(Reg2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[2] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[2]),
        .Q(Reg2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[3] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[3]),
        .Q(Reg2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[4] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[4]),
        .Q(Reg2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[5] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[5]),
        .Q(Reg2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[6] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[6]),
        .Q(Reg2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[7] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[7]),
        .Q(Reg2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg2_reg[8] 
       (.C(clk),
        .CE(Reg2_2),
        .D(WriteData[8]),
        .Q(Reg2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
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
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[0] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[0]),
        .Q(Reg3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[10] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[10]),
        .Q(Reg3[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[11] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[11]),
        .Q(Reg3[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[12] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[12]),
        .Q(Reg3[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[13] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[13]),
        .Q(Reg3[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[14] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[14]),
        .Q(Reg3[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[15] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[15]),
        .Q(Reg3[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[1] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[1]),
        .Q(Reg3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[2] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[2]),
        .Q(Reg3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[3] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[3]),
        .Q(Reg3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[4] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[4]),
        .Q(Reg3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[5] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[5]),
        .Q(Reg3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[6] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[6]),
        .Q(Reg3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[7] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[7]),
        .Q(Reg3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg3_reg[8] 
       (.C(clk),
        .CE(Reg3_3),
        .D(WriteData[8]),
        .Q(Reg3[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
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
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[0] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[0]),
        .Q(Reg4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[10] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[10]),
        .Q(Reg4[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[11] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[11]),
        .Q(Reg4[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[12] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[12]),
        .Q(Reg4[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[13] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[13]),
        .Q(Reg4[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[14] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[14]),
        .Q(Reg4[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[15] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[15]),
        .Q(Reg4[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[1] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[1]),
        .Q(Reg4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[2] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[2]),
        .Q(Reg4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[3] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[3]),
        .Q(Reg4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[4] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[4]),
        .Q(Reg4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[5] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[5]),
        .Q(Reg4[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[6] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[6]),
        .Q(Reg4[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[7] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[7]),
        .Q(Reg4[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg4_reg[8] 
       (.C(clk),
        .CE(Reg4_4),
        .D(WriteData[8]),
        .Q(Reg4[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
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
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[0] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[0]),
        .Q(Reg5[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[10] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[10]),
        .Q(Reg5[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[11] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[11]),
        .Q(Reg5[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[12] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[12]),
        .Q(Reg5[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[13] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[13]),
        .Q(Reg5[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[14] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[14]),
        .Q(Reg5[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[15] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[15]),
        .Q(Reg5[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[1] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[1]),
        .Q(Reg5[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[2] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[2]),
        .Q(Reg5[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[3] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[3]),
        .Q(Reg5[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[4] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[4]),
        .Q(Reg5[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[5] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[5]),
        .Q(Reg5[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[6] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[6]),
        .Q(Reg5[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[7] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[7]),
        .Q(Reg5[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg5_reg[8] 
       (.C(clk),
        .CE(Reg5_5),
        .D(WriteData[8]),
        .Q(Reg5[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
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
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[0] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[0]),
        .Q(Reg6[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[10] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[10]),
        .Q(Reg6[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[11] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[11]),
        .Q(Reg6[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[12] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[12]),
        .Q(Reg6[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[13] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[13]),
        .Q(Reg6[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[14] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[14]),
        .Q(Reg6[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[15] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[15]),
        .Q(Reg6[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[1] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[1]),
        .Q(Reg6[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[2] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[2]),
        .Q(Reg6[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[3] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[3]),
        .Q(Reg6[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[4] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[4]),
        .Q(Reg6[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[5] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[5]),
        .Q(Reg6[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[6] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[6]),
        .Q(Reg6[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[7] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[7]),
        .Q(Reg6[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg6_reg[8] 
       (.C(clk),
        .CE(Reg6_6),
        .D(WriteData[8]),
        .Q(Reg6[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
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
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[0] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[0]),
        .Q(Reg7[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[10] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[10]),
        .Q(Reg7[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[11] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[11]),
        .Q(Reg7[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[12] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[12]),
        .Q(Reg7[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[13] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[13]),
        .Q(Reg7[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[14] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[14]),
        .Q(Reg7[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[15] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[15]),
        .Q(Reg7[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[1] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[1]),
        .Q(Reg7[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[2] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[2]),
        .Q(Reg7[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[3] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[3]),
        .Q(Reg7[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[4] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[4]),
        .Q(Reg7[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[5] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[5]),
        .Q(Reg7[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[6] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[6]),
        .Q(Reg7[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[7] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[7]),
        .Q(Reg7[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg7_reg[8] 
       (.C(clk),
        .CE(Reg7_7),
        .D(WriteData[8]),
        .Q(Reg7[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
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
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[0] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[0]),
        .Q(Reg8[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[10] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[10]),
        .Q(Reg8[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[11] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[11]),
        .Q(Reg8[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[12] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[12]),
        .Q(Reg8[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[13] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[13]),
        .Q(Reg8[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[14] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[14]),
        .Q(Reg8[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[15] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[15]),
        .Q(Reg8[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[1] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[1]),
        .Q(Reg8[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[2] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[2]),
        .Q(Reg8[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[3] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[3]),
        .Q(Reg8[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[4] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[4]),
        .Q(Reg8[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[5] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[5]),
        .Q(Reg8[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[6] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[6]),
        .Q(Reg8[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[7] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[7]),
        .Q(Reg8[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg8_reg[8] 
       (.C(clk),
        .CE(Reg8_8),
        .D(WriteData[8]),
        .Q(Reg8[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
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
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[0] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[0]),
        .Q(Reg9[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[10] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[10]),
        .Q(Reg9[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[11] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[11]),
        .Q(Reg9[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[12] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[12]),
        .Q(Reg9[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[13] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[13]),
        .Q(Reg9[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[14] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[14]),
        .Q(Reg9[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[15] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[15]),
        .Q(Reg9[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[1] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[1]),
        .Q(Reg9[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[2] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[2]),
        .Q(Reg9[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[3] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[3]),
        .Q(Reg9[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[4] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[4]),
        .Q(Reg9[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[5] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[5]),
        .Q(Reg9[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[6] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[6]),
        .Q(Reg9[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[7] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[7]),
        .Q(Reg9[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[8] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[8]),
        .Q(Reg9[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Reg9_reg[9] 
       (.C(clk),
        .CE(Reg9_9),
        .D(WriteData[9]),
        .Q(Reg9[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \RegA[15]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[3]),
        .I2(AddrWriteReg[1]),
        .I3(AddrWriteReg[2]),
        .I4(AddrWriteReg[0]),
        .O(RegA));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[0] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[0]),
        .Q(RegMA_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[10] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[10]),
        .Q(RegMA_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[11] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[11]),
        .Q(RegMA_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[12] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[12]),
        .Q(RegMA_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[13] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[13]),
        .Q(RegMA_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[14] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[14]),
        .Q(RegMA_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[15] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[15]),
        .Q(RegMA_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[1] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[1]),
        .Q(RegMA_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[2] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[2]),
        .Q(RegMA_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[3] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[3]),
        .Q(RegMA_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[4] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[4]),
        .Q(RegMA_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[5] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[5]),
        .Q(RegMA_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[6] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[6]),
        .Q(RegMA_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[7] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[7]),
        .Q(RegMA_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[8] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[8]),
        .Q(RegMA_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegA_reg[9] 
       (.C(clk),
        .CE(RegA),
        .D(WriteData[9]),
        .Q(RegMA_data[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00800000)) 
    \RegB[3]_i_1 
       (.I0(WE),
        .I1(AddrWriteReg[1]),
        .I2(AddrWriteReg[0]),
        .I3(AddrWriteReg[2]),
        .I4(AddrWriteReg[3]),
        .O(RegB_10));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[0] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[0]),
        .Q(BankID[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[10] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[10]),
        .Q(RegB[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[11] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[11]),
        .Q(RegB[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[12] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[12]),
        .Q(RegB[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[13] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[13]),
        .Q(RegB[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[14] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[14]),
        .Q(RegB[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[15] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[15]),
        .Q(RegB[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[1] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[1]),
        .Q(BankID[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[2] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[2]),
        .Q(BankID[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[3] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[3]),
        .Q(BankID[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[4] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[4]),
        .Q(RegB[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[5] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[5]),
        .Q(RegB[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[6] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[6]),
        .Q(RegB[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[7] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[7]),
        .Q(RegB[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegB_reg[8] 
       (.C(clk),
        .CE(RegB_10),
        .D(WriteData[8]),
        .Q(RegB[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
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
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[0] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[0]),
        .Q(RegC[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[10] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[10]),
        .Q(RegC[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[11] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[11]),
        .Q(RegC[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[12] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[12]),
        .Q(RegC[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[13] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[13]),
        .Q(RegC[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[14] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[14]),
        .Q(RegC[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[15] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[15]),
        .Q(RegC[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[1] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[1]),
        .Q(RegC[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[2] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[2]),
        .Q(RegC[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[3] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[3]),
        .Q(RegC[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[4] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[4]),
        .Q(RegC[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[5] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[5]),
        .Q(RegC[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[6] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[6]),
        .Q(RegC[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[7] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[7]),
        .Q(RegC[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegC_reg[8] 
       (.C(clk),
        .CE(RegC_11),
        .D(WriteData[8]),
        .Q(RegC[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
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
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[0] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[0]),
        .Q(RegD[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[10] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[10]),
        .Q(RegD[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[11] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[11]),
        .Q(RegD[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[12] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[12]),
        .Q(RegD[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[13] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[13]),
        .Q(RegD[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[14] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[14]),
        .Q(RegD[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[15] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[15]),
        .Q(RegD[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[1] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[1]),
        .Q(RegD[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[2] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[2]),
        .Q(RegD[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[3] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[3]),
        .Q(RegD[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[4] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[4]),
        .Q(RegD[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[5] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[5]),
        .Q(RegD[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[6] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[6]),
        .Q(RegD[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[7] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[7]),
        .Q(RegD[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegD_reg[8] 
       (.C(clk),
        .CE(RegD_12),
        .D(WriteData[8]),
        .Q(RegD[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
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
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[0] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[0]),
        .Q(RegE[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[10] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[10]),
        .Q(RegE[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[11] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[11]),
        .Q(RegE[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[12] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[12]),
        .Q(RegE[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[13] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[13]),
        .Q(RegE[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[14] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[14]),
        .Q(RegE[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[15] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[15]),
        .Q(RegE[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[1] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[1]),
        .Q(RegE[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[2] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[2]),
        .Q(RegE[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[3] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[3]),
        .Q(RegE[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[4] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[4]),
        .Q(RegE[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[5] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[5]),
        .Q(RegE[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[6] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[6]),
        .Q(RegE[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[7] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[7]),
        .Q(RegE[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[8] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[8]),
        .Q(RegE[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegE_reg[9] 
       (.C(clk),
        .CE(RegE_13),
        .D(WriteData[9]),
        .Q(RegE[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[0] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[0]),
        .Q(RegF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[10] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[10]),
        .Q(RegF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[11] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[11]),
        .Q(RegF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[12] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[12]),
        .Q(RegF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[13] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[13]),
        .Q(RegF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[14] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[14]),
        .Q(RegF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[15] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[15]),
        .Q(RegF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[1] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[1]),
        .Q(RegF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[2] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[2]),
        .Q(RegF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[3] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[3]),
        .Q(RegF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[4] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[4]),
        .Q(RegF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[5] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[5]),
        .Q(RegF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[6] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[6]),
        .Q(RegF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[7] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[7]),
        .Q(RegF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[8] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[8]),
        .Q(RegF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RegF_reg[9] 
       (.C(clk),
        .CE(OverwriteFl),
        .D(Flags[9]),
        .Q(RegF[9]),
        .R(1'b0));
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
