-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Nov 15 10:21:31 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Pipelining_Controller_0_0/main_Pipelining_Controller_0_0_sim_netlist.vhdl
-- Design      : main_Pipelining_Controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_Pipelining_Controller_0_0_Pipelining_Controller is
  port (
    InstructionForwardConfiguration : out STD_LOGIC_VECTOR ( 4 downto 0 );
    stalled_s_reg_0 : out STD_LOGIC;
    InstructionToExecute : out STD_LOGIC_VECTOR ( 15 downto 0 );
    InstrExec_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    InstrLoad_CLK : in STD_LOGIC;
    ResolveStall : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_Pipelining_Controller_0_0_Pipelining_Controller : entity is "Pipelining_Controller";
end main_Pipelining_Controller_0_0_Pipelining_Controller;

architecture STRUCTURE of main_Pipelining_Controller_0_0_Pipelining_Controller is
  signal exc_alu : STD_LOGIC;
  signal \exc_write__1\ : STD_LOGIC;
  signal exc_write_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal execution_buffer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \execution_forward_reg[0]_srl2_U0_execution_forward_reg_c_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_3_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_5_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[2]_srl2_U0_execution_forward_reg_c_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_3_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_7_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_2_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_3_n_0\ : STD_LOGIC;
  signal \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_n_0\ : STD_LOGIC;
  signal execution_forward_reg_c_n_0 : STD_LOGIC;
  signal input_forward : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rf_forward_reg_c_n_0 : STD_LOGIC;
  signal rf_read_buffer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rf_read_buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[10]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[11]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[12]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[13]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[14]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[15]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[1]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[2]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[3]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[4]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[5]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[6]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[7]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[8]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer[9]_i_1_n_0\ : STD_LOGIC;
  signal \rf_read_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \rf_read_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \rf_read_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal rf_reg_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rf_reg_1_read : STD_LOGIC;
  signal rf_reg_2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rf_reg_2_read : STD_LOGIC;
  signal stalled_s_i_1_n_0 : STD_LOGIC;
  signal \^stalled_s_reg_0\ : STD_LOGIC;
  signal write_back_buffer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \write_back_forward_reg[0]_U0_write_back_forward_reg_c_n_0\ : STD_LOGIC;
  signal \write_back_forward_reg[1]_U0_write_back_forward_reg_c_n_0\ : STD_LOGIC;
  signal \write_back_forward_reg[2]_U0_write_back_forward_reg_c_n_0\ : STD_LOGIC;
  signal \write_back_forward_reg[3]_U0_write_back_forward_reg_c_n_0\ : STD_LOGIC;
  signal \write_back_forward_reg[4]_U0_write_back_forward_reg_c_n_0\ : STD_LOGIC;
  signal write_back_forward_reg_c_n_0 : STD_LOGIC;
  signal \write_back_forward_reg_gate__0_n_0\ : STD_LOGIC;
  signal \write_back_forward_reg_gate__1_n_0\ : STD_LOGIC;
  signal \write_back_forward_reg_gate__2_n_0\ : STD_LOGIC;
  signal \write_back_forward_reg_gate__3_n_0\ : STD_LOGIC;
  signal write_back_forward_reg_gate_n_0 : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \execution_forward_reg[0]_srl2_U0_execution_forward_reg_c\ : label is "\U0/execution_forward_reg ";
  attribute srl_name : string;
  attribute srl_name of \execution_forward_reg[0]_srl2_U0_execution_forward_reg_c\ : label is "\U0/execution_forward_reg[0]_srl2_U0_execution_forward_reg_c ";
  attribute srl_bus_name of \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c\ : label is "\U0/execution_forward_reg ";
  attribute srl_name of \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c\ : label is "\U0/execution_forward_reg[1]_srl2_U0_execution_forward_reg_c ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_2\ : label is "soft_lutpair2";
  attribute srl_bus_name of \execution_forward_reg[2]_srl2_U0_execution_forward_reg_c\ : label is "\U0/execution_forward_reg ";
  attribute srl_name of \execution_forward_reg[2]_srl2_U0_execution_forward_reg_c\ : label is "\U0/execution_forward_reg[2]_srl2_U0_execution_forward_reg_c ";
  attribute srl_bus_name of \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c\ : label is "\U0/execution_forward_reg ";
  attribute srl_name of \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c\ : label is "\U0/execution_forward_reg[3]_srl2_U0_execution_forward_reg_c ";
  attribute SOFT_HLUTNM of \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_14\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_9\ : label is "soft_lutpair0";
  attribute srl_bus_name of \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c\ : label is "\U0/execution_forward_reg ";
  attribute srl_name of \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c\ : label is "\U0/execution_forward_reg[4]_srl2_U0_execution_forward_reg_c ";
  attribute SOFT_HLUTNM of \rf_read_buffer[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rf_read_buffer[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rf_read_buffer[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rf_read_buffer[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rf_read_buffer[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rf_read_buffer[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rf_read_buffer[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rf_read_buffer[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rf_read_buffer[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rf_read_buffer[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rf_read_buffer[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rf_read_buffer[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rf_read_buffer[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rf_read_buffer[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rf_read_buffer[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rf_read_buffer[9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of write_back_forward_reg_gate : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_back_forward_reg_gate__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_back_forward_reg_gate__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \write_back_forward_reg_gate__2\ : label is "soft_lutpair4";
begin
  stalled_s_reg_0 <= \^stalled_s_reg_0\;
\execution_buffer_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(0),
      Q => execution_buffer(0)
    );
\execution_buffer_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(10),
      Q => execution_buffer(10)
    );
\execution_buffer_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(11),
      Q => execution_buffer(11)
    );
\execution_buffer_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(12),
      Q => execution_buffer(12)
    );
\execution_buffer_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(13),
      Q => execution_buffer(13)
    );
\execution_buffer_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(14),
      Q => execution_buffer(14)
    );
\execution_buffer_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(15),
      Q => execution_buffer(15)
    );
\execution_buffer_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer_reg_n_0_[1]\,
      Q => execution_buffer(1)
    );
\execution_buffer_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer_reg_n_0_[2]\,
      Q => execution_buffer(2)
    );
\execution_buffer_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer_reg_n_0_[3]\,
      Q => execution_buffer(3)
    );
\execution_buffer_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => p_0_in(0),
      Q => execution_buffer(4)
    );
\execution_buffer_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => p_0_in(1),
      Q => execution_buffer(5)
    );
\execution_buffer_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => p_0_in(2),
      Q => execution_buffer(6)
    );
\execution_buffer_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => p_0_in(3),
      Q => execution_buffer(7)
    );
\execution_buffer_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(8),
      Q => execution_buffer(8)
    );
\execution_buffer_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_read_buffer(9),
      Q => execution_buffer(9)
    );
\execution_forward_reg[0]_srl2_U0_execution_forward_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => InstrExec_CLK,
      D => input_forward(0),
      Q => \execution_forward_reg[0]_srl2_U0_execution_forward_reg_c_n_0\
    );
