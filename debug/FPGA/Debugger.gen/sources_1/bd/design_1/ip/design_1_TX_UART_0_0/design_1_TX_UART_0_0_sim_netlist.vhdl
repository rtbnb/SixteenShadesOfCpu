-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Nov 16 22:58:56 2024
-- Host        : DESKTOP-E8CIL9E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Development/SixteenShadesOfCpu/debug/FPGA/Debugger.gen/sources_1/bd/design_1/ip/design_1_TX_UART_0_0/design_1_TX_UART_0_0_sim_netlist.vhdl
-- Design      : design_1_TX_UART_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_TX_UART_0_0_TX_UART is
  port (
    tx_output : out STD_LOGIC;
    send_data : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_TX_UART_0_0_TX_UART : entity is "TX_UART";
end design_1_TX_UART_0_0_TX_UART;

architecture STRUCTURE of design_1_TX_UART_0_0_TX_UART is
  signal \FSM_onehot_current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[9]\ : STD_LOGIC;
  signal clock_cnt : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \clock_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \clock_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \clock_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \clock_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \clock_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \clock_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \clock_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \clock_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal clock_cnt0_carry_n_0 : STD_LOGIC;
  signal clock_cnt0_carry_n_1 : STD_LOGIC;
  signal clock_cnt0_carry_n_2 : STD_LOGIC;
  signal clock_cnt0_carry_n_3 : STD_LOGIC;
  signal \clock_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \clock_cnt[13]_i_3_n_0\ : STD_LOGIC;
  signal \clock_cnt[13]_i_4_n_0\ : STD_LOGIC;
  signal \clock_cnt[13]_i_5_n_0\ : STD_LOGIC;
  signal clock_cnt_0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal p_0_in : STD_LOGIC;
  signal tx_clock_i_1_n_0 : STD_LOGIC;
  signal tx_clock_reg_n_0 : STD_LOGIC;
  signal tx_data_send : STD_LOGIC;
  signal tx_data_send_i_2_n_0 : STD_LOGIC;
  signal tx_data_send_i_3_n_0 : STD_LOGIC;
  signal tx_data_send_i_4_n_0 : STD_LOGIC;
  signal tx_data_send_i_5_n_0 : STD_LOGIC;
  signal tx_data_send_i_6_n_0 : STD_LOGIC;
  signal writing_data_to_uart : STD_LOGIC;
  signal writing_data_to_uart_i_1_n_0 : STD_LOGIC;
  signal writing_data_to_uart_reg_n_0 : STD_LOGIC;
  signal \NLW_clock_cnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clock_cnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[4]\ : label is "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[5]\ : label is "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[6]\ : label is "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[7]\ : label is "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[8]\ : label is "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[9]\ : label is "bit1:0000001000,bit2:0000010000,bit0:0000000100,start_tx:0000000010,idle:0000000001,bit7:1000000000,bit5:0010000000,bit4:0001000000,bit6:0100000000,bit3:0000100000";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of clock_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \clock_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \clock_cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \clock_cnt0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of tx_data_send_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of writing_data_to_uart_i_1 : label is "soft_lutpair0";
begin
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[0]\,
      Q => writing_data_to_uart,
      R => '0'
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[1]\,
      Q => \FSM_onehot_current_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[2]\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[3]\,
      Q => \FSM_onehot_current_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[4]\,
      Q => \FSM_onehot_current_state_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[5]\,
      Q => \FSM_onehot_current_state_reg_n_0_[5]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[6]\,
      Q => \FSM_onehot_current_state_reg_n_0_[6]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[7]\,
      Q => \FSM_onehot_current_state_reg_n_0_[7]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[8]\,
      Q => \FSM_onehot_current_state_reg_n_0_[8]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[9]\,
      Q => \FSM_onehot_current_state_reg_n_0_[9]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => tx_clock_reg_n_0,
      CE => tx_data_send,
      D => \FSM_onehot_current_state_reg_n_0_[9]\,
      Q => \FSM_onehot_next_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clock_reg_n_0,
      CE => tx_data_send,
      D => writing_data_to_uart,
      Q => \FSM_onehot_next_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clock_reg_n_0,
      CE => tx_data_send,
      D => \FSM_onehot_current_state_reg_n_0_[1]\,
      Q => \FSM_onehot_next_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clock_reg_n_0,
      CE => tx_data_send,
      D => \FSM_onehot_current_state_reg_n_0_[2]\,
      Q => \FSM_onehot_next_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clock_reg_n_0,
      CE => tx_data_send,
      D => \FSM_onehot_current_state_reg_n_0_[3]\,
      Q => \FSM_onehot_next_state_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clock_reg_n_0,
      CE => tx_data_send,
      D => \FSM_onehot_current_state_reg_n_0_[4]\,
      Q => \FSM_onehot_next_state_reg_n_0_[5]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clock_reg_n_0,
      CE => tx_data_send,
      D => \FSM_onehot_current_state_reg_n_0_[5]\,
      Q => \FSM_onehot_next_state_reg_n_0_[6]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clock_reg_n_0,
      CE => tx_data_send,
      D => \FSM_onehot_current_state_reg_n_0_[6]\,
      Q => \FSM_onehot_next_state_reg_n_0_[7]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clock_reg_n_0,
      CE => tx_data_send,
      D => \FSM_onehot_current_state_reg_n_0_[7]\,
      Q => \FSM_onehot_next_state_reg_n_0_[8]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clock_reg_n_0,
      CE => tx_data_send,
      D => \FSM_onehot_current_state_reg_n_0_[8]\,
      Q => \FSM_onehot_next_state_reg_n_0_[9]\,
      R => '0'
    );
