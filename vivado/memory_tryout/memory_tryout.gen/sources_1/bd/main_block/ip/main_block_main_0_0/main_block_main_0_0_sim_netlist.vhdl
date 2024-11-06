-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Nov  6 16:20:55 2024
-- Host        : Robin_Laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Entwicklung/SixteenShadesOfCpu/vivado/memory_tryout/memory_tryout.gen/sources_1/bd/main_block/ip/main_block_main_0_0/main_block_main_0_0_sim_netlist.vhdl
-- Design      : main_block_main_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_block_main_0_0_main is
  port (
    din2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    addr1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    led : out STD_LOGIC;
    oe : out STD_LOGIC;
    we : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_block_main_0_0_main : entity is "main";
end main_block_main_0_0_main;

architecture STRUCTURE of main_block_main_0_0_main is
  signal \^addr1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clear : STD_LOGIC;
  signal clk2_i_1_n_0 : STD_LOGIC;
  signal clk2_reg_n_0 : STD_LOGIC;
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \din_s[15]_i_1_n_0\ : STD_LOGIC;
  signal \^led\ : STD_LOGIC;
  signal led_s_i_2_n_0 : STD_LOGIC;
  signal led_s_i_4_n_0 : STD_LOGIC;
  signal led_s_reg_i_3_n_0 : STD_LOGIC;
  signal led_s_reg_i_3_n_1 : STD_LOGIC;
  signal led_s_reg_i_3_n_2 : STD_LOGIC;
  signal led_s_reg_i_3_n_3 : STD_LOGIC;
  signal led_s_reg_i_5_n_2 : STD_LOGIC;
  signal led_s_reg_i_5_n_3 : STD_LOGIC;
  signal led_s_reg_i_6_n_0 : STD_LOGIC;
  signal led_s_reg_i_6_n_1 : STD_LOGIC;
  signal led_s_reg_i_6_n_2 : STD_LOGIC;
  signal led_s_reg_i_6_n_3 : STD_LOGIC;
  signal led_s_reg_i_7_n_0 : STD_LOGIC;
  signal led_s_reg_i_7_n_1 : STD_LOGIC;
  signal led_s_reg_i_7_n_2 : STD_LOGIC;
  signal led_s_reg_i_7_n_3 : STD_LOGIC;
  signal \memAddr_s_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \memAddr_s_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \memAddr_s_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \memAddr_s_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \memAddr_s_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \memAddr_s_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \memAddr_s_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \memAddr_s_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \memAddr_s_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \memAddr_s_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \memAddr_s_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \memAddr_s_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \memAddr_s_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \memAddr_s_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \memAddr_s_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \memAddr_s_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \memAddr_s_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \memAddr_s_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \memAddr_s_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \memAddr_s_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \memAddr_s_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \memAddr_s_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \memAddr_s_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \memAddr_s_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \memAddr_s_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \memAddr_s_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \memAddr_s_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \memAddr_s_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \memAddr_s_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \memAddr_s_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \memAddr_s_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^oe\ : STD_LOGIC;
  signal oe_s_i_1_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^we\ : STD_LOGIC;
  signal we_s_i_1_n_0 : STD_LOGIC;
  signal we_s_i_2_n_0 : STD_LOGIC;
  signal we_s_i_3_n_0 : STD_LOGIC;
  signal we_s_i_4_n_0 : STD_LOGIC;
  signal we_s_i_5_n_0 : STD_LOGIC;
  signal we_s_i_6_n_0 : STD_LOGIC;
  signal we_s_reg_i_10_n_0 : STD_LOGIC;
  signal we_s_reg_i_10_n_1 : STD_LOGIC;
  signal we_s_reg_i_10_n_2 : STD_LOGIC;
  signal we_s_reg_i_10_n_3 : STD_LOGIC;
  signal we_s_reg_i_10_n_4 : STD_LOGIC;
  signal we_s_reg_i_10_n_5 : STD_LOGIC;
  signal we_s_reg_i_10_n_6 : STD_LOGIC;
  signal we_s_reg_i_10_n_7 : STD_LOGIC;
  signal we_s_reg_i_11_n_0 : STD_LOGIC;
  signal we_s_reg_i_11_n_1 : STD_LOGIC;
  signal we_s_reg_i_11_n_2 : STD_LOGIC;
  signal we_s_reg_i_11_n_3 : STD_LOGIC;
  signal we_s_reg_i_11_n_4 : STD_LOGIC;
  signal we_s_reg_i_11_n_5 : STD_LOGIC;
  signal we_s_reg_i_11_n_6 : STD_LOGIC;
  signal we_s_reg_i_11_n_7 : STD_LOGIC;
  signal we_s_reg_i_12_n_0 : STD_LOGIC;
  signal we_s_reg_i_12_n_1 : STD_LOGIC;
  signal we_s_reg_i_12_n_2 : STD_LOGIC;
  signal we_s_reg_i_12_n_3 : STD_LOGIC;
  signal we_s_reg_i_12_n_4 : STD_LOGIC;
  signal we_s_reg_i_12_n_5 : STD_LOGIC;
  signal we_s_reg_i_12_n_6 : STD_LOGIC;
  signal we_s_reg_i_12_n_7 : STD_LOGIC;
  signal we_s_reg_i_13_n_0 : STD_LOGIC;
  signal we_s_reg_i_13_n_1 : STD_LOGIC;
  signal we_s_reg_i_13_n_2 : STD_LOGIC;
  signal we_s_reg_i_13_n_3 : STD_LOGIC;
  signal we_s_reg_i_13_n_4 : STD_LOGIC;
  signal we_s_reg_i_13_n_5 : STD_LOGIC;
  signal we_s_reg_i_13_n_6 : STD_LOGIC;
  signal we_s_reg_i_13_n_7 : STD_LOGIC;
  signal we_s_reg_i_7_n_0 : STD_LOGIC;
  signal we_s_reg_i_7_n_1 : STD_LOGIC;
  signal we_s_reg_i_7_n_2 : STD_LOGIC;
  signal we_s_reg_i_7_n_3 : STD_LOGIC;
  signal we_s_reg_i_7_n_4 : STD_LOGIC;
  signal we_s_reg_i_7_n_5 : STD_LOGIC;
  signal we_s_reg_i_7_n_6 : STD_LOGIC;
  signal we_s_reg_i_7_n_7 : STD_LOGIC;
  signal we_s_reg_i_8_n_3 : STD_LOGIC;
  signal we_s_reg_i_8_n_6 : STD_LOGIC;
  signal we_s_reg_i_8_n_7 : STD_LOGIC;
  signal we_s_reg_i_9_n_0 : STD_LOGIC;
  signal we_s_reg_i_9_n_1 : STD_LOGIC;
  signal we_s_reg_i_9_n_2 : STD_LOGIC;
  signal we_s_reg_i_9_n_3 : STD_LOGIC;
  signal we_s_reg_i_9_n_4 : STD_LOGIC;
  signal we_s_reg_i_9_n_5 : STD_LOGIC;
  signal we_s_reg_i_9_n_6 : STD_LOGIC;
  signal we_s_reg_i_9_n_7 : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_led_s_reg_i_5_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_led_s_reg_i_5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_memAddr_s_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_we_s_reg_i_8_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_we_s_reg_i_8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of led_s_reg_i_3 : label is 35;
  attribute ADDER_THRESHOLD of led_s_reg_i_5 : label is 35;
  attribute ADDER_THRESHOLD of led_s_reg_i_6 : label is 35;
  attribute ADDER_THRESHOLD of led_s_reg_i_7 : label is 35;
  attribute ADDER_THRESHOLD of \memAddr_s_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \memAddr_s_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \memAddr_s_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \memAddr_s_reg[7]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of we_s_reg_i_10 : label is 35;
  attribute ADDER_THRESHOLD of we_s_reg_i_11 : label is 35;
  attribute ADDER_THRESHOLD of we_s_reg_i_12 : label is 35;
  attribute ADDER_THRESHOLD of we_s_reg_i_13 : label is 35;
  attribute ADDER_THRESHOLD of we_s_reg_i_7 : label is 35;
  attribute ADDER_THRESHOLD of we_s_reg_i_8 : label is 35;
  attribute ADDER_THRESHOLD of we_s_reg_i_9 : label is 35;
begin
  addr1(15 downto 0) <= \^addr1\(15 downto 0);
  led <= \^led\;
  oe <= \^oe\;
  we <= \^we\;
clk2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => we_s_i_2_n_0,
      I1 => we_s_i_3_n_0,
      I2 => we_s_i_4_n_0,
      I3 => we_s_i_5_n_0,
      I4 => we_s_i_6_n_0,
      I5 => clk2_reg_n_0,
      O => clk2_i_1_n_0
    );
