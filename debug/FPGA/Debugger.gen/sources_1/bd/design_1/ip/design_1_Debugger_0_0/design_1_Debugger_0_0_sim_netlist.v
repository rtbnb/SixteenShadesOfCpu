// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Nov 17 18:56:28 2024
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
    rx_data,
    rx_data_valid,
    tx_data,
    tx_data_valid,
    tx_data_sended);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input [7:0]rx_data;
  input rx_data_valid;
  output [7:0]tx_data;
  output tx_data_valid;
  input tx_data_sended;

  wire clk;
  wire [7:0]rx_data;
  wire rx_data_valid;
  wire [5:0]\^tx_data ;
  wire tx_data_sended;
  wire tx_data_valid;

  assign tx_data[7] = \^tx_data [5];
  assign tx_data[6] = \^tx_data [2];
  assign tx_data[5] = \^tx_data [5];
  assign tx_data[4] = \^tx_data [0];
  assign tx_data[3] = \^tx_data [5];
  assign tx_data[2] = \^tx_data [2];
  assign tx_data[1] = \^tx_data [5];
  assign tx_data[0] = \^tx_data [0];
  design_1_Debugger_0_0_Debugger U0
       (.clk(clk),
        .rx_data(rx_data),
        .rx_data_valid(rx_data_valid),
        .tx_data({\^tx_data [5],\^tx_data [2],\^tx_data [0]}),
        .tx_data_sended(tx_data_sended),
        .tx_data_valid(tx_data_valid));
endmodule

(* ORIG_REF_NAME = "Debugger" *) 
module design_1_Debugger_0_0_Debugger
   (tx_data,
    tx_data_valid,
    clk,
    tx_data_sended,
    rx_data,
    rx_data_valid);
  output [2:0]tx_data;
  output tx_data_valid;
  input clk;
  input tx_data_sended;
  input [7:0]rx_data;
  input rx_data_valid;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire clk;
  wire [6:0]p_0_in;
  wire [7:0]rx_data;
  wire rx_data_valid;
  wire rx_instruction_buffer;
  wire \rx_instruction_buffer_reg_n_0_[0] ;
  wire [2:0]tx_data;
  wire \tx_data[4]_i_1_n_0 ;
  wire \tx_data[6]_i_1_n_0 ;
  wire \tx_data[6]_i_2_n_0 ;
  wire \tx_data[7]_i_1_n_0 ;
  wire \tx_data[7]_i_2_n_0 ;
  wire \tx_data[7]_i_3_n_0 ;
  wire \tx_data_buffer[0]_i_1_n_0 ;
  wire \tx_data_buffer[0]_i_2_n_0 ;
  wire \tx_data_buffer_reg_n_0_[0] ;
  wire tx_data_sended;
  wire tx_data_valid;
  wire tx_data_valid_i_1_n_0;
  wire [7:7]tx_instruction_buffer;
  wire \tx_instruction_buffer[7]_i_1_n_0 ;

  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[0]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state[4]_i_2_n_0 ),
        .I3(p_0_in[6]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(tx_data_sended),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(rx_data_valid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(rx_data_valid),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(rx_data_valid),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(rx_data_valid),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[6]),
        .I4(\FSM_onehot_state[4]_i_2_n_0 ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(tx_data_sended),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk),
        .CE(tx_data_sended),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk),
        .CE(tx_data_sended),
        .D(\FSM_onehot_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(clk),
        .CE(tx_data_sended),
        .D(\FSM_onehot_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(clk),
        .CE(tx_data_sended),
        .D(\FSM_onehot_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \rx_instruction_buffer[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(rx_data_valid),
        .O(rx_instruction_buffer));
  FDRE \rx_instruction_buffer_reg[0] 
       (.C(clk),
        .CE(rx_instruction_buffer),
        .D(rx_data[0]),
        .Q(\rx_instruction_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rx_instruction_buffer_reg[1] 
       (.C(clk),
        .CE(rx_instruction_buffer),
        .D(rx_data[1]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE \rx_instruction_buffer_reg[2] 
       (.C(clk),
        .CE(rx_instruction_buffer),
        .D(rx_data[2]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE \rx_instruction_buffer_reg[3] 
       (.C(clk),
        .CE(rx_instruction_buffer),
        .D(rx_data[3]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \rx_instruction_buffer_reg[4] 
       (.C(clk),
        .CE(rx_instruction_buffer),
        .D(rx_data[4]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \rx_instruction_buffer_reg[5] 
       (.C(clk),
        .CE(rx_instruction_buffer),
        .D(rx_data[5]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \rx_instruction_buffer_reg[6] 
       (.C(clk),
        .CE(rx_instruction_buffer),
        .D(rx_data[6]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \rx_instruction_buffer_reg[7] 
       (.C(clk),
        .CE(rx_instruction_buffer),
        .D(rx_data[7]),
        .Q(p_0_in[0]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEEEEFFFEEEEE000)) 
    \tx_data[4]_i_1 
       (.I0(\tx_data_buffer_reg_n_0_[0] ),
        .I1(\tx_data[7]_i_2_n_0 ),
        .I2(tx_data_sended),
        .I3(\tx_data[7]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(tx_data[0]),
        .O(\tx_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    \tx_data[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\tx_data[6]_i_2_n_0 ),
        .I5(tx_data[1]),
        .O(\tx_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \tx_data[6]_i_2 
       (.I0(tx_data_sended),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\tx_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEFFFEEEEE000)) 
    \tx_data[7]_i_1 
       (.I0(tx_instruction_buffer),
        .I1(\tx_data[7]_i_2_n_0 ),
        .I2(tx_data_sended),
        .I3(\tx_data[7]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(tx_data[2]),
        .O(\tx_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tx_data[7]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\tx_data[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tx_data[7]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\tx_data[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \tx_data_buffer[0]_i_1 
       (.I0(\rx_instruction_buffer_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\tx_data_buffer[0]_i_2_n_0 ),
        .I3(\FSM_onehot_state[4]_i_2_n_0 ),
        .I4(\tx_data_buffer_reg_n_0_[0] ),
        .O(\tx_data_buffer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \tx_data_buffer[0]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[6]),
        .O(\tx_data_buffer[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_buffer_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_data_buffer[0]_i_1_n_0 ),
        .Q(\tx_data_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_data[4]_i_1_n_0 ),
        .Q(tx_data[0]),
        .R(1'b0));
  FDRE \tx_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_data[6]_i_1_n_0 ),
        .Q(tx_data[1]),
        .R(1'b0));
  FDRE \tx_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_data[7]_i_1_n_0 ),
        .Q(tx_data[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hECEFECEC)) 
    tx_data_valid_i_1
       (.I0(tx_data_sended),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\tx_data[7]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(tx_data_valid),
        .O(tx_data_valid_i_1_n_0));
  FDRE tx_data_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_data_valid_i_1_n_0),
        .Q(tx_data_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \tx_instruction_buffer[7]_i_1 
       (.I0(\FSM_onehot_state[4]_i_2_n_0 ),
        .I1(p_0_in[6]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(tx_instruction_buffer),
        .O(\tx_instruction_buffer[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_instruction_buffer_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_instruction_buffer[7]_i_1_n_0 ),
        .Q(tx_instruction_buffer),
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
