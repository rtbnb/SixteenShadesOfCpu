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

-- IP VLNV: xilinx.com:module_ref:clockcontroller:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY main_clockcontroller_0_0 IS
  PORT (
    clk100mhzIn : IN STD_LOGIC;
    faultReset : IN STD_LOGIC;
    debugReset : IN STD_LOGIC;
    debugEnable : IN STD_LOGIC;
    debugMockClk : IN STD_LOGIC;
    debugMmuOverrideEnable : IN STD_LOGIC;
    loadClk : OUT STD_LOGIC;
    vgaClk : OUT STD_LOGIC;
    debugClk : OUT STD_LOGIC;
    clk100mhzOut : OUT STD_LOGIC
  );
END main_clockcontroller_0_0;

ARCHITECTURE main_clockcontroller_0_0_arch OF main_clockcontroller_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_clockcontroller_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT clockcontroller IS
    PORT (
      clk100mhzIn : IN STD_LOGIC;
      faultReset : IN STD_LOGIC;
      debugReset : IN STD_LOGIC;
      debugEnable : IN STD_LOGIC;
      debugMockClk : IN STD_LOGIC;
      debugMmuOverrideEnable : IN STD_LOGIC;
      loadClk : OUT STD_LOGIC;
      vgaClk : OUT STD_LOGIC;
      debugClk : OUT STD_LOGIC;
      clk100mhzOut : OUT STD_LOGIC
    );
  END COMPONENT clockcontroller;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF debugClk: SIGNAL IS "XIL_INTERFACENAME debug_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_clockcontroller_0_0_debugClk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF debugClk: SIGNAL IS "xilinx.com:signal:clock:1.0 debug_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF loadClk: SIGNAL IS "XIL_INTERFACENAME loadClk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_clockcontroller_0_0_loadClk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF loadClk: SIGNAL IS "xilinx.com:signal:clock:1.0 loadClk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF vgaClk: SIGNAL IS "XIL_INTERFACENAME vgaClk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_clockcontroller_0_0_vgaClk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF vgaClk: SIGNAL IS "xilinx.com:signal:clock:1.0 vgaClk CLK";
BEGIN
  U0 : clockcontroller
    PORT MAP (
      clk100mhzIn => clk100mhzIn,
      faultReset => faultReset,
      debugReset => debugReset,
      debugEnable => debugEnable,
      debugMockClk => debugMockClk,
      debugMmuOverrideEnable => debugMmuOverrideEnable,
      loadClk => loadClk,
      vgaClk => vgaClk,
      debugClk => debugClk,
      clk100mhzOut => clk100mhzOut
    );
END main_clockcontroller_0_0_arch;
