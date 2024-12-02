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

-- IP VLNV: xilinx.com:module_ref:Pipelining_Forwarder:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY main_Pipelining_Forwarder_0_0 IS
  PORT (
    reg1Addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    reg2Addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    reg1Read : IN STD_LOGIC;
    reg2Read : IN STD_LOGIC;
    rfIsRAMOp : IN STD_LOGIC;
    execRegWriteAddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    execWritesReg : IN STD_LOGIC;
    execIsALUOp : IN STD_LOGIC;
    reg1Data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    reg2Data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    currentBankID : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    executionWriteData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    executionFlags : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    forwardedOperand1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    forwardedOperand2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    forwardedBankID : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END main_Pipelining_Forwarder_0_0;

ARCHITECTURE main_Pipelining_Forwarder_0_0_arch OF main_Pipelining_Forwarder_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_Pipelining_Forwarder_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Pipelining_Forwarder IS
    PORT (
      reg1Addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      reg2Addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      reg1Read : IN STD_LOGIC;
      reg2Read : IN STD_LOGIC;
      rfIsRAMOp : IN STD_LOGIC;
      execRegWriteAddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      execWritesReg : IN STD_LOGIC;
      execIsALUOp : IN STD_LOGIC;
      reg1Data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      reg2Data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      currentBankID : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      executionWriteData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      executionFlags : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      forwardedOperand1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      forwardedOperand2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      forwardedBankID : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT Pipelining_Forwarder;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF main_Pipelining_Forwarder_0_0_arch: ARCHITECTURE IS "Pipelining_Forwarder,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF main_Pipelining_Forwarder_0_0_arch : ARCHITECTURE IS "main_Pipelining_Forwarder_0_0,Pipelining_Forwarder,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF main_Pipelining_Forwarder_0_0_arch: ARCHITECTURE IS "main_Pipelining_Forwarder_0_0,Pipelining_Forwarder,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Pipelining_Forwarder,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF main_Pipelining_Forwarder_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : Pipelining_Forwarder
    PORT MAP (
      reg1Addr => reg1Addr,
      reg2Addr => reg2Addr,
      reg1Read => reg1Read,
      reg2Read => reg2Read,
      rfIsRAMOp => rfIsRAMOp,
      execRegWriteAddr => execRegWriteAddr,
      execWritesReg => execWritesReg,
      execIsALUOp => execIsALUOp,
      reg1Data => reg1Data,
      reg2Data => reg2Data,
      currentBankID => currentBankID,
      executionWriteData => executionWriteData,
      executionFlags => executionFlags,
      forwardedOperand1 => forwardedOperand1,
      forwardedOperand2 => forwardedOperand2,
      forwardedBankID => forwardedBankID
    );
END main_Pipelining_Forwarder_0_0_arch;
