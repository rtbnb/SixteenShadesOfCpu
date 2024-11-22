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

-- IP VLNV: xilinx.com:module_ref:ALU:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_ALU_0_6 IS
  PORT (
    CLK : IN STD_LOGIC;
    D1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    D2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ALU_OPP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    RHO_PIN : IN STD_LOGIC;
    ALU_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    CARRY_FLAG : OUT STD_LOGIC;
    ZERO_FLAG : OUT STD_LOGIC;
    SMALLER_ZERO_FLAG : OUT STD_LOGIC;
    BIGGER_ZERO_FLAG : OUT STD_LOGIC;
    OVERFLOW_FLAG : OUT STD_LOGIC;
    RHO_FLAG : OUT STD_LOGIC;
    NOT_ZERO_FLAG : OUT STD_LOGIC
  );
END design_1_ALU_0_6;

ARCHITECTURE design_1_ALU_0_6_arch OF design_1_ALU_0_6 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_ALU_0_6_arch: ARCHITECTURE IS "yes";
  COMPONENT ALU IS
    PORT (
      CLK : IN STD_LOGIC;
      D1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      D2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      ALU_OPP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      RHO_PIN : IN STD_LOGIC;
      ALU_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      CARRY_FLAG : OUT STD_LOGIC;
      ZERO_FLAG : OUT STD_LOGIC;
      SMALLER_ZERO_FLAG : OUT STD_LOGIC;
      BIGGER_ZERO_FLAG : OUT STD_LOGIC;
      OVERFLOW_FLAG : OUT STD_LOGIC;
      RHO_FLAG : OUT STD_LOGIC;
      NOT_ZERO_FLAG : OUT STD_LOGIC
    );
  END COMPONENT ALU;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_CLK_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK CLK";
BEGIN
  U0 : ALU
    PORT MAP (
      CLK => CLK,
      D1 => D1,
      D2 => D2,
      ALU_OPP => ALU_OPP,
      RHO_PIN => RHO_PIN,
      ALU_OUT => ALU_OUT,
      CARRY_FLAG => CARRY_FLAG,
      ZERO_FLAG => ZERO_FLAG,
      SMALLER_ZERO_FLAG => SMALLER_ZERO_FLAG,
      BIGGER_ZERO_FLAG => BIGGER_ZERO_FLAG,
      OVERFLOW_FLAG => OVERFLOW_FLAG,
      RHO_FLAG => RHO_FLAG,
      NOT_ZERO_FLAG => NOT_ZERO_FLAG
    );
END design_1_ALU_0_6_arch;