clock_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clock_cnt0_carry_n_0,
      CO(2) => clock_cnt0_carry_n_1,
      CO(1) => clock_cnt0_carry_n_2,
      CO(0) => clock_cnt0_carry_n_3,
      CYINIT => clock_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => clock_cnt(4 downto 1)
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
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => clock_cnt(8 downto 5)
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
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => clock_cnt(12 downto 9)
    );
\clock_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \clock_cnt0_carry__1_n_0\,
      CO(3 downto 0) => \NLW_clock_cnt0_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_clock_cnt0_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(13),
      S(3 downto 1) => B"000",
      S(0) => clock_cnt(13)
    );
\clock_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clock_cnt[0]_i_2_n_0\,
      I1 => clock_cnt(0),
      O => clock_cnt_0(0)
    );
\clock_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBFFF"
    )
        port map (
      I0 => \clock_cnt[13]_i_5_n_0\,
      I1 => clock_cnt(5),
      I2 => clock_cnt(4),
      I3 => clock_cnt(7),
      I4 => clock_cnt(6),
      I5 => \clock_cnt[13]_i_3_n_0\,
      O => \clock_cnt[0]_i_2_n_0\
    );
\clock_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \clock_cnt[13]_i_3_n_0\,
      I1 => \clock_cnt[13]_i_4_n_0\,
      I2 => \clock_cnt[13]_i_5_n_0\,
      I3 => clock_cnt(0),
      I4 => data0(10),
      O => clock_cnt_0(10)
    );
\clock_cnt[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \clock_cnt[13]_i_3_n_0\,
      I1 => \clock_cnt[13]_i_4_n_0\,
      I2 => \clock_cnt[13]_i_5_n_0\,
      I3 => clock_cnt(0),
      I4 => data0(11),
      O => clock_cnt_0(11)
    );
\clock_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \clock_cnt[13]_i_3_n_0\,
      I1 => \clock_cnt[13]_i_4_n_0\,
      I2 => \clock_cnt[13]_i_5_n_0\,
      I3 => clock_cnt(0),
      I4 => data0(12),
      O => clock_cnt_0(12)
    );
\clock_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => writing_data_to_uart_reg_n_0,
      I1 => send_data,
      O => p_0_in
    );
