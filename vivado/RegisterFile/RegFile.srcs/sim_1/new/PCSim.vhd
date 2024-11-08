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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PCSim is
end PCSim;

architecture Behavioral of PCSim is
    component ProgramCounter is
    port (
        clk: in std_logic;
        LD: in std_logic; -- if '1' load Din into program counter signal
        Din: in std_logic_vector(15 downto 0); -- Absolute addr to IRAM
        
        Dout: out std_logic_vector(15 downto 0)
    );
    end component ProgramCounter;
 
    signal clk: std_logic := '0';
    signal LD: std_logic;
    signal Din, Dout: std_logic_vector(15 downto 0);
begin
    EUT: ProgramCounter
    port map(
        clk => clk,
        LD => LD,
        Din => Din,
        Dout => Dout
    );

    clock: process begin
        clk <= not clk;
        
        wait for 5ns;
    end process clock;
    
    test: process begin
        Din <= "1111111111111110";
        LD <= '1';
        
        wait for 10ns;
        LD <= '0';
        wait for 100ns;
    end process test;

end Behavioral;
