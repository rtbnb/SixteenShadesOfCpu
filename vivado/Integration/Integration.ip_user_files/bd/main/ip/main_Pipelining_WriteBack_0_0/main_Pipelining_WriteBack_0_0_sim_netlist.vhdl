-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Nov 15 10:21:31 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_Pipelining_WriteBack_0_0/main_Pipelining_WriteBack_0_0_sim_netlist.vhdl
-- Design      : main_Pipelining_WriteBack_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_Pipelining_WriteBack_0_0_Pipelining_WriteBackStage is
  port (
    WriteAddress_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteData_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Flags_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RF_WE_out : out STD_LOGIC;
    Is_ALU_OP_out : out STD_LOGIC;
    JMP_out : out STD_LOGIC;
    WriteAddress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    InstrLoad_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    WriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Flags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Is_ALU_OP : in STD_LOGIC;
    JMP : in STD_LOGIC;
    WHB : in STD_LOGIC;
    WLB : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_Pipelining_WriteBack_0_0_Pipelining_WriteBackStage : entity is "Pipelining_WriteBackStage";
end main_Pipelining_WriteBack_0_0_Pipelining_WriteBackStage;

architecture STRUCTURE of main_Pipelining_WriteBack_0_0_Pipelining_WriteBackStage is
  signal rf_we_s_i_1_n_0 : STD_LOGIC;
begin
\flags_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(0),
      Q => Flags_out(0)
    );
\flags_s_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(10),
      Q => Flags_out(10)
    );
\flags_s_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(11),
      Q => Flags_out(11)
    );
\flags_s_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(12),
      Q => Flags_out(12)
    );
\flags_s_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(13),
      Q => Flags_out(13)
    );
\flags_s_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(14),
      Q => Flags_out(14)
    );
\flags_s_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(15),
      Q => Flags_out(15)
    );
\flags_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(1),
      Q => Flags_out(1)
    );
\flags_s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(2),
      Q => Flags_out(2)
    );
\flags_s_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(3),
      Q => Flags_out(3)
    );
\flags_s_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(4),
      Q => Flags_out(4)
    );
\flags_s_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(5),
      Q => Flags_out(5)
    );
\flags_s_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(6),
      Q => Flags_out(6)
    );
\flags_s_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(7),
      Q => Flags_out(7)
    );
\flags_s_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(8),
      Q => Flags_out(8)
    );
\flags_s_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Flags(9),
      Q => Flags_out(9)
    );
is_alu_op_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => Is_ALU_OP,
      Q => Is_ALU_OP_out
    );
jmp_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => JMP,
      Q => JMP_out
    );
rf_we_s_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => WHB,
      I1 => WLB,
      O => rf_we_s_i_1_n_0
    );
rf_we_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => rf_we_s_i_1_n_0,
      Q => RF_WE_out
    );
\write_address_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(0),
      Q => WriteAddress_out(0)
    );
\write_address_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(1),
      Q => WriteAddress_out(1)
    );
\write_address_s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(2),
      Q => WriteAddress_out(2)
    );
\write_address_s_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteAddress(3),
      Q => WriteAddress_out(3)
    );
\write_data_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(0),
      Q => WriteData_out(0)
    );
\write_data_s_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(10),
      Q => WriteData_out(10)
    );
\write_data_s_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(11),
      Q => WriteData_out(11)
    );
\write_data_s_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(12),
      Q => WriteData_out(12)
    );
\write_data_s_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(13),
      Q => WriteData_out(13)
    );
\write_data_s_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(14),
      Q => WriteData_out(14)
    );
\write_data_s_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(15),
      Q => WriteData_out(15)
    );
\write_data_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(1),
      Q => WriteData_out(1)
    );
\write_data_s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(2),
      Q => WriteData_out(2)
    );
\write_data_s_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(3),
      Q => WriteData_out(3)
    );
\write_data_s_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(4),
      Q => WriteData_out(4)
    );
\write_data_s_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(5),
      Q => WriteData_out(5)
    );
\write_data_s_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(6),
      Q => WriteData_out(6)
    );
\write_data_s_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(7),
      Q => WriteData_out(7)
    );
\write_data_s_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(8),
      Q => WriteData_out(8)
    );
\write_data_s_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => InstrLoad_CLK,
      CE => '1',
      CLR => Reset,
      D => WriteData(9),
      Q => WriteData_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_Pipelining_WriteBack_0_0 is
  port (
    InstrLoad_CLK : in STD_LOGIC;
    Reset : in STD_LOGIC;
    WriteAddress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Flags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WHB : in STD_LOGIC;
    WLB : in STD_LOGIC;
    Is_ALU_OP : in STD_LOGIC;
    JMP : in STD_LOGIC;
    WriteAddress_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteData_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Flags_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RF_WE_out : out STD_LOGIC;
    Is_ALU_OP_out : out STD_LOGIC;
    JMP_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_Pipelining_WriteBack_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_Pipelining_WriteBack_0_0 : entity is "main_Pipelining_WriteBack_0_0,Pipelining_WriteBackStage,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_Pipelining_WriteBack_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_Pipelining_WriteBack_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_Pipelining_WriteBack_0_0 : entity is "Pipelining_WriteBackStage,Vivado 2024.1";
end main_Pipelining_WriteBack_0_0;

architecture STRUCTURE of main_Pipelining_WriteBack_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of InstrLoad_CLK : signal is "xilinx.com:signal:clock:1.0 InstrLoad_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of InstrLoad_CLK : signal is "XIL_INTERFACENAME InstrLoad_CLK, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.main_Pipelining_WriteBack_0_0_Pipelining_WriteBackStage
     port map (
      Flags(15 downto 0) => Flags(15 downto 0),
      Flags_out(15 downto 0) => Flags_out(15 downto 0),
      InstrLoad_CLK => InstrLoad_CLK,
      Is_ALU_OP => Is_ALU_OP,
      Is_ALU_OP_out => Is_ALU_OP_out,
      JMP => JMP,
      JMP_out => JMP_out,
      RF_WE_out => RF_WE_out,
      Reset => Reset,
      WHB => WHB,
      WLB => WLB,
      WriteAddress(3 downto 0) => WriteAddress(3 downto 0),
      WriteAddress_out(3 downto 0) => WriteAddress_out(3 downto 0),
      WriteData(15 downto 0) => WriteData(15 downto 0),
      WriteData_out(15 downto 0) => WriteData_out(15 downto 0)
    );
end STRUCTURE;
