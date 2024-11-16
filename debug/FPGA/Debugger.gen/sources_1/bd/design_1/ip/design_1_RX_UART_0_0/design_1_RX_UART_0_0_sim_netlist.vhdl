-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Nov 16 22:58:56 2024
-- Host        : DESKTOP-E8CIL9E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Development/SixteenShadesOfCpu/debug/FPGA/Debugger.gen/sources_1/bd/design_1/ip/design_1_RX_UART_0_0/design_1_RX_UART_0_0_sim_netlist.vhdl
-- Design      : design_1_RX_UART_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_RX_UART_0_0_RX_UART is
  port (
    data_output : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_valid : out STD_LOGIC;
    rx_serial_input : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_RX_UART_0_0_RX_UART : entity is "RX_UART";
end design_1_RX_UART_0_0_RX_UART;

architecture STRUCTURE of design_1_RX_UART_0_0_RX_UART is
  signal \clock_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \clock_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \clock_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \clock_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \clock_cnt0_carry__0_n_4\ : STD_LOGIC;
  signal \clock_cnt0_carry__0_n_5\ : STD_LOGIC;
  signal \clock_cnt0_carry__0_n_6\ : STD_LOGIC;
  signal \clock_cnt0_carry__0_n_7\ : STD_LOGIC;
  signal \clock_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \clock_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \clock_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \clock_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \clock_cnt0_carry__1_n_4\ : STD_LOGIC;
  signal \clock_cnt0_carry__1_n_5\ : STD_LOGIC;
  signal \clock_cnt0_carry__1_n_6\ : STD_LOGIC;
  signal \clock_cnt0_carry__1_n_7\ : STD_LOGIC;
  signal \clock_cnt0_carry__2_n_7\ : STD_LOGIC;
  signal clock_cnt0_carry_n_0 : STD_LOGIC;
  signal clock_cnt0_carry_n_1 : STD_LOGIC;
  signal clock_cnt0_carry_n_2 : STD_LOGIC;
  signal clock_cnt0_carry_n_3 : STD_LOGIC;
  signal clock_cnt0_carry_n_4 : STD_LOGIC;
  signal clock_cnt0_carry_n_5 : STD_LOGIC;
  signal clock_cnt0_carry_n_6 : STD_LOGIC;
  signal clock_cnt0_carry_n_7 : STD_LOGIC;
  signal \clock_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \clock_cnt[13]_i_3_n_0\ : STD_LOGIC;
  signal \clock_cnt[13]_i_4_n_0\ : STD_LOGIC;
  signal \clock_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \clock_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \clock_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \clock_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \clock_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \clock_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \clock_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \clock_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \clock_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \clock_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \clock_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \clock_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \clock_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \clock_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \current_state_reg_n_0_[3]\ : STD_LOGIC;
  signal data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_2_n_0\ : STD_LOGIC;
  signal data_out_0 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \data_output[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_output[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_output[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_output[7]_i_4_n_0\ : STD_LOGIC;
  signal \^data_valid\ : STD_LOGIC;
  signal data_valid_i_1_n_0 : STD_LOGIC;
  signal data_valid_i_2_n_0 : STD_LOGIC;
  signal data_valid_i_3_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal rx_data_in_buf : STD_LOGIC;
  signal \NLW_clock_cnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clock_cnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of clock_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \clock_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \clock_cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \clock_cnt0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clock_cnt[13]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clock_cnt[13]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \current_state[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_state[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \current_state[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[5]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[6]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of data_valid_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of data_valid_i_3 : label is "soft_lutpair2";
begin
  data_valid <= \^data_valid\;
clock_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clock_cnt0_carry_n_0,
      CO(2) => clock_cnt0_carry_n_1,
      CO(1) => clock_cnt0_carry_n_2,
      CO(0) => clock_cnt0_carry_n_3,
      CYINIT => \clock_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => clock_cnt0_carry_n_4,
      O(2) => clock_cnt0_carry_n_5,
      O(1) => clock_cnt0_carry_n_6,
      O(0) => clock_cnt0_carry_n_7,
      S(3) => \clock_cnt_reg_n_0_[4]\,
      S(2) => \clock_cnt_reg_n_0_[3]\,
      S(1) => \clock_cnt_reg_n_0_[2]\,
      S(0) => \clock_cnt_reg_n_0_[1]\
    );
\clock_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => clock_cnt0_carry_n_0,
      CO(3) => \clock_cnt0_carry__0_n_0\,
      CO(2) => \clock_cnt0_carry__0_n_1\,
      CO(1) => \clock_cnt0_carry__0_n_2\,
      CO(0) => \clock_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clock_cnt0_carry__0_n_4\,
      O(2) => \clock_cnt0_carry__0_n_5\,
      O(1) => \clock_cnt0_carry__0_n_6\,
      O(0) => \clock_cnt0_carry__0_n_7\,
      S(3) => \clock_cnt_reg_n_0_[8]\,
      S(2) => \clock_cnt_reg_n_0_[7]\,
      S(1) => \clock_cnt_reg_n_0_[6]\,
      S(0) => \clock_cnt_reg_n_0_[5]\
    );
\clock_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clock_cnt0_carry__0_n_0\,
      CO(3) => \clock_cnt0_carry__1_n_0\,
      CO(2) => \clock_cnt0_carry__1_n_1\,
      CO(1) => \clock_cnt0_carry__1_n_2\,
      CO(0) => \clock_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clock_cnt0_carry__1_n_4\,
      O(2) => \clock_cnt0_carry__1_n_5\,
      O(1) => \clock_cnt0_carry__1_n_6\,
      O(0) => \clock_cnt0_carry__1_n_7\,
      S(3) => \clock_cnt_reg_n_0_[12]\,
      S(2) => \clock_cnt_reg_n_0_[11]\,
      S(1) => \clock_cnt_reg_n_0_[10]\,
      S(0) => \clock_cnt_reg_n_0_[9]\
    );
\clock_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \clock_cnt0_carry__1_n_0\,
      CO(3 downto 0) => \NLW_clock_cnt0_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_clock_cnt0_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => \clock_cnt0_carry__2_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \clock_cnt_reg_n_0_[13]\
    );
\clock_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333F001500000015"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \clock_cnt[13]_i_3_n_0\,
      I2 => \clock_cnt[13]_i_4_n_0\,
      I3 => \clock_cnt_reg_n_0_[0]\,
      I4 => \current_state[0]_i_4_n_0\,
      I5 => \current_state_reg_n_0_[0]\,
      O => p_1_in(0)
    );
\clock_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F33150000001500"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \clock_cnt[13]_i_3_n_0\,
      I2 => \clock_cnt[13]_i_4_n_0\,
      I3 => \clock_cnt0_carry__1_n_6\,
      I4 => \current_state[0]_i_4_n_0\,
      I5 => \current_state_reg_n_0_[0]\,
      O => p_1_in(10)
    );
\clock_cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F33150000001500"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \clock_cnt[13]_i_3_n_0\,
      I2 => \clock_cnt[13]_i_4_n_0\,
      I3 => \clock_cnt0_carry__1_n_5\,
      I4 => \current_state[0]_i_4_n_0\,
      I5 => \current_state_reg_n_0_[0]\,
      O => p_1_in(11)
    );
