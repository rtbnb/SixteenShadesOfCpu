----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2024 19:24:14
-- Design Name: 
-- Module Name: custom_BUFH - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity custom_BUFH is
    Port ( clkIn : in STD_LOGIC;
           clkOut : out STD_LOGIC);
end custom_BUFH;

architecture Behavioral of custom_BUFH is

begin
    BUFH_inst : BUFH
    port map (
       O => clkOut, -- 1-bit output: Clock output
       I => clkIn  -- 1-bit input: Clock input
    );

end Behavioral;
