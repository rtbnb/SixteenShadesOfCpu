----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 12:03:04
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: FlagUnpacker - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity FlagUnpacker is
    Port (
        flags : in std_logic_vector(15 downto 0);
        carryFlag : out std_logic;
        zeroFlag : out std_logic;
        smallerZeroFlag : out std_logic;
        biggerZeroFlag : out std_logic;
        overflowFlag : out std_logic;
        rhoFlag : out std_logic
    );
end entity FlagUnpacker;

architecture Behavioral of FlagUnpacker is
begin

    carryFlag <= flags(0);
    zeroFlag <= flags(1);
    smallerZeroFlag <= flags(2);
    biggerZeroFlag <= flags(3);
    overflowFlag <= flags(4);
    rhoFlag <= flags(5);

end architecture Behavioral;