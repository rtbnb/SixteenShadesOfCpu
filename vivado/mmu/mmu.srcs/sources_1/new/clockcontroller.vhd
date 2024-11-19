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
        clk100mhz_in, wizard_locked, clk200mhz_in, fault, debug_en_lock: in std_logic;
        clk100mhz, clk100mhz_inf, clk200mhz, clk200mhz_inf, ck_stable: out std_logic 
    );
end clockcontroller;

architecture Behavioral of clockcontroller is
signal output_en_s: std_logic;
begin
    output_en_s <= wizard_locked;
    ck_stable <= wizard_locked;

    with output_en_s select
        clk100mhz <= clk100mhz_in when '1',
                     '0' when others;
    with output_en_s select
        clk100mhz_inf <= not clk100mhz_in when '1',
                     '0' when others;    
    with output_en_s select
        clk200mhz <= clk200mhz_in when '1',
                     '0' when others;
    with output_en_s select
        clk200mhz_inf <= not clk200mhz_in when '1',
                     '0' when others;
    
    
    
end Behavioral;
