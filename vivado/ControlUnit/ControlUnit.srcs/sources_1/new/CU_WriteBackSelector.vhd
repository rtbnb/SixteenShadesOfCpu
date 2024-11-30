----------------------------------------------------------------------------------
-- Create Date: 30.11.2024 00:38:02
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: CU_WriteBackSelector - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity CU_WriteBackSelector is
    Port (
        writeBackPipelingData : in std_logic_vector(15 downto 0);
        ramOut : in std_logic_vector(15 downto 0);
        ramRead : in std_logic;
        writeData : out std_logic_vector(15 downto 0)
    );
end entity CU_WriteBackSelector;

architecture Behavioral of CU_WriteBackSelector is
begin

    with ramRead select
        writeData <= writeBackPipelingData when '0',
                     ramOut                when '1',
                     X"0000"               when others;

end architecture Behavioral;