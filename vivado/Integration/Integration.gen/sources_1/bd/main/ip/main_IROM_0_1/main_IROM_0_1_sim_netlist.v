// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov 15 10:58:32 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_IROM_0_1/main_IROM_0_1_sim_netlist.v
// Design      : main_IROM_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_IROM_0_1,IROM,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "IROM,Vivado 2024.1" *) 
(* NotValidForBitStream *)
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h34810190)) 
    g0_b0
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h04811010)) 
    g0_b1
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2082FF00)) 
    g0_b10
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h20040000)) 
    g0_b11
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h165DAAAA)) 
    g0_b12
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h082A0000)) 
    g0_b13
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0B2AFFFF)) 
    g0_b14
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h28A20000)) 
    g0_b15
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h20111010)) 
    g0_b2
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00804410)) 
    g0_b3
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h24C41000)) 
    g0_b4
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h38AB0000)) 
    g0_b5
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h38EB0400)) 
    g0_b6
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h28AA1400)) 
    g0_b7
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h38C0CCCC)) 
    g0_b8
       (.I0(Address[0]),
        .I1(Address[1]),
        .I2(Address[2]),
        .I3(Address[3]),
        .I4(Address[4]),
        .O(g0_b8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
