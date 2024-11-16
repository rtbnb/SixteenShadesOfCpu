-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Nov 16 22:58:55 2024
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
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_data_valid : out STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_data_valid : in STD_LOGIC;
    b1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Debugger_0_0_Debugger : entity is "Debugger";
end design_1_Debugger_0_0_Debugger;

architecture STRUCTURE of design_1_Debugger_0_0_Debugger is
  signal last_button_press : STD_LOGIC;
  signal \^tx_data_valid\ : STD_LOGIC;
  signal tx_data_valid_s_i_1_n_0 : STD_LOGIC;
begin
  tx_data_valid <= \^tx_data_valid\;
last_button_press_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => b1,
      Q => last_button_press,
      R => '0'
    );
\led_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_data_valid,
      CE => '1',
      D => rx_data(0),
      Q => led(0),
      R => '0'
    );
\led_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_data_valid,
      CE => '1',
      D => rx_data(1),
      Q => led(1),
      R => '0'
    );
\led_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_data_valid,
      CE => '1',
      D => rx_data(2),
      Q => led(2),
      R => '0'
    );
\led_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_data_valid,
      CE => '1',
      D => rx_data(3),
      Q => led(3),
      R => '0'
    );
tx_data_valid_s_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^tx_data_valid\,
      I1 => last_button_press,
      I2 => b1,
      O => tx_data_valid_s_i_1_n_0
    );
tx_data_valid_s_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tx_data_valid_s_i_1_n_0,
      Q => \^tx_data_valid\,
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
    b1 : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_data_valid : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
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
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
  tx_data(7) <= \<const1>\;
  tx_data(6) <= \<const0>\;
  tx_data(5) <= \<const1>\;
  tx_data(4) <= \<const0>\;
  tx_data(3) <= \<const1>\;
  tx_data(2) <= \<const0>\;
  tx_data(1) <= \<const1>\;
  tx_data(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_Debugger_0_0_Debugger
     port map (
      b1 => b1,
      clk => clk,
      led(3 downto 0) => led(3 downto 0),
      rx_data(3 downto 0) => rx_data(3 downto 0),
      rx_data_valid => rx_data_valid,
      tx_data_valid => tx_data_valid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
