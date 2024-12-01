--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Tue Nov 19 13:16:35 2024
--Host        : DESKTOP-NFG9C79 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    ALU_OPP_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ALU_OUT_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BIGGER_ZERO_FLAG_0 : out STD_LOGIC;
    CARRY_FLAG_0 : out STD_LOGIC;
    CLK_0 : in STD_LOGIC;
    D1_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    D2_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    NOT_ZERO_FLAG_0 : out STD_LOGIC;
    OVERFLOW_FLAG_0 : out STD_LOGIC;
    RHO_FLAG_0 : out STD_LOGIC;
    RHO_PIN_0 : in STD_LOGIC;
    SMALLER_ZERO_FLAG_0 : out STD_LOGIC;
    ZERO_FLAG_0 : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    CLK_0 : in STD_LOGIC;
    D1_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    D2_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ALU_OPP_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RHO_PIN_0 : in STD_LOGIC;
    ALU_OUT_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BIGGER_ZERO_FLAG_0 : out STD_LOGIC;
    CARRY_FLAG_0 : out STD_LOGIC;
    NOT_ZERO_FLAG_0 : out STD_LOGIC;
    OVERFLOW_FLAG_0 : out STD_LOGIC;
    RHO_FLAG_0 : out STD_LOGIC;
    SMALLER_ZERO_FLAG_0 : out STD_LOGIC;
    ZERO_FLAG_0 : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      ALU_OPP_0(3 downto 0) => ALU_OPP_0(3 downto 0),
      ALU_OUT_0(15 downto 0) => ALU_OUT_0(15 downto 0),
      BIGGER_ZERO_FLAG_0 => BIGGER_ZERO_FLAG_0,
      CARRY_FLAG_0 => CARRY_FLAG_0,
      CLK_0 => CLK_0,
      D1_0(15 downto 0) => D1_0(15 downto 0),
      D2_0(15 downto 0) => D2_0(15 downto 0),
      NOT_ZERO_FLAG_0 => NOT_ZERO_FLAG_0,
      OVERFLOW_FLAG_0 => OVERFLOW_FLAG_0,
      RHO_FLAG_0 => RHO_FLAG_0,
      RHO_PIN_0 => RHO_PIN_0,
      SMALLER_ZERO_FLAG_0 => SMALLER_ZERO_FLAG_0,
      ZERO_FLAG_0 => ZERO_FLAG_0
    );
end STRUCTURE;