\clock_cnt[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \clock_cnt[13]_i_3_n_0\,
      I1 => \clock_cnt[13]_i_4_n_0\,
      I2 => \clock_cnt[13]_i_5_n_0\,
      I3 => clock_cnt(0),
      I4 => data0(13),
      O => clock_cnt_0(13)
    );
\clock_cnt[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => clock_cnt(1),
      I1 => clock_cnt(12),
      I2 => clock_cnt(13),
      I3 => clock_cnt(3),
      I4 => clock_cnt(2),
      O => \clock_cnt[13]_i_3_n_0\
    );
\clock_cnt[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => clock_cnt(5),
      I1 => clock_cnt(4),
      I2 => clock_cnt(7),
      I3 => clock_cnt(6),
      O => \clock_cnt[13]_i_4_n_0\
    );
\clock_cnt[13]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => clock_cnt(9),
      I1 => clock_cnt(8),
      I2 => clock_cnt(11),
      I3 => clock_cnt(10),
      O => \clock_cnt[13]_i_5_n_0\
    );
\clock_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \clock_cnt[13]_i_3_n_0\,
      I1 => \clock_cnt[13]_i_4_n_0\,
      I2 => \clock_cnt[13]_i_5_n_0\,
      I3 => clock_cnt(0),
      I4 => data0(1),
      O => clock_cnt_0(1)
    );
\clock_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \clock_cnt[13]_i_3_n_0\,
      I1 => \clock_cnt[13]_i_4_n_0\,
      I2 => \clock_cnt[13]_i_5_n_0\,
      I3 => clock_cnt(0),
      I4 => data0(2),
      O => clock_cnt_0(2)
    );
\clock_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \clock_cnt[13]_i_3_n_0\,
      I1 => \clock_cnt[13]_i_4_n_0\,
      I2 => \clock_cnt[13]_i_5_n_0\,
      I3 => clock_cnt(0),
      I4 => data0(3),
      O => clock_cnt_0(3)
    );
\clock_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \clock_cnt[13]_i_3_n_0\,
      I1 => \clock_cnt[13]_i_4_n_0\,
      I2 => \clock_cnt[13]_i_5_n_0\,
      I3 => clock_cnt(0),
      I4 => data0(4),
      O => clock_cnt_0(4)
    );
\clock_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \clock_cnt[13]_i_3_n_0\,
      I1 => \clock_cnt[13]_i_4_n_0\,
      I2 => \clock_cnt[13]_i_5_n_0\,
      I3 => clock_cnt(0),
      I4 => data0(5),
      O => clock_cnt_0(5)
    );
\clock_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \clock_cnt[13]_i_3_n_0\,
      I1 => \clock_cnt[13]_i_4_n_0\,
      I2 => \clock_cnt[13]_i_5_n_0\,
      I3 => clock_cnt(0),
      I4 => data0(6),
      O => clock_cnt_0(6)
    );
\clock_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \clock_cnt[13]_i_3_n_0\,
      I1 => \clock_cnt[13]_i_4_n_0\,
      I2 => \clock_cnt[13]_i_5_n_0\,
      I3 => clock_cnt(0),
      I4 => data0(7),
      O => clock_cnt_0(7)
    );
\clock_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \clock_cnt[13]_i_3_n_0\,
      I1 => \clock_cnt[13]_i_4_n_0\,
      I2 => \clock_cnt[13]_i_5_n_0\,
      I3 => clock_cnt(0),
      I4 => data0(8),
      O => clock_cnt_0(8)
    );
\clock_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \clock_cnt[13]_i_3_n_0\,
      I1 => \clock_cnt[13]_i_4_n_0\,
      I2 => \clock_cnt[13]_i_5_n_0\,
      I3 => clock_cnt(0),
      I4 => data0(9),
      O => clock_cnt_0(9)
    );
\clock_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clock_cnt_0(0),
      Q => clock_cnt(0),
      R => p_0_in
    );
\clock_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clock_cnt_0(10),
      Q => clock_cnt(10),
      R => p_0_in
    );
\clock_cnt_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clock_cnt_0(11),
      Q => clock_cnt(11),
      S => p_0_in
    );