\clock_cnt[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F33150000001500"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \clock_cnt[13]_i_3_n_0\,
      I2 => \clock_cnt[13]_i_4_n_0\,
      I3 => \clock_cnt0_carry__1_n_4\,
      I4 => \current_state[0]_i_4_n_0\,
      I5 => \current_state_reg_n_0_[0]\,
      O => p_1_in(12)
    );
\clock_cnt[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF55FFFFDF"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \current_state[0]_i_2_n_0\,
      I2 => data_out_0(7),
      I3 => \current_state_reg_n_0_[3]\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => \current_state_reg_n_0_[2]\,
      O => \clock_cnt[13]_i_1_n_0\
    );
\clock_cnt[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F33150000001500"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \clock_cnt[13]_i_3_n_0\,
      I2 => \clock_cnt[13]_i_4_n_0\,
      I3 => \clock_cnt0_carry__2_n_7\,
      I4 => \current_state[0]_i_4_n_0\,
      I5 => \current_state_reg_n_0_[0]\,
      O => p_1_in(13)
    );
\clock_cnt[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \current_state[0]_i_2_n_0\,
      I1 => data_out_0(7),
      O => \clock_cnt[13]_i_3_n_0\
    );
\clock_cnt[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \current_state_reg_n_0_[3]\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \current_state[0]_i_2_n_0\,
      O => \clock_cnt[13]_i_4_n_0\
    );
