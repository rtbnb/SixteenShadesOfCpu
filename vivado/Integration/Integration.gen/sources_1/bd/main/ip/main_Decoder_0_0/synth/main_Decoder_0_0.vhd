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

-- IP VLNV: xilinx.com:module_ref:Decoder:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY main_Decoder_0_0 IS
  PORT (
    Instruction : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    Register1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Register2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    WriteBackRegister : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Immediate : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    JMP_Condition : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END main_Decoder_0_0;

ARCHITECTURE main_Decoder_0_0_arch OF main_Decoder_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_Decoder_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Decoder IS
    PORT (
      Instruction : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      Register1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      Register2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      WriteBackRegister : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      Immediate : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      JMP_Condition : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
  END COMPONENT Decoder;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF main_Decoder_0_0_arch: ARCHITECTURE IS "Decoder,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF main_Decoder_0_0_arch : ARCHITECTURE IS "main_Decoder_0_0,Decoder,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF main_Decoder_0_0_arch: ARCHITECTURE IS "main_Decoder_0_0,Decoder,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Decoder,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF main_Decoder_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : Decoder
    PORT MAP (
      Instruction => Instruction,
      Register1 => Register1,
      Register2 => Register2,
      WriteBackRegister => WriteBackRegister,
      Immediate => Immediate,
      JMP_Condition => JMP_Condition
    );
END main_Decoder_0_0_arch;