clk2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk2_i_1_n_0,
      Q => clk2_reg_n_0,
      R => '0'
    );
\counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_7\,
      Q => counter_reg(0),
      R => '0'
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2) => \counter_reg[0]_i_1_n_1\,
      CO(1) => \counter_reg[0]_i_1_n_2\,
      CO(0) => \counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3 downto 1) => counter_reg(3 downto 1),
      S(0) => \counter[0]_i_2_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => '0'
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => '0'
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => '0'
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => '0'
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => '0'
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => '0'
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16),
      R => '0'
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17),
      R => '0'
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18),
      R => '0'
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_6\,
      Q => counter_reg(1),
      R => '0'
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20),
      R => '0'
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => counter_reg(23 downto 20)
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21),
      R => '0'
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22),
      R => '0'
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23),
      R => '0'
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24),
      R => '0'
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3 downto 2) => \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_reg[24]_i_1_n_2\,
      CO(0) => \counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_reg[24]_i_1_O_UNCONNECTED\(3),
      O(2) => \counter_reg[24]_i_1_n_5\,
      O(1) => \counter_reg[24]_i_1_n_6\,
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => counter_reg(26 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_6\,
      Q => counter_reg(25),
      R => '0'
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_5\,
      Q => counter_reg(26),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_5\,
      Q => counter_reg(2),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_4\,
      Q => counter_reg(3),
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => '0'
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => '0'
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => '0'
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => '0'
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => '0'
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => '0'
    );
