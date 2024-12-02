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

-- IP VLNV: xilinx.com:module_ref:mmio:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY main_mmio_0_0 IS
  PORT (
    clk100mhzIn : IN STD_LOGIC;
    clk50mhzIn : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    we : IN STD_LOGIC;
    addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    led00 : OUT STD_LOGIC;
    led01 : OUT STD_LOGIC;
    led02 : OUT STD_LOGIC;
    led03 : OUT STD_LOGIC;
    led04 : OUT STD_LOGIC;
    led05 : OUT STD_LOGIC;
    led06 : OUT STD_LOGIC;
    led07 : OUT STD_LOGIC;
    led08 : OUT STD_LOGIC;
    led09 : OUT STD_LOGIC;
    led10 : OUT STD_LOGIC;
    led11 : OUT STD_LOGIC;
    led12 : OUT STD_LOGIC;
    led13 : OUT STD_LOGIC;
    led14 : OUT STD_LOGIC;
    led15 : OUT STD_LOGIC;
    led16 : OUT STD_LOGIC;
    led17 : OUT STD_LOGIC;
    led18 : OUT STD_LOGIC;
    led19 : OUT STD_LOGIC;
    rgb0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    rgb1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    rgb2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    rgb3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    btn00 : IN STD_LOGIC;
    btn01 : IN STD_LOGIC;
    btn02 : IN STD_LOGIC;
    btn03 : IN STD_LOGIC;
    btn04 : IN STD_LOGIC;
    btn05 : IN STD_LOGIC;
    btn06 : IN STD_LOGIC;
    btn07 : IN STD_LOGIC;
    btn08 : IN STD_LOGIC;
    btn09 : IN STD_LOGIC;
    btn10 : IN STD_LOGIC;
    btn11 : IN STD_LOGIC;
    btn12 : IN STD_LOGIC;
    btn13 : IN STD_LOGIC;
    btn14 : IN STD_LOGIC;
    btn15 : IN STD_LOGIC;
    btn16 : IN STD_LOGIC;
    btn17 : IN STD_LOGIC;
    btn18 : IN STD_LOGIC;
    btn19 : IN STD_LOGIC;
    rho : OUT STD_LOGIC
  );
END main_mmio_0_0;

ARCHITECTURE main_mmio_0_0_arch OF main_mmio_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_mmio_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mmio IS
    PORT (
      clk100mhzIn : IN STD_LOGIC;
      clk50mhzIn : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      we : IN STD_LOGIC;
      addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      led00 : OUT STD_LOGIC;
      led01 : OUT STD_LOGIC;
      led02 : OUT STD_LOGIC;
      led03 : OUT STD_LOGIC;
      led04 : OUT STD_LOGIC;
      led05 : OUT STD_LOGIC;
      led06 : OUT STD_LOGIC;
      led07 : OUT STD_LOGIC;
      led08 : OUT STD_LOGIC;
      led09 : OUT STD_LOGIC;
      led10 : OUT STD_LOGIC;
      led11 : OUT STD_LOGIC;
      led12 : OUT STD_LOGIC;
      led13 : OUT STD_LOGIC;
      led14 : OUT STD_LOGIC;
      led15 : OUT STD_LOGIC;
      led16 : OUT STD_LOGIC;
      led17 : OUT STD_LOGIC;
      led18 : OUT STD_LOGIC;
      led19 : OUT STD_LOGIC;
      rgb0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      rgb1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      rgb2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      rgb3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      btn00 : IN STD_LOGIC;
      btn01 : IN STD_LOGIC;
      btn02 : IN STD_LOGIC;
      btn03 : IN STD_LOGIC;
      btn04 : IN STD_LOGIC;
      btn05 : IN STD_LOGIC;
      btn06 : IN STD_LOGIC;
      btn07 : IN STD_LOGIC;
      btn08 : IN STD_LOGIC;
      btn09 : IN STD_LOGIC;
      btn10 : IN STD_LOGIC;
      btn11 : IN STD_LOGIC;
      btn12 : IN STD_LOGIC;
      btn13 : IN STD_LOGIC;
      btn14 : IN STD_LOGIC;
      btn15 : IN STD_LOGIC;
      btn16 : IN STD_LOGIC;
      btn17 : IN STD_LOGIC;
      btn18 : IN STD_LOGIC;
      btn19 : IN STD_LOGIC;
      rho : OUT STD_LOGIC
    );
  END COMPONENT mmio;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF main_mmio_0_0_arch: ARCHITECTURE IS "mmio,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF main_mmio_0_0_arch : ARCHITECTURE IS "main_mmio_0_0,mmio,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF main_mmio_0_0_arch: ARCHITECTURE IS "main_mmio_0_0,mmio,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mmio,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF main_mmio_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : mmio
    PORT MAP (
      clk100mhzIn => clk100mhzIn,
      clk50mhzIn => clk50mhzIn,
      clk => clk,
      we => we,
      addr => addr,
      din => din,
      dout => dout,
      led00 => led00,
      led01 => led01,
      led02 => led02,
      led03 => led03,
      led04 => led04,
      led05 => led05,
      led06 => led06,
      led07 => led07,
      led08 => led08,
      led09 => led09,
      led10 => led10,
      led11 => led11,
      led12 => led12,
      led13 => led13,
      led14 => led14,
      led15 => led15,
      led16 => led16,
      led17 => led17,
      led18 => led18,
      led19 => led19,
      rgb0 => rgb0,
      rgb1 => rgb1,
      rgb2 => rgb2,
      rgb3 => rgb3,
      btn00 => btn00,
      btn01 => btn01,
      btn02 => btn02,
      btn03 => btn03,
      btn04 => btn04,
      btn05 => btn05,
      btn06 => btn06,
      btn07 => btn07,
      btn08 => btn08,
      btn09 => btn09,
      btn10 => btn10,
      btn11 => btn11,
      btn12 => btn12,
      btn13 => btn13,
      btn14 => btn14,
      btn15 => btn15,
      btn16 => btn16,
      btn17 => btn17,
      btn18 => btn18,
      btn19 => btn19,
      rho => rho
    );
END main_mmio_0_0_arch;
