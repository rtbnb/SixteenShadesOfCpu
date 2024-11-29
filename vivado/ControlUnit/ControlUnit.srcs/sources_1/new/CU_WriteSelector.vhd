----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 12:03:04
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: CU_WriteSelector - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity CU_WriteSelector is
    Port (
        ramOut : in std_logic_vector(15 downto 0);
        manipulatedImmediate : in std_logic_vector(15 downto 0);
        reg1 : in std_logic_vector(15 downto 0);
        aluOut : in std_logic_vector(15 downto 0);
        writeSel : in std_logic_vector(1 downto 0);
        writeData : out std_logic_vector(15 downto 0)
    );
end entity CU_WriteSelector;

architecture Behavioral of CU_WriteSelector is
begin

    with writeSel select
        writeData <= aluOut                 when "00",
                     manipulatedImmediate   when "01",
                     reg1                   when "10",
                     ramOut                 when "11",
                     X"0000"                when others;

end architecture Behavioral;