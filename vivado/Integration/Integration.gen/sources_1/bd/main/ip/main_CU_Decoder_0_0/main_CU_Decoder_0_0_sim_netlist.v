// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:52:16 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_Decoder_0_0/main_CU_Decoder_0_0_sim_netlist.v
// Design      : main_CU_Decoder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_CU_Decoder_0_0,CU_Decoder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CU_Decoder,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module main_CU_Decoder_0_0
   (Instruction,
    Reg1Read,
    Reg2Read,
    RF_WHB,
    RF_WLB,
    Write_Data_Sel,
    RAM_Address_Src,
    RAM_Read,
    RAM_Write,
    JMP,
    JMP_Conditional,
    JMP_Relative,
    JMP_DestinationSource,
    Is_ALU_OP,
    Is_RAM_OP);
  input [15:0]Instruction;
  output Reg1Read;
  output Reg2Read;
  output RF_WHB;
  output RF_WLB;
  output [1:0]Write_Data_Sel;
  output RAM_Address_Src;
  output RAM_Read;
  output RAM_Write;
  output JMP;
  output JMP_Conditional;
  output JMP_Relative;
  output JMP_DestinationSource;
  output Is_ALU_OP;
  output Is_RAM_OP;

  wire [15:0]Instruction;
  wire Is_ALU_OP;
  wire Is_RAM_OP;
  wire JMP;
  wire JMP_DestinationSource;
  wire JMP_Relative;
  wire RAM_Address_Src;
  wire RAM_Read;
  wire RAM_Write;
  wire RF_WHB;
  wire RF_WLB;
  wire Reg1Read;
  wire Reg2Read;
  wire [1:0]Write_Data_Sel;

  assign JMP_Conditional = JMP_Relative;
  LUT3 #(
    .INIT(8'h10)) 
    RAM_Address_Src_INST_0
       (.I0(Instruction[15]),
        .I1(Instruction[14]),
        .I2(Instruction[13]),
        .O(RAM_Address_Src));
  LUT3 #(
    .INIT(8'h10)) 
    RAM_Read_INST_0
       (.I0(Instruction[15]),
        .I1(Instruction[12]),
        .I2(Instruction[13]),
        .O(RAM_Read));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_Write_INST_0
       (.I0(Instruction[15]),
        .I1(Instruction[12]),
        .I2(Instruction[13]),
        .O(RAM_Write));
  LUT4 #(
    .INIT(16'h058A)) 
    RF_WHB_INST_0
       (.I0(Instruction[13]),
        .I1(Instruction[14]),
        .I2(Instruction[15]),
        .I3(Instruction[12]),
        .O(RF_WHB));
  LUT4 #(
    .INIT(16'h081E)) 
    RF_WLB_INST_0
       (.I0(Instruction[13]),
        .I1(Instruction[14]),
        .I2(Instruction[12]),
        .I3(Instruction[15]),
        .O(RF_WLB));
  main_CU_Decoder_0_0_CU_Decoder U0
       (.Instruction(Instruction[15:12]),
        .Is_ALU_OP(Is_ALU_OP),
        .Is_RAM_OP(Is_RAM_OP),
        .JMP(JMP),
        .JMP_DestinationSource(JMP_DestinationSource),
        .JMP_Relative(JMP_Relative),
        .Reg1Read(Reg1Read),
        .Reg2Read(Reg2Read),
        .Write_Data_Sel(Write_Data_Sel));
endmodule

(* ORIG_REF_NAME = "CU_Decoder" *) 
module main_CU_Decoder_0_0_CU_Decoder
   (Reg1Read,
    Reg2Read,
    JMP,
    Is_RAM_OP,
    Write_Data_Sel,
    Is_ALU_OP,
    JMP_Relative,
    JMP_DestinationSource,
    Instruction);
  output Reg1Read;
  output Reg2Read;
  output JMP;
  output Is_RAM_OP;
  output [1:0]Write_Data_Sel;
  output Is_ALU_OP;
  output JMP_Relative;
  output JMP_DestinationSource;
  input [3:0]Instruction;

  wire [3:0]Instruction;
  wire Is_ALU_OP;
  wire Is_RAM_OP;
  wire JMP;
  wire JMP_DestinationSource;
  wire JMP_Relative;
  wire Reg1Read;
  wire Reg2Read;
  wire [1:0]Write_Data_Sel;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    Is_ALU_OP_INST_0
       (.I0(Instruction[2]),
        .I1(Instruction[0]),
        .I2(Instruction[3]),
        .I3(Instruction[1]),
        .O(Is_ALU_OP));
  LUT2 #(
    .INIT(4'h4)) 
    Is_RAM_OP__0
       (.I0(Instruction[3]),
        .I1(Instruction[1]),
        .O(Is_RAM_OP));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    JMP_DestinationSource_INST_0
       (.I0(Instruction[2]),
        .I1(Instruction[1]),
        .I2(Instruction[0]),
        .I3(Instruction[3]),
        .O(JMP_DestinationSource));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    JMP_Relative_INST_0
       (.I0(Instruction[2]),
        .I1(Instruction[3]),
        .I2(Instruction[0]),
        .I3(Instruction[1]),
        .O(JMP_Relative));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    JMP__0
       (.I0(Instruction[2]),
        .I1(Instruction[1]),
        .I2(Instruction[0]),
        .I3(Instruction[3]),
        .O(JMP));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1F84)) 
    Reg1Read__0
       (.I0(Instruction[1]),
        .I1(Instruction[2]),
        .I2(Instruction[3]),
        .I3(Instruction[0]),
        .O(Reg1Read));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2214)) 
    Reg2Read__0
       (.I0(Instruction[2]),
        .I1(Instruction[3]),
        .I2(Instruction[0]),
        .I3(Instruction[1]),
        .O(Reg2Read));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1302)) 
    \Write_Data_Sel[0]_INST_0 
       (.I0(Instruction[1]),
        .I1(Instruction[3]),
        .I2(Instruction[0]),
        .I3(Instruction[2]),
        .O(Write_Data_Sel[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0A02)) 
    \Write_Data_Sel[1]_INST_0 
       (.I0(Instruction[1]),
        .I1(Instruction[3]),
        .I2(Instruction[0]),
        .I3(Instruction[2]),
        .O(Write_Data_Sel[1]));
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
