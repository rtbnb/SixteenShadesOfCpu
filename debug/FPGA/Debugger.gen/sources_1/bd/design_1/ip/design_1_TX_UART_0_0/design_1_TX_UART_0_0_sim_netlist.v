// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Nov 17 18:56:28 2024
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
   (data_valid,
    data_in,
    clk,
    tx_output,
    send_valid);
  input data_valid;
  input [7:0]data_in;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  output tx_output;
  output send_valid;

  wire clk;
  wire [7:0]data_in;
  wire data_valid;
  wire send_valid;
  wire tx_output;

  design_1_TX_UART_0_0_TX_UART U0
       (.clk(clk),
        .data_in(data_in),
        .data_valid(data_valid),
        .send_valid(send_valid),
        .tx_output(tx_output));
endmodule

(* ORIG_REF_NAME = "TX_UART" *) 
module design_1_TX_UART_0_0_TX_UART
   (tx_output,
    send_valid,
    data_valid,
    clk,
    data_in);
  output tx_output;
  output send_valid;
  input data_valid;
  input clk;
  input [7:0]data_in;

  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[10]_i_1_n_0 ;
  wire \FSM_onehot_current_state[11]_i_1_n_0 ;
  wire \FSM_onehot_current_state[11]_i_2_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_1_n_0 ;
  wire \FSM_onehot_current_state[4]_i_1_n_0 ;
  wire \FSM_onehot_current_state[5]_i_1_n_0 ;
  wire \FSM_onehot_current_state[6]_i_1_n_0 ;
  wire \FSM_onehot_current_state[7]_i_1_n_0 ;
  wire \FSM_onehot_current_state[8]_i_1_n_0 ;
  wire \FSM_onehot_current_state[9]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[10] ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_current_state_reg_n_0_[3] ;
  wire \FSM_onehot_current_state_reg_n_0_[4] ;
  wire \FSM_onehot_current_state_reg_n_0_[5] ;
  wire \FSM_onehot_current_state_reg_n_0_[6] ;
  wire \FSM_onehot_current_state_reg_n_0_[7] ;
  wire \FSM_onehot_current_state_reg_n_0_[8] ;
  wire \FSM_onehot_current_state_reg_n_0_[9] ;
  wire clk;
  wire clk_cnt;
  wire \clk_cnt[0]_i_1_n_0 ;
  wire \clk_cnt[1]_i_1_n_0 ;
  wire \clk_cnt[2]_i_1_n_0 ;
  wire \clk_cnt[3]_i_1_n_0 ;
  wire \clk_cnt[4]_i_1_n_0 ;
  wire \clk_cnt[5]_i_1_n_0 ;
  wire \clk_cnt[5]_i_2_n_0 ;
  wire \clk_cnt[6]_i_1_n_0 ;
  wire \clk_cnt[6]_i_3_n_0 ;
  wire \clk_cnt[6]_i_4_n_0 ;
  wire \clk_cnt_reg_n_0_[0] ;
  wire \clk_cnt_reg_n_0_[1] ;
  wire \clk_cnt_reg_n_0_[2] ;
  wire \clk_cnt_reg_n_0_[3] ;
  wire \clk_cnt_reg_n_0_[4] ;
  wire \clk_cnt_reg_n_0_[5] ;
  wire \clk_cnt_reg_n_0_[6] ;
  wire [7:0]data_in;
  wire data_valid;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire send_valid;
  wire send_valid0;
  wire send_valid_i_1_n_0;
  wire tx_data;
  wire tx_data_out0;
  wire tx_data_out_i_1_n_0;
  wire tx_data_out_i_2_n_0;
  wire tx_data_out_i_3_n_0;
  wire tx_data_out_i_4_n_0;
  wire tx_data_out_i_5_n_0;
  wire tx_data_out_i_6_n_0;
  wire tx_data_out_i_7_n_0;
  wire \tx_data_reg_n_0_[0] ;
  wire \tx_data_reg_n_0_[1] ;
  wire tx_output;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(data_valid),
        .I1(tx_data_out0),
        .I2(send_valid0),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_current_state[10]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I1(tx_data_out_i_2_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[9] ),
        .O(\FSM_onehot_current_state[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_current_state[11]_i_1 
       (.I0(send_valid0),
        .I1(tx_data_out0),
        .I2(tx_data_out_i_3_n_0),
        .O(\FSM_onehot_current_state[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[11]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I1(tx_data_out_i_2_n_0),
        .O(\FSM_onehot_current_state[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(tx_data_out0),
        .I1(data_valid),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(tx_data_out_i_2_n_0),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(tx_data_out_i_2_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(tx_data_out_i_2_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(tx_data_out_i_2_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\FSM_onehot_current_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(tx_data_out_i_2_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\FSM_onehot_current_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_current_state[6]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I1(tx_data_out_i_2_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[5] ),
        .O(\FSM_onehot_current_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_current_state[7]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(tx_data_out_i_2_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .O(\FSM_onehot_current_state[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_current_state[8]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I1(tx_data_out_i_2_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(\FSM_onehot_current_state[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_current_state[9]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(tx_data_out_i_2_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .O(\FSM_onehot_current_state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .Q(tx_data_out0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[10] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[10] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[11] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[11]_i_2_n_0 ),
        .Q(send_valid0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[6] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[7] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[8] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[8] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[9] 
       (.C(clk),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFBF)) 
    \clk_cnt[0]_i_1 
       (.I0(\clk_cnt[6]_i_4_n_0 ),
        .I1(\clk_cnt_reg_n_0_[5] ),
        .I2(\clk_cnt_reg_n_0_[6] ),
        .I3(\clk_cnt_reg_n_0_[4] ),
        .I4(\clk_cnt_reg_n_0_[1] ),
        .I5(\clk_cnt_reg_n_0_[0] ),
        .O(\clk_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \clk_cnt[1]_i_1 
       (.I0(tx_data_out_i_2_n_0),
        .I1(\clk_cnt_reg_n_0_[1] ),
        .I2(\clk_cnt_reg_n_0_[0] ),
        .O(\clk_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \clk_cnt[2]_i_1 
       (.I0(tx_data_out_i_2_n_0),
        .I1(\clk_cnt_reg_n_0_[2] ),
        .I2(\clk_cnt_reg_n_0_[0] ),
        .I3(\clk_cnt_reg_n_0_[1] ),
        .O(\clk_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \clk_cnt[3]_i_1 
       (.I0(tx_data_out_i_2_n_0),
        .I1(\clk_cnt_reg_n_0_[3] ),
        .I2(\clk_cnt_reg_n_0_[1] ),
        .I3(\clk_cnt_reg_n_0_[0] ),
        .I4(\clk_cnt_reg_n_0_[2] ),
        .O(\clk_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \clk_cnt[4]_i_1 
       (.I0(tx_data_out_i_2_n_0),
        .I1(\clk_cnt_reg_n_0_[4] ),
        .I2(\clk_cnt_reg_n_0_[1] ),
        .I3(\clk_cnt_reg_n_0_[0] ),
        .I4(\clk_cnt_reg_n_0_[3] ),
        .I5(\clk_cnt_reg_n_0_[2] ),
        .O(\clk_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \clk_cnt[5]_i_1 
       (.I0(tx_data_out_i_2_n_0),
        .I1(\clk_cnt_reg_n_0_[5] ),
        .I2(\clk_cnt_reg_n_0_[2] ),
        .I3(\clk_cnt_reg_n_0_[3] ),
        .I4(\clk_cnt_reg_n_0_[4] ),
        .I5(\clk_cnt[5]_i_2_n_0 ),
        .O(\clk_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[5]_i_2 
       (.I0(\clk_cnt_reg_n_0_[0] ),
        .I1(\clk_cnt_reg_n_0_[1] ),
        .O(\clk_cnt[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \clk_cnt[6]_i_1 
       (.I0(data_valid),
        .I1(tx_data_out0),
        .I2(tx_data_out_i_3_n_0),
        .O(\clk_cnt[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \clk_cnt[6]_i_2 
       (.I0(tx_data_out0),
        .I1(data_valid),
        .I2(tx_data_out_i_3_n_0),
        .O(clk_cnt));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AA8AAAA)) 
    \clk_cnt[6]_i_3 
       (.I0(\clk_cnt_reg_n_0_[6] ),
        .I1(\clk_cnt_reg_n_0_[4] ),
        .I2(\clk_cnt_reg_n_0_[0] ),
        .I3(\clk_cnt_reg_n_0_[1] ),
        .I4(\clk_cnt_reg_n_0_[5] ),
        .I5(\clk_cnt[6]_i_4_n_0 ),
        .O(\clk_cnt[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \clk_cnt[6]_i_4 
       (.I0(\clk_cnt_reg_n_0_[2] ),
        .I1(\clk_cnt_reg_n_0_[3] ),
        .O(\clk_cnt[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[0]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[0] ),
        .R(\clk_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[1]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[1] ),
        .R(\clk_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[2]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[2] ),
        .R(\clk_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[3]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[3] ),
        .R(\clk_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[4]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[4] ),
        .R(\clk_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[5]_i_1_n_0 ),
        .Q(\clk_cnt_reg_n_0_[5] ),
        .R(\clk_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[6] 
       (.C(clk),
        .CE(clk_cnt),
        .D(\clk_cnt[6]_i_3_n_0 ),
        .Q(\clk_cnt_reg_n_0_[6] ),
        .R(\clk_cnt[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    send_valid_i_1
       (.I0(send_valid),
        .I1(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I2(tx_data_out_i_2_n_0),
        .I3(send_valid0),
        .O(send_valid_i_1_n_0));
  FDRE send_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(send_valid_i_1_n_0),
        .Q(send_valid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_data[7]_i_1 
       (.I0(tx_data_out0),
        .I1(data_valid),
        .O(tx_data));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEA2A)) 
    tx_data_out_i_1
       (.I0(tx_output),
        .I1(tx_data_out_i_2_n_0),
        .I2(tx_data_out_i_3_n_0),
        .I3(tx_data_out_i_4_n_0),
        .I4(tx_data_out_i_5_n_0),
        .I5(tx_data_out0),
        .O(tx_data_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    tx_data_out_i_2
       (.I0(\clk_cnt[6]_i_4_n_0 ),
        .I1(\clk_cnt_reg_n_0_[5] ),
        .I2(\clk_cnt_reg_n_0_[6] ),
        .I3(\clk_cnt_reg_n_0_[4] ),
        .I4(\clk_cnt_reg_n_0_[1] ),
        .I5(\clk_cnt_reg_n_0_[0] ),
        .O(tx_data_out_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    tx_data_out_i_3
       (.I0(tx_data_out_i_6_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(tx_data_out_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    tx_data_out_i_4
       (.I0(p_3_in),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(p_4_in),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I5(p_5_in),
        .O(tx_data_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    tx_data_out_i_5
       (.I0(tx_data_out_i_7_n_0),
        .I1(\tx_data_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I4(\tx_data_reg_n_0_[1] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(tx_data_out_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    tx_data_out_i_6
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(tx_data_out_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    tx_data_out_i_7
       (.I0(p_0_in),
        .I1(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I2(p_1_in),
        .I3(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I5(p_2_in),
        .O(tx_data_out_i_7_n_0));
  FDRE tx_data_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_data_out_i_1_n_0),
        .Q(tx_output),
        .R(1'b0));
  FDRE \tx_data_reg[0] 
       (.C(clk),
        .CE(tx_data),
        .D(data_in[0]),
        .Q(\tx_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_data_reg[1] 
       (.C(clk),
        .CE(tx_data),
        .D(data_in[1]),
        .Q(\tx_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_data_reg[2] 
       (.C(clk),
        .CE(tx_data),
        .D(data_in[2]),
        .Q(p_5_in),
        .R(1'b0));
  FDRE \tx_data_reg[3] 
       (.C(clk),
        .CE(tx_data),
        .D(data_in[3]),
        .Q(p_4_in),
        .R(1'b0));
  FDRE \tx_data_reg[4] 
       (.C(clk),
        .CE(tx_data),
        .D(data_in[4]),
        .Q(p_3_in),
        .R(1'b0));
  FDRE \tx_data_reg[5] 
       (.C(clk),
        .CE(tx_data),
        .D(data_in[5]),
        .Q(p_2_in),
        .R(1'b0));
  FDRE \tx_data_reg[6] 
       (.C(clk),
        .CE(tx_data),
        .D(data_in[6]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \tx_data_reg[7] 
       (.C(clk),
        .CE(tx_data),
        .D(data_in[7]),
        .Q(p_0_in),
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
