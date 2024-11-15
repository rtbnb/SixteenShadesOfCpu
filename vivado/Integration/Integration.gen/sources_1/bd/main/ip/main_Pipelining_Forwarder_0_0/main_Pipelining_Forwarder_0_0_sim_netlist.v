// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:52:17 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Pipelining_Forwarder_0_0/main_Pipelining_Forwarder_0_0_sim_netlist.v
// Design      : main_Pipelining_Forwarder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_Pipelining_Forwarder_0_0,Pipelining_Forwarder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Pipelining_Forwarder,Vivado 2024.1" *) 
(* NotValidForBitStream *)
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

  main_Pipelining_Forwarder_0_0_Pipelining_Forwarder U0
       (.CurrentMA(CurrentMA),
        .CurrentOperand1(CurrentOperand1),
        .CurrentOperand2(CurrentOperand2),
        .ExecutionFlags(ExecutionFlags),
        .ExecutionWriteData(ExecutionWriteData),
        .ForwardedMA(ForwardedMA),
        .ForwardedOperand1(ForwardedOperand1),
        .ForwardedOperand2(ForwardedOperand2),
        .ForwardingConfiguration(ForwardingConfiguration));
endmodule

(* ORIG_REF_NAME = "Pipelining_Forwarder" *) 
module main_Pipelining_Forwarder_0_0_Pipelining_Forwarder
   (ForwardedOperand1,
    ForwardedOperand2,
    ForwardedMA,
    CurrentOperand1,
    ExecutionFlags,
    ForwardingConfiguration,
    ExecutionWriteData,
    CurrentOperand2,
    CurrentMA);
  output [15:0]ForwardedOperand1;
  output [15:0]ForwardedOperand2;
  output [15:0]ForwardedMA;
  input [15:0]CurrentOperand1;
  input [15:0]ExecutionFlags;
  input [4:0]ForwardingConfiguration;
  input [15:0]ExecutionWriteData;
  input [15:0]CurrentOperand2;
  input [15:0]CurrentMA;

  wire [15:0]CurrentMA;
  wire [15:0]CurrentOperand1;
  wire [15:0]CurrentOperand2;
  wire [15:0]ExecutionFlags;
  wire [15:0]ExecutionWriteData;
  wire [15:0]ForwardedMA;
  wire [15:0]ForwardedOperand1;
  wire [15:0]ForwardedOperand2;
  wire [4:0]ForwardingConfiguration;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[0]_INST_0 
       (.I0(ExecutionWriteData[0]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[0]),
        .O(ForwardedMA[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[10]_INST_0 
       (.I0(ExecutionWriteData[10]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[10]),
        .O(ForwardedMA[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[11]_INST_0 
       (.I0(ExecutionWriteData[11]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[11]),
        .O(ForwardedMA[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[12]_INST_0 
       (.I0(ExecutionWriteData[12]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[12]),
        .O(ForwardedMA[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[13]_INST_0 
       (.I0(ExecutionWriteData[13]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[13]),
        .O(ForwardedMA[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[14]_INST_0 
       (.I0(ExecutionWriteData[14]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[14]),
        .O(ForwardedMA[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[15]_INST_0 
       (.I0(ExecutionWriteData[15]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[15]),
        .O(ForwardedMA[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[1]_INST_0 
       (.I0(ExecutionWriteData[1]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[1]),
        .O(ForwardedMA[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[2]_INST_0 
       (.I0(ExecutionWriteData[2]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[2]),
        .O(ForwardedMA[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[3]_INST_0 
       (.I0(ExecutionWriteData[3]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[3]),
        .O(ForwardedMA[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[4]_INST_0 
       (.I0(ExecutionWriteData[4]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[4]),
        .O(ForwardedMA[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[5]_INST_0 
       (.I0(ExecutionWriteData[5]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[5]),
        .O(ForwardedMA[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[6]_INST_0 
       (.I0(ExecutionWriteData[6]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[6]),
        .O(ForwardedMA[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[7]_INST_0 
       (.I0(ExecutionWriteData[7]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[7]),
        .O(ForwardedMA[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[8]_INST_0 
       (.I0(ExecutionWriteData[8]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[8]),
        .O(ForwardedMA[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ForwardedMA[9]_INST_0 
       (.I0(ExecutionWriteData[9]),
        .I1(ForwardingConfiguration[4]),
        .I2(CurrentMA[9]),
        .O(ForwardedMA[9]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[0]_INST_0 
       (.I0(CurrentOperand1[0]),
        .I1(ExecutionFlags[0]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[0]),
        .O(ForwardedOperand1[0]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[10]_INST_0 
       (.I0(CurrentOperand1[10]),
        .I1(ExecutionFlags[10]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[10]),
        .O(ForwardedOperand1[10]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[11]_INST_0 
       (.I0(CurrentOperand1[11]),
        .I1(ExecutionFlags[11]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[11]),
        .O(ForwardedOperand1[11]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[12]_INST_0 
       (.I0(CurrentOperand1[12]),
        .I1(ExecutionFlags[12]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[12]),
        .O(ForwardedOperand1[12]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[13]_INST_0 
       (.I0(CurrentOperand1[13]),
        .I1(ExecutionFlags[13]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[13]),
        .O(ForwardedOperand1[13]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[14]_INST_0 
       (.I0(CurrentOperand1[14]),
        .I1(ExecutionFlags[14]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[14]),
        .O(ForwardedOperand1[14]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[15]_INST_0 
       (.I0(CurrentOperand1[15]),
        .I1(ExecutionFlags[15]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[15]),
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
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[5]_INST_0 
       (.I0(CurrentOperand1[5]),
        .I1(ExecutionFlags[5]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[5]),
        .O(ForwardedOperand1[5]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[6]_INST_0 
       (.I0(CurrentOperand1[6]),
        .I1(ExecutionFlags[6]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[6]),
        .O(ForwardedOperand1[6]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[7]_INST_0 
       (.I0(CurrentOperand1[7]),
        .I1(ExecutionFlags[7]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[7]),
        .O(ForwardedOperand1[7]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[8]_INST_0 
       (.I0(CurrentOperand1[8]),
        .I1(ExecutionFlags[8]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[8]),
        .O(ForwardedOperand1[8]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand1[9]_INST_0 
       (.I0(CurrentOperand1[9]),
        .I1(ExecutionFlags[9]),
        .I2(ForwardingConfiguration[1]),
        .I3(ForwardingConfiguration[0]),
        .I4(ExecutionWriteData[9]),
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
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[10]_INST_0 
       (.I0(CurrentOperand2[10]),
        .I1(ExecutionFlags[10]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[10]),
        .O(ForwardedOperand2[10]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[11]_INST_0 
       (.I0(CurrentOperand2[11]),
        .I1(ExecutionFlags[11]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[11]),
        .O(ForwardedOperand2[11]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[12]_INST_0 
       (.I0(CurrentOperand2[12]),
        .I1(ExecutionFlags[12]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[12]),
        .O(ForwardedOperand2[12]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[13]_INST_0 
       (.I0(CurrentOperand2[13]),
        .I1(ExecutionFlags[13]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[13]),
        .O(ForwardedOperand2[13]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[14]_INST_0 
       (.I0(CurrentOperand2[14]),
        .I1(ExecutionFlags[14]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[14]),
        .O(ForwardedOperand2[14]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[15]_INST_0 
       (.I0(CurrentOperand2[15]),
        .I1(ExecutionFlags[15]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[15]),
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
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[5]_INST_0 
       (.I0(CurrentOperand2[5]),
        .I1(ExecutionFlags[5]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[5]),
        .O(ForwardedOperand2[5]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[6]_INST_0 
       (.I0(CurrentOperand2[6]),
        .I1(ExecutionFlags[6]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[6]),
        .O(ForwardedOperand2[6]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[7]_INST_0 
       (.I0(CurrentOperand2[7]),
        .I1(ExecutionFlags[7]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[7]),
        .O(ForwardedOperand2[7]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[8]_INST_0 
       (.I0(CurrentOperand2[8]),
        .I1(ExecutionFlags[8]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[8]),
        .O(ForwardedOperand2[8]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \ForwardedOperand2[9]_INST_0 
       (.I0(CurrentOperand2[9]),
        .I1(ExecutionFlags[9]),
        .I2(ForwardingConfiguration[3]),
        .I3(ForwardingConfiguration[2]),
        .I4(ExecutionWriteData[9]),
        .O(ForwardedOperand2[9]));
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