\execution_forward_reg[0]_srl2_U0_execution_forward_reg_c_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFBFFFFFFFFF"
    )
        port map (
      I0 => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_5_n_0\,
      I1 => rf_reg_1_read,
      I2 => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_3_n_0\,
      I3 => exc_write_reg(3),
      I4 => rf_reg_1(3),
      I5 => \exc_write__1\,
      O => input_forward(0)
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => InstrExec_CLK,
      D => input_forward(1),
      Q => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_n_0\
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80080000"
    )
        port map (
      I0 => rf_reg_1_read,
      I1 => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_3_n_0\,
      I2 => exc_write_reg(3),
      I3 => rf_reg_1(3),
      I4 => \exc_write__1\,
      I5 => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_5_n_0\,
      O => input_forward(1)
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F84"
    )
        port map (
      I0 => rf_read_buffer(13),
      I1 => rf_read_buffer(14),
      I2 => rf_read_buffer(15),
      I3 => rf_read_buffer(12),
      O => rf_reg_1_read
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rf_reg_1(0),
      I1 => exc_write_reg(0),
      I2 => exc_write_reg(2),
      I3 => rf_reg_1(2),
      I4 => exc_write_reg(1),
      I5 => rf_reg_1(1),
      O => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_3_n_0\
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1810F2E208001000"
    )
        port map (
      I0 => rf_read_buffer(14),
      I1 => rf_read_buffer(13),
      I2 => rf_read_buffer(12),
      I3 => p_0_in(3),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(11),
      O => rf_reg_1(3)
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => exc_alu,
      I1 => rf_reg_1(3),
      I2 => rf_reg_1(2),
      I3 => rf_reg_1(0),
      I4 => rf_reg_1(1),
      I5 => rf_reg_1_read,
      O => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_5_n_0\
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1810F2E208001000"
    )
        port map (
      I0 => rf_read_buffer(14),
      I1 => rf_read_buffer(13),
      I2 => rf_read_buffer(12),
      I3 => p_0_in(0),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(8),
      O => rf_reg_1(0)
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1810F2E208001000"
    )
        port map (
      I0 => rf_read_buffer(14),
      I1 => rf_read_buffer(13),
      I2 => rf_read_buffer(12),
      I3 => p_0_in(2),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(10),
      O => rf_reg_1(2)
    );
\execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1810F2E208001000"
    )
        port map (
      I0 => rf_read_buffer(14),
      I1 => rf_read_buffer(13),
      I2 => rf_read_buffer(12),
      I3 => p_0_in(1),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(9),
      O => rf_reg_1(1)
    );
\execution_forward_reg[2]_srl2_U0_execution_forward_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => InstrExec_CLK,
      D => input_forward(2),
      Q => \execution_forward_reg[2]_srl2_U0_execution_forward_reg_c_n_0\
    );
\execution_forward_reg[2]_srl2_U0_execution_forward_reg_c_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFBFFFFFFFFF"
    )
        port map (
      I0 => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_7_n_0\,
      I1 => rf_reg_2_read,
      I2 => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_3_n_0\,
      I3 => exc_write_reg(3),
      I4 => rf_reg_2(3),
      I5 => \exc_write__1\,
      O => input_forward(2)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => InstrExec_CLK,
      D => input_forward(3),
      Q => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_n_0\
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80080000"
    )
        port map (
      I0 => rf_reg_2_read,
      I1 => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_3_n_0\,
      I2 => exc_write_reg(3),
      I3 => rf_reg_2(3),
      I4 => \exc_write__1\,
      I5 => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_7_n_0\,
      O => input_forward(3)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35140004"
    )
        port map (
      I0 => execution_buffer(15),
      I1 => execution_buffer(12),
      I2 => execution_buffer(13),
      I3 => execution_buffer(14),
      I4 => execution_buffer(10),
      O => exc_write_reg(2)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888800333000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => rf_read_buffer(14),
      I2 => \rf_read_buffer_reg_n_0_[2]\,
      I3 => rf_read_buffer(12),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(13),
      O => rf_reg_2(2)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35140004"
    )
        port map (
      I0 => execution_buffer(15),
      I1 => execution_buffer(12),
      I2 => execution_buffer(13),
      I3 => execution_buffer(14),
      I4 => execution_buffer(9),
      O => exc_write_reg(1)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888800333000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => rf_read_buffer(14),
      I2 => \rf_read_buffer_reg_n_0_[1]\,
      I3 => rf_read_buffer(12),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(13),
      O => rf_reg_2(1)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => execution_buffer(14),
      I1 => execution_buffer(12),
      I2 => execution_buffer(15),
      I3 => execution_buffer(13),
      O => exc_alu
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2214"
    )
        port map (
      I0 => rf_read_buffer(14),
      I1 => rf_read_buffer(15),
      I2 => rf_read_buffer(12),
      I3 => rf_read_buffer(13),
      O => rf_reg_2_read
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rf_reg_2(0),
      I1 => exc_write_reg(0),
      I2 => exc_write_reg(2),
      I3 => rf_reg_2(2),
      I4 => exc_write_reg(1),
      I5 => rf_reg_2(1),
      O => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_3_n_0\
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35140004"
    )
        port map (
      I0 => execution_buffer(15),
      I1 => execution_buffer(12),
      I2 => execution_buffer(13),
      I3 => execution_buffer(14),
      I4 => execution_buffer(11),
      O => exc_write_reg(3)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888800333000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => rf_read_buffer(14),
      I2 => \rf_read_buffer_reg_n_0_[3]\,
      I3 => rf_read_buffer(12),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(13),
      O => rf_reg_2(3)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"085E"
    )
        port map (
      I0 => execution_buffer(13),
      I1 => execution_buffer(14),
      I2 => execution_buffer(12),
      I3 => execution_buffer(15),
      O => \exc_write__1\
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => exc_alu,
      I1 => rf_reg_2(3),
      I2 => rf_reg_2(2),
      I3 => rf_reg_2(0),
      I4 => rf_reg_2(1),
      I5 => rf_reg_2_read,
      O => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_7_n_0\
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888800333000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => rf_read_buffer(14),
      I2 => rf_read_buffer(0),
      I3 => rf_read_buffer(12),
      I4 => rf_read_buffer(15),
      I5 => rf_read_buffer(13),
      O => rf_reg_2(0)
    );
\execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A220"
    )
        port map (
      I0 => execution_buffer(8),
      I1 => execution_buffer(15),
      I2 => execution_buffer(14),
      I3 => execution_buffer(13),
      I4 => execution_buffer(12),
      O => exc_write_reg(0)
    );
\execution_forward_reg[4]_srl2_U0_execution_forward_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => InstrExec_CLK,
      D => input_forward(4),
      Q => \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_n_0\
    );
\execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000A2"
    )
        port map (
      I0 => rf_read_buffer(13),
      I1 => rf_read_buffer(14),
      I2 => rf_read_buffer(0),
      I3 => rf_read_buffer(15),
      I4 => \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_2_n_0\,
      I5 => \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_3_n_0\,
      O => input_forward(4)
    );
\execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFF70777F"
    )
        port map (
      I0 => execution_buffer(11),
      I1 => execution_buffer(9),
      I2 => execution_buffer(14),
      I3 => execution_buffer(13),
      I4 => execution_buffer(12),
      I5 => execution_buffer(15),
      O => \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_2_n_0\
    );
\execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30003F3C20002A2C"
    )
        port map (
      I0 => execution_buffer(10),
      I1 => execution_buffer(12),
      I2 => execution_buffer(13),
      I3 => execution_buffer(14),
      I4 => execution_buffer(15),
      I5 => execution_buffer(8),
      O => \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_i_3_n_0\
    );
execution_forward_reg_c: unisim.vcomponents.FDCE
     port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_forward_reg_c_n_0,
      Q => execution_forward_reg_c_n_0
    );
\output_buffer_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(0),
      Q => InstructionToExecute(0)
    );
\output_buffer_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(10),
      Q => InstructionToExecute(10)
    );
\output_buffer_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(11),
      Q => InstructionToExecute(11)
    );
\output_buffer_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(12),
      Q => InstructionToExecute(12)
    );
\output_buffer_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(13),
      Q => InstructionToExecute(13)
    );
\output_buffer_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(14),
      Q => InstructionToExecute(14)
    );
\output_buffer_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(15),
      Q => InstructionToExecute(15)
    );
\output_buffer_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(1),
      Q => InstructionToExecute(1)
    );
\output_buffer_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(2),
      Q => InstructionToExecute(2)
    );
\output_buffer_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(3),
      Q => InstructionToExecute(3)
    );
\output_buffer_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(4),
      Q => InstructionToExecute(4)
    );
\output_buffer_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(5),
      Q => InstructionToExecute(5)
    );
\output_buffer_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(6),
      Q => InstructionToExecute(6)
    );
\output_buffer_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(7),
      Q => InstructionToExecute(7)
    );
\output_buffer_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(8),
      Q => InstructionToExecute(8)
    );
\output_buffer_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_buffer(9),
      Q => InstructionToExecute(9)
    );
\output_forward_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => \write_back_forward_reg_gate__3_n_0\,
      Q => InstructionForwardConfiguration(0)
    );
\output_forward_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => \write_back_forward_reg_gate__2_n_0\,
      Q => InstructionForwardConfiguration(1)
    );
\output_forward_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => \write_back_forward_reg_gate__1_n_0\,
      Q => InstructionForwardConfiguration(2)
    );
\output_forward_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => \write_back_forward_reg_gate__0_n_0\,
      Q => InstructionForwardConfiguration(3)
    );
\output_forward_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => write_back_forward_reg_gate_n_0,
      Q => InstructionForwardConfiguration(4)
    );
rf_forward_reg_c: unisim.vcomponents.FDCE
     port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => '1',
      Q => rf_forward_reg_c_n_0
    );
\rf_read_buffer[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(0),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[0]_i_1_n_0\
    );
\rf_read_buffer[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(10),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[10]_i_1_n_0\
    );
\rf_read_buffer[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(11),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[11]_i_1_n_0\
    );
\rf_read_buffer[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(12),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[12]_i_1_n_0\
    );
\rf_read_buffer[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(13),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[13]_i_1_n_0\
    );
\rf_read_buffer[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(14),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[14]_i_1_n_0\
    );
\rf_read_buffer[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(15),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[15]_i_1_n_0\
    );
\rf_read_buffer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(1),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[1]_i_1_n_0\
    );
\rf_read_buffer[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(2),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[2]_i_1_n_0\
    );
\rf_read_buffer[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(3),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[3]_i_1_n_0\
    );
\rf_read_buffer[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(4),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[4]_i_1_n_0\
    );
