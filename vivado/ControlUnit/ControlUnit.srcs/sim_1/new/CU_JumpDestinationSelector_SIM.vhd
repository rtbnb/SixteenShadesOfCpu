----------------------------------------------------------------------------------
-- Create Date: 11.11.2024 11:34:47
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: CU_JumpDestinationSelector_SIM - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.ALL;


entity CU_JumpDestinationSelector_SIM is
end entity CU_JumpDestinationSelector_SIM;

architecture Behavioral of CU_JumpDestinationSelector_SIM is

    component CU_JumpDestinationSelector is
        Port (
            immediate : in std_logic_vector(15 downto 0);
            register1 : in std_logic_vector(15 downto 0);
            jmpDestinationSelect : in std_logic;
            jmpAddress : out std_logic_vector(15 downto 0)
        );
    end component CU_JumpDestinationSelector;
    
    signal immediate_s : std_logic_vector(15 downto 0) := X"ab15";
    signal register_1_s : std_logic_vector(15 downto 0) := X"cdef";
    signal jmp_destination_select_s : std_logic;
begin

    -- Outputs are not connected, as they will be configured in the waveform
    EUT : CU_JumpDestinationSelector port map(
        immediate => immediate_s,
        register1 => register_1_s,
        jmpDestinationSelect => jmp_destination_select_s
    );
    
    simulator : process is
    begin
        jmp_destination_select_s <= '0';
        wait for 10 ns;
        jmp_destination_select_s <= '1';
        wait for 10 ns;
    end process simulator;

end architecture Behavioral;
