// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov 15 11:23:48 2024
// Host        : 8x8-Bit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_CU_JumpController_0_0/main_CU_JumpController_0_0_sim_netlist.v
// Design      : main_CU_JumpController_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_CU_JumpController_0_0,CU_JumpController,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CU_JumpController,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module main_CU_JumpController_0_0
   (InstrExec_CLK,
    JMP,
    JMP_Conditional,
    JMP_Relative,
    JMP_Condition,
    Flags,
    JMP_Address,
    PC_Current,
    PC_Load,
    PC_Next);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 InstrExec_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME InstrExec_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input InstrExec_CLK;
  input JMP;
  input JMP_Conditional;
  input JMP_Relative;
  input [2:0]JMP_Condition;
  input [15:0]Flags;
  input [15:0]JMP_Address;
  input [15:0]PC_Current;
  output PC_Load;
  output [15:0]PC_Next;

  wire [15:0]Flags;
  wire JMP;
  wire [15:0]JMP_Address;
  wire [2:0]JMP_Condition;
  wire JMP_Conditional;
  wire JMP_Relative;
  wire [15:0]PC_Current;
  wire PC_Load;
  wire PC_Load_INST_0_i_1_n_0;
  wire PC_Load_INST_0_i_2_n_0;
  wire [15:0]PC_Next;

  LUT5 #(
    .INIT(32'hA2AAA222)) 
    PC_Load_INST_0
       (.I0(JMP),
        .I1(JMP_Conditional),
        .I2(PC_Load_INST_0_i_1_n_0),
        .I3(JMP_Condition[2]),
        .I4(PC_Load_INST_0_i_2_n_0),
        .O(PC_Load));
  LUT5 #(
    .INIT(32'hFC77FC44)) 
    PC_Load_INST_0_i_1
       (.I0(Flags[1]),
        .I1(JMP_Condition[1]),
        .I2(Flags[5]),
        .I3(JMP_Condition[0]),
        .I4(Flags[4]),
        .O(PC_Load_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    PC_Load_INST_0_i_2
       (.I0(Flags[3]),
        .I1(Flags[2]),
        .I2(JMP_Condition[1]),
        .I3(Flags[1]),
        .I4(JMP_Condition[0]),
        .I5(Flags[0]),
        .O(PC_Load_INST_0_i_2_n_0));
  main_CU_JumpController_0_0_CU_JumpController U0
       (.JMP_Address(JMP_Address),
        .JMP_Relative(JMP_Relative),
        .PC_Current(PC_Current),
        .PC_Next(PC_Next));
endmodule

(* ORIG_REF_NAME = "CU_JumpController" *) 
module main_CU_JumpController_0_0_CU_JumpController
   (PC_Next,
    PC_Current,
    JMP_Address,
    JMP_Relative);
  output [15:0]PC_Next;
  input [15:0]PC_Current;
  input [15:0]JMP_Address;
  input JMP_Relative;

  wire [15:0]JMP_Address;
  wire JMP_Relative;
  wire [15:0]PC_Current;
  wire [15:0]PC_Next;
  wire [15:0]relative_jump_destination;
  wire relative_jump_destination__0_carry__0_n_0;
  wire relative_jump_destination__0_carry__0_n_1;
  wire relative_jump_destination__0_carry__0_n_2;
  wire relative_jump_destination__0_carry__0_n_3;
  wire relative_jump_destination__0_carry__1_n_0;
  wire relative_jump_destination__0_carry__1_n_1;
  wire relative_jump_destination__0_carry__1_n_2;
  wire relative_jump_destination__0_carry__1_n_3;
  wire relative_jump_destination__0_carry__2_n_1;
  wire relative_jump_destination__0_carry__2_n_2;
  wire relative_jump_destination__0_carry__2_n_3;
  wire relative_jump_destination__0_carry_i_1__0_n_0;
  wire relative_jump_destination__0_carry_i_1__1_n_0;
  wire relative_jump_destination__0_carry_i_1__2_n_0;
  wire relative_jump_destination__0_carry_i_1_n_0;
  wire relative_jump_destination__0_carry_i_2__0_n_0;
  wire relative_jump_destination__0_carry_i_2__1_n_0;
  wire relative_jump_destination__0_carry_i_2__2_n_0;
  wire relative_jump_destination__0_carry_i_2_n_0;
  wire relative_jump_destination__0_carry_i_3__0_n_0;
  wire relative_jump_destination__0_carry_i_3__1_n_0;
  wire relative_jump_destination__0_carry_i_3__2_n_0;
  wire relative_jump_destination__0_carry_i_3_n_0;
  wire relative_jump_destination__0_carry_i_4__0_n_0;
  wire relative_jump_destination__0_carry_i_4__1_n_0;
  wire relative_jump_destination__0_carry_i_4__2_n_0;
  wire relative_jump_destination__0_carry_i_4_n_0;
  wire relative_jump_destination__0_carry_i_5__0_n_0;
  wire relative_jump_destination__0_carry_i_5__1_n_0;
  wire relative_jump_destination__0_carry_i_5__2_n_0;
  wire relative_jump_destination__0_carry_i_5_n_0;
  wire relative_jump_destination__0_carry_i_6__0_n_0;
  wire relative_jump_destination__0_carry_i_6__1_n_0;
  wire relative_jump_destination__0_carry_i_6__2_n_0;
  wire relative_jump_destination__0_carry_i_6_n_0;
  wire relative_jump_destination__0_carry_i_7__0_n_0;
  wire relative_jump_destination__0_carry_i_7__1_n_0;
  wire relative_jump_destination__0_carry_i_7__2_n_0;
  wire relative_jump_destination__0_carry_i_7_n_0;
  wire relative_jump_destination__0_carry_i_8__0_n_0;
  wire relative_jump_destination__0_carry_i_8__1_n_0;
  wire relative_jump_destination__0_carry_i_8_n_0;
  wire relative_jump_destination__0_carry_n_0;
  wire relative_jump_destination__0_carry_n_1;
  wire relative_jump_destination__0_carry_n_2;
  wire relative_jump_destination__0_carry_n_3;
  wire [3:3]NLW_relative_jump_destination__0_carry__2_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[0]_INST_0 
       (.I0(relative_jump_destination[0]),
        .I1(JMP_Address[0]),
        .I2(JMP_Relative),
        .O(PC_Next[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[10]_INST_0 
       (.I0(relative_jump_destination[10]),
        .I1(JMP_Address[10]),
        .I2(JMP_Relative),
        .O(PC_Next[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[11]_INST_0 
       (.I0(relative_jump_destination[11]),
        .I1(JMP_Address[11]),
        .I2(JMP_Relative),
        .O(PC_Next[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[12]_INST_0 
       (.I0(relative_jump_destination[12]),
        .I1(JMP_Address[12]),
        .I2(JMP_Relative),
        .O(PC_Next[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[13]_INST_0 
       (.I0(relative_jump_destination[13]),
        .I1(JMP_Address[13]),
        .I2(JMP_Relative),
        .O(PC_Next[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[14]_INST_0 
       (.I0(relative_jump_destination[14]),
        .I1(JMP_Address[14]),
        .I2(JMP_Relative),
        .O(PC_Next[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[15]_INST_0 
       (.I0(relative_jump_destination[15]),
        .I1(JMP_Address[15]),
        .I2(JMP_Relative),
        .O(PC_Next[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[1]_INST_0 
       (.I0(relative_jump_destination[1]),
        .I1(JMP_Address[1]),
        .I2(JMP_Relative),
        .O(PC_Next[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[2]_INST_0 
       (.I0(relative_jump_destination[2]),
        .I1(JMP_Address[2]),
        .I2(JMP_Relative),
        .O(PC_Next[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[3]_INST_0 
       (.I0(relative_jump_destination[3]),
        .I1(JMP_Address[3]),
        .I2(JMP_Relative),
        .O(PC_Next[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[4]_INST_0 
       (.I0(relative_jump_destination[4]),
        .I1(JMP_Address[4]),
        .I2(JMP_Relative),
        .O(PC_Next[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[5]_INST_0 
       (.I0(relative_jump_destination[5]),
        .I1(JMP_Address[5]),
        .I2(JMP_Relative),
        .O(PC_Next[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[6]_INST_0 
       (.I0(relative_jump_destination[6]),
        .I1(JMP_Address[6]),
        .I2(JMP_Relative),
        .O(PC_Next[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[7]_INST_0 
       (.I0(relative_jump_destination[7]),
        .I1(JMP_Address[7]),
        .I2(JMP_Relative),
        .O(PC_Next[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[8]_INST_0 
       (.I0(relative_jump_destination[8]),
        .I1(JMP_Address[8]),
        .I2(JMP_Relative),
        .O(PC_Next[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_Next[9]_INST_0 
       (.I0(relative_jump_destination[9]),
        .I1(JMP_Address[9]),
        .I2(JMP_Relative),
        .O(PC_Next[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 relative_jump_destination__0_carry
       (.CI(1'b0),
        .CO({relative_jump_destination__0_carry_n_0,relative_jump_destination__0_carry_n_1,relative_jump_destination__0_carry_n_2,relative_jump_destination__0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({relative_jump_destination__0_carry_i_1_n_0,relative_jump_destination__0_carry_i_2_n_0,relative_jump_destination__0_carry_i_3_n_0,relative_jump_destination__0_carry_i_4_n_0}),
        .O(relative_jump_destination[3:0]),
        .S({relative_jump_destination__0_carry_i_5_n_0,relative_jump_destination__0_carry_i_6_n_0,relative_jump_destination__0_carry_i_7_n_0,relative_jump_destination__0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 relative_jump_destination__0_carry__0
       (.CI(relative_jump_destination__0_carry_n_0),
        .CO({relative_jump_destination__0_carry__0_n_0,relative_jump_destination__0_carry__0_n_1,relative_jump_destination__0_carry__0_n_2,relative_jump_destination__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({relative_jump_destination__0_carry_i_1__0_n_0,relative_jump_destination__0_carry_i_2__0_n_0,relative_jump_destination__0_carry_i_3__0_n_0,relative_jump_destination__0_carry_i_4__0_n_0}),
        .O(relative_jump_destination[7:4]),
        .S({relative_jump_destination__0_carry_i_5__0_n_0,relative_jump_destination__0_carry_i_6__0_n_0,relative_jump_destination__0_carry_i_7__0_n_0,relative_jump_destination__0_carry_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 relative_jump_destination__0_carry__1
       (.CI(relative_jump_destination__0_carry__0_n_0),
        .CO({relative_jump_destination__0_carry__1_n_0,relative_jump_destination__0_carry__1_n_1,relative_jump_destination__0_carry__1_n_2,relative_jump_destination__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({relative_jump_destination__0_carry_i_1__1_n_0,relative_jump_destination__0_carry_i_2__1_n_0,relative_jump_destination__0_carry_i_3__1_n_0,relative_jump_destination__0_carry_i_4__1_n_0}),
        .O(relative_jump_destination[11:8]),
        .S({relative_jump_destination__0_carry_i_5__1_n_0,relative_jump_destination__0_carry_i_6__1_n_0,relative_jump_destination__0_carry_i_7__1_n_0,relative_jump_destination__0_carry_i_8__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 relative_jump_destination__0_carry__2
       (.CI(relative_jump_destination__0_carry__1_n_0),
        .CO({NLW_relative_jump_destination__0_carry__2_CO_UNCONNECTED[3],relative_jump_destination__0_carry__2_n_1,relative_jump_destination__0_carry__2_n_2,relative_jump_destination__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,relative_jump_destination__0_carry_i_1__2_n_0,relative_jump_destination__0_carry_i_2__2_n_0,relative_jump_destination__0_carry_i_3__2_n_0}),
        .O(relative_jump_destination[15:12]),
        .S({relative_jump_destination__0_carry_i_4__2_n_0,relative_jump_destination__0_carry_i_5__2_n_0,relative_jump_destination__0_carry_i_6__2_n_0,relative_jump_destination__0_carry_i_7__2_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry_i_1
       (.I0(JMP_Address[2]),
        .I1(PC_Current[2]),
        .O(relative_jump_destination__0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry_i_1__0
       (.I0(JMP_Address[6]),
        .I1(PC_Current[6]),
        .O(relative_jump_destination__0_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry_i_1__1
       (.I0(JMP_Address[10]),
        .I1(PC_Current[10]),
        .O(relative_jump_destination__0_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry_i_1__2
       (.I0(JMP_Address[13]),
        .I1(PC_Current[13]),
        .O(relative_jump_destination__0_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    relative_jump_destination__0_carry_i_2
       (.I0(PC_Current[2]),
        .I1(JMP_Address[2]),
        .O(relative_jump_destination__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry_i_2__0
       (.I0(JMP_Address[5]),
        .I1(PC_Current[5]),
        .O(relative_jump_destination__0_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry_i_2__1
       (.I0(JMP_Address[9]),
        .I1(PC_Current[9]),
        .O(relative_jump_destination__0_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry_i_2__2
       (.I0(JMP_Address[12]),
        .I1(PC_Current[12]),
        .O(relative_jump_destination__0_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry_i_3
       (.I0(JMP_Address[0]),
        .I1(PC_Current[0]),
        .O(relative_jump_destination__0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry_i_3__0
       (.I0(JMP_Address[4]),
        .I1(PC_Current[4]),
        .O(relative_jump_destination__0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry_i_3__1
       (.I0(JMP_Address[8]),
        .I1(PC_Current[8]),
        .O(relative_jump_destination__0_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry_i_3__2
       (.I0(JMP_Address[11]),
        .I1(PC_Current[11]),
        .O(relative_jump_destination__0_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    relative_jump_destination__0_carry_i_4
       (.I0(PC_Current[0]),
        .I1(JMP_Address[0]),
        .O(relative_jump_destination__0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry_i_4__0
       (.I0(JMP_Address[3]),
        .I1(PC_Current[3]),
        .O(relative_jump_destination__0_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    relative_jump_destination__0_carry_i_4__1
       (.I0(JMP_Address[7]),
        .I1(PC_Current[7]),
        .O(relative_jump_destination__0_carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry_i_4__2
       (.I0(PC_Current[14]),
        .I1(JMP_Address[14]),
        .I2(PC_Current[15]),
        .I3(JMP_Address[15]),
        .O(relative_jump_destination__0_carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry_i_5
       (.I0(PC_Current[2]),
        .I1(JMP_Address[2]),
        .I2(PC_Current[3]),
        .I3(JMP_Address[3]),
        .O(relative_jump_destination__0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry_i_5__0
       (.I0(PC_Current[6]),
        .I1(JMP_Address[6]),
        .I2(PC_Current[7]),
        .I3(JMP_Address[7]),
        .O(relative_jump_destination__0_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry_i_5__1
       (.I0(PC_Current[10]),
        .I1(JMP_Address[10]),
        .I2(PC_Current[11]),
        .I3(JMP_Address[11]),
        .O(relative_jump_destination__0_carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry_i_5__2
       (.I0(PC_Current[13]),
        .I1(JMP_Address[13]),
        .I2(PC_Current[14]),
        .I3(JMP_Address[14]),
        .O(relative_jump_destination__0_carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h6999)) 
    relative_jump_destination__0_carry_i_6
       (.I0(PC_Current[2]),
        .I1(JMP_Address[2]),
        .I2(JMP_Address[1]),
        .I3(PC_Current[1]),
        .O(relative_jump_destination__0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry_i_6__0
       (.I0(PC_Current[5]),
        .I1(JMP_Address[5]),
        .I2(PC_Current[6]),
        .I3(JMP_Address[6]),
        .O(relative_jump_destination__0_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry_i_6__1
       (.I0(PC_Current[9]),
        .I1(JMP_Address[9]),
        .I2(PC_Current[10]),
        .I3(JMP_Address[10]),
        .O(relative_jump_destination__0_carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry_i_6__2
       (.I0(PC_Current[12]),
        .I1(JMP_Address[12]),
        .I2(PC_Current[13]),
        .I3(JMP_Address[13]),
        .O(relative_jump_destination__0_carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'hE11E)) 
    relative_jump_destination__0_carry_i_7
       (.I0(PC_Current[0]),
        .I1(JMP_Address[0]),
        .I2(PC_Current[1]),
        .I3(JMP_Address[1]),
        .O(relative_jump_destination__0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry_i_7__0
       (.I0(PC_Current[4]),
        .I1(JMP_Address[4]),
        .I2(PC_Current[5]),
        .I3(JMP_Address[5]),
        .O(relative_jump_destination__0_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry_i_7__1
       (.I0(PC_Current[8]),
        .I1(JMP_Address[8]),
        .I2(PC_Current[9]),
        .I3(JMP_Address[9]),
        .O(relative_jump_destination__0_carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry_i_7__2
       (.I0(PC_Current[11]),
        .I1(JMP_Address[11]),
        .I2(PC_Current[12]),
        .I3(JMP_Address[12]),
        .O(relative_jump_destination__0_carry_i_7__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    relative_jump_destination__0_carry_i_8
       (.I0(JMP_Address[0]),
        .I1(PC_Current[0]),
        .O(relative_jump_destination__0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry_i_8__0
       (.I0(PC_Current[3]),
        .I1(JMP_Address[3]),
        .I2(PC_Current[4]),
        .I3(JMP_Address[4]),
        .O(relative_jump_destination__0_carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    relative_jump_destination__0_carry_i_8__1
       (.I0(PC_Current[7]),
        .I1(JMP_Address[7]),
        .I2(PC_Current[8]),
        .I3(JMP_Address[8]),
        .O(relative_jump_destination__0_carry_i_8__1_n_0));
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
