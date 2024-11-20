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

-- IP VLNV: xilinx.com:module_ref:CU_JumpController:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY main_CU_JumpController_0_0 IS
  PORT (
    InstrExec_CLK : IN STD_LOGIC;
    JMP : IN STD_LOGIC;
    JMP_Conditional : IN STD_LOGIC;
    JMP_Relative : IN STD_LOGIC;
    JMP_Condition : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    Flags : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    JMP_Address : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    PC_Current : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    PC_Load : OUT STD_LOGIC;
    PC_Next : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END main_CU_JumpController_0_0;

ARCHITECTURE main_CU_JumpController_0_0_arch OF main_CU_JumpController_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_CU_JumpController_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT CU_JumpController IS
    PORT (
      InstrExec_CLK : IN STD_LOGIC;
      JMP : IN STD_LOGIC;
      JMP_Conditional : IN STD_LOGIC;
      JMP_Relative : IN STD_LOGIC;
      JMP_Condition : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      Flags : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      JMP_Address : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      PC_Current : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      PC_Load : OUT STD_LOGIC;
      PC_Next : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT CU_JumpController;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF InstrExec_CLK: SIGNAL IS "XIL_INTERFACENAME InstrExec_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_clockcontroller_0_0_exec_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF InstrExec_CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 InstrExec_CLK CLK";
BEGIN
  U0 : CU_JumpController
    PORT MAP (
      InstrExec_CLK => InstrExec_CLK,
      JMP => JMP,
      JMP_Conditional => JMP_Conditional,
      JMP_Relative => JMP_Relative,
      JMP_Condition => JMP_Condition,
      Flags => Flags,
      JMP_Address => JMP_Address,
      PC_Current => PC_Current,
      PC_Load => PC_Load,
      PC_Next => PC_Next
    );
END main_CU_JumpController_0_0_arch;
