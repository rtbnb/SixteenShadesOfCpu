--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Sun Nov 17 18:55:48 2024
--Host        : DESKTOP-E8CIL9E running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    CLK100MHZ : in STD_LOGIC;
    rx_data_in : in STD_LOGIC;
    tx_data_out : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_TX_UART_0_0 is
  port (
    data_valid : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    tx_output : out STD_LOGIC;
    send_valid : out STD_LOGIC
  );
  end component design_1_TX_UART_0_0;
  component design_1_Debugger_0_0 is
  port (
    clk : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_data_valid : in STD_LOGIC;
    tx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_data_valid : out STD_LOGIC;
    tx_data_sended : in STD_LOGIC
  );
  end component design_1_Debugger_0_0;
  component design_1_RX_UART_0_0 is
  port (
    clk : in STD_LOGIC;
    rx_serial_input : in STD_LOGIC;
    data_output : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_valid : out STD_LOGIC
  );
  end component design_1_RX_UART_0_0;
  signal CLK100MHZ_1 : STD_LOGIC;
  signal Debugger_0_tx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Debugger_0_tx_data_valid : STD_LOGIC;
  signal RX_UART_0_data_output : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RX_UART_0_data_valid : STD_LOGIC;
  signal TX_UART_0_send_valid : STD_LOGIC;
  signal TX_UART_0_tx_output : STD_LOGIC;
  signal rx_data_in_1 : STD_LOGIC;
begin
  CLK100MHZ_1 <= CLK100MHZ;
  rx_data_in_1 <= rx_data_in;
  tx_data_out <= TX_UART_0_tx_output;
Debugger_0: component design_1_Debugger_0_0
     port map (
      clk => CLK100MHZ_1,
      rx_data(7 downto 0) => RX_UART_0_data_output(7 downto 0),
      rx_data_valid => RX_UART_0_data_valid,
      tx_data(7 downto 0) => Debugger_0_tx_data(7 downto 0),
      tx_data_sended => TX_UART_0_send_valid,
      tx_data_valid => Debugger_0_tx_data_valid
    );
RX_UART_0: component design_1_RX_UART_0_0
     port map (
      clk => CLK100MHZ_1,
      data_output(7 downto 0) => RX_UART_0_data_output(7 downto 0),
      data_valid => RX_UART_0_data_valid,
      rx_serial_input => rx_data_in_1
    );
TX_UART_0: component design_1_TX_UART_0_0
     port map (
      clk => CLK100MHZ_1,
      data_in(7 downto 0) => Debugger_0_tx_data(7 downto 0),
      data_valid => Debugger_0_tx_data_valid,
      send_valid => TX_UART_0_send_valid,
      tx_output => TX_UART_0_tx_output
    );
end STRUCTURE;
