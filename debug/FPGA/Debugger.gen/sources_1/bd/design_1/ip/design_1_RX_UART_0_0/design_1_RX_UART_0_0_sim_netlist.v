// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Nov 17 18:56:28 2024
// Host        : DESKTOP-E8CIL9E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Development/SixteenShadesOfCpu/debug/FPGA/Debugger.gen/sources_1/bd/design_1/ip/design_1_RX_UART_0_0/design_1_RX_UART_0_0_sim_netlist.v
// Design      : design_1_RX_UART_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_RX_UART_0_0,RX_UART,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "RX_UART,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_RX_UART_0_0
   (clk,
    rx_serial_input,
    data_output,
    data_valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input rx_serial_input;
  output [7:0]data_output;
  output data_valid;

  wire clk;
  wire [7:0]data_output;
  wire data_valid;
  wire rx_serial_input;

  design_1_RX_UART_0_0_RX_UART U0
       (.clk(clk),
        .data_output(data_output),
        .data_valid(data_valid),
        .rx_serial_input(rx_serial_input));
endmodule

(* ORIG_REF_NAME = "RX_UART" *) 
module design_1_RX_UART_0_0_RX_UART
   (data_output,
    data_valid,
    rx_serial_input,
    clk);
  output [7:0]data_output;
  output data_valid;
  input rx_serial_input;
  input clk;

  wire clk;
  wire [6:0]clock_cnt;
  wire \clock_cnt[0]_i_1_n_0 ;
  wire \clock_cnt[1]_i_1_n_0 ;
  wire \clock_cnt[2]_i_1_n_0 ;
  wire \clock_cnt[3]_i_1_n_0 ;
  wire \clock_cnt[4]_i_1_n_0 ;
  wire \clock_cnt[5]_i_1_n_0 ;
  wire \clock_cnt[6]_i_10_n_0 ;
  wire \clock_cnt[6]_i_11_n_0 ;
  wire \clock_cnt[6]_i_12_n_0 ;
  wire \clock_cnt[6]_i_13_n_0 ;
  wire \clock_cnt[6]_i_14_n_0 ;
  wire \clock_cnt[6]_i_15_n_0 ;
  wire \clock_cnt[6]_i_1_n_0 ;
  wire \clock_cnt[6]_i_2_n_0 ;
  wire \clock_cnt[6]_i_3_n_0 ;
  wire \clock_cnt[6]_i_4_n_0 ;
  wire \clock_cnt[6]_i_5_n_0 ;
  wire \clock_cnt[6]_i_6_n_0 ;
  wire \clock_cnt[6]_i_7_n_0 ;
  wire \clock_cnt[6]_i_8_n_0 ;
  wire \clock_cnt[6]_i_9_n_0 ;
  wire \current_state[0]_i_1_n_0 ;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[0]_i_3_n_0 ;
  wire \current_state[1]_i_1_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[1]_i_3_n_0 ;
  wire \current_state[2]_i_1_n_0 ;
  wire \current_state[3]_i_1_n_0 ;
  wire \current_state[3]_i_2_n_0 ;
  wire [0:0]current_state__14;
  wire \current_state_reg_n_0_[0] ;
  wire \current_state_reg_n_0_[1] ;
  wire \current_state_reg_n_0_[2] ;
  wire \current_state_reg_n_0_[3] ;
  wire [7:0]data_out;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[5]_i_2_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire [7:7]data_out_0;
  wire [7:0]data_output;
  wire \data_output[7]_i_1_n_0 ;
  wire \data_output[7]_i_2_n_0 ;
  wire data_valid;
  wire data_valid_i_1_n_0;
  wire data_valid_i_2_n_0;
  wire data_valid_i_3_n_0;
  wire data_valid_i_4_n_0;
  wire rx_data_in_buf;
  wire rx_serial_input;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_cnt[0]_i_1 
       (.I0(\clock_cnt[6]_i_9_n_0 ),
        .I1(clock_cnt[0]),
        .O(\clock_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \clock_cnt[1]_i_1 
       (.I0(\clock_cnt[6]_i_9_n_0 ),
        .I1(clock_cnt[1]),
        .I2(clock_cnt[0]),
        .O(\clock_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \clock_cnt[2]_i_1 
       (.I0(\clock_cnt[6]_i_9_n_0 ),
        .I1(clock_cnt[2]),
        .I2(clock_cnt[0]),
        .I3(clock_cnt[1]),
        .O(\clock_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \clock_cnt[3]_i_1 
       (.I0(\clock_cnt[6]_i_9_n_0 ),
        .I1(clock_cnt[3]),
        .I2(clock_cnt[0]),
        .I3(clock_cnt[2]),
        .I4(clock_cnt[1]),
        .O(\clock_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \clock_cnt[4]_i_1 
       (.I0(\clock_cnt[6]_i_9_n_0 ),
        .I1(clock_cnt[4]),
        .I2(clock_cnt[1]),
        .I3(clock_cnt[2]),
        .I4(clock_cnt[0]),
        .I5(clock_cnt[3]),
        .O(\clock_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8288)) 
    \clock_cnt[5]_i_1 
       (.I0(\clock_cnt[6]_i_9_n_0 ),
        .I1(clock_cnt[5]),
        .I2(\clock_cnt[6]_i_10_n_0 ),
        .I3(clock_cnt[4]),
        .O(\clock_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \clock_cnt[6]_i_1 
       (.I0(data_out_0),
        .I1(clock_cnt[2]),
        .I2(clock_cnt[1]),
        .I3(\clock_cnt[6]_i_4_n_0 ),
        .I4(\clock_cnt[6]_i_5_n_0 ),
        .I5(\clock_cnt[6]_i_2_n_0 ),
        .O(\clock_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clock_cnt[6]_i_10 
       (.I0(clock_cnt[1]),
        .I1(clock_cnt[2]),
        .I2(clock_cnt[0]),
        .I3(clock_cnt[3]),
        .O(\clock_cnt[6]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \clock_cnt[6]_i_11 
       (.I0(clock_cnt[0]),
        .I1(clock_cnt[1]),
        .O(\clock_cnt[6]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \clock_cnt[6]_i_12 
       (.I0(clock_cnt[5]),
        .I1(clock_cnt[3]),
        .I2(clock_cnt[4]),
        .O(\clock_cnt[6]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFD5)) 
    \clock_cnt[6]_i_13 
       (.I0(clock_cnt[2]),
        .I1(clock_cnt[0]),
        .I2(clock_cnt[1]),
        .I3(clock_cnt[6]),
        .O(\clock_cnt[6]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \clock_cnt[6]_i_14 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .O(\clock_cnt[6]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \clock_cnt[6]_i_15 
       (.I0(clock_cnt[1]),
        .I1(clock_cnt[2]),
        .O(\clock_cnt[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F5F5F0F0F0F03)) 
    \clock_cnt[6]_i_2 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(data_out_0),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\clock_cnt[6]_i_6_n_0 ),
        .I4(\clock_cnt[6]_i_7_n_0 ),
        .I5(\clock_cnt[6]_i_8_n_0 ),
        .O(\clock_cnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAA002A80)) 
    \clock_cnt[6]_i_3 
       (.I0(\clock_cnt[6]_i_9_n_0 ),
        .I1(clock_cnt[5]),
        .I2(clock_cnt[4]),
        .I3(clock_cnt[6]),
        .I4(\clock_cnt[6]_i_10_n_0 ),
        .O(\clock_cnt[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \clock_cnt[6]_i_4 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[1] ),
        .O(\clock_cnt[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \clock_cnt[6]_i_5 
       (.I0(clock_cnt[4]),
        .I1(clock_cnt[3]),
        .I2(clock_cnt[5]),
        .I3(clock_cnt[6]),
        .I4(\clock_cnt[6]_i_11_n_0 ),
        .I5(clock_cnt[2]),
        .O(\clock_cnt[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \clock_cnt[6]_i_6 
       (.I0(clock_cnt[3]),
        .I1(clock_cnt[0]),
        .I2(clock_cnt[2]),
        .I3(clock_cnt[1]),
        .O(\clock_cnt[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \clock_cnt[6]_i_7 
       (.I0(clock_cnt[5]),
        .I1(clock_cnt[4]),
        .I2(clock_cnt[6]),
        .O(\clock_cnt[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDFFD)) 
    \clock_cnt[6]_i_8 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[3] ),
        .O(\clock_cnt[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FEF00F000E00)) 
    \clock_cnt[6]_i_9 
       (.I0(\clock_cnt[6]_i_12_n_0 ),
        .I1(\clock_cnt[6]_i_13_n_0 ),
        .I2(\clock_cnt[6]_i_14_n_0 ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\clock_cnt[6]_i_15_n_0 ),
        .I5(\data_output[7]_i_2_n_0 ),
        .O(\clock_cnt[6]_i_9_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[0] 
       (.C(clk),
        .CE(\clock_cnt[6]_i_2_n_0 ),
        .D(\clock_cnt[0]_i_1_n_0 ),
        .Q(clock_cnt[0]),
        .S(\clock_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[1] 
       (.C(clk),
        .CE(\clock_cnt[6]_i_2_n_0 ),
        .D(\clock_cnt[1]_i_1_n_0 ),
        .Q(clock_cnt[1]),
        .S(\clock_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[2] 
       (.C(clk),
        .CE(\clock_cnt[6]_i_2_n_0 ),
        .D(\clock_cnt[2]_i_1_n_0 ),
        .Q(clock_cnt[2]),
        .S(\clock_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[3] 
       (.C(clk),
        .CE(\clock_cnt[6]_i_2_n_0 ),
        .D(\clock_cnt[3]_i_1_n_0 ),
        .Q(clock_cnt[3]),
        .S(\clock_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[4] 
       (.C(clk),
        .CE(\clock_cnt[6]_i_2_n_0 ),
        .D(\clock_cnt[4]_i_1_n_0 ),
        .Q(clock_cnt[4]),
        .S(\clock_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[5] 
       (.C(clk),
        .CE(\clock_cnt[6]_i_2_n_0 ),
        .D(\clock_cnt[5]_i_1_n_0 ),
        .Q(clock_cnt[5]),
        .S(\clock_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[6] 
       (.C(clk),
        .CE(\clock_cnt[6]_i_2_n_0 ),
        .D(\clock_cnt[6]_i_3_n_0 ),
        .Q(clock_cnt[6]),
        .S(\clock_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFAAAEAAABAAAAAA)) 
    \current_state[0]_i_1 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(\current_state[0]_i_3_n_0 ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(current_state__14),
        .I5(\data_output[7]_i_2_n_0 ),
        .O(\current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F00F0F00000F1D)) 
    \current_state[0]_i_2 
       (.I0(data_out_0),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\data_output[7]_i_2_n_0 ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\current_state_reg_n_0_[3] ),
        .O(\current_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[0]_i_3 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .O(\current_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \current_state[0]_i_4 
       (.I0(\clock_cnt[6]_i_15_n_0 ),
        .I1(clock_cnt[0]),
        .I2(clock_cnt[3]),
        .I3(clock_cnt[6]),
        .I4(clock_cnt[4]),
        .I5(clock_cnt[5]),
        .O(current_state__14));
  LUT6 #(
    .INIT(64'hDDFFCCCCCCFFFECC)) 
    \current_state[1]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state[1]_i_2_n_0 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(\data_output[7]_i_2_n_0 ),
        .O(\current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \current_state[1]_i_2 
       (.I0(\clock_cnt[6]_i_14_n_0 ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(data_out_0),
        .I3(\current_state[1]_i_3_n_0 ),
        .I4(clock_cnt[6]),
        .I5(\clock_cnt[6]_i_6_n_0 ),
        .O(\current_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \current_state[1]_i_3 
       (.I0(clock_cnt[4]),
        .I1(clock_cnt[5]),
        .O(\current_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000F078)) 
    \current_state[2]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\data_output[7]_i_2_n_0 ),
        .I4(\current_state_reg_n_0_[3] ),
        .O(\current_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \current_state[3]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h10CCCCCC)) 
    \current_state[3]_i_2 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[0] ),
        .O(\current_state[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk),
        .CE(\current_state[3]_i_1_n_0 ),
        .D(\current_state[0]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk),
        .CE(\current_state[3]_i_1_n_0 ),
        .D(\current_state[1]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk),
        .CE(\current_state[3]_i_1_n_0 ),
        .D(\current_state[2]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(clk),
        .CE(\current_state[3]_i_1_n_0 ),
        .D(\current_state[3]_i_2_n_0 ),
        .Q(\current_state_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \data_out[0]_i_1 
       (.I0(data_out_0),
        .I1(\data_out[5]_i_2_n_0 ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(data_out[0]),
        .O(\data_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \data_out[1]_i_1 
       (.I0(data_out_0),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\data_out[5]_i_2_n_0 ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(data_out[1]),
        .O(\data_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \data_out[2]_i_1 
       (.I0(data_out_0),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\data_out[5]_i_2_n_0 ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(data_out[2]),
        .O(\data_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \data_out[3]_i_1 
       (.I0(data_out_0),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\data_out[5]_i_2_n_0 ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(data_out[3]),
        .O(\data_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \data_out[4]_i_1 
       (.I0(data_out_0),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\data_out[5]_i_2_n_0 ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(data_out[4]),
        .O(\data_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \data_out[5]_i_1 
       (.I0(data_out_0),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\data_out[5]_i_2_n_0 ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(data_out[5]),
        .O(\data_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088888000)) 
    \data_out[5]_i_2 
       (.I0(clock_cnt[5]),
        .I1(clock_cnt[6]),
        .I2(clock_cnt[2]),
        .I3(clock_cnt[3]),
        .I4(clock_cnt[4]),
        .I5(\current_state_reg_n_0_[3] ),
        .O(\data_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \data_out[6]_i_1 
       (.I0(data_out_0),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\data_out[7]_i_2_n_0 ),
        .I5(data_out[6]),
        .O(\data_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \data_out[7]_i_1 
       (.I0(data_out_0),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\data_out[7]_i_2_n_0 ),
        .I5(data_out[7]),
        .O(\data_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080000000)) 
    \data_out[7]_i_2 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(clock_cnt[5]),
        .I2(clock_cnt[6]),
        .I3(clock_cnt[2]),
        .I4(clock_cnt[3]),
        .I5(clock_cnt[4]),
        .O(\data_out[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(data_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(data_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(data_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(data_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(data_out[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00040000)) 
    \data_output[7]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\data_output[7]_i_2_n_0 ),
        .I4(\current_state_reg_n_0_[3] ),
        .O(\data_output[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h15FFFFFF)) 
    \data_output[7]_i_2 
       (.I0(clock_cnt[4]),
        .I1(clock_cnt[3]),
        .I2(clock_cnt[2]),
        .I3(clock_cnt[6]),
        .I4(clock_cnt[5]),
        .O(\data_output[7]_i_2_n_0 ));
  FDRE \data_output_reg[0] 
       (.C(clk),
        .CE(\data_output[7]_i_1_n_0 ),
        .D(data_out[0]),
        .Q(data_output[0]),
        .R(1'b0));
  FDRE \data_output_reg[1] 
       (.C(clk),
        .CE(\data_output[7]_i_1_n_0 ),
        .D(data_out[1]),
        .Q(data_output[1]),
        .R(1'b0));
  FDRE \data_output_reg[2] 
       (.C(clk),
        .CE(\data_output[7]_i_1_n_0 ),
        .D(data_out[2]),
        .Q(data_output[2]),
        .R(1'b0));
  FDRE \data_output_reg[3] 
       (.C(clk),
        .CE(\data_output[7]_i_1_n_0 ),
        .D(data_out[3]),
        .Q(data_output[3]),
        .R(1'b0));
  FDRE \data_output_reg[4] 
       (.C(clk),
        .CE(\data_output[7]_i_1_n_0 ),
        .D(data_out[4]),
        .Q(data_output[4]),
        .R(1'b0));
  FDRE \data_output_reg[5] 
       (.C(clk),
        .CE(\data_output[7]_i_1_n_0 ),
        .D(data_out[5]),
        .Q(data_output[5]),
        .R(1'b0));
  FDRE \data_output_reg[6] 
       (.C(clk),
        .CE(\data_output[7]_i_1_n_0 ),
        .D(data_out[6]),
        .Q(data_output[6]),
        .R(1'b0));
  FDRE \data_output_reg[7] 
       (.C(clk),
        .CE(\data_output[7]_i_1_n_0 ),
        .D(data_out[7]),
        .Q(data_output[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCCC4CCC)) 
    data_valid_i_1
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(data_valid_i_2_n_0),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[2] ),
        .O(data_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'hEEEEEFFFEEEEE000)) 
    data_valid_i_2
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(data_out_0),
        .I2(\data_out[7]_i_2_n_0 ),
        .I3(data_valid_i_3_n_0),
        .I4(data_valid_i_4_n_0),
        .I5(data_valid),
        .O(data_valid_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    data_valid_i_3
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .O(data_valid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    data_valid_i_4
       (.I0(data_out_0),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[1] ),
        .O(data_valid_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_valid_i_1_n_0),
        .Q(data_valid),
        .R(1'b0));
  FDRE rx_data_in_buf_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx_serial_input),
        .Q(rx_data_in_buf),
        .R(1'b0));
  FDRE rx_data_in_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx_data_in_buf),
        .Q(data_out_0),
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
