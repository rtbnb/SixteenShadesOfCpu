-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:Pipelining_WriteBackStage:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY main_Pipelining_WriteBack_0_0 IS
  PORT (
    InstrLoad_CLK : IN STD_LOGIC;
    Reset : IN STD_LOGIC;
    WriteAddress : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    WriteData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    Flags : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    WHB : IN STD_LOGIC;
    WLB : IN STD_LOGIC;
    Is_ALU_OP : IN STD_LOGIC;
    JMP : IN STD_LOGIC;
    WriteAddress_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    WriteData_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    Flags_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    RF_WE_out : OUT STD_LOGIC;
    Is_ALU_OP_out : OUT STD_LOGIC;
    JMP_out : OUT STD_LOGIC
  );
END main_Pipelining_WriteBack_0_0;

ARCHITECTURE main_Pipelining_WriteBack_0_0_arch OF main_Pipelining_WriteBack_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_Pipelining_WriteBack_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Pipelining_WriteBackStage IS
    PORT (
      InstrLoad_CLK : IN STD_LOGIC;
      Reset : IN STD_LOGIC;
      WriteAddress : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      WriteData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      Flags : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      WHB : IN STD_LOGIC;
      WLB : IN STD_LOGIC;
      Is_ALU_OP : IN STD_LOGIC;
      JMP : IN STD_LOGIC;
      WriteAddress_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      WriteData_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      Flags_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      RF_WE_out : OUT STD_LOGIC;
      Is_ALU_OP_out : OUT STD_LOGIC;
      JMP_out : OUT STD_LOGIC
    );
  END COMPONENT Pipelining_WriteBackStage;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF InstrLoad_CLK: SIGNAL IS "XIL_INTERFACENAME InstrLoad_CLK, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_clockcontroller_0_0_load_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF InstrLoad_CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 InstrLoad_CLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Reset: SIGNAL IS "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Reset: SIGNAL IS "xilinx.com:signal:reset:1.0 Reset RST";
BEGIN
  U0 : Pipelining_WriteBackStage
    PORT MAP (
      InstrLoad_CLK => InstrLoad_CLK,
      Reset => Reset,
      WriteAddress => WriteAddress,
      WriteData => WriteData,
      Flags => Flags,
      WHB => WHB,
      WLB => WLB,
      Is_ALU_OP => Is_ALU_OP,
      JMP => JMP,
      WriteAddress_out => WriteAddress_out,
      WriteData_out => WriteData_out,
      Flags_out => Flags_out,
      RF_WE_out => RF_WE_out,
      Is_ALU_OP_out => Is_ALU_OP_out,
      JMP_out => JMP_out
    );
END main_Pipelining_WriteBack_0_0_arch;
