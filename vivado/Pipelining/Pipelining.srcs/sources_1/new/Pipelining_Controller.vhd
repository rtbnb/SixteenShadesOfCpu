
----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 14:50:41
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: Pipelining_Controller - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;



entity Pipelining_Controller is
    Port (
        loadClk : in std_logic;
        instructionIn : in std_logic_vector (15 downto 0);
        reset : in std_logic;
        pcLoad : in std_logic;
        rfJmp : in std_logic;
        rfRamRead : in std_logic;
        execJmp : in std_logic;
        execRamRead : in std_logic;
        stalled : out std_logic;
        instructionOut : out std_logic_vector (15 downto 0)
    );
end entity Pipelining_Controller;

architecture Behavioral of Pipelining_Controller is
    signal jmp_stalled_s, ramRead_stalled_s : std_logic := '0';
    signal stall_elongated_s : std_logic := '0';
    signal stalled_s : std_logic := '0';

    signal instr_buffer_s : std_logic_vector(15 downto 0) := (others => '0');
    signal instr_stalled_s : std_logic;
begin

    stalled <= stalled_s;
    stalled_s <= jmp_stalled_s or ramRead_stalled_s;

    stall_detector : process (loadClk, reset) is
    begin
        if (reset = '1') then
            jmp_stalled_s <= '0';
            ramRead_stalled_s <= '0';
        elsif (falling_edge(loadClk)) then
            if (rfJmp = '1') then
                jmp_stalled_s <= '1';
            elsif (execJmp = '1') then
                jmp_stalled_s <= '0';
            end if;
            if (rfRamRead = '1') then
                ramRead_stalled_s <= '1';
            elsif (execRamRead = '1') then
                ramRead_stalled_s <= '0';
            end if;
        end if;
    end process stall_detector;

    stall_elongator : process (loadClk, reset) is
    begin
        if (reset = '1') then
            stall_elongated_s <= '0';
        elsif (rising_edge(loadClk)) then
            stall_elongated_s <= stalled_s;
        end if;
    end process stall_elongator;

    instr_stalled_s <= stalled_s or (pcLoad and stall_elongated_s);

    instr_buffer : process (loadClk, reset) is
    begin
        if (reset = '1') then
            instr_buffer_s <= (others => '0');
        elsif (rising_edge(loadClk)) then
            if (instr_stalled_s = '0') then
                instr_buffer_s <= instructionIn;
            else
                instr_buffer_s <= (others => '0');
            end if;
        end if;
    end process instr_buffer;

    instructionOut <= instr_buffer_s;

end architecture Behavioral;