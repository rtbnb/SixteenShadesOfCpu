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

-- IP VLNV: xilinx.com:module_ref:Debugger:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY main_Debugger_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rx_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rx_data_valid : IN STD_LOGIC;
    tx_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    tx_data_valid : OUT STD_LOGIC;
    tx_data_sended : IN STD_LOGIC;
    debug_enable : OUT STD_LOGIC;
    pipeline_stalled : IN STD_LOGIC;
    pipeline_instruction_forwarding_config : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    pipeline_current_instruction : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pipeline_operand_1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pipeline_operand_2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pipeline_memory_addr_reg : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pipeline_jmp : IN STD_LOGIC;
    pc_din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pc_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pc_current_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    alu_din1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    alu_din2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    alu_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    alu_flags : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    alu_op : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    regfile_addr_reg1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    regfile_addr_reg2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    regfile_addr_write_reg : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    regfile_write_enable : IN STD_LOGIC;
    regfile_overwrite_flag : IN STD_LOGIC;
    regfile_write_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    regfile_reg1_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    regfile_reg2_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    regfile_regma_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    regfile_bankid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    mmu_debug_sys_clk200mhz : OUT STD_LOGIC;
    mmu_debug_sync_clk100mhz : OUT STD_LOGIC;
    mmu_debug_en : OUT STD_LOGIC;
    mmu_debug_override_en : OUT STD_LOGIC;
    mmu_debug_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    mmu_debug_din : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    mmu_debug_bank : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    mmu_debug_we : OUT STD_LOGIC;
    mmu_debug_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END main_Debugger_0_0;

ARCHITECTURE main_Debugger_0_0_arch OF main_Debugger_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_Debugger_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Debugger IS
    PORT (
      clk : IN STD_LOGIC;
      rx_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      rx_data_valid : IN STD_LOGIC;
      tx_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      tx_data_valid : OUT STD_LOGIC;
      tx_data_sended : IN STD_LOGIC;
      debug_enable : OUT STD_LOGIC;
      pipeline_stalled : IN STD_LOGIC;
      pipeline_instruction_forwarding_config : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      pipeline_current_instruction : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pipeline_operand_1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pipeline_operand_2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pipeline_memory_addr_reg : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pipeline_jmp : IN STD_LOGIC;
      pc_din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pc_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pc_current_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      alu_din1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      alu_din2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      alu_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      alu_flags : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      alu_op : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      regfile_addr_reg1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      regfile_addr_reg2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      regfile_addr_write_reg : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      regfile_write_enable : IN STD_LOGIC;
      regfile_overwrite_flag : IN STD_LOGIC;
      regfile_write_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      regfile_reg1_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      regfile_reg2_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      regfile_regma_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      regfile_bankid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      mmu_debug_sys_clk200mhz : OUT STD_LOGIC;
      mmu_debug_sync_clk100mhz : OUT STD_LOGIC;
      mmu_debug_en : OUT STD_LOGIC;
      mmu_debug_override_en : OUT STD_LOGIC;
      mmu_debug_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      mmu_debug_din : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      mmu_debug_bank : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      mmu_debug_we : OUT STD_LOGIC;
      mmu_debug_dout : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT Debugger;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_clockcontroller_0_0_debug_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : Debugger
    PORT MAP (
      clk => clk,
      rx_data => rx_data,
      rx_data_valid => rx_data_valid,
      tx_data => tx_data,
      tx_data_valid => tx_data_valid,
      tx_data_sended => tx_data_sended,
      debug_enable => debug_enable,
      pipeline_stalled => pipeline_stalled,
      pipeline_instruction_forwarding_config => pipeline_instruction_forwarding_config,
      pipeline_current_instruction => pipeline_current_instruction,
      pipeline_operand_1 => pipeline_operand_1,
      pipeline_operand_2 => pipeline_operand_2,
      pipeline_memory_addr_reg => pipeline_memory_addr_reg,
      pipeline_jmp => pipeline_jmp,
      pc_din => pc_din,
      pc_dout => pc_dout,
      pc_current_addr => pc_current_addr,
      alu_din1 => alu_din1,
      alu_din2 => alu_din2,
      alu_out => alu_out,
      alu_flags => alu_flags,
      alu_op => alu_op,
      regfile_addr_reg1 => regfile_addr_reg1,
      regfile_addr_reg2 => regfile_addr_reg2,
      regfile_addr_write_reg => regfile_addr_write_reg,
      regfile_write_enable => regfile_write_enable,
      regfile_overwrite_flag => regfile_overwrite_flag,
      regfile_write_data => regfile_write_data,
      regfile_reg1_data => regfile_reg1_data,
      regfile_reg2_data => regfile_reg2_data,
      regfile_regma_data => regfile_regma_data,
      regfile_bankid => regfile_bankid,
      mmu_debug_sys_clk200mhz => mmu_debug_sys_clk200mhz,
      mmu_debug_sync_clk100mhz => mmu_debug_sync_clk100mhz,
      mmu_debug_en => mmu_debug_en,
      mmu_debug_override_en => mmu_debug_override_en,
      mmu_debug_addr => mmu_debug_addr,
      mmu_debug_din => mmu_debug_din,
      mmu_debug_bank => mmu_debug_bank,
      mmu_debug_we => mmu_debug_we,
      mmu_debug_dout => mmu_debug_dout
    );
END main_Debugger_0_0_arch;
