// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 18:05:02 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_WriteSelector_0_0/main_CU_WriteSelector_0_0_sim_netlist.v
// Design      : main_CU_WriteSelector_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_CU_WriteSelector_0_0,CU_WriteSelector,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CU_WriteSelector,Vivado 2024.1" *) 
(* NotValidForBitStream *)
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

  main_CU_WriteSelector_0_0_CU_WriteSelector U0
       (.ALU_Out(ALU_Out),
        .Manipulated_Immidiate(Manipulated_Immidiate),
        .RAM_Out(RAM_Out),
        .Reg1(Reg1),
        .Write_Data(Write_Data),
        .Write_Sel(Write_Sel));
endmodule

(* ORIG_REF_NAME = "CU_WriteSelector" *) 
module main_CU_WriteSelector_0_0_CU_WriteSelector
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