\clock_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F33150000001500"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \clock_cnt[13]_i_3_n_0\,
      I2 => \clock_cnt[13]_i_4_n_0\,
      I3 => clock_cnt0_carry_n_7,
      I4 => \current_state[0]_i_4_n_0\,
      I5 => \current_state_reg_n_0_[0]\,
      O => p_1_in(1)
    );
\clock_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F33150000001500"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \clock_cnt[13]_i_3_n_0\,
      I2 => \clock_cnt[13]_i_4_n_0\,
      I3 => clock_cnt0_carry_n_6,
      I4 => \current_state[0]_i_4_n_0\,
      I5 => \current_state_reg_n_0_[0]\,
      O => p_1_in(2)
    );
\clock_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F33150000001500"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \clock_cnt[13]_i_3_n_0\,
      I2 => \clock_cnt[13]_i_4_n_0\,
      I3 => clock_cnt0_carry_n_5,
      I4 => \current_state[0]_i_4_n_0\,
      I5 => \current_state_reg_n_0_[0]\,
      O => p_1_in(3)
    );
\clock_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F33150000001500"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \clock_cnt[13]_i_3_n_0\,
      I2 => \clock_cnt[13]_i_4_n_0\,
      I3 => clock_cnt0_carry_n_4,
      I4 => \current_state[0]_i_4_n_0\,
      I5 => \current_state_reg_n_0_[0]\,
      O => p_1_in(4)
    );
\clock_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F33150000001500"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \clock_cnt[13]_i_3_n_0\,
      I2 => \clock_cnt[13]_i_4_n_0\,
      I3 => \clock_cnt0_carry__0_n_7\,
      I4 => \current_state[0]_i_4_n_0\,
      I5 => \current_state_reg_n_0_[0]\,
      O => p_1_in(5)
    );
\clock_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F33150000001500"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \clock_cnt[13]_i_3_n_0\,
      I2 => \clock_cnt[13]_i_4_n_0\,
      I3 => \clock_cnt0_carry__0_n_6\,
      I4 => \current_state[0]_i_4_n_0\,
      I5 => \current_state_reg_n_0_[0]\,
      O => p_1_in(6)
    );
\clock_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F33150000001500"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \clock_cnt[13]_i_3_n_0\,
      I2 => \clock_cnt[13]_i_4_n_0\,
      I3 => \clock_cnt0_carry__0_n_5\,
      I4 => \current_state[0]_i_4_n_0\,
      I5 => \current_state_reg_n_0_[0]\,
      O => p_1_in(7)
    );
\clock_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F33150000001500"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \clock_cnt[13]_i_3_n_0\,
      I2 => \clock_cnt[13]_i_4_n_0\,
      I3 => \clock_cnt0_carry__0_n_4\,
      I4 => \current_state[0]_i_4_n_0\,
      I5 => \current_state_reg_n_0_[0]\,
      O => p_1_in(8)
    );
\clock_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F33150000001500"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \clock_cnt[13]_i_3_n_0\,
      I2 => \clock_cnt[13]_i_4_n_0\,
      I3 => \clock_cnt0_carry__1_n_7\,
      I4 => \current_state[0]_i_4_n_0\,
      I5 => \current_state_reg_n_0_[0]\,
      O => p_1_in(9)
    );
\clock_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[13]_i_1_n_0\,
      D => p_1_in(0),
      Q => \clock_cnt_reg_n_0_[0]\,
      R => '0'
    );
