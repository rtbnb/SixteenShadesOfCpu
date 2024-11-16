// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Nov 16 22:58:55 2024
// Host        : DESKTOP-E8CIL9E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Development/SixteenShadesOfCpu/debug/FPGA/Debugger.gen/sources_1/bd/design_1/ip/design_1_Debugger_0_0/design_1_Debugger_0_0_sim_netlist.v
// Design      : design_1_Debugger_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Debugger_0_0,Debugger,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Debugger,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_Debugger_0_0
   (clk,
    b1,
    rx_data,
    rx_data_valid,
    led,
    tx_data,
    tx_data_valid,
    tx_data_sended);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input b1;
  input [7:0]rx_data;
  input rx_data_valid;
  output [3:0]led;
  output [7:0]tx_data;
  output tx_data_valid;
  input tx_data_sended;

  wire \<const0> ;
  wire \<const1> ;
  wire b1;
  wire clk;
  wire [3:0]led;
  wire [7:0]rx_data;
  wire rx_data_valid;
  wire tx_data_valid;

  assign tx_data[7] = \<const1> ;
  assign tx_data[6] = \<const0> ;
  assign tx_data[5] = \<const1> ;
  assign tx_data[4] = \<const0> ;
  assign tx_data[3] = \<const1> ;
  assign tx_data[2] = \<const0> ;
  assign tx_data[1] = \<const1> ;
  assign tx_data[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_Debugger_0_0_Debugger U0
       (.b1(b1),
        .clk(clk),
        .led(led),
        .rx_data(rx_data[3:0]),
        .rx_data_valid(rx_data_valid),
        .tx_data_valid(tx_data_valid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "Debugger" *) 
module design_1_Debugger_0_0_Debugger
   (led,
    tx_data_valid,
    rx_data,
    rx_data_valid,
    b1,
    clk);
  output [3:0]led;
  output tx_data_valid;
  input [3:0]rx_data;
  input rx_data_valid;
  input b1;
  input clk;

  wire b1;
  wire clk;
  wire last_button_press;
  wire [3:0]led;
  wire [3:0]rx_data;
  wire rx_data_valid;
  wire tx_data_valid;
  wire tx_data_valid_s_i_1_n_0;

  FDRE #(
    .INIT(1'b0)) 
    last_button_press_reg
       (.C(clk),
        .CE(1'b1),
        .D(b1),
        .Q(last_button_press),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_s_reg[0] 
       (.C(rx_data_valid),
        .CE(1'b1),
        .D(rx_data[0]),
        .Q(led[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_s_reg[1] 
       (.C(rx_data_valid),
        .CE(1'b1),
        .D(rx_data[1]),
        .Q(led[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_s_reg[2] 
       (.C(rx_data_valid),
        .CE(1'b1),
        .D(rx_data[2]),
        .Q(led[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_s_reg[3] 
       (.C(rx_data_valid),
        .CE(1'b1),
        .D(rx_data[3]),
        .Q(led[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB0)) 
    tx_data_valid_s_i_1
       (.I0(tx_data_valid),
        .I1(last_button_press),
        .I2(b1),
        .O(tx_data_valid_s_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_data_valid_s_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_data_valid_s_i_1_n_0),
        .Q(tx_data_valid),
        .R(1'b0));
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
