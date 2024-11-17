-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Nov 17 18:56:28 2024
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
    send_valid : out STD_LOGIC;
    data_valid : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_TX_UART_0_0_TX_UART : entity is "TX_UART";
end design_1_TX_UART_0_0_TX_UART;

architecture STRUCTURE of design_1_TX_UART_0_0_TX_UART is
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[11]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[9]\ : STD_LOGIC;
  signal clk_cnt : STD_LOGIC;
  signal \clk_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \clk_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \clk_cnt[6]_i_4_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \clk_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \clk_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \clk_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \clk_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal \^send_valid\ : STD_LOGIC;
  signal send_valid0 : STD_LOGIC;
  signal send_valid_i_1_n_0 : STD_LOGIC;
  signal tx_data : STD_LOGIC;
  signal tx_data_out0 : STD_LOGIC;
  signal tx_data_out_i_1_n_0 : STD_LOGIC;
  signal tx_data_out_i_2_n_0 : STD_LOGIC;
  signal tx_data_out_i_3_n_0 : STD_LOGIC;
  signal tx_data_out_i_4_n_0 : STD_LOGIC;
  signal tx_data_out_i_5_n_0 : STD_LOGIC;
  signal tx_data_out_i_6_n_0 : STD_LOGIC;
  signal tx_data_out_i_7_n_0 : STD_LOGIC;
  signal \tx_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \^tx_output\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[11]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[9]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[10]\ : label is "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[11]\ : label is "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[4]\ : label is "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[5]\ : label is "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[6]\ : label is "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[7]\ : label is "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[8]\ : label is "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[9]\ : label is "bit1:000000001000,bit2:000000010000,bit0:000000000100,reset:100000000000,stop_bit:010000000000,start_tx:000000000010,idle:000000000001,bit7:001000000000,bit5:000010000000,bit6:000100000000,bit4:000001000000,bit3:000000100000";
  attribute SOFT_HLUTNM of \clk_cnt[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clk_cnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_cnt[5]_i_2\ : label is "soft_lutpair7";
begin
  send_valid <= \^send_valid\;
  tx_output <= \^tx_output\;
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => data_valid,
      I1 => tx_data_out0,
      I2 => send_valid0,
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[10]\,
      I1 => tx_data_out_i_2_n_0,
      I2 => \FSM_onehot_current_state_reg_n_0_[9]\,
      O => \FSM_onehot_current_state[10]_i_1_n_0\
    );
\FSM_onehot_current_state[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => send_valid0,
      I1 => tx_data_out0,
      I2 => tx_data_out_i_3_n_0,
      O => \FSM_onehot_current_state[11]_i_1_n_0\
    );
\FSM_onehot_current_state[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[10]\,
      I1 => tx_data_out_i_2_n_0,
      O => \FSM_onehot_current_state[11]_i_2_n_0\
    );
\FSM_onehot_current_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => tx_data_out0,
      I1 => data_valid,
      I2 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I3 => tx_data_out_i_2_n_0,
      O => \FSM_onehot_current_state[1]_i_1_n_0\
    );
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => tx_data_out_i_2_n_0,
      I2 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => \FSM_onehot_current_state[2]_i_1_n_0\
    );
\FSM_onehot_current_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I1 => tx_data_out_i_2_n_0,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_current_state[3]_i_1_n_0\
    );
\FSM_onehot_current_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I1 => tx_data_out_i_2_n_0,
      I2 => \FSM_onehot_current_state_reg_n_0_[3]\,
      O => \FSM_onehot_current_state[4]_i_1_n_0\
    );
\FSM_onehot_current_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I1 => tx_data_out_i_2_n_0,
      I2 => \FSM_onehot_current_state_reg_n_0_[4]\,
      O => \FSM_onehot_current_state[5]_i_1_n_0\
    );
\FSM_onehot_current_state[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => tx_data_out_i_2_n_0,
      I2 => \FSM_onehot_current_state_reg_n_0_[5]\,
      O => \FSM_onehot_current_state[6]_i_1_n_0\
    );
\FSM_onehot_current_state[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => tx_data_out_i_2_n_0,
      I2 => \FSM_onehot_current_state_reg_n_0_[6]\,
      O => \FSM_onehot_current_state[7]_i_1_n_0\
    );
\FSM_onehot_current_state[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I1 => tx_data_out_i_2_n_0,
      I2 => \FSM_onehot_current_state_reg_n_0_[7]\,
      O => \FSM_onehot_current_state[8]_i_1_n_0\
    );
\FSM_onehot_current_state[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I1 => tx_data_out_i_2_n_0,
      I2 => \FSM_onehot_current_state_reg_n_0_[8]\,
      O => \FSM_onehot_current_state[9]_i_1_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[11]_i_1_n_0\,
      D => \FSM_onehot_current_state[0]_i_1_n_0\,
      Q => tx_data_out0,
      R => '0'
    );
