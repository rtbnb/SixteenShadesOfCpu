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

-- IP VLNV: xilinx.com:module_ref:Pipelining_ExecutionStage:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY main_Pipelining_Execution_0_0 IS
  PORT (
    loadClk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    operand1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    operand2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    immediate : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    writeAddress : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    whb : IN STD_LOGIC;
    wlb : IN STD_LOGIC;
    rfWrite : IN STD_LOGIC;
    writeDataSel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    flagSel : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    ramSrc : IN STD_LOGIC;
    ramRead : IN STD_LOGIC;
    ramWrite : IN STD_LOGIC;
    ramBankID : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    jmp : IN STD_LOGIC;
    jmpConditional : IN STD_LOGIC;
    jmpRelative : IN STD_LOGIC;
    jmpDestinationSelect : IN STD_LOGIC;
    jmpCondition : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    isALUOp : IN STD_LOGIC;
    isRAMOp : IN STD_LOGIC;
    isGPUOp : IN STD_LOGIC;
    operand1Out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    operand2Out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    immediateOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    writeAddressOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    whbOut : OUT STD_LOGIC;
    wlbOut : OUT STD_LOGIC;
    rfWriteOut : OUT STD_LOGIC;
    writeDataSelOut : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    flagSelOut : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    ramSrcOut : OUT STD_LOGIC;
    ramReadOut : OUT STD_LOGIC;
    ramWriteOut : OUT STD_LOGIC;
    ramBankIDOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    jmpOut : OUT STD_LOGIC;
    jmpConditionalOut : OUT STD_LOGIC;
    jmpRelativeOut : OUT STD_LOGIC;
    jmpDestinationSelectOut : OUT STD_LOGIC;
    jmpConditionOut : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    isALUOpOut : OUT STD_LOGIC;
    isRAMOpOut : OUT STD_LOGIC;
    isGPUOpOut : OUT STD_LOGIC
  );
END main_Pipelining_Execution_0_0;

ARCHITECTURE main_Pipelining_Execution_0_0_arch OF main_Pipelining_Execution_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_Pipelining_Execution_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Pipelining_ExecutionStage IS
    PORT (
      loadClk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      operand1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      operand2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      immediate : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      writeAddress : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      whb : IN STD_LOGIC;
      wlb : IN STD_LOGIC;
      rfWrite : IN STD_LOGIC;
      writeDataSel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      flagSel : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      ramSrc : IN STD_LOGIC;
      ramRead : IN STD_LOGIC;
      ramWrite : IN STD_LOGIC;
      ramBankID : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      jmp : IN STD_LOGIC;
      jmpConditional : IN STD_LOGIC;
      jmpRelative : IN STD_LOGIC;
      jmpDestinationSelect : IN STD_LOGIC;
      jmpCondition : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      isALUOp : IN STD_LOGIC;
      isRAMOp : IN STD_LOGIC;
      isGPUOp : IN STD_LOGIC;
      operand1Out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      operand2Out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      immediateOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      writeAddressOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      whbOut : OUT STD_LOGIC;
      wlbOut : OUT STD_LOGIC;
      rfWriteOut : OUT STD_LOGIC;
      writeDataSelOut : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      flagSelOut : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      ramSrcOut : OUT STD_LOGIC;
      ramReadOut : OUT STD_LOGIC;
      ramWriteOut : OUT STD_LOGIC;
      ramBankIDOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      jmpOut : OUT STD_LOGIC;
      jmpConditionalOut : OUT STD_LOGIC;
      jmpRelativeOut : OUT STD_LOGIC;
      jmpDestinationSelectOut : OUT STD_LOGIC;
      jmpConditionOut : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      isALUOpOut : OUT STD_LOGIC;
      isRAMOpOut : OUT STD_LOGIC;
      isGPUOpOut : OUT STD_LOGIC
    );
  END COMPONENT Pipelining_ExecutionStage;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
BEGIN
  U0 : Pipelining_ExecutionStage
    PORT MAP (
      loadClk => loadClk,
      reset => reset,
      operand1 => operand1,
      operand2 => operand2,
      immediate => immediate,
      writeAddress => writeAddress,
      whb => whb,
      wlb => wlb,
      rfWrite => rfWrite,
      writeDataSel => writeDataSel,
      flagSel => flagSel,
      ramSrc => ramSrc,
      ramRead => ramRead,
      ramWrite => ramWrite,
      ramBankID => ramBankID,
      jmp => jmp,
      jmpConditional => jmpConditional,
      jmpRelative => jmpRelative,
      jmpDestinationSelect => jmpDestinationSelect,
      jmpCondition => jmpCondition,
      isALUOp => isALUOp,
      isRAMOp => isRAMOp,
      isGPUOp => isGPUOp,
      operand1Out => operand1Out,
      operand2Out => operand2Out,
      immediateOut => immediateOut,
      writeAddressOut => writeAddressOut,
      whbOut => whbOut,
      wlbOut => wlbOut,
      rfWriteOut => rfWriteOut,
      writeDataSelOut => writeDataSelOut,
      flagSelOut => flagSelOut,
      ramSrcOut => ramSrcOut,
      ramReadOut => ramReadOut,
      ramWriteOut => ramWriteOut,
      ramBankIDOut => ramBankIDOut,
      jmpOut => jmpOut,
      jmpConditionalOut => jmpConditionalOut,
      jmpRelativeOut => jmpRelativeOut,
      jmpDestinationSelectOut => jmpDestinationSelectOut,
      jmpConditionOut => jmpConditionOut,
      isALUOpOut => isALUOpOut,
      isRAMOpOut => isRAMOpOut,
      isGPUOpOut => isGPUOpOut
    );
END main_Pipelining_Execution_0_0_arch;
