// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:45:30 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_ImmediateManipula_0_0/main_CU_ImmediateManipula_0_0_sim_netlist.v
// Design      : main_CU_ImmediateManipula_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_CU_ImmediateManipula_0_0,CU_ImmediateManipulator,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CU_ImmediateManipulator,Vivado 2024.1" *) 
(* NotValidForBitStream *)
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

  main_CU_ImmediateManipula_0_0_CU_ImmediateManipulator U0
       (.Immediate(Immediate),
        .ManipulatedImmidiate(ManipulatedImmidiate),
        .RF_WHB(RF_WHB),
        .RF_WLB(RF_WLB),
        .Reg1(Reg1));
endmodule

(* ORIG_REF_NAME = "CU_ImmediateManipulator" *) 
module main_CU_ImmediateManipula_0_0_CU_ImmediateManipulator
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

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \ManipulatedImmidiate[1]_INST_0 
       (.I0(Reg1[1]),
        .I1(Immediate[1]),
        .I2(RF_WLB),
        .O(ManipulatedImmidiate[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \ManipulatedImmidiate[2]_INST_0 
       (.I0(Reg1[2]),
        .I1(Immediate[2]),
        .I2(RF_WLB),
        .O(ManipulatedImmidiate[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \ManipulatedImmidiate[3]_INST_0 
       (.I0(Reg1[3]),
        .I1(Immediate[3]),
        .I2(RF_WLB),
        .O(ManipulatedImmidiate[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \ManipulatedImmidiate[4]_INST_0 
       (.I0(Reg1[4]),
        .I1(Immediate[4]),
        .I2(RF_WLB),
        .O(ManipulatedImmidiate[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \ManipulatedImmidiate[5]_INST_0 
       (.I0(Reg1[5]),
        .I1(Immediate[5]),
        .I2(RF_WLB),
        .O(ManipulatedImmidiate[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \ManipulatedImmidiate[6]_INST_0 
       (.I0(Reg1[6]),
        .I1(Immediate[6]),
        .I2(RF_WLB),
        .O(ManipulatedImmidiate[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
