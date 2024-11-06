// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Nov  6 16:20:55 2024
// Host        : Robin_Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Entwicklung/SixteenShadesOfCpu/vivado/memory_tryout/memory_tryout.gen/sources_1/bd/main_block/ip/main_block_main_0_0/main_block_main_0_0_sim_netlist.v
// Design      : main_block_main_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_block_main_0_0,main,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "main,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module main_block_main_0_0
   (clk,
    led,
    addr1,
    addr2,
    din1,
    din2,
    we,
    oe,
    dout1,
    dout2);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  output led;
  output [15:0]addr1;
  output [15:0]addr2;
  output [15:0]din1;
  output [15:0]din2;
  output we;
  output oe;
  input [15:0]dout1;
  input [15:0]dout2;

  wire [15:0]addr1;
  wire clk;
  wire [15:0]din2;
  wire led;
  wire oe;
  wire we;

  assign addr2[15:0] = addr1;
  assign din1[15:0] = din2;
  main_block_main_0_0_main U0
       (.addr1(addr1),
        .clk(clk),
        .din2(din2),
        .led(led),
        .oe(oe),
        .we(we));
endmodule

(* ORIG_REF_NAME = "main" *) 
module main_block_main_0_0_main
   (din2,
    addr1,
    led,
    oe,
    we,
    clk);
  output [15:0]din2;
  output [15:0]addr1;
  output led;
  output oe;
  output we;
  input clk;

  wire [15:0]addr1;
  wire clear;
  wire clk;
  wire clk2_i_1_n_0;
  wire clk2_reg_n_0;
  wire \counter[0]_i_2_n_0 ;
  wire [26:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [15:0]din2;
  wire \din_s[15]_i_1_n_0 ;
  wire led;
  wire led_s_i_2_n_0;
  wire led_s_i_4_n_0;
  wire led_s_reg_i_3_n_0;
  wire led_s_reg_i_3_n_1;
  wire led_s_reg_i_3_n_2;
  wire led_s_reg_i_3_n_3;
  wire led_s_reg_i_5_n_2;
  wire led_s_reg_i_5_n_3;
  wire led_s_reg_i_6_n_0;
  wire led_s_reg_i_6_n_1;
  wire led_s_reg_i_6_n_2;
  wire led_s_reg_i_6_n_3;
  wire led_s_reg_i_7_n_0;
  wire led_s_reg_i_7_n_1;
  wire led_s_reg_i_7_n_2;
  wire led_s_reg_i_7_n_3;
  wire \memAddr_s_reg[11]_i_1_n_0 ;
  wire \memAddr_s_reg[11]_i_1_n_1 ;
  wire \memAddr_s_reg[11]_i_1_n_2 ;
  wire \memAddr_s_reg[11]_i_1_n_3 ;
  wire \memAddr_s_reg[11]_i_1_n_4 ;
  wire \memAddr_s_reg[11]_i_1_n_5 ;
  wire \memAddr_s_reg[11]_i_1_n_6 ;
  wire \memAddr_s_reg[11]_i_1_n_7 ;
  wire \memAddr_s_reg[15]_i_1_n_1 ;
  wire \memAddr_s_reg[15]_i_1_n_2 ;
  wire \memAddr_s_reg[15]_i_1_n_3 ;
  wire \memAddr_s_reg[15]_i_1_n_4 ;
  wire \memAddr_s_reg[15]_i_1_n_5 ;
  wire \memAddr_s_reg[15]_i_1_n_6 ;
  wire \memAddr_s_reg[15]_i_1_n_7 ;
  wire \memAddr_s_reg[3]_i_1_n_0 ;
  wire \memAddr_s_reg[3]_i_1_n_1 ;
  wire \memAddr_s_reg[3]_i_1_n_2 ;
  wire \memAddr_s_reg[3]_i_1_n_3 ;
  wire \memAddr_s_reg[3]_i_1_n_4 ;
  wire \memAddr_s_reg[3]_i_1_n_5 ;
  wire \memAddr_s_reg[3]_i_1_n_6 ;
  wire \memAddr_s_reg[3]_i_1_n_7 ;
  wire \memAddr_s_reg[7]_i_1_n_0 ;
  wire \memAddr_s_reg[7]_i_1_n_1 ;
  wire \memAddr_s_reg[7]_i_1_n_2 ;
  wire \memAddr_s_reg[7]_i_1_n_3 ;
  wire \memAddr_s_reg[7]_i_1_n_4 ;
  wire \memAddr_s_reg[7]_i_1_n_5 ;
  wire \memAddr_s_reg[7]_i_1_n_6 ;
  wire \memAddr_s_reg[7]_i_1_n_7 ;
  wire oe;
  wire oe_s_i_1_n_0;
  wire [15:0]plusOp;
  wire we;
  wire we_s_i_1_n_0;
  wire we_s_i_2_n_0;
  wire we_s_i_3_n_0;
  wire we_s_i_4_n_0;
  wire we_s_i_5_n_0;
  wire we_s_i_6_n_0;
  wire we_s_reg_i_10_n_0;
  wire we_s_reg_i_10_n_1;
  wire we_s_reg_i_10_n_2;
  wire we_s_reg_i_10_n_3;
  wire we_s_reg_i_10_n_4;
  wire we_s_reg_i_10_n_5;
  wire we_s_reg_i_10_n_6;
  wire we_s_reg_i_10_n_7;
  wire we_s_reg_i_11_n_0;
  wire we_s_reg_i_11_n_1;
  wire we_s_reg_i_11_n_2;
  wire we_s_reg_i_11_n_3;
  wire we_s_reg_i_11_n_4;
  wire we_s_reg_i_11_n_5;
  wire we_s_reg_i_11_n_6;
  wire we_s_reg_i_11_n_7;
  wire we_s_reg_i_12_n_0;
  wire we_s_reg_i_12_n_1;
  wire we_s_reg_i_12_n_2;
  wire we_s_reg_i_12_n_3;
  wire we_s_reg_i_12_n_4;
  wire we_s_reg_i_12_n_5;
  wire we_s_reg_i_12_n_6;
  wire we_s_reg_i_12_n_7;
  wire we_s_reg_i_13_n_0;
  wire we_s_reg_i_13_n_1;
  wire we_s_reg_i_13_n_2;
  wire we_s_reg_i_13_n_3;
  wire we_s_reg_i_13_n_4;
  wire we_s_reg_i_13_n_5;
  wire we_s_reg_i_13_n_6;
  wire we_s_reg_i_13_n_7;
  wire we_s_reg_i_7_n_0;
  wire we_s_reg_i_7_n_1;
  wire we_s_reg_i_7_n_2;
  wire we_s_reg_i_7_n_3;
  wire we_s_reg_i_7_n_4;
  wire we_s_reg_i_7_n_5;
  wire we_s_reg_i_7_n_6;
  wire we_s_reg_i_7_n_7;
  wire we_s_reg_i_8_n_3;
  wire we_s_reg_i_8_n_6;
  wire we_s_reg_i_8_n_7;
  wire we_s_reg_i_9_n_0;
  wire we_s_reg_i_9_n_1;
  wire we_s_reg_i_9_n_2;
  wire we_s_reg_i_9_n_3;
  wire we_s_reg_i_9_n_4;
  wire we_s_reg_i_9_n_5;
  wire we_s_reg_i_9_n_6;
  wire we_s_reg_i_9_n_7;
  wire [3:2]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:2]NLW_led_s_reg_i_5_CO_UNCONNECTED;
  wire [3:3]NLW_led_s_reg_i_5_O_UNCONNECTED;
  wire [3:3]\NLW_memAddr_s_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:1]NLW_we_s_reg_i_8_CO_UNCONNECTED;
  wire [3:2]NLW_we_s_reg_i_8_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    clk2_i_1
       (.I0(we_s_i_2_n_0),
        .I1(we_s_i_3_n_0),
        .I2(we_s_i_4_n_0),
        .I3(we_s_i_5_n_0),
        .I4(we_s_i_6_n_0),
        .I5(clk2_reg_n_0),
        .O(clk2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk2_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk2_i_1_n_0),
        .Q(clk2_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [3:2],\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[24]_i_1_O_UNCONNECTED [3],\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({1'b0,counter_reg[26:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \din_s[15]_i_1 
       (.I0(led),
        .O(\din_s[15]_i_1_n_0 ));
  FDRE \din_s_reg[0] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[0]),
        .Q(din2[0]),
        .R(1'b0));
  FDRE \din_s_reg[10] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[10]),
        .Q(din2[10]),
        .R(1'b0));
  FDRE \din_s_reg[11] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[11]),
        .Q(din2[11]),
        .R(1'b0));
  FDRE \din_s_reg[12] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[12]),
        .Q(din2[12]),
        .R(1'b0));
  FDRE \din_s_reg[13] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[13]),
        .Q(din2[13]),
        .R(1'b0));
  FDRE \din_s_reg[14] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[14]),
        .Q(din2[14]),
        .R(1'b0));
  FDRE \din_s_reg[15] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[15]),
        .Q(din2[15]),
        .R(1'b0));
  FDRE \din_s_reg[1] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[1]),
        .Q(din2[1]),
        .R(1'b0));
  FDRE \din_s_reg[2] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[2]),
        .Q(din2[2]),
        .R(1'b0));
  FDRE \din_s_reg[3] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[3]),
        .Q(din2[3]),
        .R(1'b0));
  FDRE \din_s_reg[4] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[4]),
        .Q(din2[4]),
        .R(1'b0));
  FDRE \din_s_reg[5] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[5]),
        .Q(din2[5]),
        .R(1'b0));
  FDRE \din_s_reg[6] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[6]),
        .Q(din2[6]),
        .R(1'b0));
  FDRE \din_s_reg[7] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[7]),
        .Q(din2[7]),
        .R(1'b0));
  FDRE \din_s_reg[8] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[8]),
        .Q(din2[8]),
        .R(1'b0));
  FDRE \din_s_reg[9] 
       (.C(clk2_reg_n_0),
        .CE(\din_s[15]_i_1_n_0 ),
        .D(addr1[9]),
        .Q(din2[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    led_s_i_1
       (.I0(led_s_i_2_n_0),
        .I1(plusOp[2]),
        .I2(plusOp[1]),
        .I3(plusOp[4]),
        .I4(plusOp[3]),
        .I5(led_s_i_4_n_0),
        .O(clear));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    led_s_i_2
       (.I0(plusOp[13]),
        .I1(plusOp[14]),
        .I2(plusOp[11]),
        .I3(plusOp[12]),
        .I4(addr1[0]),
        .I5(plusOp[15]),
        .O(led_s_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    led_s_i_4
       (.I0(plusOp[7]),
        .I1(plusOp[8]),
        .I2(plusOp[6]),
        .I3(plusOp[5]),
        .I4(plusOp[10]),
        .I5(plusOp[9]),
        .O(led_s_i_4_n_0));
  FDSE #(
    .INIT(1'b0)) 
    led_s_reg
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(led),
        .Q(led),
        .S(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 led_s_reg_i_3
       (.CI(1'b0),
        .CO({led_s_reg_i_3_n_0,led_s_reg_i_3_n_1,led_s_reg_i_3_n_2,led_s_reg_i_3_n_3}),
        .CYINIT(addr1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(addr1[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 led_s_reg_i_5
       (.CI(led_s_reg_i_6_n_0),
        .CO({NLW_led_s_reg_i_5_CO_UNCONNECTED[3:2],led_s_reg_i_5_n_2,led_s_reg_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_led_s_reg_i_5_O_UNCONNECTED[3],plusOp[15:13]}),
        .S({1'b0,addr1[15:13]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 led_s_reg_i_6
       (.CI(led_s_reg_i_7_n_0),
        .CO({led_s_reg_i_6_n_0,led_s_reg_i_6_n_1,led_s_reg_i_6_n_2,led_s_reg_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(addr1[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 led_s_reg_i_7
       (.CI(led_s_reg_i_3_n_0),
        .CO({led_s_reg_i_7_n_0,led_s_reg_i_7_n_1,led_s_reg_i_7_n_2,led_s_reg_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(addr1[8:5]));
  LUT1 #(
    .INIT(2'h1)) 
    \memAddr_s[3]_i_2 
       (.I0(addr1[0]),
        .O(plusOp[0]));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[0] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[3]_i_1_n_7 ),
        .Q(addr1[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[10] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[11]_i_1_n_5 ),
        .Q(addr1[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[11] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[11]_i_1_n_4 ),
        .Q(addr1[11]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \memAddr_s_reg[11]_i_1 
       (.CI(\memAddr_s_reg[7]_i_1_n_0 ),
        .CO({\memAddr_s_reg[11]_i_1_n_0 ,\memAddr_s_reg[11]_i_1_n_1 ,\memAddr_s_reg[11]_i_1_n_2 ,\memAddr_s_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\memAddr_s_reg[11]_i_1_n_4 ,\memAddr_s_reg[11]_i_1_n_5 ,\memAddr_s_reg[11]_i_1_n_6 ,\memAddr_s_reg[11]_i_1_n_7 }),
        .S(addr1[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[12] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[15]_i_1_n_7 ),
        .Q(addr1[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[13] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[15]_i_1_n_6 ),
        .Q(addr1[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[14] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[15]_i_1_n_5 ),
        .Q(addr1[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[15] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[15]_i_1_n_4 ),
        .Q(addr1[15]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \memAddr_s_reg[15]_i_1 
       (.CI(\memAddr_s_reg[11]_i_1_n_0 ),
        .CO({\NLW_memAddr_s_reg[15]_i_1_CO_UNCONNECTED [3],\memAddr_s_reg[15]_i_1_n_1 ,\memAddr_s_reg[15]_i_1_n_2 ,\memAddr_s_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\memAddr_s_reg[15]_i_1_n_4 ,\memAddr_s_reg[15]_i_1_n_5 ,\memAddr_s_reg[15]_i_1_n_6 ,\memAddr_s_reg[15]_i_1_n_7 }),
        .S(addr1[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[1] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[3]_i_1_n_6 ),
        .Q(addr1[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[2] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[3]_i_1_n_5 ),
        .Q(addr1[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[3] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[3]_i_1_n_4 ),
        .Q(addr1[3]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \memAddr_s_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\memAddr_s_reg[3]_i_1_n_0 ,\memAddr_s_reg[3]_i_1_n_1 ,\memAddr_s_reg[3]_i_1_n_2 ,\memAddr_s_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\memAddr_s_reg[3]_i_1_n_4 ,\memAddr_s_reg[3]_i_1_n_5 ,\memAddr_s_reg[3]_i_1_n_6 ,\memAddr_s_reg[3]_i_1_n_7 }),
        .S({addr1[3:1],plusOp[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[4] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[7]_i_1_n_7 ),
        .Q(addr1[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[5] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[7]_i_1_n_6 ),
        .Q(addr1[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[6] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[7]_i_1_n_5 ),
        .Q(addr1[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[7] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[7]_i_1_n_4 ),
        .Q(addr1[7]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \memAddr_s_reg[7]_i_1 
       (.CI(\memAddr_s_reg[3]_i_1_n_0 ),
        .CO({\memAddr_s_reg[7]_i_1_n_0 ,\memAddr_s_reg[7]_i_1_n_1 ,\memAddr_s_reg[7]_i_1_n_2 ,\memAddr_s_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\memAddr_s_reg[7]_i_1_n_4 ,\memAddr_s_reg[7]_i_1_n_5 ,\memAddr_s_reg[7]_i_1_n_6 ,\memAddr_s_reg[7]_i_1_n_7 }),
        .S(addr1[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[8] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[11]_i_1_n_7 ),
        .Q(addr1[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \memAddr_s_reg[9] 
       (.C(clk2_reg_n_0),
        .CE(1'b1),
        .D(\memAddr_s_reg[11]_i_1_n_6 ),
        .Q(addr1[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    oe_s_i_1
       (.I0(we_s_i_2_n_0),
        .I1(we_s_i_3_n_0),
        .I2(we_s_i_4_n_0),
        .I3(we_s_i_5_n_0),
        .I4(we_s_i_6_n_0),
        .I5(oe),
        .O(oe_s_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    oe_s_reg
       (.C(clk),
        .CE(1'b1),
        .D(oe_s_i_1_n_0),
        .Q(oe),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    we_s_i_1
       (.I0(we_s_i_2_n_0),
        .I1(we_s_i_3_n_0),
        .I2(we_s_i_4_n_0),
        .I3(we_s_i_5_n_0),
        .I4(we_s_i_6_n_0),
        .I5(we),
        .O(we_s_i_1_n_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    we_s_i_2
       (.I0(we_s_reg_i_7_n_4),
        .I1(we_s_reg_i_8_n_7),
        .I2(we_s_reg_i_7_n_6),
        .I3(we_s_reg_i_7_n_5),
        .I4(counter_reg[0]),
        .I5(we_s_reg_i_8_n_6),
        .O(we_s_i_2_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    we_s_i_3
       (.I0(we_s_reg_i_9_n_7),
        .I1(we_s_reg_i_10_n_4),
        .I2(we_s_reg_i_10_n_6),
        .I3(we_s_reg_i_10_n_5),
        .I4(we_s_reg_i_9_n_5),
        .I5(we_s_reg_i_9_n_6),
        .O(we_s_i_3_n_0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    we_s_i_4
       (.I0(we_s_reg_i_11_n_6),
        .I1(we_s_reg_i_11_n_5),
        .I2(we_s_reg_i_9_n_4),
        .I3(we_s_reg_i_11_n_7),
        .I4(we_s_reg_i_7_n_7),
        .I5(we_s_reg_i_11_n_4),
        .O(we_s_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    we_s_i_5
       (.I0(we_s_reg_i_12_n_6),
        .I1(we_s_reg_i_12_n_5),
        .I2(we_s_reg_i_13_n_4),
        .I3(we_s_reg_i_12_n_7),
        .I4(we_s_reg_i_10_n_7),
        .I5(we_s_reg_i_12_n_4),
        .O(we_s_i_5_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    we_s_i_6
       (.I0(we_s_reg_i_13_n_5),
        .I1(we_s_reg_i_13_n_6),
        .I2(we_s_reg_i_13_n_7),
        .O(we_s_i_6_n_0));
  FDRE #(
    .INIT(1'b1)) 
    we_s_reg
       (.C(clk),
        .CE(1'b1),
        .D(we_s_i_1_n_0),
        .Q(we),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 we_s_reg_i_10
       (.CI(we_s_reg_i_12_n_0),
        .CO({we_s_reg_i_10_n_0,we_s_reg_i_10_n_1,we_s_reg_i_10_n_2,we_s_reg_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({we_s_reg_i_10_n_4,we_s_reg_i_10_n_5,we_s_reg_i_10_n_6,we_s_reg_i_10_n_7}),
        .S(counter_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 we_s_reg_i_11
       (.CI(we_s_reg_i_9_n_0),
        .CO({we_s_reg_i_11_n_0,we_s_reg_i_11_n_1,we_s_reg_i_11_n_2,we_s_reg_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({we_s_reg_i_11_n_4,we_s_reg_i_11_n_5,we_s_reg_i_11_n_6,we_s_reg_i_11_n_7}),
        .S(counter_reg[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 we_s_reg_i_12
       (.CI(we_s_reg_i_13_n_0),
        .CO({we_s_reg_i_12_n_0,we_s_reg_i_12_n_1,we_s_reg_i_12_n_2,we_s_reg_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({we_s_reg_i_12_n_4,we_s_reg_i_12_n_5,we_s_reg_i_12_n_6,we_s_reg_i_12_n_7}),
        .S(counter_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 we_s_reg_i_13
       (.CI(1'b0),
        .CO({we_s_reg_i_13_n_0,we_s_reg_i_13_n_1,we_s_reg_i_13_n_2,we_s_reg_i_13_n_3}),
        .CYINIT(counter_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({we_s_reg_i_13_n_4,we_s_reg_i_13_n_5,we_s_reg_i_13_n_6,we_s_reg_i_13_n_7}),
        .S(counter_reg[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 we_s_reg_i_7
       (.CI(we_s_reg_i_11_n_0),
        .CO({we_s_reg_i_7_n_0,we_s_reg_i_7_n_1,we_s_reg_i_7_n_2,we_s_reg_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({we_s_reg_i_7_n_4,we_s_reg_i_7_n_5,we_s_reg_i_7_n_6,we_s_reg_i_7_n_7}),
        .S(counter_reg[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 we_s_reg_i_8
       (.CI(we_s_reg_i_7_n_0),
        .CO({NLW_we_s_reg_i_8_CO_UNCONNECTED[3:1],we_s_reg_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_we_s_reg_i_8_O_UNCONNECTED[3:2],we_s_reg_i_8_n_6,we_s_reg_i_8_n_7}),
        .S({1'b0,1'b0,counter_reg[26:25]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 we_s_reg_i_9
       (.CI(we_s_reg_i_10_n_0),
        .CO({we_s_reg_i_9_n_0,we_s_reg_i_9_n_1,we_s_reg_i_9_n_2,we_s_reg_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({we_s_reg_i_9_n_4,we_s_reg_i_9_n_5,we_s_reg_i_9_n_6,we_s_reg_i_9_n_7}),
        .S(counter_reg[16:13]));
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
