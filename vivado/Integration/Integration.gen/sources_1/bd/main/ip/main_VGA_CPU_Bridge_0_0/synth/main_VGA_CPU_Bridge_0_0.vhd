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

-- IP VLNV: xilinx.com:module_ref:VGA_CPU_Bridge:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY main_VGA_CPU_Bridge_0_0 IS
  PORT (
    InstrExec_CLK : IN STD_LOGIC;
    Reset : IN STD_LOGIC;
    IsGPU_OP : IN STD_LOGIC;
    Immediate_In : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    Reg1_In : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    Reg2_In : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    IsGPU_OP_out : OUT STD_LOGIC;
    GPU_Command_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Arg1_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    Arg2_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END main_VGA_CPU_Bridge_0_0;

ARCHITECTURE main_VGA_CPU_Bridge_0_0_arch OF main_VGA_CPU_Bridge_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_VGA_CPU_Bridge_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT VGA_CPU_Bridge IS
    PORT (
      InstrExec_CLK : IN STD_LOGIC;
      Reset : IN STD_LOGIC;
      IsGPU_OP : IN STD_LOGIC;
      Immediate_In : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      Reg1_In : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      Reg2_In : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      IsGPU_OP_out : OUT STD_LOGIC;
      GPU_Command_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      Arg1_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      Arg2_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT VGA_CPU_Bridge;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF main_VGA_CPU_Bridge_0_0_arch: ARCHITECTURE IS "VGA_CPU_Bridge,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF main_VGA_CPU_Bridge_0_0_arch : ARCHITECTURE IS "main_VGA_CPU_Bridge_0_0,VGA_CPU_Bridge,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF main_VGA_CPU_Bridge_0_0_arch: ARCHITECTURE IS "main_VGA_CPU_Bridge_0_0,VGA_CPU_Bridge,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=VGA_CPU_Bridge,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF main_VGA_CPU_Bridge_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF InstrExec_CLK: SIGNAL IS "XIL_INTERFACENAME InstrExec_CLK, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_clockcontroller_0_0_exec_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF InstrExec_CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 InstrExec_CLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Reset: SIGNAL IS "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Reset: SIGNAL IS "xilinx.com:signal:reset:1.0 Reset RST";
BEGIN
  U0 : VGA_CPU_Bridge
    PORT MAP (
      InstrExec_CLK => InstrExec_CLK,
      Reset => Reset,
      IsGPU_OP => IsGPU_OP,
      Immediate_In => Immediate_In,
      Reg1_In => Reg1_In,
      Reg2_In => Reg2_In,
      IsGPU_OP_out => IsGPU_OP_out,
      GPU_Command_out => GPU_Command_out,
      Arg1_out => Arg1_out,
      Arg2_out => Arg2_out
    );
END main_VGA_CPU_Bridge_0_0_arch;
