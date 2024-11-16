// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Nov 16 22:58:56 2024
// Host        : DESKTOP-E8CIL9E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Development/SixteenShadesOfCpu/debug/FPGA/Debugger.gen/sources_1/bd/design_1/ip/design_1_TX_UART_0_0/design_1_TX_UART_0_0_sim_netlist.v
// Design      : design_1_TX_UART_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_TX_UART_0_0,TX_UART,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "TX_UART,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_TX_UART_0_0
   (send_data,
    data_in,
    clk,
    tx_output,
    send_valid);
  input send_data;
  input [7:0]data_in;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  output tx_output;
  output send_valid;

  wire \<const0> ;
  wire clk;
  wire [7:0]data_in;
  wire send_data;
  wire tx_output;

  assign send_valid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_TX_UART_0_0_TX_UART U0
       (.clk(clk),
        .data_in(data_in),
        .send_data(send_data),
        .tx_output(tx_output));
endmodule

(* ORIG_REF_NAME = "TX_UART" *) 
module design_1_TX_UART_0_0_TX_UART
   (tx_output,
    send_data,
    clk,
    data_in);
  output tx_output;
  input send_data;
  input clk;
  input [7:0]data_in;

  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_current_state_reg_n_0_[3] ;
  wire \FSM_onehot_current_state_reg_n_0_[4] ;
  wire \FSM_onehot_current_state_reg_n_0_[5] ;
  wire \FSM_onehot_current_state_reg_n_0_[6] ;
  wire \FSM_onehot_current_state_reg_n_0_[7] ;
  wire \FSM_onehot_current_state_reg_n_0_[8] ;
  wire \FSM_onehot_current_state_reg_n_0_[9] ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_next_state_reg_n_0_[2] ;
  wire \FSM_onehot_next_state_reg_n_0_[3] ;
  wire \FSM_onehot_next_state_reg_n_0_[4] ;
  wire \FSM_onehot_next_state_reg_n_0_[5] ;
  wire \FSM_onehot_next_state_reg_n_0_[6] ;
  wire \FSM_onehot_next_state_reg_n_0_[7] ;
  wire \FSM_onehot_next_state_reg_n_0_[8] ;
  wire \FSM_onehot_next_state_reg_n_0_[9] ;
  wire clk;
  wire [13:0]clock_cnt;
  wire clock_cnt0_carry__0_n_0;
  wire clock_cnt0_carry__0_n_1;
  wire clock_cnt0_carry__0_n_2;
  wire clock_cnt0_carry__0_n_3;
  wire clock_cnt0_carry__1_n_0;
  wire clock_cnt0_carry__1_n_1;
  wire clock_cnt0_carry__1_n_2;
  wire clock_cnt0_carry__1_n_3;
  wire clock_cnt0_carry_n_0;
  wire clock_cnt0_carry_n_1;
  wire clock_cnt0_carry_n_2;
  wire clock_cnt0_carry_n_3;
  wire \clock_cnt[0]_i_2_n_0 ;
  wire \clock_cnt[13]_i_3_n_0 ;
  wire \clock_cnt[13]_i_4_n_0 ;
  wire \clock_cnt[13]_i_5_n_0 ;
  wire [13:0]clock_cnt_0;
  wire [13:1]data0;
  wire [7:0]data_in;
  wire p_0_in;
  wire send_data;
  wire tx_clock_i_1_n_0;
  wire tx_clock_reg_n_0;
  wire tx_data_send;
  wire tx_data_send_i_2_n_0;
  wire tx_data_send_i_3_n_0;
  wire tx_data_send_i_4_n_0;
  wire tx_data_send_i_5_n_0;
  wire tx_data_send_i_6_n_0;
  wire tx_output;
  wire writing_data_to_uart;
  wire writing_data_to_uart_i_1_n_0;
  wire writing_data_to_uart_reg_n_0;
  wire [3:0]NLW_clock_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_clock_cnt0_carry__2_O_UNCONNECTED;

  (* FSM_ENCODED_STATES = "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .Q(writing_data_to_uart),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[6] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[7] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[8] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.C(tx_clock_reg_n_0),
        .CE(tx_data_send),
        .D(\FSM_onehot_current_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.C(tx_clock_reg_n_0),
        .CE(tx_data_send),
        .D(writing_data_to_uart),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.C(tx_clock_reg_n_0),
        .CE(tx_data_send),
        .D(\FSM_onehot_current_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_next_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[3] 
       (.C(tx_clock_reg_n_0),
        .CE(tx_data_send),
        .D(\FSM_onehot_current_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_next_state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[4] 
       (.C(tx_clock_reg_n_0),
        .CE(tx_data_send),
        .D(\FSM_onehot_current_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_next_state_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[5] 
       (.C(tx_clock_reg_n_0),
        .CE(tx_data_send),
        .D(\FSM_onehot_current_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_next_state_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[6] 
       (.C(tx_clock_reg_n_0),
        .CE(tx_data_send),
        .D(\FSM_onehot_current_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_next_state_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[7] 
       (.C(tx_clock_reg_n_0),
        .CE(tx_data_send),
        .D(\FSM_onehot_current_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_next_state_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[8] 
       (.C(tx_clock_reg_n_0),
        .CE(tx_data_send),
        .D(\FSM_onehot_current_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_next_state_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[9] 
       (.C(tx_clock_reg_n_0),
        .CE(tx_data_send),
        .D(\FSM_onehot_current_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_next_state_reg_n_0_[9] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clock_cnt0_carry
       (.CI(1'b0),
        .CO({clock_cnt0_carry_n_0,clock_cnt0_carry_n_1,clock_cnt0_carry_n_2,clock_cnt0_carry_n_3}),
        .CYINIT(clock_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(clock_cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clock_cnt0_carry__0
       (.CI(clock_cnt0_carry_n_0),
        .CO({clock_cnt0_carry__0_n_0,clock_cnt0_carry__0_n_1,clock_cnt0_carry__0_n_2,clock_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(clock_cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clock_cnt0_carry__1
       (.CI(clock_cnt0_carry__0_n_0),
        .CO({clock_cnt0_carry__1_n_0,clock_cnt0_carry__1_n_1,clock_cnt0_carry__1_n_2,clock_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(clock_cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clock_cnt0_carry__2
       (.CI(clock_cnt0_carry__1_n_0),
        .CO(NLW_clock_cnt0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_clock_cnt0_carry__2_O_UNCONNECTED[3:1],data0[13]}),
        .S({1'b0,1'b0,1'b0,clock_cnt[13]}));
  LUT2 #(
    .INIT(4'h2)) 
    \clock_cnt[0]_i_1 
       (.I0(\clock_cnt[0]_i_2_n_0 ),
        .I1(clock_cnt[0]),
        .O(clock_cnt_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \clock_cnt[0]_i_2 
       (.I0(\clock_cnt[13]_i_5_n_0 ),
        .I1(clock_cnt[5]),
        .I2(clock_cnt[4]),
        .I3(clock_cnt[7]),
        .I4(clock_cnt[6]),
        .I5(\clock_cnt[13]_i_3_n_0 ),
        .O(\clock_cnt[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clock_cnt[10]_i_1 
       (.I0(\clock_cnt[13]_i_3_n_0 ),
        .I1(\clock_cnt[13]_i_4_n_0 ),
        .I2(\clock_cnt[13]_i_5_n_0 ),
        .I3(clock_cnt[0]),
        .I4(data0[10]),
        .O(clock_cnt_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clock_cnt[11]_i_1 
       (.I0(\clock_cnt[13]_i_3_n_0 ),
        .I1(\clock_cnt[13]_i_4_n_0 ),
        .I2(\clock_cnt[13]_i_5_n_0 ),
        .I3(clock_cnt[0]),
        .I4(data0[11]),
        .O(clock_cnt_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clock_cnt[12]_i_1 
       (.I0(\clock_cnt[13]_i_3_n_0 ),
        .I1(\clock_cnt[13]_i_4_n_0 ),
        .I2(\clock_cnt[13]_i_5_n_0 ),
        .I3(clock_cnt[0]),
        .I4(data0[12]),
        .O(clock_cnt_0[12]));
  LUT2 #(
    .INIT(4'h1)) 
    \clock_cnt[13]_i_1 
       (.I0(writing_data_to_uart_reg_n_0),
        .I1(send_data),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clock_cnt[13]_i_2 
       (.I0(\clock_cnt[13]_i_3_n_0 ),
        .I1(\clock_cnt[13]_i_4_n_0 ),
        .I2(\clock_cnt[13]_i_5_n_0 ),
        .I3(clock_cnt[0]),
        .I4(data0[13]),
        .O(clock_cnt_0[13]));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \clock_cnt[13]_i_3 
       (.I0(clock_cnt[1]),
        .I1(clock_cnt[12]),
        .I2(clock_cnt[13]),
        .I3(clock_cnt[3]),
        .I4(clock_cnt[2]),
        .O(\clock_cnt[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \clock_cnt[13]_i_4 
       (.I0(clock_cnt[5]),
        .I1(clock_cnt[4]),
        .I2(clock_cnt[7]),
        .I3(clock_cnt[6]),
        .O(\clock_cnt[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \clock_cnt[13]_i_5 
       (.I0(clock_cnt[9]),
        .I1(clock_cnt[8]),
        .I2(clock_cnt[11]),
        .I3(clock_cnt[10]),
        .O(\clock_cnt[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clock_cnt[1]_i_1 
       (.I0(\clock_cnt[13]_i_3_n_0 ),
        .I1(\clock_cnt[13]_i_4_n_0 ),
        .I2(\clock_cnt[13]_i_5_n_0 ),
        .I3(clock_cnt[0]),
        .I4(data0[1]),
        .O(clock_cnt_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clock_cnt[2]_i_1 
       (.I0(\clock_cnt[13]_i_3_n_0 ),
        .I1(\clock_cnt[13]_i_4_n_0 ),
        .I2(\clock_cnt[13]_i_5_n_0 ),
        .I3(clock_cnt[0]),
        .I4(data0[2]),
        .O(clock_cnt_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clock_cnt[3]_i_1 
       (.I0(\clock_cnt[13]_i_3_n_0 ),
        .I1(\clock_cnt[13]_i_4_n_0 ),
        .I2(\clock_cnt[13]_i_5_n_0 ),
        .I3(clock_cnt[0]),
        .I4(data0[3]),
        .O(clock_cnt_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clock_cnt[4]_i_1 
       (.I0(\clock_cnt[13]_i_3_n_0 ),
        .I1(\clock_cnt[13]_i_4_n_0 ),
        .I2(\clock_cnt[13]_i_5_n_0 ),
        .I3(clock_cnt[0]),
        .I4(data0[4]),
        .O(clock_cnt_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clock_cnt[5]_i_1 
       (.I0(\clock_cnt[13]_i_3_n_0 ),
        .I1(\clock_cnt[13]_i_4_n_0 ),
        .I2(\clock_cnt[13]_i_5_n_0 ),
        .I3(clock_cnt[0]),
        .I4(data0[5]),
        .O(clock_cnt_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clock_cnt[6]_i_1 
       (.I0(\clock_cnt[13]_i_3_n_0 ),
        .I1(\clock_cnt[13]_i_4_n_0 ),
        .I2(\clock_cnt[13]_i_5_n_0 ),
        .I3(clock_cnt[0]),
        .I4(data0[6]),
        .O(clock_cnt_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clock_cnt[7]_i_1 
       (.I0(\clock_cnt[13]_i_3_n_0 ),
        .I1(\clock_cnt[13]_i_4_n_0 ),
        .I2(\clock_cnt[13]_i_5_n_0 ),
        .I3(clock_cnt[0]),
        .I4(data0[7]),
        .O(clock_cnt_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clock_cnt[8]_i_1 
       (.I0(\clock_cnt[13]_i_3_n_0 ),
        .I1(\clock_cnt[13]_i_4_n_0 ),
        .I2(\clock_cnt[13]_i_5_n_0 ),
        .I3(clock_cnt[0]),
        .I4(data0[8]),
        .O(clock_cnt_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clock_cnt[9]_i_1 
       (.I0(\clock_cnt[13]_i_3_n_0 ),
        .I1(\clock_cnt[13]_i_4_n_0 ),
        .I2(\clock_cnt[13]_i_5_n_0 ),
        .I3(clock_cnt[0]),
        .I4(data0[9]),
        .O(clock_cnt_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_cnt_0[0]),
        .Q(clock_cnt[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_cnt_0[10]),
        .Q(clock_cnt[10]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_cnt_0[11]),
        .Q(clock_cnt[11]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_cnt_0[12]),
        .Q(clock_cnt[12]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_cnt_0[13]),
        .Q(clock_cnt[13]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_cnt_0[1]),
        .Q(clock_cnt[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_cnt_0[2]),
        .Q(clock_cnt[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_cnt_0[3]),
        .Q(clock_cnt[3]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_cnt_0[4]),
        .Q(clock_cnt[4]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_cnt_0[5]),
        .Q(clock_cnt[5]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_cnt_0[6]),
        .Q(clock_cnt[6]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_cnt_0[7]),
        .Q(clock_cnt[7]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_cnt_0[8]),
        .Q(clock_cnt[8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(clock_cnt_0[9]),
        .Q(clock_cnt[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    tx_clock_i_1
       (.I0(\clock_cnt[13]_i_3_n_0 ),
        .I1(\clock_cnt[13]_i_4_n_0 ),
        .I2(\clock_cnt[13]_i_5_n_0 ),
        .I3(clock_cnt[0]),
        .I4(writing_data_to_uart_reg_n_0),
        .I5(send_data),
        .O(tx_clock_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_clock_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_clock_i_1_n_0),
        .Q(tx_clock_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    tx_data_send_i_1
       (.I0(tx_data_send_i_3_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(writing_data_to_uart),
        .O(tx_data_send));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    tx_data_send_i_2
       (.I0(tx_data_send_i_4_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(data_in[0]),
        .I3(tx_data_send_i_5_n_0),
        .I4(tx_data_send_i_6_n_0),
        .O(tx_data_send_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    tx_data_send_i_3
       (.I0(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(tx_data_send_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    tx_data_send_i_4
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(data_in[1]),
        .I2(writing_data_to_uart),
        .O(tx_data_send_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    tx_data_send_i_5
       (.I0(data_in[7]),
        .I1(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I2(data_in[6]),
        .I3(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I5(data_in[5]),
        .O(tx_data_send_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    tx_data_send_i_6
       (.I0(data_in[4]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(data_in[3]),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I5(data_in[2]),
        .O(tx_data_send_i_6_n_0));
  FDRE #(
    .INIT(1'b1)) 
    tx_data_send_reg
       (.C(tx_clock_reg_n_0),
        .CE(tx_data_send),
        .D(tx_data_send_i_2_n_0),
        .Q(tx_output),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    writing_data_to_uart_i_1
       (.I0(writing_data_to_uart),
        .I1(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I2(writing_data_to_uart_reg_n_0),
        .O(writing_data_to_uart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    writing_data_to_uart_reg
       (.C(tx_clock_reg_n_0),
        .CE(1'b1),
        .D(writing_data_to_uart_i_1_n_0),
        .Q(writing_data_to_uart_reg_n_0),
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
