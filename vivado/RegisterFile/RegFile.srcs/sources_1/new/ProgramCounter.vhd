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
    clk: in std_logic;
    LD: in std_logic; -- if '1' load Din into program counter signal
    Din: in std_logic_vector(15 downto 0); -- Absolute addr to IRAM
    
    Dout: out std_logic_vector(15 downto 0)
    );
end ProgramCounter;

architecture Behavioral of ProgramCounter is
    signal InstrAddr: std_logic_vector(15 downto 0) := (others => '0');
begin
    Dout <= InstrAddr;
    count: process(clk) is
    begin
        if rising_edge(clk) then
            if (LD = '1') then
                InstrAddr <= std_logic_vector(to_unsigned(to_integer(unsigned( Din )) + 1, 16));
            else
                InstrAddr <= std_logic_vector(to_unsigned(to_integer(unsigned( InstrAddr )) + 1, 16));
            end if;
        end if;
    end process count;

end Behavioral;
