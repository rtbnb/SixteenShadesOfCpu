-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Nov 17 18:56:28 2024
-- Host        : DESKTOP-E8CIL9E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Development/SixteenShadesOfCpu/debug/FPGA/Debugger.gen/sources_1/bd/design_1/ip/design_1_Debugger_0_0/design_1_Debugger_0_0_sim_netlist.vhdl
-- Design      : design_1_Debugger_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Debugger_0_0_Debugger is
  port (
    tx_data : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_data_valid : out STD_LOGIC;
    clk : in STD_LOGIC;
    tx_data_sended : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_data_valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Debugger_0_0_Debugger : entity is "Debugger";
end design_1_Debugger_0_0_Debugger;

architecture STRUCTURE of design_1_Debugger_0_0_Debugger is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rx_instruction_buffer : STD_LOGIC;
  signal \rx_instruction_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \^tx_data\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \tx_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \tx_data_buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_buffer[0]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \^tx_data_valid\ : STD_LOGIC;
  signal tx_data_valid_i_1_n_0 : STD_LOGIC;
  signal tx_instruction_buffer : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \tx_instruction_buffer[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "processcommand:0000001000,transmitdatainstruction:0000010000,receiveinstructiondatalow:0000000100,receiveinstructiondatahigh:0000000010,idle:0000000001,transmitdataaddrhigh:0010000000,resettx:1000000000,transmitdatalow:0001000000,transmitdataaddrlow:0100000000,transmitdatahigh:0000100000";
  attribute SOFT_HLUTNM of \tx_data[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tx_data_buffer[0]_i_2\ : label is "soft_lutpair0";
begin
  tx_data(2 downto 0) <= \^tx_data\(2 downto 0);
  tx_data_valid <= \^tx_data_valid\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEA"
    )
        port map (
      I0 => \FSM_onehot_state[0]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state[4]_i_2_n_0\,
      I3 => p_0_in(6),
      I4 => p_0_in(1),
      I5 => p_0_in(0),
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => tx_data_sended,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => rx_data_valid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[0]_i_2_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => rx_data_valid,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => rx_data_valid,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => rx_data_valid,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(6),
      I4 => \FSM_onehot_state[4]_i_2_n_0\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => tx_data_sended,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => '0'
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tx_data_sended,
      D => \FSM_onehot_state_reg_n_0_[5]\,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => '0'
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tx_data_sended,
      D => \FSM_onehot_state_reg_n_0_[6]\,
      Q => \FSM_onehot_state_reg_n_0_[7]\,
      R => '0'
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tx_data_sended,
      D => \FSM_onehot_state_reg_n_0_[7]\,
      Q => \FSM_onehot_state_reg_n_0_[8]\,
      R => '0'
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tx_data_sended,
      D => \FSM_onehot_state_reg_n_0_[8]\,
      Q => \FSM_onehot_state_reg_n_0_[9]\,
      R => '0'
    );
\rx_instruction_buffer[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => rx_data_valid,
      O => rx_instruction_buffer
    );
\rx_instruction_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_instruction_buffer,
      D => rx_data(0),
      Q => \rx_instruction_buffer_reg_n_0_[0]\,
      R => '0'
    );
\rx_instruction_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_instruction_buffer,
      D => rx_data(1),
      Q => p_0_in(6),
      R => '0'
    );
\rx_instruction_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_instruction_buffer,
      D => rx_data(2),
      Q => p_0_in(5),
      R => '0'
    );
\rx_instruction_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_instruction_buffer,
      D => rx_data(3),
      Q => p_0_in(4),
      R => '0'
    );
\rx_instruction_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_instruction_buffer,
      D => rx_data(4),
      Q => p_0_in(3),
      R => '0'
    );
\rx_instruction_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_instruction_buffer,
      D => rx_data(5),
      Q => p_0_in(2),
      R => '0'
    );
\rx_instruction_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_instruction_buffer,
      D => rx_data(6),
      Q => p_0_in(1),
      R => '0'
    );
\rx_instruction_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_instruction_buffer,
      D => rx_data(7),
      Q => p_0_in(0),
      R => '0'
    );