\clock_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clock_cnt_0(12),
      Q => clock_cnt(12),
      R => p_0_in
    );
\clock_cnt_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clock_cnt_0(13),
      Q => clock_cnt(13),
      S => p_0_in
    );
\clock_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clock_cnt_0(1),
      Q => clock_cnt(1),
      R => p_0_in
    );
\clock_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clock_cnt_0(2),
      Q => clock_cnt(2),
      R => p_0_in
    );
\clock_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clock_cnt_0(3),
      Q => clock_cnt(3),
      R => p_0_in
    );
\clock_cnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clock_cnt_0(4),
      Q => clock_cnt(4),
      S => p_0_in
    );
\clock_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clock_cnt_0(5),
      Q => clock_cnt(5),
      S => p_0_in
    );
\clock_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clock_cnt_0(6),
      Q => clock_cnt(6),
      R => p_0_in
    );
\clock_cnt_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clock_cnt_0(7),
      Q => clock_cnt(7),
      S => p_0_in
    );
\clock_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clock_cnt_0(8),
      Q => clock_cnt(8),
      R => p_0_in
    );
\clock_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clock_cnt_0(9),
      Q => clock_cnt(9),
      R => p_0_in
    );
tx_clock_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100010000"
    )
        port map (
      I0 => \clock_cnt[13]_i_3_n_0\,
      I1 => \clock_cnt[13]_i_4_n_0\,
      I2 => \clock_cnt[13]_i_5_n_0\,
      I3 => clock_cnt(0),
      I4 => writing_data_to_uart_reg_n_0,
      I5 => send_data,
      O => tx_clock_i_1_n_0
    );
tx_clock_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tx_clock_i_1_n_0,
      Q => tx_clock_reg_n_0,
      R => '0'
    );
tx_data_send_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => tx_data_send_i_3_n_0,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I4 => writing_data_to_uart,
      O => tx_data_send
    );
tx_data_send_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => tx_data_send_i_4_n_0,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => data_in(0),
      I3 => tx_data_send_i_5_n_0,
      I4 => tx_data_send_i_6_n_0,
      O => tx_data_send_i_2_n_0
    );
tx_data_send_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[4]\,
      O => tx_data_send_i_3_n_0
    );
tx_data_send_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I1 => data_in(1),
      I2 => writing_data_to_uart,
      O => tx_data_send_i_4_n_0
    );
tx_data_send_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => data_in(7),
      I1 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I2 => data_in(6),
      I3 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I5 => data_in(5),
      O => tx_data_send_i_5_n_0
    );
tx_data_send_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => data_in(4),
      I1 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I2 => data_in(3),
      I3 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I5 => data_in(2),
      O => tx_data_send_i_6_n_0
    );
tx_data_send_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => tx_clock_reg_n_0,
      CE => tx_data_send,
      D => tx_data_send_i_2_n_0,
      Q => tx_output,
      R => '0'
    );
writing_data_to_uart_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => writing_data_to_uart,
      I1 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I2 => writing_data_to_uart_reg_n_0,
      O => writing_data_to_uart_i_1_n_0
    );
writing_data_to_uart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clock_reg_n_0,
      CE => '1',
      D => writing_data_to_uart_i_1_n_0,
      Q => writing_data_to_uart_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_TX_UART_0_0 is
  port (
    send_data : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    tx_output : out STD_LOGIC;
    send_valid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_TX_UART_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_TX_UART_0_0 : entity is "design_1_TX_UART_0_0,TX_UART,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_TX_UART_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_TX_UART_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_TX_UART_0_0 : entity is "TX_UART,Vivado 2024.1";
end design_1_TX_UART_0_0;

architecture STRUCTURE of design_1_TX_UART_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
  send_valid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_TX_UART_0_0_TX_UART
     port map (
      clk => clk,
      data_in(7 downto 0) => data_in(7 downto 0),
      send_data => send_data,
      tx_output => tx_output
    );
end STRUCTURE;
