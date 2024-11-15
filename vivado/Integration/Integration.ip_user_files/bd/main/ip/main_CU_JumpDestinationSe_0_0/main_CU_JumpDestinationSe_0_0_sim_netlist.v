// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:58:39 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_JumpDestinationSe_0_0/main_CU_JumpDestinationSe_0_0_sim_netlist.v
// Design      : main_CU_JumpDestinationSe_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_CU_JumpDestinationSe_0_0,CU_JumpDestinationSelector,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CU_JumpDestinationSelector,Vivado 2024.1" *) 
(* NotValidForBitStream *)
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

  main_CU_JumpDestinationSe_0_0_CU_JumpDestinationSelector U0
       (.Immediate(Immediate),
        .JMP_Address(JMP_Address),
        .JMP_DestinationSelect(JMP_DestinationSelect),
        .Register1(Register1));
endmodule

(* ORIG_REF_NAME = "CU_JumpDestinationSelector" *) 
module main_CU_JumpDestinationSe_0_0_CU_JumpDestinationSelector
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

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[0]_INST_0 
       (.I0(Register1[0]),
        .I1(Immediate[0]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[10]_INST_0 
       (.I0(Register1[10]),
        .I1(Immediate[10]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[11]_INST_0 
       (.I0(Register1[11]),
        .I1(Immediate[11]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[12]_INST_0 
       (.I0(Register1[12]),
        .I1(Immediate[12]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[13]_INST_0 
       (.I0(Register1[13]),
        .I1(Immediate[13]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[14]_INST_0 
       (.I0(Register1[14]),
        .I1(Immediate[14]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[15]_INST_0 
       (.I0(Register1[15]),
        .I1(Immediate[15]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[1]_INST_0 
       (.I0(Register1[1]),
        .I1(Immediate[1]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[2]_INST_0 
       (.I0(Register1[2]),
        .I1(Immediate[2]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[3]_INST_0 
       (.I0(Register1[3]),
        .I1(Immediate[3]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[4]_INST_0 
       (.I0(Register1[4]),
        .I1(Immediate[4]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[5]_INST_0 
       (.I0(Register1[5]),
        .I1(Immediate[5]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[6]_INST_0 
       (.I0(Register1[6]),
        .I1(Immediate[6]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[7]_INST_0 
       (.I0(Register1[7]),
        .I1(Immediate[7]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[8]_INST_0 
       (.I0(Register1[8]),
        .I1(Immediate[8]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \JMP_Address[9]_INST_0 
       (.I0(Register1[9]),
        .I1(Immediate[9]),
        .I2(JMP_DestinationSelect),
        .O(JMP_Address[9]));
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
