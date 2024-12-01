----------------------------------------------------------------------------------
-- Create Date: 22.11.2024 20:42:37
-- Name: Robin
-- Design Name: ShadeCpu
-- Module Name: ccSim - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity ccSim is
end entity ccSim;

architecture Behavioral of ccSim is
    component clockcontroller
        port(
            clk100mhzIn, faultReset, debugReset: in std_logic;
            debugEnable, debugMockClk, debugMmuOverrideEnable: in std_logic;
            loadClk, vgaClk, debugClk, clk100mhzOut: out std_logic
        );
    end component clockcontroller;
    
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
    
end architecture Behavioral;
