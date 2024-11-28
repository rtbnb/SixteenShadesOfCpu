----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2024 20:42:37
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
    component clock_block_wrapper
        port(
            clk100mhzIn, faultReset, debugReset: in std_logic;
            debugEnable, debugMockClk, debugMmuOverrideEnable: in std_logic;
            loadClk, vgaClk, debugClk, clk100mhzOut: out std_logic
        );
    end component;
    
    signal clk100mhzIn, faultReset, debugReset, debugEnable, debugMockClk, debugMmuOverrideEnable, loadClk, vgaClk, debugClk, clk100mhzOut: STD_LOGIC;
    signal test_state: STD_LOGIC_VECTOR ( 3 downto 0 );
    
begin
    EUT: clock_block_wrapper port map(
        ck_stable => ck_stable,
        clk100mhz_in => clk100mhz_in,
        debug_clk => debug_clk,
        debug_en => debug_en,
        debug_mock_clk => debug_mock_clk,
        debug_reset => debug_reset,
        exec_clk => exec_clk,
        fault_reset => fault_reset,
        load_clk => load_clk,
        test_state => test_state
    );
    
    process
    begin
        clk100mhz_in <= '0';
        wait for 5ns;
        clk100mhz_in <= '1';
        wait for 5ns;
    end process;
    
    process 
    begin
        debug_mock_clk <= '0';
        debug_reset <= '0';
        fault_reset <= '0';
        debug_en <= '0';
            
        wait for 570ns;
        while true loop
            debug_reset <= '1';
            wait for 60ns;
            debug_reset <= '0';
            wait for 60ns;            
            debug_en <= '1';
            wait for 60ns;
            debug_en <= '0';
            wait for 60ns;
            

        end loop;
        
    end process; 
   
    
end Behavioral;
