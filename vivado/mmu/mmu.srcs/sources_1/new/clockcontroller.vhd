----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.11.2024 13:12:47
-- Design Name: 
-- Module Name: clockcontroller - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clockcontroller is
    port(
        clk100mhz_in, clk200mhz_in, wizard_locked, debug_en_lock, fault_reset, debug_reset: in std_logic;
        fault, debug_en: in std_logic;
        load_clk, exec_clk, clk200mhz, clk200mhz_inf, ck_stable: out std_logic 
    );
end clockcontroller;

architecture Behavioral of clockcontroller is
signal output_en_s: std_logic;
signal fault_s, debug_en_s: std_logic := '0';
begin
    fault_s <= (fault_s or fault) and not fault_reset;
    debug_en_s <= (debug_en_s or debug_en) and not debug_reset;
    
    output_en_s <= wizard_locked and not (fault_s or debug_en_s);
    ck_stable <= wizard_locked;

    with output_en_s select
        load_clk <= clk100mhz_in when '1',
                     '0' when others;
    with output_en_s select
        exec_clk <= not clk100mhz_in when '1',
                     '0' when others;    
    with output_en_s select
        clk200mhz <= clk200mhz_in when '1',
                     '0' when others;
    with output_en_s select
        clk200mhz_inf <= not clk200mhz_in when '1',
                     '0' when others;
    
    
    
end Behavioral;
