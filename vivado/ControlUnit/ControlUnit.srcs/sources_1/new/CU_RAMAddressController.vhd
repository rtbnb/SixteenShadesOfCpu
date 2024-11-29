----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 12:03:04
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: CU_RAMAddressController - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CU_RAMAddressController is
    Port (
        reg2 : in std_logic_vector(15 downto 0);
        immediate : in std_logic_vector(15 downto 0);
        ramAddressSrc : in std_logic;
        ramAddress : out std_logic_vector(15 downto 0)
    );
end entity CU_RAMAddressController;

architecture Behavioral of CU_RAMAddressController is
begin

    with ramAddressSrc select
        ramAddress <= reg2      when '0',
                      immediate when '1',
                      X"0000"   when others;

end architecture Behavioral;