\clock_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[13]_i_1_n_0\,
      D => p_1_in(10),
      Q => \clock_cnt_reg_n_0_[10]\,
      R => '0'
    );
\clock_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[13]_i_1_n_0\,
      D => p_1_in(11),
      Q => \clock_cnt_reg_n_0_[11]\,
      R => '0'
    );
\clock_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[13]_i_1_n_0\,
      D => p_1_in(12),
      Q => \clock_cnt_reg_n_0_[12]\,
      R => '0'
    );
\clock_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[13]_i_1_n_0\,
      D => p_1_in(13),
      Q => \clock_cnt_reg_n_0_[13]\,
      R => '0'
    );
\clock_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[13]_i_1_n_0\,
      D => p_1_in(1),
      Q => \clock_cnt_reg_n_0_[1]\,
      R => '0'
    );
\clock_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[13]_i_1_n_0\,
      D => p_1_in(2),
      Q => \clock_cnt_reg_n_0_[2]\,
      R => '0'
    );
\clock_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[13]_i_1_n_0\,
      D => p_1_in(3),
      Q => \clock_cnt_reg_n_0_[3]\,
      R => '0'
    );
\clock_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[13]_i_1_n_0\,
      D => p_1_in(4),
      Q => \clock_cnt_reg_n_0_[4]\,
      R => '0'
    );
\clock_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[13]_i_1_n_0\,
      D => p_1_in(5),
      Q => \clock_cnt_reg_n_0_[5]\,
      R => '0'
    );
\clock_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[13]_i_1_n_0\,
      D => p_1_in(6),
      Q => \clock_cnt_reg_n_0_[6]\,
      R => '0'
    );
\clock_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[13]_i_1_n_0\,
      D => p_1_in(7),
      Q => \clock_cnt_reg_n_0_[7]\,
      R => '0'
    );
\clock_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[13]_i_1_n_0\,
      D => p_1_in(8),
      Q => \clock_cnt_reg_n_0_[8]\,
      R => '0'
    );
\clock_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[13]_i_1_n_0\,
      D => p_1_in(9),
      Q => \clock_cnt_reg_n_0_[9]\,
      R => '0'
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F0FDF0"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \current_state[0]_i_2_n_0\,
      I2 => \current_state[0]_i_3_n_0\,
      I3 => \current_state[0]_i_4_n_0\,
      I4 => data_out_0(7),
      O => \current_state[0]_i_1_n_0\
    );
\current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEFFFFF"
    )
        port map (
      I0 => \current_state[0]_i_5_n_0\,
      I1 => \current_state[0]_i_6_n_0\,
      I2 => \clock_cnt_reg_n_0_[12]\,
      I3 => \clock_cnt_reg_n_0_[5]\,
      I4 => \clock_cnt_reg_n_0_[10]\,
      I5 => \clock_cnt_reg_n_0_[0]\,
      O => \current_state[0]_i_2_n_0\
    );
\current_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0554AAA8"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => \current_state_reg_n_0_[3]\,
      I4 => \current_state_reg_n_0_[0]\,
      O => \current_state[0]_i_3_n_0\
    );
\current_state[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[3]\,
      O => \current_state[0]_i_4_n_0\
    );
\current_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \clock_cnt_reg_n_0_[9]\,
      I1 => \clock_cnt_reg_n_0_[8]\,
      I2 => \clock_cnt_reg_n_0_[7]\,
      I3 => \clock_cnt_reg_n_0_[11]\,
      I4 => \clock_cnt_reg_n_0_[2]\,
      I5 => \clock_cnt_reg_n_0_[4]\,
      O => \current_state[0]_i_5_n_0\
    );
\current_state[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \clock_cnt_reg_n_0_[6]\,
      I1 => \clock_cnt_reg_n_0_[3]\,
      I2 => \clock_cnt_reg_n_0_[13]\,
      I3 => \clock_cnt_reg_n_0_[1]\,
      O => \current_state[0]_i_6_n_0\
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F0F3F3FFFC0FF80"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => \data_output[7]_i_2_n_0\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \current_state[1]_i_2_n_0\,
      I4 => \current_state_reg_n_0_[3]\,
      I5 => \current_state_reg_n_0_[1]\,
      O => \current_state[1]_i_1_n_0\
    );