\din_s[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^led\,
      O => \din_s[15]_i_1_n_0\
    );
\din_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(0),
      Q => din2(0),
      R => '0'
    );
\din_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(10),
      Q => din2(10),
      R => '0'
    );
\din_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(11),
      Q => din2(11),
      R => '0'
    );
\din_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(12),
      Q => din2(12),
      R => '0'
    );
\din_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(13),
      Q => din2(13),
      R => '0'
    );
\din_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(14),
      Q => din2(14),
      R => '0'
    );
\din_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(15),
      Q => din2(15),
      R => '0'
    );
\din_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(1),
      Q => din2(1),
      R => '0'
    );
\din_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(2),
      Q => din2(2),
      R => '0'
    );
\din_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(3),
      Q => din2(3),
      R => '0'
    );
\din_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(4),
      Q => din2(4),
      R => '0'
    );
\din_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(5),
      Q => din2(5),
      R => '0'
    );
\din_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(6),
      Q => din2(6),
      R => '0'
    );
\din_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(7),
      Q => din2(7),
      R => '0'
    );
\din_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(8),
      Q => din2(8),
      R => '0'
    );
\din_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk2_reg_n_0,
      CE => \din_s[15]_i_1_n_0\,
      D => \^addr1\(9),
      Q => din2(9),
      R => '0'
    );
led_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => led_s_i_2_n_0,
      I1 => plusOp(2),
      I2 => plusOp(1),
      I3 => plusOp(4),
      I4 => plusOp(3),
      I5 => led_s_i_4_n_0,
      O => clear
    );
led_s_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => plusOp(13),
      I1 => plusOp(14),
      I2 => plusOp(11),
      I3 => plusOp(12),
      I4 => \^addr1\(0),
      I5 => plusOp(15),
      O => led_s_i_2_n_0
    );
led_s_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => plusOp(7),
      I1 => plusOp(8),
      I2 => plusOp(6),
      I3 => plusOp(5),
      I4 => plusOp(10),
      I5 => plusOp(9),
      O => led_s_i_4_n_0
    );
led_s_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \^led\,
      Q => \^led\,
      S => clear
    );
led_s_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => led_s_reg_i_3_n_0,
      CO(2) => led_s_reg_i_3_n_1,
      CO(1) => led_s_reg_i_3_n_2,
      CO(0) => led_s_reg_i_3_n_3,
      CYINIT => \^addr1\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => \^addr1\(4 downto 1)
    );
