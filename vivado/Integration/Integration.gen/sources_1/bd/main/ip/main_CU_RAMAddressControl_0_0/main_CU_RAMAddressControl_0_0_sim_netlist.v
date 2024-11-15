// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 18:05:02 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_RAMAddressControl_0_0/main_CU_RAMAddressControl_0_0_sim_netlist.v
// Design      : main_CU_RAMAddressControl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_CU_RAMAddressControl_0_0,CU_RAMAddressController,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CU_RAMAddressController,Vivado 2024.1" *) 
(* NotValidForBitStream *)
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

  main_CU_RAMAddressControl_0_0_CU_RAMAddressController U0
       (.Immediate(Immediate),
        .MA(MA),
        .RAM_Address(RAM_Address),
        .RAM_Address_Src(RAM_Address_Src),
        .Reg2(Reg2),
        .Use_MA(Use_MA));
endmodule

(* ORIG_REF_NAME = "CU_RAMAddressController" *) 
module main_CU_RAMAddressControl_0_0_CU_RAMAddressController
   (RAM_Address,
    Immediate,
    Reg2,
    RAM_Address_Src,
    MA,
    Use_MA);
  output [15:0]RAM_Address;
  input [15:0]Immediate;
  input [15:0]Reg2;
  input RAM_Address_Src;
  input [15:0]MA;
  input Use_MA;

  wire [15:0]Immediate;
  wire [15:0]MA;
  wire [15:0]RAM_Address;
  wire RAM_Address0_carry__0_n_0;
  wire RAM_Address0_carry__0_n_1;
  wire RAM_Address0_carry__0_n_2;
  wire RAM_Address0_carry__0_n_3;
  wire RAM_Address0_carry__1_n_0;
  wire RAM_Address0_carry__1_n_1;
  wire RAM_Address0_carry__1_n_2;
  wire RAM_Address0_carry__1_n_3;
  wire RAM_Address0_carry__2_n_1;
  wire RAM_Address0_carry__2_n_2;
  wire RAM_Address0_carry__2_n_3;
  wire RAM_Address0_carry_i_4__2_n_0;
  wire RAM_Address0_carry_i_5__0_n_0;
  wire RAM_Address0_carry_i_5__1_n_0;
  wire RAM_Address0_carry_i_5__2_n_0;
  wire RAM_Address0_carry_i_5_n_0;
  wire RAM_Address0_carry_i_6__0_n_0;
  wire RAM_Address0_carry_i_6__1_n_0;
  wire RAM_Address0_carry_i_6__2_n_0;
  wire RAM_Address0_carry_i_6_n_0;
  wire RAM_Address0_carry_i_7__0_n_0;
  wire RAM_Address0_carry_i_7__1_n_0;
  wire RAM_Address0_carry_i_7__2_n_0;
  wire RAM_Address0_carry_i_7_n_0;
  wire RAM_Address0_carry_i_8__0_n_0;
  wire RAM_Address0_carry_i_8__1_n_0;
  wire RAM_Address0_carry_i_8_n_0;
  wire RAM_Address0_carry_n_0;
  wire RAM_Address0_carry_n_1;
  wire RAM_Address0_carry_n_2;
  wire RAM_Address0_carry_n_3;
  wire RAM_Address_Src;
  wire [15:0]Reg2;
  wire Use_MA;
  wire [14:0]used_address;
  wire [3:3]NLW_RAM_Address0_carry__2_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 RAM_Address0_carry
       (.CI(1'b0),
        .CO({RAM_Address0_carry_n_0,RAM_Address0_carry_n_1,RAM_Address0_carry_n_2,RAM_Address0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(used_address[3:0]),
        .O(RAM_Address[3:0]),
        .S({RAM_Address0_carry_i_5_n_0,RAM_Address0_carry_i_6_n_0,RAM_Address0_carry_i_7_n_0,RAM_Address0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 RAM_Address0_carry__0
       (.CI(RAM_Address0_carry_n_0),
        .CO({RAM_Address0_carry__0_n_0,RAM_Address0_carry__0_n_1,RAM_Address0_carry__0_n_2,RAM_Address0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(used_address[7:4]),
        .O(RAM_Address[7:4]),
        .S({RAM_Address0_carry_i_5__0_n_0,RAM_Address0_carry_i_6__0_n_0,RAM_Address0_carry_i_7__0_n_0,RAM_Address0_carry_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 RAM_Address0_carry__1
       (.CI(RAM_Address0_carry__0_n_0),
        .CO({RAM_Address0_carry__1_n_0,RAM_Address0_carry__1_n_1,RAM_Address0_carry__1_n_2,RAM_Address0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(used_address[11:8]),
        .O(RAM_Address[11:8]),
        .S({RAM_Address0_carry_i_5__1_n_0,RAM_Address0_carry_i_6__1_n_0,RAM_Address0_carry_i_7__1_n_0,RAM_Address0_carry_i_8__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 RAM_Address0_carry__2
       (.CI(RAM_Address0_carry__1_n_0),
        .CO({NLW_RAM_Address0_carry__2_CO_UNCONNECTED[3],RAM_Address0_carry__2_n_1,RAM_Address0_carry__2_n_2,RAM_Address0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,used_address[14:12]}),
        .O(RAM_Address[15:12]),
        .S({RAM_Address0_carry_i_4__2_n_0,RAM_Address0_carry_i_5__2_n_0,RAM_Address0_carry_i_6__2_n_0,RAM_Address0_carry_i_7__2_n_0}));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_1
       (.I0(Immediate[3]),
        .I1(Reg2[3]),
        .I2(RAM_Address_Src),
        .O(used_address[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_1__0
       (.I0(Immediate[7]),
        .I1(Reg2[7]),
        .I2(RAM_Address_Src),
        .O(used_address[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_1__1
       (.I0(Immediate[11]),
        .I1(Reg2[11]),
        .I2(RAM_Address_Src),
        .O(used_address[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_1__2
       (.I0(Immediate[14]),
        .I1(Reg2[14]),
        .I2(RAM_Address_Src),
        .O(used_address[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_2
       (.I0(Immediate[2]),
        .I1(Reg2[2]),
        .I2(RAM_Address_Src),
        .O(used_address[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_2__0
       (.I0(Immediate[6]),
        .I1(Reg2[6]),
        .I2(RAM_Address_Src),
        .O(used_address[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_2__1
       (.I0(Immediate[10]),
        .I1(Reg2[10]),
        .I2(RAM_Address_Src),
        .O(used_address[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_2__2
       (.I0(Immediate[13]),
        .I1(Reg2[13]),
        .I2(RAM_Address_Src),
        .O(used_address[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_3
       (.I0(Immediate[1]),
        .I1(Reg2[1]),
        .I2(RAM_Address_Src),
        .O(used_address[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_3__0
       (.I0(Immediate[5]),
        .I1(Reg2[5]),
        .I2(RAM_Address_Src),
        .O(used_address[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_3__1
       (.I0(Immediate[9]),
        .I1(Reg2[9]),
        .I2(RAM_Address_Src),
        .O(used_address[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_3__2
       (.I0(Immediate[12]),
        .I1(Reg2[12]),
        .I2(RAM_Address_Src),
        .O(used_address[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_4
       (.I0(Immediate[0]),
        .I1(Reg2[0]),
        .I2(RAM_Address_Src),
        .O(used_address[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_4__0
       (.I0(Immediate[4]),
        .I1(Reg2[4]),
        .I2(RAM_Address_Src),
        .O(used_address[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    RAM_Address0_carry_i_4__1
       (.I0(Immediate[8]),
        .I1(Reg2[8]),
        .I2(RAM_Address_Src),
        .O(used_address[8]));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry_i_4__2
       (.I0(RAM_Address_Src),
        .I1(Reg2[15]),
        .I2(Immediate[15]),
        .I3(MA[15]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_4__2_n_0));
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
    RAM_Address0_carry_i_5__0
       (.I0(RAM_Address_Src),
        .I1(Reg2[7]),
        .I2(Immediate[7]),
        .I3(MA[7]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_5__0_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry_i_5__1
       (.I0(RAM_Address_Src),
        .I1(Reg2[11]),
        .I2(Immediate[11]),
        .I3(MA[11]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_5__1_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry_i_5__2
       (.I0(RAM_Address_Src),
        .I1(Reg2[14]),
        .I2(Immediate[14]),
        .I3(MA[14]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_5__2_n_0));
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
    RAM_Address0_carry_i_6__0
       (.I0(RAM_Address_Src),
        .I1(Reg2[6]),
        .I2(Immediate[6]),
        .I3(MA[6]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_6__0_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry_i_6__1
       (.I0(RAM_Address_Src),
        .I1(Reg2[10]),
        .I2(Immediate[10]),
        .I3(MA[10]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_6__1_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry_i_6__2
       (.I0(RAM_Address_Src),
        .I1(Reg2[13]),
        .I2(Immediate[13]),
        .I3(MA[13]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_6__2_n_0));
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
    RAM_Address0_carry_i_7__0
       (.I0(RAM_Address_Src),
        .I1(Reg2[5]),
        .I2(Immediate[5]),
        .I3(MA[5]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_7__0_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry_i_7__1
       (.I0(RAM_Address_Src),
        .I1(Reg2[9]),
        .I2(Immediate[9]),
        .I3(MA[9]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_7__1_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry_i_7__2
       (.I0(RAM_Address_Src),
        .I1(Reg2[12]),
        .I2(Immediate[12]),
        .I3(MA[12]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_7__2_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry_i_8
       (.I0(RAM_Address_Src),
        .I1(Reg2[0]),
        .I2(Immediate[0]),
        .I3(MA[0]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry_i_8__0
       (.I0(RAM_Address_Src),
        .I1(Reg2[4]),
        .I2(Immediate[4]),
        .I3(MA[4]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_8__0_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    RAM_Address0_carry_i_8__1
       (.I0(RAM_Address_Src),
        .I1(Reg2[8]),
        .I2(Immediate[8]),
        .I3(MA[8]),
        .I4(Use_MA),
        .O(RAM_Address0_carry_i_8__1_n_0));
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
