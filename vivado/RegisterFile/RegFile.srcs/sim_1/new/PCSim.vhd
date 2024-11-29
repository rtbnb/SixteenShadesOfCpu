----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 10:51:56
-- Name: Nico
-- Design Name: ShadeCpu
-- Module Name: PCSim - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity PCSim is
end PCSim;

architecture Behavioral of PCSim is
    component ProgramCounter is
    port (
        loadCLK : in STD_LOGIC;
        stalled : in STD_LOGIC;
        jmp : in STD_LOGIC;
        reset : in STD_LOGIC;
        din: in std_logic_vector(15 downto 0); -- Absolute addr to IRAM
        
        dout: out std_logic_vector(15 downto 0)
    );
    end component ProgramCounter;
 
    signal loadCLK, stalled, jmp, reset: std_logic := '0';
    signal din, dout: std_logic_vector(15 downto 0) := x"0000";
begin
    EUT: ProgramCounter
    port map(
        loadCLK => loadCLK,
        stalled => stalled,
        jmp => jmp,
        reset => reset,
        din => din,
        dout => dout
    );
    
    loadCLK <= not loadCLK after 10 ns; -- 50mhz clk

    test: process is
    begin
        jmp <= '0';    
        stalled <= '0';
        reset <= '0';
        din <= X"0000";

        wait for 200ns;

    end process test;

end Behavioral;
