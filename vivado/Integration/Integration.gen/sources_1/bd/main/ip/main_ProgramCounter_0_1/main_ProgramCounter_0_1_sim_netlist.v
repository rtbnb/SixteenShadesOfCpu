// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov 15 10:58:32 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_ProgramCounter_0_1/main_ProgramCounter_0_1_sim_netlist.v
// Design      : main_ProgramCounter_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_ProgramCounter_0_1,ProgramCounter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ProgramCounter,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module main_ProgramCounter_0_1
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

  main_ProgramCounter_0_1_ProgramCounter U0
       (.Din(Din),
        .Dout(Dout),
        .InstrExec_CLK(InstrExec_CLK),
        .JMP(JMP),
        .Reset(Reset),
        .Stalled(Stalled));
endmodule

(* ORIG_REF_NAME = "ProgramCounter" *) 
module main_ProgramCounter_0_1_ProgramCounter
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
  wire \InstrAddr_reg[11]_i_1_n_1 ;
  wire \InstrAddr_reg[11]_i_1_n_2 ;
  wire \InstrAddr_reg[11]_i_1_n_3 ;
  wire \InstrAddr_reg[11]_i_1_n_4 ;
  wire \InstrAddr_reg[11]_i_1_n_5 ;
  wire \InstrAddr_reg[11]_i_1_n_6 ;
  wire \InstrAddr_reg[11]_i_1_n_7 ;
  wire \InstrAddr_reg[15]_i_2_n_1 ;
  wire \InstrAddr_reg[15]_i_2_n_2 ;
  wire \InstrAddr_reg[15]_i_2_n_3 ;
  wire \InstrAddr_reg[15]_i_2_n_4 ;
  wire \InstrAddr_reg[15]_i_2_n_5 ;
  wire \InstrAddr_reg[15]_i_2_n_6 ;
  wire \InstrAddr_reg[15]_i_2_n_7 ;
  wire \InstrAddr_reg[3]_i_1_n_0 ;
  wire \InstrAddr_reg[3]_i_1_n_1 ;
  wire \InstrAddr_reg[3]_i_1_n_2 ;
  wire \InstrAddr_reg[3]_i_1_n_3 ;
  wire \InstrAddr_reg[3]_i_1_n_4 ;
  wire \InstrAddr_reg[3]_i_1_n_5 ;
  wire \InstrAddr_reg[3]_i_1_n_6 ;
  wire \InstrAddr_reg[3]_i_1_n_7 ;
  wire \InstrAddr_reg[7]_i_1_n_0 ;
  wire \InstrAddr_reg[7]_i_1_n_1 ;
  wire \InstrAddr_reg[7]_i_1_n_2 ;
  wire \InstrAddr_reg[7]_i_1_n_3 ;
  wire \InstrAddr_reg[7]_i_1_n_4 ;
  wire \InstrAddr_reg[7]_i_1_n_5 ;
  wire \InstrAddr_reg[7]_i_1_n_6 ;
  wire \InstrAddr_reg[7]_i_1_n_7 ;
  wire InstrExec_CLK;
  wire JMP;
  wire Reset;
  wire Stalled;
  wire [3:3]\NLW_InstrAddr_reg[15]_i_2_CO_UNCONNECTED ;

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
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[0] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[3]_i_1_n_7 ),
        .Q(Dout[0]));
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[10] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[11]_i_1_n_5 ),
        .Q(Dout[10]));
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[11] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[11]_i_1_n_4 ),
        .Q(Dout[11]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \InstrAddr_reg[11]_i_1 
       (.CI(\InstrAddr_reg[7]_i_1_n_0 ),
        .CO({\InstrAddr_reg[11]_i_1_n_0 ,\InstrAddr_reg[11]_i_1_n_1 ,\InstrAddr_reg[11]_i_1_n_2 ,\InstrAddr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\InstrAddr_reg[11]_i_1_n_4 ,\InstrAddr_reg[11]_i_1_n_5 ,\InstrAddr_reg[11]_i_1_n_6 ,\InstrAddr_reg[11]_i_1_n_7 }),
        .S({\InstrAddr[11]_i_2_n_0 ,\InstrAddr[11]_i_3_n_0 ,\InstrAddr[11]_i_4_n_0 ,\InstrAddr[11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[12] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[15]_i_2_n_7 ),
        .Q(Dout[12]));
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[13] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[15]_i_2_n_6 ),
        .Q(Dout[13]));
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[14] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[15]_i_2_n_5 ),
        .Q(Dout[14]));
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[15] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[15]_i_2_n_4 ),
        .Q(Dout[15]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \InstrAddr_reg[15]_i_2 
       (.CI(\InstrAddr_reg[11]_i_1_n_0 ),
        .CO({\NLW_InstrAddr_reg[15]_i_2_CO_UNCONNECTED [3],\InstrAddr_reg[15]_i_2_n_1 ,\InstrAddr_reg[15]_i_2_n_2 ,\InstrAddr_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\InstrAddr_reg[15]_i_2_n_4 ,\InstrAddr_reg[15]_i_2_n_5 ,\InstrAddr_reg[15]_i_2_n_6 ,\InstrAddr_reg[15]_i_2_n_7 }),
        .S({\InstrAddr[15]_i_3_n_0 ,\InstrAddr[15]_i_4_n_0 ,\InstrAddr[15]_i_5_n_0 ,\InstrAddr[15]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[1] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[3]_i_1_n_6 ),
        .Q(Dout[1]));
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[2] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[3]_i_1_n_5 ),
        .Q(Dout[2]));
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[3] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[3]_i_1_n_4 ),
        .Q(Dout[3]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \InstrAddr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\InstrAddr_reg[3]_i_1_n_0 ,\InstrAddr_reg[3]_i_1_n_1 ,\InstrAddr_reg[3]_i_1_n_2 ,\InstrAddr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\InstrAddr[3]_i_2_n_0 }),
        .O({\InstrAddr_reg[3]_i_1_n_4 ,\InstrAddr_reg[3]_i_1_n_5 ,\InstrAddr_reg[3]_i_1_n_6 ,\InstrAddr_reg[3]_i_1_n_7 }),
        .S({\InstrAddr[3]_i_3_n_0 ,\InstrAddr[3]_i_4_n_0 ,\InstrAddr[3]_i_5_n_0 ,\InstrAddr[3]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[4] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[7]_i_1_n_7 ),
        .Q(Dout[4]));
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[5] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[7]_i_1_n_6 ),
        .Q(Dout[5]));
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[6] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[7]_i_1_n_5 ),
        .Q(Dout[6]));
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[7] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[7]_i_1_n_4 ),
        .Q(Dout[7]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \InstrAddr_reg[7]_i_1 
       (.CI(\InstrAddr_reg[3]_i_1_n_0 ),
        .CO({\InstrAddr_reg[7]_i_1_n_0 ,\InstrAddr_reg[7]_i_1_n_1 ,\InstrAddr_reg[7]_i_1_n_2 ,\InstrAddr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\InstrAddr_reg[7]_i_1_n_4 ,\InstrAddr_reg[7]_i_1_n_5 ,\InstrAddr_reg[7]_i_1_n_6 ,\InstrAddr_reg[7]_i_1_n_7 }),
        .S({\InstrAddr[7]_i_2_n_0 ,\InstrAddr[7]_i_3_n_0 ,\InstrAddr[7]_i_4_n_0 ,\InstrAddr[7]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[8] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[11]_i_1_n_7 ),
        .Q(Dout[8]));
  FDCE #(
    .INIT(1'b0)) 
    \InstrAddr_reg[9] 
       (.C(InstrExec_CLK),
        .CE(\InstrAddr[15]_i_1_n_0 ),
        .CLR(Reset),
        .D(\InstrAddr_reg[11]_i_1_n_6 ),
        .Q(Dout[9]));
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
