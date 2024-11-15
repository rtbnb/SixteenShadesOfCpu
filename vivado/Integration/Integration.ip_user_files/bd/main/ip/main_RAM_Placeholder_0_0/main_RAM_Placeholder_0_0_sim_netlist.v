// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 14 17:52:16 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_RAM_Placeholder_0_0/main_RAM_Placeholder_0_0_sim_netlist.v
// Design      : main_RAM_Placeholder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_RAM_Placeholder_0_0,RAM_Placeholder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "RAM_Placeholder,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module main_RAM_Placeholder_0_0
   (Address,
    DataIn,
    WE,
    OE,
    CLK,
    DataOut);
  input [15:0]Address;
  input [15:0]DataIn;
  input WE;
  input OE;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  output [15:0]DataOut;

  wire [15:0]Address;
  wire CLK;
  wire [15:0]DataIn;
  wire [15:0]DataOut;
  wire WE;

  main_RAM_Placeholder_0_0_RAM_Placeholder U0
       (.Address(Address[7:0]),
        .CLK(CLK),
        .DataIn(DataIn),
        .DataOut(DataOut),
        .WE(WE));
endmodule

(* ORIG_REF_NAME = "RAM_Placeholder" *) 
module main_RAM_Placeholder_0_0_RAM_Placeholder
   (DataOut,
    CLK,
    DataIn,
    WE,
    Address);
  output [15:0]DataOut;
  input CLK;
  input [15:0]DataIn;
  input WE;
  input [7:0]Address;

  wire [7:0]Address;
  wire CLK;
  wire [15:0]DataIn;
  wire [15:0]DataOut;
  wire WE;

  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S s_memContents_reg_0_255_0_0
       (.A(Address),
        .D(DataIn[0]),
        .O(DataOut[0]),
        .WCLK(CLK),
        .WE(WE));
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM256X1S s_memContents_reg_0_255_10_10
       (.A(Address),
        .D(DataIn[10]),
        .O(DataOut[10]),
        .WCLK(CLK),
        .WE(WE));
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM256X1S s_memContents_reg_0_255_11_11
       (.A(Address),
        .D(DataIn[11]),
        .O(DataOut[11]),
        .WCLK(CLK),
        .WE(WE));
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM256X1S s_memContents_reg_0_255_12_12
       (.A(Address),
        .D(DataIn[12]),
        .O(DataOut[12]),
        .WCLK(CLK),
        .WE(WE));
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM256X1S s_memContents_reg_0_255_13_13
       (.A(Address),
        .D(DataIn[13]),
        .O(DataOut[13]),
        .WCLK(CLK),
        .WE(WE));
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM256X1S s_memContents_reg_0_255_14_14
       (.A(Address),
        .D(DataIn[14]),
        .O(DataOut[14]),
        .WCLK(CLK),
        .WE(WE));
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM256X1S s_memContents_reg_0_255_15_15
       (.A(Address),
        .D(DataIn[15]),
        .O(DataOut[15]),
        .WCLK(CLK),
        .WE(WE));
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S s_memContents_reg_0_255_1_1
       (.A(Address),
        .D(DataIn[1]),
        .O(DataOut[1]),
        .WCLK(CLK),
        .WE(WE));
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S s_memContents_reg_0_255_2_2
       (.A(Address),
        .D(DataIn[2]),
        .O(DataOut[2]),
        .WCLK(CLK),
        .WE(WE));
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S s_memContents_reg_0_255_3_3
       (.A(Address),
        .D(DataIn[3]),
        .O(DataOut[3]),
        .WCLK(CLK),
        .WE(WE));
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S s_memContents_reg_0_255_4_4
       (.A(Address),
        .D(DataIn[4]),
        .O(DataOut[4]),
        .WCLK(CLK),
        .WE(WE));
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S s_memContents_reg_0_255_5_5
       (.A(Address),
        .D(DataIn[5]),
        .O(DataOut[5]),
        .WCLK(CLK),
        .WE(WE));
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S s_memContents_reg_0_255_6_6
       (.A(Address),
        .D(DataIn[6]),
        .O(DataOut[6]),
        .WCLK(CLK),
        .WE(WE));
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S s_memContents_reg_0_255_7_7
       (.A(Address),
        .D(DataIn[7]),
        .O(DataOut[7]),
        .WCLK(CLK),
        .WE(WE));
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM256X1S s_memContents_reg_0_255_8_8
       (.A(Address),
        .D(DataIn[8]),
        .O(DataOut[8]),
        .WCLK(CLK),
        .WE(WE));
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/s_memContents_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM256X1S s_memContents_reg_0_255_9_9
       (.A(Address),
        .D(DataIn[9]),
        .O(DataOut[9]),
        .WCLK(CLK),
        .WE(WE));
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
