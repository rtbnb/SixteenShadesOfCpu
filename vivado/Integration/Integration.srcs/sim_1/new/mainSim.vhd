----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.11.2024 15:39:29
-- Design Name: 
-- Module Name: mainSim - Behavioral
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

entity mainSim is
--  Port ( );
end mainSim;

architecture Behavioral of mainSim is
    component main_wrapper is
      port (
        InstrExec_CLK : in STD_LOGIC;
        InstrLoad_CLK : in STD_LOGIC;
        Reset : in STD_LOGIC
      );
    end component main_wrapper;
    
    signal InstrExec_CLK, InstrLoad_CLK, Reset : STD_LOGIC;
begin
    
    EUT : main_wrapper port map(
        InstrExec_CLK => InstrExec_CLK,
        InstrLoad_CLK => InstrLoad_CLK,
        Reset => Reset
    );
    
    InstrExec_CLK <= not InstrLoad_CLK;
    
    process is
    begin
        InstrLoad_CLK <= '0';
        Reset <= '0';
        wait for 10 ns;
        Reset <= '1';
        wait for 10 ns;
        Reset <= '0';
        wait for 10 ns;
        FOR i in 0 to 1000 loop
            InstrLoad_CLK <= '1';
            wait for 5 ns;
            InstrLoad_CLK <= '0';
            wait for 5 ns;
        end loop;
    end process;

end Behavioral;