led_s_reg_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => led_s_reg_i_6_n_0,
      CO(3 downto 2) => NLW_led_s_reg_i_5_CO_UNCONNECTED(3 downto 2),
      CO(1) => led_s_reg_i_5_n_2,
      CO(0) => led_s_reg_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_led_s_reg_i_5_O_UNCONNECTED(3),
      O(2 downto 0) => plusOp(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => \^addr1\(15 downto 13)
    );
led_s_reg_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => led_s_reg_i_7_n_0,
      CO(3) => led_s_reg_i_6_n_0,
      CO(2) => led_s_reg_i_6_n_1,
      CO(1) => led_s_reg_i_6_n_2,
      CO(0) => led_s_reg_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => \^addr1\(12 downto 9)
    );
led_s_reg_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => led_s_reg_i_3_n_0,
      CO(3) => led_s_reg_i_7_n_0,
      CO(2) => led_s_reg_i_7_n_1,
      CO(1) => led_s_reg_i_7_n_2,
      CO(0) => led_s_reg_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => \^addr1\(8 downto 5)
    );
\memAddr_s[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addr1\(0),
      O => plusOp(0)
    );
\memAddr_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[3]_i_1_n_7\,
      Q => \^addr1\(0),
      R => clear
    );
\memAddr_s_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[11]_i_1_n_5\,
      Q => \^addr1\(10),
      R => clear
    );
\memAddr_s_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[11]_i_1_n_4\,
      Q => \^addr1\(11),
      R => clear
    );
\memAddr_s_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \memAddr_s_reg[7]_i_1_n_0\,
      CO(3) => \memAddr_s_reg[11]_i_1_n_0\,
      CO(2) => \memAddr_s_reg[11]_i_1_n_1\,
      CO(1) => \memAddr_s_reg[11]_i_1_n_2\,
      CO(0) => \memAddr_s_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \memAddr_s_reg[11]_i_1_n_4\,
      O(2) => \memAddr_s_reg[11]_i_1_n_5\,
      O(1) => \memAddr_s_reg[11]_i_1_n_6\,
      O(0) => \memAddr_s_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^addr1\(11 downto 8)
    );
\memAddr_s_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[15]_i_1_n_7\,
      Q => \^addr1\(12),
      R => clear
    );
\memAddr_s_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[15]_i_1_n_6\,
      Q => \^addr1\(13),
      R => clear
    );
\memAddr_s_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[15]_i_1_n_5\,
      Q => \^addr1\(14),
      R => clear
    );
\memAddr_s_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[15]_i_1_n_4\,
      Q => \^addr1\(15),
      R => clear
    );
\memAddr_s_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \memAddr_s_reg[11]_i_1_n_0\,
      CO(3) => \NLW_memAddr_s_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \memAddr_s_reg[15]_i_1_n_1\,
      CO(1) => \memAddr_s_reg[15]_i_1_n_2\,
      CO(0) => \memAddr_s_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \memAddr_s_reg[15]_i_1_n_4\,
      O(2) => \memAddr_s_reg[15]_i_1_n_5\,
      O(1) => \memAddr_s_reg[15]_i_1_n_6\,
      O(0) => \memAddr_s_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^addr1\(15 downto 12)
    );
\memAddr_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[3]_i_1_n_6\,
      Q => \^addr1\(1),
      R => clear
    );
\memAddr_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[3]_i_1_n_5\,
      Q => \^addr1\(2),
      R => clear
    );
\memAddr_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[3]_i_1_n_4\,
      Q => \^addr1\(3),
      R => clear
    );
\memAddr_s_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \memAddr_s_reg[3]_i_1_n_0\,
      CO(2) => \memAddr_s_reg[3]_i_1_n_1\,
      CO(1) => \memAddr_s_reg[3]_i_1_n_2\,
      CO(0) => \memAddr_s_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \memAddr_s_reg[3]_i_1_n_4\,
      O(2) => \memAddr_s_reg[3]_i_1_n_5\,
      O(1) => \memAddr_s_reg[3]_i_1_n_6\,
      O(0) => \memAddr_s_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^addr1\(3 downto 1),
      S(0) => plusOp(0)
    );
\memAddr_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[7]_i_1_n_7\,
      Q => \^addr1\(4),
      R => clear
    );
\memAddr_s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[7]_i_1_n_6\,
      Q => \^addr1\(5),
      R => clear
    );
\memAddr_s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[7]_i_1_n_5\,
      Q => \^addr1\(6),
      R => clear
    );
