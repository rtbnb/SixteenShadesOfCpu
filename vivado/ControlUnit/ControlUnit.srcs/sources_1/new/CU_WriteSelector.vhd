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
        fpuOut : in std_logic_vector(15 downto 0);
        aluFlags : in std_logic_vector(15 downto 0);
        fpuFlags : in std_logic_vector(15 downto 0);
        writeSel : in std_logic_vector(2 downto 0);
        flagSel : in std_logic_vector(0 downto 0);
        writeData : out std_logic_vector(15 downto 0);
        flags : out std_logic_vector(15 downto 0)
    );
end entity CU_WriteSelector;

architecture Behavioral of CU_WriteSelector is
begin

    with writeSel select
        writeData <= aluOut                 when "000",
                     manipulatedImmediate   when "001",
                     reg1                   when "010",
                     ramOut                 when "011",
                     fpuOut                 when "100",
                     X"0000"                when others;
    with flagSel select
        flags <= aluFlags when "0",
                 fpuFlags when "1",
                 X"0000"  when others;      

end architecture Behavioral;