\current_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \current_state[0]_i_2_n_0\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \current_state_reg_n_0_[3]\,
      I3 => \current_state_reg_n_0_[2]\,
      I4 => data_out_0(7),
      O => \current_state[1]_i_2_n_0\
    );
\current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \data_output[7]_i_2_n_0\,
      I3 => \current_state_reg_n_0_[2]\,
      I4 => \current_state_reg_n_0_[3]\,
      O => \current_state[2]_i_1_n_0\
    );
\current_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => \current_state_reg_n_0_[3]\,
      O => \current_state[3]_i_1_n_0\
    );
\current_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF8000"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => \data_output[7]_i_2_n_0\,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state_reg_n_0_[3]\,
      O => \current_state[3]_i_2_n_0\
    );
\current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_state[3]_i_1_n_0\,
      D => \current_state[0]_i_1_n_0\,
      Q => \current_state_reg_n_0_[0]\,
      R => '0'
    );
\current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_state[3]_i_1_n_0\,
      D => \current_state[1]_i_1_n_0\,
      Q => \current_state_reg_n_0_[1]\,
      R => '0'
    );
\current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_state[3]_i_1_n_0\,
      D => \current_state[2]_i_1_n_0\,
      Q => \current_state_reg_n_0_[2]\,
      R => '0'
    );
\current_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_state[3]_i_1_n_0\,
      D => \current_state[3]_i_2_n_0\,
      Q => \current_state_reg_n_0_[3]\,
      R => '0'
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \data_out[6]_i_2_n_0\,
      I2 => \current_state_reg_n_0_[3]\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => \current_state_reg_n_0_[2]\,
      I5 => data_out(0),
      O => \data_out[0]_i_1_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \data_out[7]_i_2_n_0\,
      I2 => \current_state_reg_n_0_[3]\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => \current_state_reg_n_0_[2]\,
      I5 => data_out(1),
      O => \data_out[1]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \current_state_reg_n_0_[3]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \data_out[6]_i_2_n_0\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => data_out(2),
      O => \data_out[2]_i_1_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \current_state_reg_n_0_[3]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \data_out[7]_i_2_n_0\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => data_out(3),
      O => \data_out[3]_i_1_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \data_out[6]_i_2_n_0\,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => \current_state_reg_n_0_[3]\,
      I4 => \current_state_reg_n_0_[2]\,
      I5 => data_out(4),
      O => \data_out[4]_i_1_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \data_out[5]_i_2_n_0\,
      I2 => \current_state_reg_n_0_[3]\,
      I3 => \current_state_reg_n_0_[2]\,
      I4 => data_out(5),
      O => \data_out[5]_i_1_n_0\
    );
\data_out[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \data_output[7]_i_2_n_0\,
      O => \data_out[5]_i_2_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[3]\,
      I3 => \data_out[6]_i_2_n_0\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => data_out(6),
      O => \data_out[6]_i_1_n_0\
    );
\data_out[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \data_output[7]_i_2_n_0\,
      O => \data_out[6]_i_2_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[3]\,
      I3 => \data_out[7]_i_2_n_0\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => data_out(7),
      O => \data_out[7]_i_1_n_0\
    );
