----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2024 10:13:06
-- Design Name: 
-- Module Name: ccSim - Behavioral
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

entity ccSim is
--  Port ( );
end ccSim;

architecture Behavioral of ccSim is
    component clockcontroller
        port(
            clk100mhz_in, clk50mhz_in, debug_guard_clk, wizard_locked, fault_reset, debug_reset: in std_logic;
            debug_en, debug_mock_clk: in std_logic;
            load_clk, exec_clk, debug_clk, ck_stable: out std_logic 
        );
    end component;
    
    signal clk100mhz_in, clk50mhz_in, debug_guard_clk, wizard_locked, fault_reset, debug_reset, debug_en, debug_mock_clk, load_clk, exec_clk, debug_clk, ck_stable: std_logic;
begin
    EUT : clockcontroller port map(
        clk100mhz_in => clk100mhz_in,
        clk50mhz_in => clk50mhz_in,
        wizard_locked => wizard_locked,
        fault_reset => fault_reset,
        debug_reset => debug_reset,
        debug_en => debug_en,
        debug_mock_clk => debug_mock_clk,
        load_clk => load_clk,
        exec_clk => exec_clk,
        debug_clk => debug_clk,
        ck_stable => ck_stable,
        debug_guard_clk => debug_guard_clk
    );

    process
    begin
        clk100mhz_in <= '1';
        
        while true loop
            wait for 5ns;
            clk100mhz_in <= not clk100mhz_in;
        end loop;
    end process;
    
    process
    begin
        debug_guard_clk <= '0';
        wait for 2500ps;
        while true loop
            wait for 5ns;
            debug_guard_clk <= not debug_guard_clk;
        end loop;
        
    end process;
    
    process
    begin
        clk50mhz_in <= '1';
        
        while true loop
            wait for 10ns;
            clk50mhz_in <= not clk50mhz_in;
        end loop;
    end process;    
    
    process
    begin
        wizard_locked <= '0';
        fault_reset <= '0';
        debug_reset <= '0';
        debug_en <= '0';
        debug_mock_clk <= '0';
        wait for 100ns;   
    
        wizard_locked <= '1';
        fault_reset <= '0';
        debug_reset <= '0';
        debug_en <= '0';
        debug_mock_clk <= '0';
        while true loop
            wait for 10ns; 
            debug_en <= '0';  
        end loop;
        
        
    
    end process;

end Behavioral;
