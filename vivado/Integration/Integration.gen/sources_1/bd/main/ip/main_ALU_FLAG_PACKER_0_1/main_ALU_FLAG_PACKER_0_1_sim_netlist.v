// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:58:39 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_ALU_FLAG_PACKER_0_1/main_ALU_FLAG_PACKER_0_1_sim_netlist.v
// Design      : main_ALU_FLAG_PACKER_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_ALU_FLAG_PACKER_0_1,ALU_FLAG_PACKER,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ALU_FLAG_PACKER,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module main_ALU_FLAG_PACKER_0_1
   (CARRY_FLAG,
    ZERO_FLAG,
    SMALLER_ZERO_FLAG,
    BIGGER_ZERO_FLAG,
    OVERFLOW_FLAG,
    RHO_FLAG,
    NOT_ZERO_FLAG,
    ALU_FLAGS);
  input CARRY_FLAG;
  input ZERO_FLAG;
  input SMALLER_ZERO_FLAG;
  input BIGGER_ZERO_FLAG;
  input OVERFLOW_FLAG;
  input RHO_FLAG;
  input NOT_ZERO_FLAG;
  output [15:0]ALU_FLAGS;

  wire \<const0> ;
  wire BIGGER_ZERO_FLAG;
  wire CARRY_FLAG;
  wire NOT_ZERO_FLAG;
  wire OVERFLOW_FLAG;
  wire RHO_FLAG;
  wire SMALLER_ZERO_FLAG;
  wire ZERO_FLAG;

  assign ALU_FLAGS[15] = \<const0> ;
  assign ALU_FLAGS[14] = \<const0> ;
  assign ALU_FLAGS[13] = \<const0> ;
  assign ALU_FLAGS[12] = \<const0> ;
  assign ALU_FLAGS[11] = \<const0> ;
  assign ALU_FLAGS[10] = \<const0> ;
  assign ALU_FLAGS[9] = \<const0> ;
  assign ALU_FLAGS[8] = \<const0> ;
  assign ALU_FLAGS[7] = \<const0> ;
  assign ALU_FLAGS[6] = NOT_ZERO_FLAG;
  assign ALU_FLAGS[5] = RHO_FLAG;
  assign ALU_FLAGS[4] = OVERFLOW_FLAG;
  assign ALU_FLAGS[3] = BIGGER_ZERO_FLAG;
  assign ALU_FLAGS[2] = SMALLER_ZERO_FLAG;
  assign ALU_FLAGS[1] = ZERO_FLAG;
  assign ALU_FLAGS[0] = CARRY_FLAG;
  GND GND
       (.G(\<const0> ));
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
