--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Mon Dec  2 11:14:20 2024
--Host        : DESKTOP-Q664A4O running 64-bit major release  (build 9200)
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
    btn00 : in STD_LOGIC;
    btn01 : in STD_LOGIC;
    btn02 : in STD_LOGIC;
    btn03 : in STD_LOGIC;
    btn04 : in STD_LOGIC;
    btn05 : in STD_LOGIC;
    btn06 : in STD_LOGIC;
    btn07 : in STD_LOGIC;
    clk100mhzIn : in STD_LOGIC;
    fault_reset : in STD_LOGIC;
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    h_sync : out STD_LOGIC;
    ioe : out STD_LOGIC;
    led00 : out STD_LOGIC;
    led01 : out STD_LOGIC;
    led02 : out STD_LOGIC;
    led03 : out STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgb0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    v_sync : out STD_LOGIC
  );
end main_wrapper;

architecture STRUCTURE of main_wrapper is
  component main is
  port (
    Reset : in STD_LOGIC;
    RX_UART_IN : in STD_LOGIC;
    TX_UART_OUT : out STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ioe : out STD_LOGIC;
    h_sync : out STD_LOGIC;
    v_sync : out STD_LOGIC;
    fault_reset : in STD_LOGIC;
    led00 : out STD_LOGIC;
    led01 : out STD_LOGIC;
    led02 : out STD_LOGIC;
    led03 : out STD_LOGIC;
    rgb0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    btn00 : in STD_LOGIC;
    btn01 : in STD_LOGIC;
    btn02 : in STD_LOGIC;
    btn03 : in STD_LOGIC;
    clk100mhzIn : in STD_LOGIC;
    btn04 : in STD_LOGIC;
    btn05 : in STD_LOGIC;
    btn06 : in STD_LOGIC;
    btn07 : in STD_LOGIC
  );
  end component main;
begin
main_i: component main
     port map (
      RX_UART_IN => RX_UART_IN,
      Reset => Reset,
      TX_UART_OUT => TX_UART_OUT,
      b(3 downto 0) => b(3 downto 0),
      btn00 => btn00,
      btn01 => btn01,
      btn02 => btn02,
      btn03 => btn03,
      btn04 => btn04,
      btn05 => btn05,
      btn06 => btn06,
      btn07 => btn07,
      clk100mhzIn => clk100mhzIn,
      fault_reset => fault_reset,
      g(3 downto 0) => g(3 downto 0),
      h_sync => h_sync,
      ioe => ioe,
      led00 => led00,
      led01 => led01,
      led02 => led02,
      led03 => led03,
      r(3 downto 0) => r(3 downto 0),
      rgb0(2 downto 0) => rgb0(2 downto 0),
      rgb1(2 downto 0) => rgb1(2 downto 0),
      rgb2(2 downto 0) => rgb2(2 downto 0),
      rgb3(2 downto 0) => rgb3(2 downto 0),
      v_sync => v_sync
    );
end STRUCTURE;