\FSM_onehot_current_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[11]_i_1_n_0\,
      D => \FSM_onehot_current_state[10]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[10]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[11]_i_1_n_0\,
      D => \FSM_onehot_current_state[11]_i_2_n_0\,
      Q => send_valid0,
      R => '0'
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[11]_i_1_n_0\,
      D => \FSM_onehot_current_state[1]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[11]_i_1_n_0\,
      D => \FSM_onehot_current_state[2]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[11]_i_1_n_0\,
      D => \FSM_onehot_current_state[3]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[11]_i_1_n_0\,
      D => \FSM_onehot_current_state[4]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[11]_i_1_n_0\,
      D => \FSM_onehot_current_state[5]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[5]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[11]_i_1_n_0\,
      D => \FSM_onehot_current_state[6]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[6]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[11]_i_1_n_0\,
      D => \FSM_onehot_current_state[7]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[7]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[11]_i_1_n_0\,
      D => \FSM_onehot_current_state[8]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[8]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[11]_i_1_n_0\,
      D => \FSM_onehot_current_state[9]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[9]\,
      R => '0'
    );
\clk_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFBF"
    )
        port map (
      I0 => \clk_cnt[6]_i_4_n_0\,
      I1 => \clk_cnt_reg_n_0_[5]\,
      I2 => \clk_cnt_reg_n_0_[6]\,
      I3 => \clk_cnt_reg_n_0_[4]\,
      I4 => \clk_cnt_reg_n_0_[1]\,
      I5 => \clk_cnt_reg_n_0_[0]\,
      O => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => tx_data_out_i_2_n_0,
      I1 => \clk_cnt_reg_n_0_[1]\,
      I2 => \clk_cnt_reg_n_0_[0]\,
      O => \clk_cnt[1]_i_1_n_0\
    );
\clk_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => tx_data_out_i_2_n_0,
      I1 => \clk_cnt_reg_n_0_[2]\,
      I2 => \clk_cnt_reg_n_0_[0]\,
      I3 => \clk_cnt_reg_n_0_[1]\,
      O => \clk_cnt[2]_i_1_n_0\
    );
\clk_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => tx_data_out_i_2_n_0,
      I1 => \clk_cnt_reg_n_0_[3]\,
      I2 => \clk_cnt_reg_n_0_[1]\,
      I3 => \clk_cnt_reg_n_0_[0]\,
      I4 => \clk_cnt_reg_n_0_[2]\,
      O => \clk_cnt[3]_i_1_n_0\
    );
\clk_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => tx_data_out_i_2_n_0,
      I1 => \clk_cnt_reg_n_0_[4]\,
      I2 => \clk_cnt_reg_n_0_[1]\,
      I3 => \clk_cnt_reg_n_0_[0]\,
      I4 => \clk_cnt_reg_n_0_[3]\,
      I5 => \clk_cnt_reg_n_0_[2]\,
      O => \clk_cnt[4]_i_1_n_0\
    );
\clk_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => tx_data_out_i_2_n_0,
      I1 => \clk_cnt_reg_n_0_[5]\,
      I2 => \clk_cnt_reg_n_0_[2]\,
      I3 => \clk_cnt_reg_n_0_[3]\,
      I4 => \clk_cnt_reg_n_0_[4]\,
      I5 => \clk_cnt[5]_i_2_n_0\,
      O => \clk_cnt[5]_i_1_n_0\
    );
\clk_cnt[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \clk_cnt_reg_n_0_[0]\,
      I1 => \clk_cnt_reg_n_0_[1]\,
      O => \clk_cnt[5]_i_2_n_0\
    );
\clk_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data_valid,
      I1 => tx_data_out0,
      I2 => tx_data_out_i_3_n_0,
      O => \clk_cnt[6]_i_1_n_0\
    );
\clk_cnt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => tx_data_out0,
      I1 => data_valid,
      I2 => tx_data_out_i_3_n_0,
      O => clk_cnt
    );
\clk_cnt[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AA8AAAA"
    )
        port map (
      I0 => \clk_cnt_reg_n_0_[6]\,
      I1 => \clk_cnt_reg_n_0_[4]\,
      I2 => \clk_cnt_reg_n_0_[0]\,
      I3 => \clk_cnt_reg_n_0_[1]\,
      I4 => \clk_cnt_reg_n_0_[5]\,
      I5 => \clk_cnt[6]_i_4_n_0\,
      O => \clk_cnt[6]_i_3_n_0\
    );
\clk_cnt[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \clk_cnt_reg_n_0_[2]\,
      I1 => \clk_cnt_reg_n_0_[3]\,
      O => \clk_cnt[6]_i_4_n_0\
    );
