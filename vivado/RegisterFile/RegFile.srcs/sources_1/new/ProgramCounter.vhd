----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 10:34:23
-- Name: 
-- Design Name: ShadeCpu
-- Module Name: ProgramCounter - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity ProgramCounter is
    Port ( 
        loadCLK : in STD_LOGIC;
        stalled : in STD_LOGIC;
        jmp : in STD_LOGIC;
        reset : in STD_LOGIC;
        din: in std_logic_vector(15 downto 0); -- Absolute addr to IRAM
        
        dout: out std_logic_vector(15 downto 0)
    );
end ProgramCounter;

architecture Behavioral of ProgramCounter is
    signal instr_addr_s: std_logic_vector(15 downto 0) := (others => '0');
begin
    dout <= instr_addr_s;
    pc_p: process(loadCLK, stalled, jmp, reset) is
    begin
    if (reset = '1') then
        instr_addr_s <= X"0000";
    elsif (falling_edge(loadCLK) and ((jmp = '1') or (stalled = '0'))) then
        if (JMP = '1') then
            instr_addr_s <= Din;
        else
            instr_addr_s <= std_logic_vector(unsigned(instr_addr_s) + 1);
        end if;
    end if;
    end process pc_p;
end Behavioral;