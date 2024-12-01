----------------------------------------------------------------------------------
-- Create Date: 10.11.2024 16:34:09
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: CU_JumpDestinationSelector - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity CU_JumpDestinationSelector is
    Port (
        immediate : in std_logic_vector(15 downto 0);
        register1 : in std_logic_vector(15 downto 0);
        jmpDestinationSelect : in std_logic;
        jmpAddress : out std_logic_vector(15 downto 0)
    );
end entity CU_JumpDestinationSelector;

architecture Behavioral of CU_JumpDestinationSelector is
begin

    with jmpDestinationSelect select
        jmpAddress <= immediate when '0',
                      register1 when '1',
                      X"0000"   when others;

end architecture Behavioral;