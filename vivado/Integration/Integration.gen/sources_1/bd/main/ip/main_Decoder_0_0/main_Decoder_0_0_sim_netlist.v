// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:45:30 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Decoder_0_0/main_Decoder_0_0_sim_netlist.v
// Design      : main_Decoder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_Decoder_0_0,Decoder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Decoder,Vivado 2024.1" *) 
(* NotValidForBitStream *)
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

  wire [15:0]\^Immediate ;
  wire [15:0]Instruction;
  wire [3:0]Register1;
  wire [3:0]Register2;
  wire Use_MA;
  wire [3:0]WriteBackRegister;

  assign Immediate[15] = \^Immediate [15];
  assign Immediate[14] = \^Immediate [15];
  assign Immediate[13] = \^Immediate [15];
  assign Immediate[12] = \^Immediate [15];
  assign Immediate[11:0] = \^Immediate [11:0];
  assign JMP_Condition[2:0] = Instruction[11:9];
  main_Decoder_0_0_Decoder U0
       (.Immediate({\^Immediate [15],\^Immediate [11:0]}),
        .Instruction(Instruction),
        .Register1(Register1),
        .Register2(Register2),
        .Use_MA(Use_MA),
        .WriteBackRegister(WriteBackRegister));
endmodule

(* ORIG_REF_NAME = "Decoder" *) 
module main_Decoder_0_0_Decoder
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \Immediate[12]_INST_0 
       (.I0(Instruction[8]),
        .I1(Instruction[13]),
        .I2(Instruction[12]),
        .I3(Instruction[15]),
        .I4(Instruction[14]),
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
    Use_MA__0
       (.I0(Instruction[15]),
        .I1(Instruction[0]),
        .I2(Instruction[14]),
        .I3(Instruction[13]),
        .O(Use_MA));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
