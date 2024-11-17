-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Nov 17 18:56:28 2024
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
  signal clock_cnt : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \clock_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \clock_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \clock_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \clock_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \clock_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \clock_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \clock_cnt[6]_i_10_n_0\ : STD_LOGIC;
  signal \clock_cnt[6]_i_11_n_0\ : STD_LOGIC;
  signal \clock_cnt[6]_i_12_n_0\ : STD_LOGIC;
  signal \clock_cnt[6]_i_13_n_0\ : STD_LOGIC;
  signal \clock_cnt[6]_i_14_n_0\ : STD_LOGIC;
  signal \clock_cnt[6]_i_15_n_0\ : STD_LOGIC;
  signal \clock_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \clock_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \clock_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \clock_cnt[6]_i_4_n_0\ : STD_LOGIC;
  signal \clock_cnt[6]_i_5_n_0\ : STD_LOGIC;
  signal \clock_cnt[6]_i_6_n_0\ : STD_LOGIC;
  signal \clock_cnt[6]_i_7_n_0\ : STD_LOGIC;
  signal \clock_cnt[6]_i_8_n_0\ : STD_LOGIC;
  signal \clock_cnt[6]_i_9_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \current_state__14\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_2_n_0\ : STD_LOGIC;
  signal data_out_0 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \data_output[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_output[7]_i_2_n_0\ : STD_LOGIC;
  signal \^data_valid\ : STD_LOGIC;
  signal data_valid_i_1_n_0 : STD_LOGIC;
  signal data_valid_i_2_n_0 : STD_LOGIC;
  signal data_valid_i_3_n_0 : STD_LOGIC;
  signal data_valid_i_4_n_0 : STD_LOGIC;
  signal rx_data_in_buf : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clock_cnt[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \clock_cnt[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clock_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clock_cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clock_cnt[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clock_cnt[6]_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clock_cnt[6]_i_11\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \clock_cnt[6]_i_12\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \clock_cnt[6]_i_13\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clock_cnt[6]_i_14\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \clock_cnt[6]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clock_cnt[6]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clock_cnt[6]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clock_cnt[6]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clock_cnt[6]_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \current_state[0]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \current_state[1]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \current_state[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_state[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_output[7]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of data_valid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of data_valid_i_4 : label is "soft_lutpair4";
begin
  data_valid <= \^data_valid\;
\clock_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clock_cnt[6]_i_9_n_0\,
      I1 => clock_cnt(0),
      O => \clock_cnt[0]_i_1_n_0\
    );
\clock_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \clock_cnt[6]_i_9_n_0\,
      I1 => clock_cnt(1),
      I2 => clock_cnt(0),
      O => \clock_cnt[1]_i_1_n_0\
    );
\clock_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \clock_cnt[6]_i_9_n_0\,
      I1 => clock_cnt(2),
      I2 => clock_cnt(0),
      I3 => clock_cnt(1),
      O => \clock_cnt[2]_i_1_n_0\
    );
\clock_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \clock_cnt[6]_i_9_n_0\,
      I1 => clock_cnt(3),
      I2 => clock_cnt(0),
      I3 => clock_cnt(2),
      I4 => clock_cnt(1),
      O => \clock_cnt[3]_i_1_n_0\
    );
\clock_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \clock_cnt[6]_i_9_n_0\,
      I1 => clock_cnt(4),
      I2 => clock_cnt(1),
      I3 => clock_cnt(2),
      I4 => clock_cnt(0),
      I5 => clock_cnt(3),
      O => \clock_cnt[4]_i_1_n_0\
    );
\clock_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8288"
    )
        port map (
      I0 => \clock_cnt[6]_i_9_n_0\,
      I1 => clock_cnt(5),
      I2 => \clock_cnt[6]_i_10_n_0\,
      I3 => clock_cnt(4),
      O => \clock_cnt[5]_i_1_n_0\
    );
\clock_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => data_out_0(7),
      I1 => clock_cnt(2),
      I2 => clock_cnt(1),
      I3 => \clock_cnt[6]_i_4_n_0\,
      I4 => \clock_cnt[6]_i_5_n_0\,
      I5 => \clock_cnt[6]_i_2_n_0\,
      O => \clock_cnt[6]_i_1_n_0\
    );
\clock_cnt[6]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => clock_cnt(1),
      I1 => clock_cnt(2),
      I2 => clock_cnt(0),
      I3 => clock_cnt(3),
      O => \clock_cnt[6]_i_10_n_0\
    );
\clock_cnt[6]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => clock_cnt(0),
      I1 => clock_cnt(1),
      O => \clock_cnt[6]_i_11_n_0\
    );
\clock_cnt[6]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => clock_cnt(5),
      I1 => clock_cnt(3),
      I2 => clock_cnt(4),
      O => \clock_cnt[6]_i_12_n_0\
    );