\memAddr_s_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[7]_i_1_n_4\,
      Q => \^addr1\(7),
      R => clear
    );
\memAddr_s_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \memAddr_s_reg[3]_i_1_n_0\,
      CO(3) => \memAddr_s_reg[7]_i_1_n_0\,
      CO(2) => \memAddr_s_reg[7]_i_1_n_1\,
      CO(1) => \memAddr_s_reg[7]_i_1_n_2\,
      CO(0) => \memAddr_s_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \memAddr_s_reg[7]_i_1_n_4\,
      O(2) => \memAddr_s_reg[7]_i_1_n_5\,
      O(1) => \memAddr_s_reg[7]_i_1_n_6\,
      O(0) => \memAddr_s_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^addr1\(7 downto 4)
    );
\memAddr_s_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[11]_i_1_n_7\,
      Q => \^addr1\(8),
      R => clear
    );
\memAddr_s_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2_reg_n_0,
      CE => '1',
      D => \memAddr_s_reg[11]_i_1_n_6\,
      Q => \^addr1\(9),
      R => clear
    );
oe_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => we_s_i_2_n_0,
      I1 => we_s_i_3_n_0,
      I2 => we_s_i_4_n_0,
      I3 => we_s_i_5_n_0,
      I4 => we_s_i_6_n_0,
      I5 => \^oe\,
      O => oe_s_i_1_n_0
    );
oe_s_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => oe_s_i_1_n_0,
      Q => \^oe\,
      R => '0'
    );
we_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => we_s_i_2_n_0,
      I1 => we_s_i_3_n_0,
      I2 => we_s_i_4_n_0,
      I3 => we_s_i_5_n_0,
      I4 => we_s_i_6_n_0,
      I5 => \^we\,
      O => we_s_i_1_n_0
    );
we_s_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => we_s_reg_i_7_n_4,
      I1 => we_s_reg_i_8_n_7,
      I2 => we_s_reg_i_7_n_6,
      I3 => we_s_reg_i_7_n_5,
      I4 => counter_reg(0),
      I5 => we_s_reg_i_8_n_6,
      O => we_s_i_2_n_0
    );
we_s_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => we_s_reg_i_9_n_7,
      I1 => we_s_reg_i_10_n_4,
      I2 => we_s_reg_i_10_n_6,
      I3 => we_s_reg_i_10_n_5,
      I4 => we_s_reg_i_9_n_5,
      I5 => we_s_reg_i_9_n_6,
      O => we_s_i_3_n_0
    );
we_s_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => we_s_reg_i_11_n_6,
      I1 => we_s_reg_i_11_n_5,
      I2 => we_s_reg_i_9_n_4,
      I3 => we_s_reg_i_11_n_7,
      I4 => we_s_reg_i_7_n_7,
      I5 => we_s_reg_i_11_n_4,
      O => we_s_i_4_n_0
    );
we_s_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => we_s_reg_i_12_n_6,
      I1 => we_s_reg_i_12_n_5,
      I2 => we_s_reg_i_13_n_4,
      I3 => we_s_reg_i_12_n_7,
      I4 => we_s_reg_i_10_n_7,
      I5 => we_s_reg_i_12_n_4,
      O => we_s_i_5_n_0
    );
we_s_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => we_s_reg_i_13_n_5,
      I1 => we_s_reg_i_13_n_6,
      I2 => we_s_reg_i_13_n_7,
      O => we_s_i_6_n_0
    );
we_s_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => we_s_i_1_n_0,
      Q => \^we\,
      R => '0'
    );
we_s_reg_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => we_s_reg_i_12_n_0,
      CO(3) => we_s_reg_i_10_n_0,
      CO(2) => we_s_reg_i_10_n_1,
      CO(1) => we_s_reg_i_10_n_2,
      CO(0) => we_s_reg_i_10_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => we_s_reg_i_10_n_4,
      O(2) => we_s_reg_i_10_n_5,
      O(1) => we_s_reg_i_10_n_6,
      O(0) => we_s_reg_i_10_n_7,
      S(3 downto 0) => counter_reg(12 downto 9)
    );
