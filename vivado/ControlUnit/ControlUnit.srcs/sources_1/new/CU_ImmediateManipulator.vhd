----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 12:03:04
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: CU_ImmediateManipulator - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity CU_ImmediateManipulator is
    Port (
        reg1 : in std_logic_vector(15 downto 0);
        immediate : in std_logic_vector(15 downto 0);
        rfWHB : in std_logic;
        rfWLB : in std_logic;
        manipulatedImmediate : out std_logic_vector(15 downto 0)
    );
end entity CU_ImmediateManipulator;

architecture Behavioral of CU_ImmediateManipulator is
    signal selection_s : std_logic_vector(1 downto 0);
    signal imh_s, iml_s : std_logic_vector(15 downto 0);
begin

    selection_s(0) <= rfWHB;
    selection_s(1) <= rfWLB;

    imh_s(7 downto 0) <= reg1(7 downto 0);
    imh_s(15 downto 8) <= immediate(7 downto 0);

    iml_s(7 downto 0) <= immediate(7 downto 0);
    iml_s(15 downto 8) <= reg1(15 downto 8);

    with selection_s select
        manipulatedImmediate <= reg1        when "00",
                                imh_s       when "01",
                                iml_s       when "10",
                                immediate   when "11",
                                X"0000"     when others;

end architecture Behavioral;