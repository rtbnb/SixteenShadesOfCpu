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
    InstrExec_CLK : in STD_LOGIC;
    InstrLoad_CLK : in STD_LOGIC;
    Stalled : in STD_LOGIC;
    JMP : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Din: in std_logic_vector(15 downto 0); -- Absolute addr to IRAM
    
    Dout: out std_logic_vector(15 downto 0)
    );
end ProgramCounter;

architecture Behavioral of ProgramCounter is
    signal InstrAddr: std_logic_vector(15 downto 0) := (others => '0');
begin
    Dout <= InstrAddr;
    pc_p: process(InstrExec_CLK, Stalled, JMP, Reset) is
    begin
    if (Reset = '1') then
        InstrAddr <= X"0000";
    elsif (rising_edge(InstrExec_CLK) and ((JMP = '1') or (Stalled = '0'))) then
        if (JMP = '1') then
            InstrAddr <= Din;
        else
            InstrAddr <= std_logic_vector(unsigned(InstrAddr) + 1);
        end if;
    end if;
    end process pc_p;
    
    

end Behavioral;