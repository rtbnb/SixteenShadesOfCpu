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

ENTITY main_mmu_0_0 IS
  PORT (
    ck_stable : IN STD_LOGIC;
    exec_clk : IN STD_LOGIC;
    gram_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    gram_din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    gram_bank : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    gram_we : IN STD_LOGIC;
    gram_oe : IN STD_LOGIC;
    gram_dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    iram_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    iram_dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    debug_enable : IN STD_LOGIC;
    debug_override_enable : IN STD_LOGIC;
    debug_clk : IN STD_LOGIC;
    debug_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    debug_din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    debug_bank : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    debug_we : IN STD_LOGIC;
    debug_dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    gpu_clk : IN STD_LOGIC;
    gpu_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    gpu_din : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    gpu_we : IN STD_LOGIC;
    gpu_dout : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    vga_clk : IN STD_LOGIC;
    vga_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    vga_dout : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    vrama_mem_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    vrama_mem_ck : OUT STD_LOGIC;
    vrama_mem_din : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    vrama_mem_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    vrama_mem_dout : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    vramb_mem_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    vramb_mem_ck : OUT STD_LOGIC;
    vramb_mem_din : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    vramb_mem_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    vramb_mem_dout : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    mmio_mem_ck : OUT STD_LOGIC;
    mmio_mem_we : OUT STD_LOGIC;
    mmio_mem_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    mmio_mem_din : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    mmio_mem_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END main_mmu_0_0;

ARCHITECTURE main_mmu_0_0_arch OF main_mmu_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_mmu_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mmu IS
    PORT (
      ck_stable : IN STD_LOGIC;
      exec_clk : IN STD_LOGIC;
      gram_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      gram_din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      gram_bank : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      gram_we : IN STD_LOGIC;
      gram_oe : IN STD_LOGIC;
      gram_dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      iram_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      iram_dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      debug_enable : IN STD_LOGIC;
      debug_override_enable : IN STD_LOGIC;
      debug_clk : IN STD_LOGIC;
      debug_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      debug_din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      debug_bank : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      debug_we : IN STD_LOGIC;
      debug_dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      gpu_clk : IN STD_LOGIC;
      gpu_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      gpu_din : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      gpu_we : IN STD_LOGIC;
      gpu_dout : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      vga_clk : IN STD_LOGIC;
      vga_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      vga_dout : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      vrama_mem_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      vrama_mem_ck : OUT STD_LOGIC;
      vrama_mem_din : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      vrama_mem_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      vrama_mem_dout : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      vramb_mem_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      vramb_mem_ck : OUT STD_LOGIC;
      vramb_mem_din : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      vramb_mem_we : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      vramb_mem_dout : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      mmio_mem_ck : OUT STD_LOGIC;
      mmio_mem_we : OUT STD_LOGIC;
      mmio_mem_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      mmio_mem_din : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      mmio_mem_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT mmu;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF main_mmu_0_0_arch: ARCHITECTURE IS "mmu,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF main_mmu_0_0_arch : ARCHITECTURE IS "main_mmu_0_0,mmu,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF main_mmu_0_0_arch: ARCHITECTURE IS "main_mmu_0_0,mmu,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mmu,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF main_mmu_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF debug_clk: SIGNAL IS "XIL_INTERFACENAME debug_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_Debugger_0_0_mmu_debug_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF debug_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 debug_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF exec_clk: SIGNAL IS "XIL_INTERFACENAME exec_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_clockcontroller_0_0_exec_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF exec_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 exec_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gpu_clk: SIGNAL IS "XIL_INTERFACENAME gpu_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_GPU_0_0_VRAM_CLK, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF gpu_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 gpu_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF vga_clk: SIGNAL IS "XIL_INTERFACENAME vga_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_VGA_Controller_0_0_VRAM_Clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF vga_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 vga_clk CLK";
BEGIN
  U0 : mmu
    PORT MAP (
      ck_stable => ck_stable,
      exec_clk => exec_clk,
      gram_addr => gram_addr,
      gram_din => gram_din,
      gram_bank => gram_bank,
      gram_we => gram_we,
      gram_oe => gram_oe,
      gram_dout => gram_dout,
      iram_addr => iram_addr,
      iram_dout => iram_dout,
      debug_enable => debug_enable,
      debug_override_enable => debug_override_enable,
      debug_clk => debug_clk,
      debug_addr => debug_addr,
      debug_din => debug_din,
      debug_bank => debug_bank,
      debug_we => debug_we,
      debug_dout => debug_dout,
      gpu_clk => gpu_clk,
      gpu_addr => gpu_addr,
      gpu_din => gpu_din,
      gpu_we => gpu_we,
      gpu_dout => gpu_dout,
      vga_clk => vga_clk,
      vga_addr => vga_addr,
      vga_dout => vga_dout,
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
      mmio_mem_addr => mmio_mem_addr,
      mmio_mem_din => mmio_mem_din,
      mmio_mem_dout => mmio_mem_dout
    );
END main_mmu_0_0_arch;
