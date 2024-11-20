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

ENTITY main_block_mmu_0_0 IS
  PORT (
    clk200mhz : IN STD_LOGIC;
    debug_en_lock : OUT STD_LOGIC;
    fault : OUT STD_LOGIC;
    ck_stable : IN STD_LOGIC;
    cpu_sync : IN STD_LOGIC;
    debug_sync : IN STD_LOGIC;
    vram_sync : IN STD_LOGIC;
    debug_clk200mhz : IN STD_LOGIC;
    debug_we : IN STD_LOGIC;
    debug_enable : IN STD_LOGIC;
    debug_override_enable : IN STD_LOGIC;
    debug_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    debug_din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    debug_bank : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    debug_dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    iram_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    iram_dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    gram_we : IN STD_LOGIC;
    gram_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    gram_din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    gram_dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    gram_bank : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    vram_clk200mhz : IN STD_LOGIC;
    vram_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    vram_dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    iram_mem_addr : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    iram_mem_ck : OUT STD_LOGIC;
    iram_mem_din : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    iram_mem_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    iram_mem_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    gram_mem_addr : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    gram_mem_ck : OUT STD_LOGIC;
    gram_mem_din : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    gram_mem_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    gram_mem_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    vrama_mem_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    vrama_mem_ck : OUT STD_LOGIC;
    vrama_mem_din : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    vrama_mem_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    vrama_mem_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    vramb_mem_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    vramb_mem_ck : OUT STD_LOGIC;
    vramb_mem_din : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    vramb_mem_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    vramb_mem_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    mmio_mem_ck : OUT STD_LOGIC;
    mmio_mem_we : OUT STD_LOGIC;
    mmio_mem_oe : OUT STD_LOGIC;
    mmio_mem_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    mmio_mem_din : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    mmio_mem_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END main_block_mmu_0_0;

ARCHITECTURE main_block_mmu_0_0_arch OF main_block_mmu_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_block_mmu_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mmu IS
    PORT (
      clk200mhz : IN STD_LOGIC;
      debug_en_lock : OUT STD_LOGIC;
      fault : OUT STD_LOGIC;
      ck_stable : IN STD_LOGIC;
      cpu_sync : IN STD_LOGIC;
      debug_sync : IN STD_LOGIC;
      vram_sync : IN STD_LOGIC;
      debug_clk200mhz : IN STD_LOGIC;
      debug_we : IN STD_LOGIC;
      debug_enable : IN STD_LOGIC;
      debug_override_enable : IN STD_LOGIC;
      debug_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      debug_din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      debug_bank : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      debug_dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      iram_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      iram_dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      gram_we : IN STD_LOGIC;
      gram_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      gram_din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      gram_dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      gram_bank : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      vram_clk200mhz : IN STD_LOGIC;
      vram_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      vram_dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      iram_mem_addr : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      iram_mem_ck : OUT STD_LOGIC;
      iram_mem_din : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      iram_mem_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      iram_mem_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      gram_mem_addr : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      gram_mem_ck : OUT STD_LOGIC;
      gram_mem_din : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      gram_mem_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      gram_mem_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      vrama_mem_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      vrama_mem_ck : OUT STD_LOGIC;
      vrama_mem_din : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      vrama_mem_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      vrama_mem_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      vramb_mem_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      vramb_mem_ck : OUT STD_LOGIC;
      vramb_mem_din : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      vramb_mem_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      vramb_mem_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      mmio_mem_ck : OUT STD_LOGIC;
      mmio_mem_we : OUT STD_LOGIC;
      mmio_mem_oe : OUT STD_LOGIC;
      mmio_mem_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      mmio_mem_din : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      mmio_mem_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT mmu;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF main_block_mmu_0_0_arch: ARCHITECTURE IS "mmu,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF main_block_mmu_0_0_arch : ARCHITECTURE IS "main_block_mmu_0_0,mmu,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF main_block_mmu_0_0_arch: ARCHITECTURE IS "main_block_mmu_0_0,mmu,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mmu,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF main_block_mmu_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : mmu
    PORT MAP (
      clk200mhz => clk200mhz,
      debug_en_lock => debug_en_lock,
      fault => fault,
      ck_stable => ck_stable,
      cpu_sync => cpu_sync,
      debug_sync => debug_sync,
      vram_sync => vram_sync,
      debug_clk200mhz => debug_clk200mhz,
      debug_we => debug_we,
      debug_enable => debug_enable,
      debug_override_enable => debug_override_enable,
      debug_addr => debug_addr,
      debug_din => debug_din,
      debug_bank => debug_bank,
      debug_dout => debug_dout,
      iram_addr => iram_addr,
      iram_dout => iram_dout,
      gram_we => gram_we,
      gram_addr => gram_addr,
      gram_din => gram_din,
      gram_dout => gram_dout,
      gram_bank => gram_bank,
      vram_clk200mhz => vram_clk200mhz,
      vram_addr => vram_addr,
      vram_dout => vram_dout,
      iram_mem_addr => iram_mem_addr,
      iram_mem_ck => iram_mem_ck,
      iram_mem_din => iram_mem_din,
      iram_mem_we => iram_mem_we,
      iram_mem_dout => iram_mem_dout,
      gram_mem_addr => gram_mem_addr,
      gram_mem_ck => gram_mem_ck,
      gram_mem_din => gram_mem_din,
      gram_mem_we => gram_mem_we,
      gram_mem_dout => gram_mem_dout,
      vrama_mem_addr => vrama_mem_addr,
      vrama_mem_ck => vrama_mem_ck,
      vrama_mem_din => vrama_mem_din,
      vrama_mem_we => vrama_mem_we,
      vrama_mem_dout => vrama_mem_dout,
      vramb_mem_addr => vramb_mem_addr,
      vramb_mem_ck => vramb_mem_ck,
      vramb_mem_din => vramb_mem_din,
      vramb_mem_we => vramb_mem_we,
      vramb_mem_dout => vramb_mem_dout,
      mmio_mem_ck => mmio_mem_ck,
      mmio_mem_we => mmio_mem_we,
      mmio_mem_oe => mmio_mem_oe,
      mmio_mem_addr => mmio_mem_addr,
      mmio_mem_din => mmio_mem_din,
      mmio_mem_dout => mmio_mem_dout
    );
END main_block_mmu_0_0_arch;