\clock_cnt[6]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD5"
    )
        port map (
      I0 => clock_cnt(2),
      I1 => clock_cnt(0),
      I2 => clock_cnt(1),
      I3 => clock_cnt(6),
      O => \clock_cnt[6]_i_13_n_0\
    );
\clock_cnt[6]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[3]\,
      O => \clock_cnt[6]_i_14_n_0\
    );
\clock_cnt[6]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => clock_cnt(1),
      I1 => clock_cnt(2),
      O => \clock_cnt[6]_i_15_n_0\
    );
\clock_cnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F5F5F0F0F0F03"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => data_out_0(7),
      I2 => \current_state_reg_n_0_[3]\,
      I3 => \clock_cnt[6]_i_6_n_0\,
      I4 => \clock_cnt[6]_i_7_n_0\,
      I5 => \clock_cnt[6]_i_8_n_0\,
      O => \clock_cnt[6]_i_2_n_0\
    );
\clock_cnt[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA002A80"
    )
        port map (
      I0 => \clock_cnt[6]_i_9_n_0\,
      I1 => clock_cnt(5),
      I2 => clock_cnt(4),
      I3 => clock_cnt(6),
      I4 => \clock_cnt[6]_i_10_n_0\,
      O => \clock_cnt[6]_i_3_n_0\
    );
\clock_cnt[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \current_state_reg_n_0_[3]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \current_state_reg_n_0_[1]\,
      O => \clock_cnt[6]_i_4_n_0\
    );
\clock_cnt[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFFFFFFFFFF"
    )
        port map (
      I0 => clock_cnt(4),
      I1 => clock_cnt(3),
      I2 => clock_cnt(5),
      I3 => clock_cnt(6),
      I4 => \clock_cnt[6]_i_11_n_0\,
      I5 => clock_cnt(2),
      O => \clock_cnt[6]_i_5_n_0\
    );
\clock_cnt[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => clock_cnt(3),
      I1 => clock_cnt(0),
      I2 => clock_cnt(2),
      I3 => clock_cnt(1),
      O => \clock_cnt[6]_i_6_n_0\
    );
\clock_cnt[6]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => clock_cnt(5),
      I1 => clock_cnt(4),
      I2 => clock_cnt(6),
      O => \clock_cnt[6]_i_7_n_0\
    );
\clock_cnt[6]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFD"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => \current_state_reg_n_0_[3]\,
      O => \clock_cnt[6]_i_8_n_0\
    );
\clock_cnt[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FEF00F000E00"
    )
        port map (
      I0 => \clock_cnt[6]_i_12_n_0\,
      I1 => \clock_cnt[6]_i_13_n_0\,
      I2 => \clock_cnt[6]_i_14_n_0\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \clock_cnt[6]_i_15_n_0\,
      I5 => \data_output[7]_i_2_n_0\,
      O => \clock_cnt[6]_i_9_n_0\
    );
\clock_cnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[6]_i_2_n_0\,
      D => \clock_cnt[0]_i_1_n_0\,
      Q => clock_cnt(0),
      S => \clock_cnt[6]_i_1_n_0\
    );
\clock_cnt_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[6]_i_2_n_0\,
      D => \clock_cnt[1]_i_1_n_0\,
      Q => clock_cnt(1),
      S => \clock_cnt[6]_i_1_n_0\
    );
\clock_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[6]_i_2_n_0\,
      D => \clock_cnt[2]_i_1_n_0\,
      Q => clock_cnt(2),
      S => \clock_cnt[6]_i_1_n_0\
    );
\clock_cnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[6]_i_2_n_0\,
      D => \clock_cnt[3]_i_1_n_0\,
      Q => clock_cnt(3),
      S => \clock_cnt[6]_i_1_n_0\
    );
\clock_cnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[6]_i_2_n_0\,
      D => \clock_cnt[4]_i_1_n_0\,
      Q => clock_cnt(4),
      S => \clock_cnt[6]_i_1_n_0\
    );
\clock_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[6]_i_2_n_0\,
      D => \clock_cnt[5]_i_1_n_0\,
      Q => clock_cnt(5),
      S => \clock_cnt[6]_i_1_n_0\
    );
\clock_cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clock_cnt[6]_i_2_n_0\,
      D => \clock_cnt[6]_i_3_n_0\,
      Q => clock_cnt(6),
      S => \clock_cnt[6]_i_1_n_0\
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAAAEAAABAAAAAA"
    )
        port map (
      I0 => \current_state[0]_i_2_n_0\,
      I1 => \current_state[0]_i_3_n_0\,
      I2 => \current_state_reg_n_0_[3]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state__14\(0),
      I5 => \data_output[7]_i_2_n_0\,
      O => \current_state[0]_i_1_n_0\
    );
\current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00F0F00000F1D"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \data_output[7]_i_2_n_0\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => \current_state_reg_n_0_[0]\,
      I5 => \current_state_reg_n_0_[3]\,
      O => \current_state[0]_i_2_n_0\
    );