\data_out[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \current_state_reg_n_0_[0]\,
      O => \data_out[7]_i_2_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_out[0]_i_1_n_0\,
      Q => data_out(0),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_out[1]_i_1_n_0\,
      Q => data_out(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_out[2]_i_1_n_0\,
      Q => data_out(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_out[3]_i_1_n_0\,
      Q => data_out(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_out[4]_i_1_n_0\,
      Q => data_out(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_out[5]_i_1_n_0\,
      Q => data_out(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_out[6]_i_1_n_0\,
      Q => data_out(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_out[7]_i_1_n_0\,
      Q => data_out(7),
      R => '0'
    );
\data_output[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => \current_state_reg_n_0_[3]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \data_output[7]_i_2_n_0\,
      I4 => \current_state_reg_n_0_[1]\,
      O => \data_output[7]_i_1_n_0\
    );
\data_output[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAA88888888"
    )
        port map (
      I0 => \clock_cnt_reg_n_0_[13]\,
      I1 => \clock_cnt_reg_n_0_[12]\,
      I2 => \clock_cnt_reg_n_0_[10]\,
      I3 => \data_output[7]_i_3_n_0\,
      I4 => \data_output[7]_i_4_n_0\,
      I5 => \clock_cnt_reg_n_0_[11]\,
      O => \data_output[7]_i_2_n_0\
    );
\data_output[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \clock_cnt_reg_n_0_[8]\,
      I1 => \clock_cnt_reg_n_0_[9]\,
      O => \data_output[7]_i_3_n_0\
    );
\data_output[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"557F"
    )
        port map (
      I0 => \clock_cnt_reg_n_0_[7]\,
      I1 => \clock_cnt_reg_n_0_[4]\,
      I2 => \clock_cnt_reg_n_0_[5]\,
      I3 => \clock_cnt_reg_n_0_[6]\,
      O => \data_output[7]_i_4_n_0\
    );
\data_output_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_output[7]_i_1_n_0\,
      D => data_out(0),
      Q => data_output(0),
      R => '0'
    );
\data_output_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_output[7]_i_1_n_0\,
      D => data_out(1),
      Q => data_output(1),
      R => '0'
    );
\data_output_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_output[7]_i_1_n_0\,
      D => data_out(2),
      Q => data_output(2),
      R => '0'
    );
\data_output_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_output[7]_i_1_n_0\,
      D => data_out(3),
      Q => data_output(3),
      R => '0'
    );
\data_output_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_output[7]_i_1_n_0\,
      D => data_out(4),
      Q => data_output(4),
      R => '0'
    );
\data_output_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_output[7]_i_1_n_0\,
      D => data_out(5),
      Q => data_output(5),
      R => '0'
    );
\data_output_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_output[7]_i_1_n_0\,
      D => data_out(6),
      Q => data_output(6),
      R => '0'
    );
\data_output_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_output[7]_i_1_n_0\,
      D => data_out(7),
      Q => data_output(7),
      R => '0'
    );
data_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAEF0A2"
    )
        port map (
      I0 => \^data_valid\,
      I1 => data_valid_i_2_n_0,
      I2 => data_out_0(7),
      I3 => \data_output[7]_i_1_n_0\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => data_valid_i_3_n_0,
      O => data_valid_i_1_n_0
    );
data_valid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \current_state_reg_n_0_[3]\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \current_state_reg_n_0_[0]\,
      O => data_valid_i_2_n_0
    );
data_valid_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => \current_state_reg_n_0_[3]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \current_state_reg_n_0_[1]\,
      O => data_valid_i_3_n_0
    );
data_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_valid_i_1_n_0,
      Q => \^data_valid\,
      R => '0'
    );
rx_data_in_buf_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rx_serial_input,
      Q => rx_data_in_buf,
      R => '0'
    );
rx_data_in_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rx_data_in_buf,
      Q => data_out_0(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_RX_UART_0_0 is
  port (
    clk : in STD_LOGIC;
    rx_serial_input : in STD_LOGIC;
    data_output : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_valid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_RX_UART_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_RX_UART_0_0 : entity is "design_1_RX_UART_0_0,RX_UART,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_RX_UART_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_RX_UART_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_RX_UART_0_0 : entity is "RX_UART,Vivado 2024.1";
end design_1_RX_UART_0_0;

architecture STRUCTURE of design_1_RX_UART_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
U0: entity work.design_1_RX_UART_0_0_RX_UART
     port map (
      clk => clk,
      data_output(7 downto 0) => data_output(7 downto 0),
      data_valid => data_valid,
      rx_serial_input => rx_serial_input
    );
end STRUCTURE;
