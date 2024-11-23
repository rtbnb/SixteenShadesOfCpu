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
    clk100mhz_in : IN STD_LOGIC;
    clk50mhz_in : IN STD_LOGIC;
    debug_guard_clk : IN STD_LOGIC;
    wizard_locked : IN STD_LOGIC;
    fault_reset : IN STD_LOGIC;
    debug_reset : IN STD_LOGIC;
    debug_enable : IN STD_LOGIC;
    debug_mock_clk : IN STD_LOGIC;
    load_clk : OUT STD_LOGIC;
    exec_clk : OUT STD_LOGIC;
    debug_clk : OUT STD_LOGIC;
    ck_stable : OUT STD_LOGIC
  );
END main_clockcontroller_0_0;

ARCHITECTURE main_clockcontroller_0_0_arch OF main_clockcontroller_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_clockcontroller_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT clockcontroller IS
    PORT (
      clk100mhz_in : IN STD_LOGIC;
      clk50mhz_in : IN STD_LOGIC;
      debug_guard_clk : IN STD_LOGIC;
      wizard_locked : IN STD_LOGIC;
      fault_reset : IN STD_LOGIC;
      debug_reset : IN STD_LOGIC;
      debug_enable : IN STD_LOGIC;
      debug_mock_clk : IN STD_LOGIC;
      load_clk : OUT STD_LOGIC;
      exec_clk : OUT STD_LOGIC;
      debug_clk : OUT STD_LOGIC;
      ck_stable : OUT STD_LOGIC
    );
  END COMPONENT clockcontroller;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF main_clockcontroller_0_0_arch: ARCHITECTURE IS "clockcontroller,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF main_clockcontroller_0_0_arch : ARCHITECTURE IS "main_clockcontroller_0_0,clockcontroller,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF main_clockcontroller_0_0_arch: ARCHITECTURE IS "main_clockcontroller_0_0,clockcontroller,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=clockcontroller,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF main_clockcontroller_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF debug_clk: SIGNAL IS "XIL_INTERFACENAME debug_clk, ASSOCIATED_RESET debug_reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_clockcontroller_0_0_debug_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF debug_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 debug_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF debug_guard_clk: SIGNAL IS "XIL_INTERFACENAME debug_guard_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 90.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF debug_guard_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 debug_guard_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF debug_mock_clk: SIGNAL IS "XIL_INTERFACENAME debug_mock_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_debug_mock_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF debug_mock_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 debug_mock_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF debug_reset: SIGNAL IS "XIL_INTERFACENAME debug_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF debug_reset: SIGNAL IS "xilinx.com:signal:reset:1.0 debug_reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF exec_clk: SIGNAL IS "XIL_INTERFACENAME exec_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_clockcontroller_0_0_exec_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF exec_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 exec_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF fault_reset: SIGNAL IS "XIL_INTERFACENAME fault_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF fault_reset: SIGNAL IS "xilinx.com:signal:reset:1.0 fault_reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF load_clk: SIGNAL IS "XIL_INTERFACENAME load_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_clockcontroller_0_0_load_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF load_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 load_clk CLK";
BEGIN
  U0 : clockcontroller
    PORT MAP (
      clk100mhz_in => clk100mhz_in,
      clk50mhz_in => clk50mhz_in,
      debug_guard_clk => debug_guard_clk,
      wizard_locked => wizard_locked,
      fault_reset => fault_reset,
      debug_reset => debug_reset,
      debug_enable => debug_enable,
      debug_mock_clk => debug_mock_clk,
      load_clk => load_clk,
      exec_clk => exec_clk,
      debug_clk => debug_clk,
      ck_stable => ck_stable
    );
END main_clockcontroller_0_0_arch;