\current_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => \current_state_reg_n_0_[1]\,
      O => \current_state[0]_i_3_n_0\
    );
\current_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \clock_cnt[6]_i_15_n_0\,
      I1 => clock_cnt(0),
      I2 => clock_cnt(3),
      I3 => clock_cnt(6),
      I4 => clock_cnt(4),
      I5 => clock_cnt(5),
      O => \current_state__14\(0)
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFFCCCCCCFFFECC"
    )
        port map (
      I0 => \current_state_reg_n_0_[3]\,
      I1 => \current_state[1]_i_2_n_0\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => \data_output[7]_i_2_n_0\,
      O => \current_state[1]_i_1_n_0\
    );
\current_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \clock_cnt[6]_i_14_n_0\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => data_out_0(7),
      I3 => \current_state[1]_i_3_n_0\,
      I4 => clock_cnt(6),
      I5 => \clock_cnt[6]_i_6_n_0\,
      O => \current_state[1]_i_2_n_0\
    );
\current_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => clock_cnt(4),
      I1 => clock_cnt(5),
      O => \current_state[1]_i_3_n_0\
    );
\current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F078"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \data_output[7]_i_2_n_0\,
      I4 => \current_state_reg_n_0_[3]\,
      O => \current_state[2]_i_1_n_0\
    );
\current_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \current_state_reg_n_0_[3]\,
      I1 => \current_state_reg_n_0_[2]\,
      O => \current_state[3]_i_1_n_0\
    );
\current_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10CCCCCC"
    )
        port map (
      I0 => \data_output[7]_i_2_n_0\,
      I1 => \current_state_reg_n_0_[3]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => \current_state_reg_n_0_[0]\,
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
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \data_out[5]_i_2_n_0\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => \current_state_reg_n_0_[2]\,
      I5 => data_out(0),
      O => \data_out[0]_i_1_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \data_out[5]_i_2_n_0\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => \current_state_reg_n_0_[2]\,
      I5 => data_out(1),
      O => \data_out[1]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => \data_out[5]_i_2_n_0\,
      I4 => \current_state_reg_n_0_[0]\,
      I5 => data_out(2),
      O => \data_out[2]_i_1_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \data_out[5]_i_2_n_0\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => \current_state_reg_n_0_[0]\,
      I5 => data_out(3),
      O => \data_out[3]_i_1_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \data_out[5]_i_2_n_0\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => data_out(4),
      O => \data_out[4]_i_1_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \data_out[5]_i_2_n_0\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => \current_state_reg_n_0_[0]\,
      I5 => data_out(5),
      O => \data_out[5]_i_1_n_0\
    );
\data_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000088888000"
    )
        port map (
      I0 => clock_cnt(5),
      I1 => clock_cnt(6),
      I2 => clock_cnt(2),
      I3 => clock_cnt(3),
      I4 => clock_cnt(4),
      I5 => \current_state_reg_n_0_[3]\,
      O => \data_out[5]_i_2_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => \data_out[7]_i_2_n_0\,
      I5 => data_out(6),
      O => \data_out[6]_i_1_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \data_out[7]_i_2_n_0\,
      I5 => data_out(7),
      O => \data_out[7]_i_1_n_0\
    );
\data_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080000000"
    )
        port map (
      I0 => \current_state_reg_n_0_[3]\,
      I1 => clock_cnt(5),
      I2 => clock_cnt(6),
      I3 => clock_cnt(2),
      I4 => clock_cnt(3),
      I5 => clock_cnt(4),
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
      INIT => X"00040000"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \data_output[7]_i_2_n_0\,
      I4 => \current_state_reg_n_0_[3]\,
      O => \data_output[7]_i_1_n_0\
    );
\data_output[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15FFFFFF"
    )
        port map (
      I0 => clock_cnt(4),
      I1 => clock_cnt(3),
      I2 => clock_cnt(2),
      I3 => clock_cnt(6),
      I4 => clock_cnt(5),
      O => \data_output[7]_i_2_n_0\
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
data_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC4CCC"
    )
        port map (
      I0 => \current_state_reg_n_0_[3]\,
      I1 => data_valid_i_2_n_0,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => \current_state_reg_n_0_[0]\,
      I4 => \current_state_reg_n_0_[2]\,
      O => data_valid_i_1_n_0
    );
data_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEFFFEEEEE000"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => data_out_0(7),
      I2 => \data_out[7]_i_2_n_0\,
      I3 => data_valid_i_3_n_0,
      I4 => data_valid_i_4_n_0,
      I5 => \^data_valid\,
      O => data_valid_i_2_n_0
    );
data_valid_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[2]\,
      O => data_valid_i_3_n_0
    );
data_valid_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => data_out_0(7),
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \current_state_reg_n_0_[3]\,
      I3 => \current_state_reg_n_0_[2]\,
      I4 => \current_state_reg_n_0_[1]\,
      O => data_valid_i_4_n_0
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