\tx_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEFFFEEEEE000"
    )
        port map (
      I0 => \tx_data_buffer_reg_n_0_[0]\,
      I1 => \tx_data[7]_i_2_n_0\,
      I2 => tx_data_sended,
      I3 => \tx_data[7]_i_3_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \^tx_data\(0),
      O => \tx_data[4]_i_1_n_0\
    );
\tx_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \tx_data[6]_i_2_n_0\,
      I5 => \^tx_data\(1),
      O => \tx_data[6]_i_1_n_0\
    );
\tx_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
        port map (
      I0 => tx_data_sended,
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \tx_data[6]_i_2_n_0\
    );
\tx_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEFFFEEEEE000"
    )
        port map (
      I0 => tx_instruction_buffer(7),
      I1 => \tx_data[7]_i_2_n_0\,
      I2 => tx_data_sended,
      I3 => \tx_data[7]_i_3_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \^tx_data\(2),
      O => \tx_data[7]_i_1_n_0\
    );
\tx_data[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \tx_data[7]_i_2_n_0\
    );
\tx_data[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_state_reg_n_0_[8]\,
      I3 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \tx_data[7]_i_3_n_0\
    );
\tx_data_buffer[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \rx_instruction_buffer_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \tx_data_buffer[0]_i_2_n_0\,
      I3 => \FSM_onehot_state[4]_i_2_n_0\,
      I4 => \tx_data_buffer_reg_n_0_[0]\,
      O => \tx_data_buffer[0]_i_1_n_0\
    );
\tx_data_buffer[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(6),
      O => \tx_data_buffer[0]_i_2_n_0\
    );
\tx_data_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_data_buffer[0]_i_1_n_0\,
      Q => \tx_data_buffer_reg_n_0_[0]\,
      R => '0'
    );
\tx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_data[4]_i_1_n_0\,
      Q => \^tx_data\(0),
      R => '0'
    );
\tx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_data[6]_i_1_n_0\,
      Q => \^tx_data\(1),
      R => '0'
    );
\tx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_data[7]_i_1_n_0\,
      Q => \^tx_data\(2),
      R => '0'
    );
tx_data_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ECEFECEC"
    )
        port map (
      I0 => tx_data_sended,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \tx_data[7]_i_3_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      I4 => \^tx_data_valid\,
      O => tx_data_valid_i_1_n_0
    );
tx_data_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tx_data_valid_i_1_n_0,
      Q => \^tx_data_valid\,
      R => '0'
    );
\tx_instruction_buffer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_2_n_0\,
      I1 => p_0_in(6),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => tx_instruction_buffer(7),
      O => \tx_instruction_buffer[7]_i_1_n_0\
    );
\tx_instruction_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \tx_instruction_buffer[7]_i_1_n_0\,
      Q => tx_instruction_buffer(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Debugger_0_0 is
  port (
    clk : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_data_valid : in STD_LOGIC;
    tx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_data_valid : out STD_LOGIC;
    tx_data_sended : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Debugger_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Debugger_0_0 : entity is "design_1_Debugger_0_0,Debugger,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Debugger_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Debugger_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Debugger_0_0 : entity is "Debugger,Vivado 2024.1";
end design_1_Debugger_0_0;

architecture STRUCTURE of design_1_Debugger_0_0 is
  signal \^tx_data\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
  tx_data(7) <= \^tx_data\(5);
  tx_data(6) <= \^tx_data\(2);
  tx_data(5) <= \^tx_data\(5);
  tx_data(4) <= \^tx_data\(0);
  tx_data(3) <= \^tx_data\(5);
  tx_data(2) <= \^tx_data\(2);
  tx_data(1) <= \^tx_data\(5);
  tx_data(0) <= \^tx_data\(0);
U0: entity work.design_1_Debugger_0_0_Debugger
     port map (
      clk => clk,
      rx_data(7 downto 0) => rx_data(7 downto 0),
      rx_data_valid => rx_data_valid,
      tx_data(2) => \^tx_data\(5),
      tx_data(1) => \^tx_data\(2),
      tx_data(0) => \^tx_data\(0),
      tx_data_sended => tx_data_sended,
      tx_data_valid => tx_data_valid
    );
end STRUCTURE;
