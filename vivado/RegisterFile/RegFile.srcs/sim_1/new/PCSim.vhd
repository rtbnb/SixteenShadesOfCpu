----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 10:51:56
-- Design Name: 
-- Module Name: PCSim - Behavioral
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

entity PCSim is
end PCSim;

architecture Behavioral of PCSim is
    component ProgramCounter is
    port (
        Count : in STD_LOGIC;
        Load : in STD_LOGIC;
        Reset : in STD_LOGIC;
        Din: in std_logic_vector(15 downto 0); -- Absolute addr to IRAM
        
        Dout: out std_logic_vector(15 downto 0)
    );
    end component ProgramCounter;
 
    signal Count, Load, Reset: std_logic := '0';
    signal Din, Dout: std_logic_vector(15 downto 0);
begin
    EUT: ProgramCounter
    port map(
        Count => Count,
        Load => Load,
        Reset => Reset,
        Din => Din,
        Dout => Dout
    );

    resetter : process is
    begin
        Reset <= '0';
        wait for 190 ns;
        Reset <= '1';
        wait for 10 ns;
    end process resetter;
    
    test: process is
    begin
        Count <= '0';    
        Load <= '0';
        Din <= X"0000";
        
        wait for 10 ns;
        
        Count <= '1';
        
        wait for 10 ns;
        
        Count <= '0';
        
        wait for 10 ns;
        
        Din <= std_logic_vector(signed(Dout) + 5);
        Load <= '1';
        
        wait for 10 ns;
        
        Load <= '0';
        
        wait for 10 ns;
        
        for i in 0 to 10 loop
            Count <= '1';
            wait for 10 ns;
            Count <= '0';
            wait for 10 ns;
        end loop;
        
        
        
    end process test;

end Behavioral;
