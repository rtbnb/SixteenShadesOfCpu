----------------------------------------------------------------------------------
-- Create Date: 26.11.2024 19:24:14
-- Name: Robin
-- Design Name: ShadeCpu
-- Module Name: custom_BUFH - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------´

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity custom_BUFH is
    Port( 
        clkIn : in STD_LOGIC;
        clkOut : out STD_LOGIC
   );
end custom_BUFH;

architecture Behavioral of custom_BUFH is
begin
    BUFH_inst : BUFH
    port map (
       O => clkOut,
       I => clkIn
    );
end Behavioral;