// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Nov 16 22:58:56 2024
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
  wire clock_cnt0_carry__0_n_0;
  wire clock_cnt0_carry__0_n_1;
  wire clock_cnt0_carry__0_n_2;
  wire clock_cnt0_carry__0_n_3;
  wire clock_cnt0_carry__0_n_4;
  wire clock_cnt0_carry__0_n_5;
  wire clock_cnt0_carry__0_n_6;
  wire clock_cnt0_carry__0_n_7;
  wire clock_cnt0_carry__1_n_0;
  wire clock_cnt0_carry__1_n_1;
  wire clock_cnt0_carry__1_n_2;
  wire clock_cnt0_carry__1_n_3;
  wire clock_cnt0_carry__1_n_4;
  wire clock_cnt0_carry__1_n_5;
  wire clock_cnt0_carry__1_n_6;
  wire clock_cnt0_carry__1_n_7;
  wire clock_cnt0_carry__2_n_7;
  wire clock_cnt0_carry_n_0;
  wire clock_cnt0_carry_n_1;
  wire clock_cnt0_carry_n_2;
  wire clock_cnt0_carry_n_3;
  wire clock_cnt0_carry_n_4;
  wire clock_cnt0_carry_n_5;
  wire clock_cnt0_carry_n_6;
  wire clock_cnt0_carry_n_7;
  wire \clock_cnt[13]_i_1_n_0 ;
  wire \clock_cnt[13]_i_3_n_0 ;
  wire \clock_cnt[13]_i_4_n_0 ;
  wire \clock_cnt_reg_n_0_[0] ;
  wire \clock_cnt_reg_n_0_[10] ;
  wire \clock_cnt_reg_n_0_[11] ;
  wire \clock_cnt_reg_n_0_[12] ;
  wire \clock_cnt_reg_n_0_[13] ;
  wire \clock_cnt_reg_n_0_[1] ;
  wire \clock_cnt_reg_n_0_[2] ;
  wire \clock_cnt_reg_n_0_[3] ;
  wire \clock_cnt_reg_n_0_[4] ;
  wire \clock_cnt_reg_n_0_[5] ;
  wire \clock_cnt_reg_n_0_[6] ;
  wire \clock_cnt_reg_n_0_[7] ;
  wire \clock_cnt_reg_n_0_[8] ;
  wire \clock_cnt_reg_n_0_[9] ;
  wire \current_state[0]_i_1_n_0 ;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[0]_i_3_n_0 ;
  wire \current_state[0]_i_4_n_0 ;
  wire \current_state[0]_i_5_n_0 ;
  wire \current_state[0]_i_6_n_0 ;
  wire \current_state[1]_i_1_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[2]_i_1_n_0 ;
  wire \current_state[3]_i_1_n_0 ;
  wire \current_state[3]_i_2_n_0 ;
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
  wire \data_out[6]_i_2_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire [7:7]data_out_0;
  wire [7:0]data_output;
  wire \data_output[7]_i_1_n_0 ;
  wire \data_output[7]_i_2_n_0 ;
  wire \data_output[7]_i_3_n_0 ;
  wire \data_output[7]_i_4_n_0 ;
  wire data_valid;
  wire data_valid_i_1_n_0;
  wire data_valid_i_2_n_0;
  wire data_valid_i_3_n_0;
  wire [13:0]p_1_in;
  wire rx_data_in_buf;
  wire rx_serial_input;
  wire [3:0]NLW_clock_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_clock_cnt0_carry__2_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clock_cnt0_carry
       (.CI(1'b0),
        .CO({clock_cnt0_carry_n_0,clock_cnt0_carry_n_1,clock_cnt0_carry_n_2,clock_cnt0_carry_n_3}),
        .CYINIT(\clock_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clock_cnt0_carry_n_4,clock_cnt0_carry_n_5,clock_cnt0_carry_n_6,clock_cnt0_carry_n_7}),
        .S({\clock_cnt_reg_n_0_[4] ,\clock_cnt_reg_n_0_[3] ,\clock_cnt_reg_n_0_[2] ,\clock_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clock_cnt0_carry__0
       (.CI(clock_cnt0_carry_n_0),
        .CO({clock_cnt0_carry__0_n_0,clock_cnt0_carry__0_n_1,clock_cnt0_carry__0_n_2,clock_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clock_cnt0_carry__0_n_4,clock_cnt0_carry__0_n_5,clock_cnt0_carry__0_n_6,clock_cnt0_carry__0_n_7}),
        .S({\clock_cnt_reg_n_0_[8] ,\clock_cnt_reg_n_0_[7] ,\clock_cnt_reg_n_0_[6] ,\clock_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clock_cnt0_carry__1
       (.CI(clock_cnt0_carry__0_n_0),
        .CO({clock_cnt0_carry__1_n_0,clock_cnt0_carry__1_n_1,clock_cnt0_carry__1_n_2,clock_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clock_cnt0_carry__1_n_4,clock_cnt0_carry__1_n_5,clock_cnt0_carry__1_n_6,clock_cnt0_carry__1_n_7}),
        .S({\clock_cnt_reg_n_0_[12] ,\clock_cnt_reg_n_0_[11] ,\clock_cnt_reg_n_0_[10] ,\clock_cnt_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clock_cnt0_carry__2
       (.CI(clock_cnt0_carry__1_n_0),
        .CO(NLW_clock_cnt0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_clock_cnt0_carry__2_O_UNCONNECTED[3:1],clock_cnt0_carry__2_n_7}),
        .S({1'b0,1'b0,1'b0,\clock_cnt_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'h333F001500000015)) 
    \clock_cnt[0]_i_1 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\clock_cnt[13]_i_3_n_0 ),
        .I2(\clock_cnt[13]_i_4_n_0 ),
        .I3(\clock_cnt_reg_n_0_[0] ),
        .I4(\current_state[0]_i_4_n_0 ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h3F33150000001500)) 
    \clock_cnt[10]_i_1 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\clock_cnt[13]_i_3_n_0 ),
        .I2(\clock_cnt[13]_i_4_n_0 ),
        .I3(clock_cnt0_carry__1_n_6),
        .I4(\current_state[0]_i_4_n_0 ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h3F33150000001500)) 
    \clock_cnt[11]_i_1 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\clock_cnt[13]_i_3_n_0 ),
        .I2(\clock_cnt[13]_i_4_n_0 ),
        .I3(clock_cnt0_carry__1_n_5),
        .I4(\current_state[0]_i_4_n_0 ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'h3F33150000001500)) 
    \clock_cnt[12]_i_1 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\clock_cnt[13]_i_3_n_0 ),
        .I2(\clock_cnt[13]_i_4_n_0 ),
        .I3(clock_cnt0_carry__1_n_4),
        .I4(\current_state[0]_i_4_n_0 ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'h00FF00FF55FFFFDF)) 
    \clock_cnt[13]_i_1 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state[0]_i_2_n_0 ),
        .I2(data_out_0),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\clock_cnt[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F33150000001500)) 
    \clock_cnt[13]_i_2 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\clock_cnt[13]_i_3_n_0 ),
        .I2(\clock_cnt[13]_i_4_n_0 ),
        .I3(clock_cnt0_carry__2_n_7),
        .I4(\current_state[0]_i_4_n_0 ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \clock_cnt[13]_i_3 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(data_out_0),
        .O(\clock_cnt[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \clock_cnt[13]_i_4 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state[0]_i_2_n_0 ),
        .O(\clock_cnt[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3F33150000001500)) 
    \clock_cnt[1]_i_1 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\clock_cnt[13]_i_3_n_0 ),
        .I2(\clock_cnt[13]_i_4_n_0 ),
        .I3(clock_cnt0_carry_n_7),
        .I4(\current_state[0]_i_4_n_0 ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h3F33150000001500)) 
    \clock_cnt[2]_i_1 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\clock_cnt[13]_i_3_n_0 ),
        .I2(\clock_cnt[13]_i_4_n_0 ),
        .I3(clock_cnt0_carry_n_6),
        .I4(\current_state[0]_i_4_n_0 ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h3F33150000001500)) 
    \clock_cnt[3]_i_1 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\clock_cnt[13]_i_3_n_0 ),
        .I2(\clock_cnt[13]_i_4_n_0 ),
        .I3(clock_cnt0_carry_n_5),
        .I4(\current_state[0]_i_4_n_0 ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h3F33150000001500)) 
    \clock_cnt[4]_i_1 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\clock_cnt[13]_i_3_n_0 ),
        .I2(\clock_cnt[13]_i_4_n_0 ),
        .I3(clock_cnt0_carry_n_4),
        .I4(\current_state[0]_i_4_n_0 ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h3F33150000001500)) 
    \clock_cnt[5]_i_1 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\clock_cnt[13]_i_3_n_0 ),
        .I2(\clock_cnt[13]_i_4_n_0 ),
        .I3(clock_cnt0_carry__0_n_7),
        .I4(\current_state[0]_i_4_n_0 ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h3F33150000001500)) 
    \clock_cnt[6]_i_1 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\clock_cnt[13]_i_3_n_0 ),
        .I2(\clock_cnt[13]_i_4_n_0 ),
        .I3(clock_cnt0_carry__0_n_6),
        .I4(\current_state[0]_i_4_n_0 ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h3F33150000001500)) 
    \clock_cnt[7]_i_1 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\clock_cnt[13]_i_3_n_0 ),
        .I2(\clock_cnt[13]_i_4_n_0 ),
        .I3(clock_cnt0_carry__0_n_5),
        .I4(\current_state[0]_i_4_n_0 ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h3F33150000001500)) 
    \clock_cnt[8]_i_1 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\clock_cnt[13]_i_3_n_0 ),
        .I2(\clock_cnt[13]_i_4_n_0 ),
        .I3(clock_cnt0_carry__0_n_4),
        .I4(\current_state[0]_i_4_n_0 ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h3F33150000001500)) 
    \clock_cnt[9]_i_1 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\clock_cnt[13]_i_3_n_0 ),
        .I2(\clock_cnt[13]_i_4_n_0 ),
        .I3(clock_cnt0_carry__1_n_7),
        .I4(\current_state[0]_i_4_n_0 ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[0] 
       (.C(clk),
        .CE(\clock_cnt[13]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\clock_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[10] 
       (.C(clk),
        .CE(\clock_cnt[13]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\clock_cnt_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[11] 
       (.C(clk),
        .CE(\clock_cnt[13]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\clock_cnt_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[12] 
       (.C(clk),
        .CE(\clock_cnt[13]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(\clock_cnt_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[13] 
       (.C(clk),
        .CE(\clock_cnt[13]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(\clock_cnt_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[1] 
       (.C(clk),
        .CE(\clock_cnt[13]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\clock_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[2] 
       (.C(clk),
        .CE(\clock_cnt[13]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\clock_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[3] 
       (.C(clk),
        .CE(\clock_cnt[13]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\clock_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[4] 
       (.C(clk),
        .CE(\clock_cnt[13]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\clock_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[5] 
       (.C(clk),
        .CE(\clock_cnt[13]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\clock_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[6] 
       (.C(clk),
        .CE(\clock_cnt[13]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\clock_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[7] 
       (.C(clk),
        .CE(\clock_cnt[13]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\clock_cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[8] 
       (.C(clk),
        .CE(\clock_cnt[13]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\clock_cnt_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_cnt_reg[9] 
       (.C(clk),
        .CE(\clock_cnt[13]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\clock_cnt_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF8F0FDF0)) 
    \current_state[0]_i_1 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state[0]_i_2_n_0 ),
        .I2(\current_state[0]_i_3_n_0 ),
        .I3(\current_state[0]_i_4_n_0 ),
        .I4(data_out_0),
        .O(\current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \current_state[0]_i_2 
       (.I0(\current_state[0]_i_5_n_0 ),
        .I1(\current_state[0]_i_6_n_0 ),
        .I2(\clock_cnt_reg_n_0_[12] ),
        .I3(\clock_cnt_reg_n_0_[5] ),
        .I4(\clock_cnt_reg_n_0_[10] ),
        .I5(\clock_cnt_reg_n_0_[0] ),
        .O(\current_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0554AAA8)) 
    \current_state[0]_i_3 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[0] ),
        .O(\current_state[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \current_state[0]_i_4 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[3] ),
        .O(\current_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \current_state[0]_i_5 
       (.I0(\clock_cnt_reg_n_0_[9] ),
        .I1(\clock_cnt_reg_n_0_[8] ),
        .I2(\clock_cnt_reg_n_0_[7] ),
        .I3(\clock_cnt_reg_n_0_[11] ),
        .I4(\clock_cnt_reg_n_0_[2] ),
        .I5(\clock_cnt_reg_n_0_[4] ),
        .O(\current_state[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \current_state[0]_i_6 
       (.I0(\clock_cnt_reg_n_0_[6] ),
        .I1(\clock_cnt_reg_n_0_[3] ),
        .I2(\clock_cnt_reg_n_0_[13] ),
        .I3(\clock_cnt_reg_n_0_[1] ),
        .O(\current_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3F0F3F3FFFC0FF80)) 
    \current_state[1]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\data_output[7]_i_2_n_0 ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state[1]_i_2_n_0 ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\current_state_reg_n_0_[1] ),
        .O(\current_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \current_state[1]_i_2 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(data_out_0),
        .O(\current_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \current_state[2]_i_1 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\data_output[7]_i_2_n_0 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[3] ),
        .O(\current_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \current_state[3]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[3] ),
        .O(\current_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0FFF8000)) 
    \current_state[3]_i_2 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\data_output[7]_i_2_n_0 ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[3] ),
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
    .INIT(64'hFFFFFEFF00000200)) 
    \data_out[0]_i_1 
       (.I0(data_out_0),
        .I1(\data_out[6]_i_2_n_0 ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(data_out[0]),
        .O(\data_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \data_out[1]_i_1 
       (.I0(data_out_0),
        .I1(\data_out[7]_i_2_n_0 ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(data_out[1]),
        .O(\data_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \data_out[2]_i_1 
       (.I0(data_out_0),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\data_out[6]_i_2_n_0 ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(data_out[2]),
        .O(\data_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \data_out[3]_i_1 
       (.I0(data_out_0),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\data_out[7]_i_2_n_0 ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(data_out[3]),
        .O(\data_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \data_out[4]_i_1 
       (.I0(data_out_0),
        .I1(\data_out[6]_i_2_n_0 ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(data_out[4]),
        .O(\data_out[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \data_out[5]_i_1 
       (.I0(data_out_0),
        .I1(\data_out[5]_i_2_n_0 ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(data_out[5]),
        .O(\data_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_out[5]_i_2 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\data_output[7]_i_2_n_0 ),
        .O(\data_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \data_out[6]_i_1 
       (.I0(data_out_0),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\data_out[6]_i_2_n_0 ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(data_out[6]),
        .O(\data_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[6]_i_2 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\data_output[7]_i_2_n_0 ),
        .O(\data_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \data_out[7]_i_1 
       (.I0(data_out_0),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\data_out[7]_i_2_n_0 ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(data_out[7]),
        .O(\data_out[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[7]_i_2 
       (.I0(\data_output[7]_i_2_n_0 ),
        .I1(\current_state_reg_n_0_[0] ),
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
    .INIT(32'h04000000)) 
    \data_output[7]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\data_output[7]_i_2_n_0 ),
        .I4(\current_state_reg_n_0_[1] ),
        .O(\data_output[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAA88888888)) 
    \data_output[7]_i_2 
       (.I0(\clock_cnt_reg_n_0_[13] ),
        .I1(\clock_cnt_reg_n_0_[12] ),
        .I2(\clock_cnt_reg_n_0_[10] ),
        .I3(\data_output[7]_i_3_n_0 ),
        .I4(\data_output[7]_i_4_n_0 ),
        .I5(\clock_cnt_reg_n_0_[11] ),
        .O(\data_output[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_output[7]_i_3 
       (.I0(\clock_cnt_reg_n_0_[8] ),
        .I1(\clock_cnt_reg_n_0_[9] ),
        .O(\data_output[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h557F)) 
    \data_output[7]_i_4 
       (.I0(\clock_cnt_reg_n_0_[7] ),
        .I1(\clock_cnt_reg_n_0_[4] ),
        .I2(\clock_cnt_reg_n_0_[5] ),
        .I3(\clock_cnt_reg_n_0_[6] ),
        .O(\data_output[7]_i_4_n_0 ));
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
  LUT6 #(
    .INIT(64'h00000000FFAEF0A2)) 
    data_valid_i_1
       (.I0(data_valid),
        .I1(data_valid_i_2_n_0),
        .I2(data_out_0),
        .I3(\data_output[7]_i_1_n_0 ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(data_valid_i_3_n_0),
        .O(data_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    data_valid_i_2
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .O(data_valid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    data_valid_i_3
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[1] ),
        .O(data_valid_i_3_n_0));
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