\rf_read_buffer[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(5),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[5]_i_1_n_0\
    );
\rf_read_buffer[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(6),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[6]_i_1_n_0\
    );
\rf_read_buffer[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(7),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[7]_i_1_n_0\
    );
\rf_read_buffer[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(8),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[8]_i_1_n_0\
    );
\rf_read_buffer[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instruction(9),
      I1 => \^stalled_s_reg_0\,
      O => \rf_read_buffer[9]_i_1_n_0\
    );
\rf_read_buffer_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[0]_i_1_n_0\,
      Q => rf_read_buffer(0)
    );
\rf_read_buffer_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[10]_i_1_n_0\,
      Q => rf_read_buffer(10)
    );
\rf_read_buffer_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[11]_i_1_n_0\,
      Q => rf_read_buffer(11)
    );
\rf_read_buffer_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[12]_i_1_n_0\,
      Q => rf_read_buffer(12)
    );
\rf_read_buffer_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[13]_i_1_n_0\,
      Q => rf_read_buffer(13)
    );
\rf_read_buffer_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[14]_i_1_n_0\,
      Q => rf_read_buffer(14)
    );
\rf_read_buffer_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[15]_i_1_n_0\,
      Q => rf_read_buffer(15)
    );
\rf_read_buffer_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[1]_i_1_n_0\,
      Q => \rf_read_buffer_reg_n_0_[1]\
    );
\rf_read_buffer_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[2]_i_1_n_0\,
      Q => \rf_read_buffer_reg_n_0_[2]\
    );
\rf_read_buffer_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[3]_i_1_n_0\,
      Q => \rf_read_buffer_reg_n_0_[3]\
    );
\rf_read_buffer_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[4]_i_1_n_0\,
      Q => p_0_in(0)
    );
\rf_read_buffer_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[5]_i_1_n_0\,
      Q => p_0_in(1)
    );
\rf_read_buffer_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[6]_i_1_n_0\,
      Q => p_0_in(2)
    );
\rf_read_buffer_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[7]_i_1_n_0\,
      Q => p_0_in(3)
    );
\rf_read_buffer_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[8]_i_1_n_0\,
      Q => rf_read_buffer(8)
    );
\rf_read_buffer_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => \rf_read_buffer[9]_i_1_n_0\,
      Q => rf_read_buffer(9)
    );
stalled_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002AFFFF002A002A"
    )
        port map (
      I0 => rf_read_buffer(15),
      I1 => rf_read_buffer(12),
      I2 => rf_read_buffer(13),
      I3 => rf_read_buffer(14),
      I4 => ResolveStall,
      I5 => \^stalled_s_reg_0\,
      O => stalled_s_i_1_n_0
    );
stalled_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => stalled_s_i_1_n_0,
      Q => \^stalled_s_reg_0\
    );
\write_back_buffer_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(0),
      Q => write_back_buffer(0)
    );
\write_back_buffer_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(10),
      Q => write_back_buffer(10)
    );
\write_back_buffer_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(11),
      Q => write_back_buffer(11)
    );
\write_back_buffer_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(12),
      Q => write_back_buffer(12)
    );
\write_back_buffer_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(13),
      Q => write_back_buffer(13)
    );
\write_back_buffer_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(14),
      Q => write_back_buffer(14)
    );
\write_back_buffer_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(15),
      Q => write_back_buffer(15)
    );
\write_back_buffer_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(1),
      Q => write_back_buffer(1)
    );
\write_back_buffer_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(2),
      Q => write_back_buffer(2)
    );
\write_back_buffer_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(3),
      Q => write_back_buffer(3)
    );
\write_back_buffer_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(4),
      Q => write_back_buffer(4)
    );
\write_back_buffer_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(5),
      Q => write_back_buffer(5)
    );
\write_back_buffer_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(6),
      Q => write_back_buffer(6)
    );
\write_back_buffer_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(7),
      Q => write_back_buffer(7)
    );
\write_back_buffer_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(8),
      Q => write_back_buffer(8)
    );
\write_back_buffer_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_buffer(9),
      Q => write_back_buffer(9)
    );
\write_back_forward_reg[0]_U0_write_back_forward_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => InstrExec_CLK,
      CE => '1',
      D => \execution_forward_reg[0]_srl2_U0_execution_forward_reg_c_n_0\,
      Q => \write_back_forward_reg[0]_U0_write_back_forward_reg_c_n_0\,
      R => '0'
    );
