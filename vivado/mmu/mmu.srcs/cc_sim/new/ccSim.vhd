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
    component clockcontroller
        port(
            clk100mhzIn, faultReset, debugReset: in std_logic;
            debugEnable, debugMockClk, debugMmuOverrideEnable: in std_logic;
            loadClk, vgaClk, debugClk, clk100mhzOut: out std_logic
        );
    end component;
    
    signal clk100mhzIn, faultReset, debugReset, debugEnable, debugMockClk, debugMmuOverrideEnable, loadClk, vgaClk, debugClk, clk100mhzOut: STD_LOGIC := '0';
    
begin
    EUT: clockcontroller port map(
        clk100mhzIn => clk100mhzIn,
        faultReset => faultReset,
        debugReset => debugReset,
        debugEnable => debugEnable,
        debugMockClk => debugMockClk,
        debugMmuOverrideEnable => debugMmuOverrideEnable,
        loadClk => loadClk,
        vgaClk => vgaClk,
        debugClk => debugClk,
        clk100mhzOut => clk100mhzOut
    );
    
    process
    begin
        clk100mhzIn <= not clk100mhzIn;
        wait for 5ns;
    end process;
   
    process
    begin
        wait for 7500ps;
        debugReset <= '1';
        wait for 20ns;
        debugReset <= '0';
        wait for 70ns;
        debugEnable <= '1';
        wait for 20ns;
        debugEnable <= '0';
        
        while true loop
            debugEnable <= '0';
            wait for 100ns;
        end loop;
    end process;
    
end Behavioral;