we_s_reg_i_11: unisim.vcomponents.CARRY4
     port map (
      CI => we_s_reg_i_9_n_0,
      CO(3) => we_s_reg_i_11_n_0,
      CO(2) => we_s_reg_i_11_n_1,
      CO(1) => we_s_reg_i_11_n_2,
      CO(0) => we_s_reg_i_11_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => we_s_reg_i_11_n_4,
      O(2) => we_s_reg_i_11_n_5,
      O(1) => we_s_reg_i_11_n_6,
      O(0) => we_s_reg_i_11_n_7,
      S(3 downto 0) => counter_reg(20 downto 17)
    );
we_s_reg_i_12: unisim.vcomponents.CARRY4
     port map (
      CI => we_s_reg_i_13_n_0,
      CO(3) => we_s_reg_i_12_n_0,
      CO(2) => we_s_reg_i_12_n_1,
      CO(1) => we_s_reg_i_12_n_2,
      CO(0) => we_s_reg_i_12_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => we_s_reg_i_12_n_4,
      O(2) => we_s_reg_i_12_n_5,
      O(1) => we_s_reg_i_12_n_6,
      O(0) => we_s_reg_i_12_n_7,
      S(3 downto 0) => counter_reg(8 downto 5)
    );
we_s_reg_i_13: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => we_s_reg_i_13_n_0,
      CO(2) => we_s_reg_i_13_n_1,
      CO(1) => we_s_reg_i_13_n_2,
      CO(0) => we_s_reg_i_13_n_3,
      CYINIT => counter_reg(0),
      DI(3 downto 0) => B"0000",
      O(3) => we_s_reg_i_13_n_4,
      O(2) => we_s_reg_i_13_n_5,
      O(1) => we_s_reg_i_13_n_6,
      O(0) => we_s_reg_i_13_n_7,
      S(3 downto 0) => counter_reg(4 downto 1)
    );
we_s_reg_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => we_s_reg_i_11_n_0,
      CO(3) => we_s_reg_i_7_n_0,
      CO(2) => we_s_reg_i_7_n_1,
      CO(1) => we_s_reg_i_7_n_2,
      CO(0) => we_s_reg_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => we_s_reg_i_7_n_4,
      O(2) => we_s_reg_i_7_n_5,
      O(1) => we_s_reg_i_7_n_6,
      O(0) => we_s_reg_i_7_n_7,
      S(3 downto 0) => counter_reg(24 downto 21)
    );
we_s_reg_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => we_s_reg_i_7_n_0,
      CO(3 downto 1) => NLW_we_s_reg_i_8_CO_UNCONNECTED(3 downto 1),
      CO(0) => we_s_reg_i_8_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => NLW_we_s_reg_i_8_O_UNCONNECTED(3 downto 2),
      O(1) => we_s_reg_i_8_n_6,
      O(0) => we_s_reg_i_8_n_7,
      S(3 downto 2) => B"00",
      S(1 downto 0) => counter_reg(26 downto 25)
    );
we_s_reg_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => we_s_reg_i_10_n_0,
      CO(3) => we_s_reg_i_9_n_0,
      CO(2) => we_s_reg_i_9_n_1,
      CO(1) => we_s_reg_i_9_n_2,
      CO(0) => we_s_reg_i_9_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => we_s_reg_i_9_n_4,
      O(2) => we_s_reg_i_9_n_5,
      O(1) => we_s_reg_i_9_n_6,
      O(0) => we_s_reg_i_9_n_7,
      S(3 downto 0) => counter_reg(16 downto 13)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_block_main_0_0 is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC;
    addr1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    addr2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    din1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    din2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    we : out STD_LOGIC;
    oe : out STD_LOGIC;
    dout1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout2 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_block_main_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_block_main_0_0 : entity is "main_block_main_0_0,main,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_block_main_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_block_main_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_block_main_0_0 : entity is "main,Vivado 2024.1";
end main_block_main_0_0;

architecture STRUCTURE of main_block_main_0_0 is
  signal \^addr1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^din2\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  addr1(15 downto 0) <= \^addr1\(15 downto 0);
  addr2(15 downto 0) <= \^addr1\(15 downto 0);
  din1(15 downto 0) <= \^din2\(15 downto 0);
  din2(15 downto 0) <= \^din2\(15 downto 0);
U0: entity work.main_block_main_0_0_main
     port map (
      addr1(15 downto 0) => \^addr1\(15 downto 0),
      clk => clk,
      din2(15 downto 0) => \^din2\(15 downto 0),
      led => led,
      oe => oe,
      we => we
    );
end STRUCTURE;
