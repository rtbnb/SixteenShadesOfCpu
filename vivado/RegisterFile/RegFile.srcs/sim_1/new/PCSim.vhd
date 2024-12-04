----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 10:51:56
-- Name: Nico Tunkowski
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
        wait for 20ns;
        -- test count
        wait for 200ns;

        -- set addr to 0x0001
        din <= X"0001";
        jmp <= '1';
        stalled <= '0';
        wait for 20ns;

        -- stall
        jmp <= '0';
        stalled <= '1';
        wait for 100ns;

        -- reset
        reset <= '1';
        jmp <= '0';
        stalled <= '0';
        wait for 40ns;

        -- reset with jmp and stalled high to prove not affecting the reset
        jmp <= '1';
        stalled <= '1';
        wait for 20ns;

        -- count normally
        reset <= '0';
        jmp <= '0';
        stalled <= '0';
        din <= X"0000";
        wait;
    end process test;
end Behavioral;
