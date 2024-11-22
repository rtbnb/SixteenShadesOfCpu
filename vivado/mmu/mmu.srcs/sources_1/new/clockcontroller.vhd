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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clockcontroller is
    port(
        clk100mhz_in, clk50mhz_in, debug_guard_clk, wizard_locked, fault_reset, debug_reset: in std_logic;
        debug_enable, debug_mock_clk: in std_logic;
        load_clk, exec_clk: out std_logic; 
        debug_clk: out std_logic; 
        ck_stable: out std_logic;
    );
end clockcontroller;

architecture Behavioral of clockcontroller is
    attribute port100mhz_attr: string;
    attribute port100mhz_attr of load_clk : signal is "FREQ_HZ=100000000";
    
    signal output_en_s: std_logic_vector( 1 downto 0 );
    signal fault_s: std_logic := '0';
    signal debug_en_s: std_logic := '1';
    
    signal exec_clk_s: std_logic;
begin
    output_en_s <= wizard_locked & debug_en_s;
    ck_stable <= wizard_locked;
    
    with wizard_locked select
        debug_clk <= clk50mhz_in when '1',
                     '0' when others;
    
    with output_en_s select
        load_clk <= clk100mhz_in when "10",
                    debug_mock_clk when "11",
                    '0' when others;
    with output_en_s select
        exec_clk_s <= not clk100mhz_in when "10",
                    not debug_mock_clk when "11",
                    '0' when others;    
    exec_clk <= exec_clk_s;
    --TODO Implement debug begin and end logic
    
    debug_state:process(clk100mhz_in)
    begin
        if rising_edge(clk100mhz_in) then
            if debug_guard_clk='0' and debug_enable='0' and debug_reset='1' then
                debug_en_s <= '0';
            elsif debug_guard_clk='0' and debug_enable='1' then
                debug_en_s <= '1';
            end if;
        end if;
    end process;
    
end Behavioral;
