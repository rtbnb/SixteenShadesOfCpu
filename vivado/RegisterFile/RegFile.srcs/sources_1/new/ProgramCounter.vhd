----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 10:34:23
-- Design Name: 
-- Module Name: ProgramCounter - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ProgramCounter is
    Port ( 
    Count : in STD_LOGIC;
    Load : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Din: in std_logic_vector(15 downto 0); -- Absolute addr to IRAM
    
    Dout: out std_logic_vector(15 downto 0)
    );
end ProgramCounter;

architecture Behavioral of ProgramCounter is
    signal InstrAddr: std_logic_vector(15 downto 0) := (others => '0');
begin
    Dout <= InstrAddr;
    pc_p: process(Count, Load, Reset) is
    begin
        if rising_edge(Count) and (not Reset='1') and not rising_edge(Reset) then
            InstrAddr <= std_logic_vector(unsigned( InstrAddr ) + 1);
        end if;
        
        if rising_edge(Load) then
            InstrAddr <= Din;
        end if;
        
        if rising_edge(Reset) then
            InstrAddr <= X"0000";
        end if;
    end process pc_p;

end Behavioral;
