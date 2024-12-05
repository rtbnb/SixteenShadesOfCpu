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
    rxData : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rxDataValid : IN STD_LOGIC;
    txData : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    txDataValid : OUT STD_LOGIC;
    txDataSended : IN STD_LOGIC;
    debugEnable : OUT STD_LOGIC;
    ccDebugMockClk : OUT STD_LOGIC;
    ccDebugReset : OUT STD_LOGIC;
    pipelineStalled : IN STD_LOGIC;
    pipelineInstructionForwardingConfig : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    pipelineCurrentInstruction : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pipelineOperand1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pipelineOperand2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pipelineJmp : IN STD_LOGIC;
    pipelineJmpConditional : IN STD_LOGIC;
    pipelineJmpRelative : IN STD_LOGIC;
    pipelineJmpDestinationSelect : IN STD_LOGIC;
    pipelineJmpCondition : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    pipelineWriteDataSel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    pipelineRamSrc : IN STD_LOGIC;
    pipelineRamRead : IN STD_LOGIC;
    pipelineRamWrite : IN STD_LOGIC;
    pipelineRamBankid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    pcDin : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pcDout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    aluDin1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    aluDin2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    aluOut : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    aluFlags : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    aluOp : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    regfileAddrReg1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    regfileAddrReg2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    regfileAddrWriteReg : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    regfileWriteEnable : IN STD_LOGIC;
    regfileOverwriteFlag : IN STD_LOGIC;
    regfileWriteData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    regfileReg1Data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    regfileReg2Data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    regfileBankid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    mmuDebugClk : OUT STD_LOGIC;
    mmuDebugOverrideEn : OUT STD_LOGIC;
    mmuDebugAddr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    mmuDebugDin : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    mmuDebugBank : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    mmuDebugWe : OUT STD_LOGIC;
    mmuDebugDout : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END main_Debugger_0_0;

ARCHITECTURE main_Debugger_0_0_arch OF main_Debugger_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_Debugger_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Debugger IS
    PORT (
      clk : IN STD_LOGIC;
      rxData : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      rxDataValid : IN STD_LOGIC;
      txData : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      txDataValid : OUT STD_LOGIC;
      txDataSended : IN STD_LOGIC;
      debugEnable : OUT STD_LOGIC;
      ccDebugMockClk : OUT STD_LOGIC;
      ccDebugReset : OUT STD_LOGIC;
      pipelineStalled : IN STD_LOGIC;
      pipelineInstructionForwardingConfig : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      pipelineCurrentInstruction : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pipelineOperand1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pipelineOperand2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pipelineJmp : IN STD_LOGIC;
      pipelineJmpConditional : IN STD_LOGIC;
      pipelineJmpRelative : IN STD_LOGIC;
      pipelineJmpDestinationSelect : IN STD_LOGIC;
      pipelineJmpCondition : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      pipelineWriteDataSel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pipelineRamSrc : IN STD_LOGIC;
      pipelineRamRead : IN STD_LOGIC;
      pipelineRamWrite : IN STD_LOGIC;
      pipelineRamBankid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcDin : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pcDout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      aluDin1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      aluDin2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      aluOut : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      aluFlags : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      aluOp : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      regfileAddrReg1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      regfileAddrReg2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      regfileAddrWriteReg : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      regfileWriteEnable : IN STD_LOGIC;
      regfileOverwriteFlag : IN STD_LOGIC;
      regfileWriteData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      regfileReg1Data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      regfileReg2Data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      regfileBankid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      mmuDebugClk : OUT STD_LOGIC;
      mmuDebugOverrideEn : OUT STD_LOGIC;
      mmuDebugAddr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      mmuDebugDin : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      mmuDebugBank : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      mmuDebugWe : OUT STD_LOGIC;
      mmuDebugDout : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT Debugger;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_clockcontroller_0_0_debugClk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : Debugger
    PORT MAP (
      clk => clk,
      rxData => rxData,
      rxDataValid => rxDataValid,
      txData => txData,
      txDataValid => txDataValid,
      txDataSended => txDataSended,
      debugEnable => debugEnable,
      ccDebugMockClk => ccDebugMockClk,
      ccDebugReset => ccDebugReset,
      pipelineStalled => pipelineStalled,
      pipelineInstructionForwardingConfig => pipelineInstructionForwardingConfig,
      pipelineCurrentInstruction => pipelineCurrentInstruction,
      pipelineOperand1 => pipelineOperand1,
      pipelineOperand2 => pipelineOperand2,
      pipelineJmp => pipelineJmp,
      pipelineJmpConditional => pipelineJmpConditional,
      pipelineJmpRelative => pipelineJmpRelative,
      pipelineJmpDestinationSelect => pipelineJmpDestinationSelect,
      pipelineJmpCondition => pipelineJmpCondition,
      pipelineWriteDataSel => pipelineWriteDataSel,
      pipelineRamSrc => pipelineRamSrc,
      pipelineRamRead => pipelineRamRead,
      pipelineRamWrite => pipelineRamWrite,
      pipelineRamBankid => pipelineRamBankid,
      pcDin => pcDin,
      pcDout => pcDout,
      aluDin1 => aluDin1,
      aluDin2 => aluDin2,
      aluOut => aluOut,
      aluFlags => aluFlags,
      aluOp => aluOp,
      regfileAddrReg1 => regfileAddrReg1,
      regfileAddrReg2 => regfileAddrReg2,
      regfileAddrWriteReg => regfileAddrWriteReg,
      regfileWriteEnable => regfileWriteEnable,
      regfileOverwriteFlag => regfileOverwriteFlag,
      regfileWriteData => regfileWriteData,
      regfileReg1Data => regfileReg1Data,
      regfileReg2Data => regfileReg2Data,
      regfileBankid => regfileBankid,
      mmuDebugClk => mmuDebugClk,
      mmuDebugOverrideEn => mmuDebugOverrideEn,
      mmuDebugAddr => mmuDebugAddr,
      mmuDebugDin => mmuDebugDin,
      mmuDebugBank => mmuDebugBank,
      mmuDebugWe => mmuDebugWe,
      mmuDebugDout => mmuDebugDout
    );
END main_Debugger_0_0_arch;
