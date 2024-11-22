--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Fri Nov 22 16:39:06 2024
--Host        : Robin_Laptop running 64-bit major release  (build 9200)
--Command     : generate_target main_wrapper.bd
--Design      : main_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_wrapper is
  port (
    RX_UART_IN : in STD_LOGIC;
    Reset : in STD_LOGIC;
    TX_UART_OUT : out STD_LOGIC;
    b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk100mhz_in : in STD_LOGIC;
    debug_clk : in STD_LOGIC;
    debug_mock_clk : in STD_LOGIC;
    debug_reset : in STD_LOGIC;
    external_mmu_sync_clk : in STD_LOGIC;
    fault_reset : in STD_LOGIC;
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    h_sync : out STD_LOGIC;
    ioe : out STD_LOGIC;
    led : out STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v_sync : out STD_LOGIC
  );
end main_wrapper;

architecture STRUCTURE of main_wrapper is
  component main is
  port (
    Reset : in STD_LOGIC;
    led : out STD_LOGIC;
    clk100mhz_in : in STD_LOGIC;
    RX_UART_IN : in STD_LOGIC;
    TX_UART_OUT : out STD_LOGIC;
    external_mmu_sync_clk : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ioe : out STD_LOGIC;
    h_sync : out STD_LOGIC;
    v_sync : out STD_LOGIC;
    debug_clk : in STD_LOGIC;
    fault_reset : in STD_LOGIC;
    debug_reset : in STD_LOGIC;
    debug_mock_clk : in STD_LOGIC
  );
  end component main;
begin
main_i: component main
     port map (
      RX_UART_IN => RX_UART_IN,
      Reset => Reset,
      TX_UART_OUT => TX_UART_OUT,
      b(3 downto 0) => b(3 downto 0),
      clk100mhz_in => clk100mhz_in,
      debug_clk => debug_clk,
      debug_mock_clk => debug_mock_clk,
      debug_reset => debug_reset,
      external_mmu_sync_clk => external_mmu_sync_clk,
      fault_reset => fault_reset,
      g(3 downto 0) => g(3 downto 0),
      h_sync => h_sync,
      ioe => ioe,
      led => led,
      r(3 downto 0) => r(3 downto 0),
      v_sync => v_sync
    );
end STRUCTURE;
