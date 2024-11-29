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

-- IP VLNV: xilinx.com:module_ref:mmu:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY main_block_mmu_1_0 IS
  PORT (
    loadClk : IN STD_LOGIC;
    gramAddr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    gramDin : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    gramBank : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gramWe : IN STD_LOGIC;
    gramOe : IN STD_LOGIC;
    gramDout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    iramAddr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    iramDout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    debugEnable : IN STD_LOGIC;
    debugOverrideEnable : IN STD_LOGIC;
    debugClk : IN STD_LOGIC;
    debugAddr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    debugDin : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    debugBank : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    debugWe : IN STD_LOGIC;
    debugDout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    gpuClk : IN STD_LOGIC;
    gpuAddr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    gpuDin : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    gpuWe : IN STD_LOGIC;
    gpuDout : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    vgaClk : IN STD_LOGIC;
    vgaAddr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    vgaDout : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    vramaMemAddr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    vramaMemClk : OUT STD_LOGIC;
    vramaMemDin : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    vramaMemWe : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    vramaMemDout : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    vrambMemAddr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    vrambMemClk : OUT STD_LOGIC;
    vrambMemDin : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    vrambMemWe : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    vrambMemDout : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    mmioMemClk : OUT STD_LOGIC;
    mmioMemWe : OUT STD_LOGIC;
    mmioMemAddr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    mmioMemDin : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    mmioMemDout : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END main_block_mmu_1_0;

ARCHITECTURE main_block_mmu_1_0_arch OF main_block_mmu_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_block_mmu_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mmu IS
    PORT (
      loadClk : IN STD_LOGIC;
      gramAddr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      gramDin : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      gramBank : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      gramWe : IN STD_LOGIC;
      gramOe : IN STD_LOGIC;
      gramDout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      iramAddr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      iramDout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      debugEnable : IN STD_LOGIC;
      debugOverrideEnable : IN STD_LOGIC;
      debugClk : IN STD_LOGIC;
      debugAddr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      debugDin : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      debugBank : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      debugWe : IN STD_LOGIC;
      debugDout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      gpuClk : IN STD_LOGIC;
      gpuAddr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      gpuDin : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      gpuWe : IN STD_LOGIC;
      gpuDout : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      vgaClk : IN STD_LOGIC;
      vgaAddr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      vgaDout : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      vramaMemAddr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      vramaMemClk : OUT STD_LOGIC;
      vramaMemDin : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      vramaMemWe : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      vramaMemDout : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      vrambMemAddr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      vrambMemClk : OUT STD_LOGIC;
      vrambMemDin : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      vrambMemWe : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      vrambMemDout : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      mmioMemClk : OUT STD_LOGIC;
      mmioMemWe : OUT STD_LOGIC;
      mmioMemAddr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      mmioMemDin : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      mmioMemDout : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT mmu;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF main_block_mmu_1_0_arch: ARCHITECTURE IS "mmu,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF main_block_mmu_1_0_arch : ARCHITECTURE IS "main_block_mmu_1_0,mmu,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF main_block_mmu_1_0_arch: ARCHITECTURE IS "main_block_mmu_1_0,mmu,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mmu,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF main_block_mmu_1_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : mmu
    PORT MAP (
      loadClk => loadClk,
      gramAddr => gramAddr,
      gramDin => gramDin,
      gramBank => gramBank,
      gramWe => gramWe,
      gramOe => gramOe,
      gramDout => gramDout,
      iramAddr => iramAddr,
      iramDout => iramDout,
      debugEnable => debugEnable,
      debugOverrideEnable => debugOverrideEnable,
      debugClk => debugClk,
      debugAddr => debugAddr,
      debugDin => debugDin,
      debugBank => debugBank,
      debugWe => debugWe,
      debugDout => debugDout,
      gpuClk => gpuClk,
      gpuAddr => gpuAddr,
      gpuDin => gpuDin,
      gpuWe => gpuWe,
      gpuDout => gpuDout,
      vgaClk => vgaClk,
      vgaAddr => vgaAddr,
      vgaDout => vgaDout,
      vramaMemAddr => vramaMemAddr,
      vramaMemClk => vramaMemClk,
      vramaMemDin => vramaMemDin,
      vramaMemWe => vramaMemWe,
      vramaMemDout => vramaMemDout,
      vrambMemAddr => vrambMemAddr,
      vrambMemClk => vrambMemClk,
      vrambMemDin => vrambMemDin,
      vrambMemWe => vrambMemWe,
      vrambMemDout => vrambMemDout,
      mmioMemClk => mmioMemClk,
      mmioMemWe => mmioMemWe,
      mmioMemAddr => mmioMemAddr,
      mmioMemDin => mmioMemDin,
      mmioMemDout => mmioMemDout
    );
END main_block_mmu_1_0_arch;
