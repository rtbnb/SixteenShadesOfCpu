// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov 15 10:21:31 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Pipelining_WriteBack_0_0/main_Pipelining_WriteBack_0_0_sim_netlist.v
// Design      : main_Pipelining_WriteBack_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_Pipelining_WriteBack_0_0,Pipelining_WriteBackStage,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Pipelining_WriteBackStage,Vivado 2024.1" *) 
(* NotValidForBitStream *)
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

  main_Pipelining_WriteBack_0_0_Pipelining_WriteBackStage U0
       (.Flags(Flags),
        .Flags_out(Flags_out),
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

(* ORIG_REF_NAME = "Pipelining_WriteBackStage" *) 
module main_Pipelining_WriteBack_0_0_Pipelining_WriteBackStage
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
  output [15:0]Flags_out;
  output RF_WE_out;
  output Is_ALU_OP_out;
  output JMP_out;
  input [3:0]WriteAddress;
  input InstrLoad_CLK;
  input Reset;
  input [15:0]WriteData;
  input [15:0]Flags;
  input Is_ALU_OP;
  input JMP;
  input WHB;
  input WLB;

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
    \flags_s_reg[10] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[10]),
        .Q(Flags_out[10]));
  FDCE #(
    .INIT(1'b0)) 
    \flags_s_reg[11] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[11]),
        .Q(Flags_out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \flags_s_reg[12] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[12]),
        .Q(Flags_out[12]));
  FDCE #(
    .INIT(1'b0)) 
    \flags_s_reg[13] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[13]),
        .Q(Flags_out[13]));
  FDCE #(
    .INIT(1'b0)) 
    \flags_s_reg[14] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[14]),
        .Q(Flags_out[14]));
  FDCE #(
    .INIT(1'b0)) 
    \flags_s_reg[15] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[15]),
        .Q(Flags_out[15]));
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
    \flags_s_reg[5] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[5]),
        .Q(Flags_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \flags_s_reg[6] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[6]),
        .Q(Flags_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \flags_s_reg[7] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[7]),
        .Q(Flags_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \flags_s_reg[8] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[8]),
        .Q(Flags_out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \flags_s_reg[9] 
       (.C(InstrLoad_CLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Flags[9]),
        .Q(Flags_out[9]));
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