\clk_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_cnt,
      D => \clk_cnt[0]_i_1_n_0\,
      Q => \clk_cnt_reg_n_0_[0]\,
      R => \clk_cnt[6]_i_1_n_0\
    );
\clk_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_cnt,
      D => \clk_cnt[1]_i_1_n_0\,
      Q => \clk_cnt_reg_n_0_[1]\,
      R => \clk_cnt[6]_i_1_n_0\
    );
\clk_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_cnt,
      D => \clk_cnt[2]_i_1_n_0\,
      Q => \clk_cnt_reg_n_0_[2]\,
      R => \clk_cnt[6]_i_1_n_0\
    );
\clk_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_cnt,
      D => \clk_cnt[3]_i_1_n_0\,
      Q => \clk_cnt_reg_n_0_[3]\,
      R => \clk_cnt[6]_i_1_n_0\
    );
\clk_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_cnt,
      D => \clk_cnt[4]_i_1_n_0\,
      Q => \clk_cnt_reg_n_0_[4]\,
      R => \clk_cnt[6]_i_1_n_0\
    );
\clk_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_cnt,
      D => \clk_cnt[5]_i_1_n_0\,
      Q => \clk_cnt_reg_n_0_[5]\,
      R => \clk_cnt[6]_i_1_n_0\
    );
\clk_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_cnt,
      D => \clk_cnt[6]_i_3_n_0\,
      Q => \clk_cnt_reg_n_0_[6]\,
      R => \clk_cnt[6]_i_1_n_0\
    );
send_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => \^send_valid\,
      I1 => \FSM_onehot_current_state_reg_n_0_[10]\,
      I2 => tx_data_out_i_2_n_0,
      I3 => send_valid0,
      O => send_valid_i_1_n_0
    );
send_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => send_valid_i_1_n_0,
      Q => \^send_valid\,
      R => '0'
    );
\tx_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tx_data_out0,
      I1 => data_valid,
      O => tx_data
    );
tx_data_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAEAEA2A"
    )
        port map (
      I0 => \^tx_output\,
      I1 => tx_data_out_i_2_n_0,
      I2 => tx_data_out_i_3_n_0,
      I3 => tx_data_out_i_4_n_0,
      I4 => tx_data_out_i_5_n_0,
      I5 => tx_data_out0,
      O => tx_data_out_i_1_n_0
    );
tx_data_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => \clk_cnt[6]_i_4_n_0\,
      I1 => \clk_cnt_reg_n_0_[5]\,
      I2 => \clk_cnt_reg_n_0_[6]\,
      I3 => \clk_cnt_reg_n_0_[4]\,
      I4 => \clk_cnt_reg_n_0_[1]\,
      I5 => \clk_cnt_reg_n_0_[0]\,
      O => tx_data_out_i_2_n_0
    );
tx_data_out_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => tx_data_out_i_6_n_0,
      I1 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[4]\,
      O => tx_data_out_i_3_n_0
    );
tx_data_out_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => p_3_in,
      I1 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I2 => p_4_in,
      I3 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I5 => p_5_in,
      O => tx_data_out_i_4_n_0
    );
tx_data_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => tx_data_out_i_7_n_0,
      I1 => \tx_data_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[10]\,
      I4 => \tx_data_reg_n_0_[1]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[3]\,
      O => tx_data_out_i_5_n_0
    );
tx_data_out_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[10]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => tx_data_out_i_6_n_0
    );
tx_data_out_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => p_0_in,
      I1 => \FSM_onehot_current_state_reg_n_0_[9]\,
      I2 => p_1_in,
      I3 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I5 => p_2_in,
      O => tx_data_out_i_7_n_0
    );
tx_data_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tx_data_out_i_1_n_0,
      Q => \^tx_output\,
      R => '0'
    );
\tx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data,
      D => data_in(0),
      Q => \tx_data_reg_n_0_[0]\,
      R => '0'
    );
\tx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data,
      D => data_in(1),
      Q => \tx_data_reg_n_0_[1]\,
      R => '0'
    );
\tx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data,
      D => data_in(2),
      Q => p_5_in,
      R => '0'
    );
\tx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data,
      D => data_in(3),
      Q => p_4_in,
      R => '0'
    );
\tx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data,
      D => data_in(4),
      Q => p_3_in,
      R => '0'
    );
\tx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data,
      D => data_in(5),
      Q => p_2_in,
      R => '0'
    );
\tx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data,
      D => data_in(6),
      Q => p_1_in,
      R => '0'
    );
\tx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data,
      D => data_in(7),
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_TX_UART_0_0 is
  port (
    data_valid : in STD_LOGIC;
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
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
U0: entity work.design_1_TX_UART_0_0_TX_UART
     port map (
      clk => clk,
      data_in(7 downto 0) => data_in(7 downto 0),
      data_valid => data_valid,
      send_valid => send_valid,
      tx_output => tx_output
    );
end STRUCTURE;
