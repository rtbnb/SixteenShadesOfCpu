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
    InstrLoad_CLK : IN STD_LOGIC;
    Reset : IN STD_LOGIC;
    Operand1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    Operand2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    Immediate : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    MA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    WriteAddress : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    WHB : IN STD_LOGIC;
    WLB : IN STD_LOGIC;
    WriteDataSel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    RAM_Src : IN STD_LOGIC;
    RAM_Read : IN STD_LOGIC;
    RAM_Write : IN STD_LOGIC;
    Use_MA : IN STD_LOGIC;
    JMP : IN STD_LOGIC;
    JMP_Conditional : IN STD_LOGIC;
    JMP_Relative : IN STD_LOGIC;
    JMP_DestinationSelect : IN STD_LOGIC;
    JMP_Condition : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    Is_ALU_OP : IN STD_LOGIC;
    Is_RAM_OP : IN STD_LOGIC;
    Operand1_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    Operand2_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    Immediate_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    MA_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    WriteAddress_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    WHB_out : OUT STD_LOGIC;
    WLB_out : OUT STD_LOGIC;
    WriteDataSel_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    RAM_Src_out : OUT STD_LOGIC;
    RAM_Read_out : OUT STD_LOGIC;
    RAM_Write_out : OUT STD_LOGIC;
    Use_MA_out : OUT STD_LOGIC;
    JMP_out : OUT STD_LOGIC;
    JMP_Conditional_out : OUT STD_LOGIC;
    JMP_Relative_out : OUT STD_LOGIC;
    JMP_DestinationSelect_out : OUT STD_LOGIC;
    JMP_Condition_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    IS_ALU_OP_out : OUT STD_LOGIC;
    Is_RAM_OP_out : OUT STD_LOGIC
  );
END main_Pipelining_Execution_0_0;

ARCHITECTURE main_Pipelining_Execution_0_0_arch OF main_Pipelining_Execution_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF main_Pipelining_Execution_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Pipelining_ExecutionStage IS
    PORT (
      InstrLoad_CLK : IN STD_LOGIC;
      Reset : IN STD_LOGIC;
      Operand1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      Operand2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      Immediate : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      MA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      WriteAddress : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      WHB : IN STD_LOGIC;
      WLB : IN STD_LOGIC;
      WriteDataSel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      RAM_Src : IN STD_LOGIC;
      RAM_Read : IN STD_LOGIC;
      RAM_Write : IN STD_LOGIC;
      Use_MA : IN STD_LOGIC;
      JMP : IN STD_LOGIC;
      JMP_Conditional : IN STD_LOGIC;
      JMP_Relative : IN STD_LOGIC;
      JMP_DestinationSelect : IN STD_LOGIC;
      JMP_Condition : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      Is_ALU_OP : IN STD_LOGIC;
      Is_RAM_OP : IN STD_LOGIC;
      Operand1_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      Operand2_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      Immediate_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      MA_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      WriteAddress_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      WHB_out : OUT STD_LOGIC;
      WLB_out : OUT STD_LOGIC;
      WriteDataSel_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      RAM_Src_out : OUT STD_LOGIC;
      RAM_Read_out : OUT STD_LOGIC;
      RAM_Write_out : OUT STD_LOGIC;
      Use_MA_out : OUT STD_LOGIC;
      JMP_out : OUT STD_LOGIC;
      JMP_Conditional_out : OUT STD_LOGIC;
      JMP_Relative_out : OUT STD_LOGIC;
      JMP_DestinationSelect_out : OUT STD_LOGIC;
      JMP_Condition_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      IS_ALU_OP_out : OUT STD_LOGIC;
      Is_RAM_OP_out : OUT STD_LOGIC
    );
  END COMPONENT Pipelining_ExecutionStage;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF main_Pipelining_Execution_0_0_arch: ARCHITECTURE IS "Pipelining_ExecutionStage,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF main_Pipelining_Execution_0_0_arch : ARCHITECTURE IS "main_Pipelining_Execution_0_0,Pipelining_ExecutionStage,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF main_Pipelining_Execution_0_0_arch: ARCHITECTURE IS "main_Pipelining_Execution_0_0,Pipelining_ExecutionStage,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Pipelining_ExecutionStage,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF main_Pipelining_Execution_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF InstrLoad_CLK: SIGNAL IS "XIL_INTERFACENAME InstrLoad_CLK, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF InstrLoad_CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 InstrLoad_CLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Reset: SIGNAL IS "XIL_INTERFACENAME Reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Reset: SIGNAL IS "xilinx.com:signal:reset:1.0 Reset RST";
BEGIN
  U0 : Pipelining_ExecutionStage
    PORT MAP (
      InstrLoad_CLK => InstrLoad_CLK,
      Reset => Reset,
      Operand1 => Operand1,
      Operand2 => Operand2,
      Immediate => Immediate,
      MA => MA,
      WriteAddress => WriteAddress,
      WHB => WHB,
      WLB => WLB,
      WriteDataSel => WriteDataSel,
      RAM_Src => RAM_Src,
      RAM_Read => RAM_Read,
      RAM_Write => RAM_Write,
      Use_MA => Use_MA,
      JMP => JMP,
      JMP_Conditional => JMP_Conditional,
      JMP_Relative => JMP_Relative,
      JMP_DestinationSelect => JMP_DestinationSelect,
      JMP_Condition => JMP_Condition,
      Is_ALU_OP => Is_ALU_OP,
      Is_RAM_OP => Is_RAM_OP,
      Operand1_out => Operand1_out,
      Operand2_out => Operand2_out,
      Immediate_out => Immediate_out,
      MA_out => MA_out,
      WriteAddress_out => WriteAddress_out,
      WHB_out => WHB_out,
      WLB_out => WLB_out,
      WriteDataSel_out => WriteDataSel_out,
      RAM_Src_out => RAM_Src_out,
      RAM_Read_out => RAM_Read_out,
      RAM_Write_out => RAM_Write_out,
      Use_MA_out => Use_MA_out,
      JMP_out => JMP_out,
      JMP_Conditional_out => JMP_Conditional_out,
      JMP_Relative_out => JMP_Relative_out,
      JMP_DestinationSelect_out => JMP_DestinationSelect_out,
      JMP_Condition_out => JMP_Condition_out,
      IS_ALU_OP_out => IS_ALU_OP_out,
      Is_RAM_OP_out => Is_RAM_OP_out
    );
END main_Pipelining_Execution_0_0_arch;
