--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Thu Nov 21 21:31:47 2024
--Host        : DESKTOP-7KK7962 running 64-bit major release  (build 9200)
--Command     : generate_target TestBlockDesign_wrapper.bd
--Design      : TestBlockDesign_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TestBlockDesign_wrapper is
  port (
    InstrExec_CLK : in STD_LOGIC;
    b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    h_sync : out STD_LOGIC;
    ioe : out STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v_sync : out STD_LOGIC
  );
end TestBlockDesign_wrapper;

architecture STRUCTURE of TestBlockDesign_wrapper is
  component TestBlockDesign is
  port (
    InstrExec_CLK : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ioe : out STD_LOGIC;
    h_sync : out STD_LOGIC;
    v_sync : out STD_LOGIC
  );
  end component TestBlockDesign;
begin
TestBlockDesign_i: component TestBlockDesign
     port map (
      InstrExec_CLK => InstrExec_CLK,
      b(3 downto 0) => b(3 downto 0),
      g(3 downto 0) => g(3 downto 0),
      h_sync => h_sync,
      ioe => ioe,
      r(3 downto 0) => r(3 downto 0),
      v_sync => v_sync
    );
end STRUCTURE;