\write_back_forward_reg[1]_U0_write_back_forward_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => InstrExec_CLK,
      CE => '1',
      D => \execution_forward_reg[1]_srl2_U0_execution_forward_reg_c_n_0\,
      Q => \write_back_forward_reg[1]_U0_write_back_forward_reg_c_n_0\,
      R => '0'
    );
\write_back_forward_reg[2]_U0_write_back_forward_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => InstrExec_CLK,
      CE => '1',
      D => \execution_forward_reg[2]_srl2_U0_execution_forward_reg_c_n_0\,
      Q => \write_back_forward_reg[2]_U0_write_back_forward_reg_c_n_0\,
      R => '0'
    );
\write_back_forward_reg[3]_U0_write_back_forward_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => InstrExec_CLK,
      CE => '1',
      D => \execution_forward_reg[3]_srl2_U0_execution_forward_reg_c_n_0\,
      Q => \write_back_forward_reg[3]_U0_write_back_forward_reg_c_n_0\,
      R => '0'
    );
\write_back_forward_reg[4]_U0_write_back_forward_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => InstrExec_CLK,
      CE => '1',
      D => \execution_forward_reg[4]_srl2_U0_execution_forward_reg_c_n_0\,
      Q => \write_back_forward_reg[4]_U0_write_back_forward_reg_c_n_0\,
      R => '0'
    );
write_back_forward_reg_c: unisim.vcomponents.FDCE
     port map (
      C => InstrExec_CLK,
      CE => '1',
      CLR => Reset,
      D => execution_forward_reg_c_n_0,
      Q => write_back_forward_reg_c_n_0
    );
write_back_forward_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_back_forward_reg[4]_U0_write_back_forward_reg_c_n_0\,
      I1 => write_back_forward_reg_c_n_0,
      O => write_back_forward_reg_gate_n_0
    );
\write_back_forward_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_back_forward_reg[3]_U0_write_back_forward_reg_c_n_0\,
      I1 => write_back_forward_reg_c_n_0,
      O => \write_back_forward_reg_gate__0_n_0\
    );
\write_back_forward_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_back_forward_reg[2]_U0_write_back_forward_reg_c_n_0\,
      I1 => write_back_forward_reg_c_n_0,
      O => \write_back_forward_reg_gate__1_n_0\
    );
\write_back_forward_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_back_forward_reg[1]_U0_write_back_forward_reg_c_n_0\,
      I1 => write_back_forward_reg_c_n_0,
      O => \write_back_forward_reg_gate__2_n_0\
    );
\write_back_forward_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_back_forward_reg[0]_U0_write_back_forward_reg_c_n_0\,
      I1 => write_back_forward_reg_c_n_0,
      O => \write_back_forward_reg_gate__3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_Pipelining_Controller_0_0 is
  port (
    InstrLoad_CLK : in STD_LOGIC;
    InstrExec_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ResolveStall : in STD_LOGIC;
    Stalled : out STD_LOGIC;
    InstructionForwardConfiguration : out STD_LOGIC_VECTOR ( 4 downto 0 );
    InstructionToExecute : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_Pipelining_Controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_Pipelining_Controller_0_0 : entity is "main_Pipelining_Controller_0_0,Pipelining_Controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_Pipelining_Controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_Pipelining_Controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_Pipelining_Controller_0_0 : entity is "Pipelining_Controller,Vivado 2024.1";
end main_Pipelining_Controller_0_0;

architecture STRUCTURE of main_Pipelining_Controller_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of InstrExec_CLK : signal is "xilinx.com:signal:clock:1.0 InstrExec_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of InstrExec_CLK : signal is "XIL_INTERFACENAME InstrExec_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of InstrLoad_CLK : signal is "xilinx.com:signal:clock:1.0 InstrLoad_CLK CLK";
  attribute x_interface_parameter of InstrLoad_CLK : signal is "XIL_INTERFACENAME InstrLoad_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.main_Pipelining_Controller_0_0_Pipelining_Controller
     port map (
      InstrExec_CLK => InstrExec_CLK,
      InstrLoad_CLK => InstrLoad_CLK,
      Instruction(15 downto 0) => Instruction(15 downto 0),
      InstructionForwardConfiguration(4 downto 0) => InstructionForwardConfiguration(4 downto 0),
      InstructionToExecute(15 downto 0) => InstructionToExecute(15 downto 0),
      Reset => Reset,
      ResolveStall => ResolveStall,
      stalled_s_reg_0 => Stalled
    );
end STRUCTURE;
