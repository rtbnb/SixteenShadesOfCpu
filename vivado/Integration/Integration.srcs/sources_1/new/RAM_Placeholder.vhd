----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2024 15:10:12
-- Design Name: 
-- Module Name: RAM_Placeholder - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM_Placeholder is
    Port ( Address : in STD_LOGIC_VECTOR (15 downto 0);
           DataIn : in STD_LOGIC_VECTOR (15 downto 0);
           WE : in STD_LOGIC;
           OE : in STD_LOGIC;
           CLK : in STD_LOGIC;
           DataOut : out STD_LOGIC_VECTOR (15 downto 0));
end RAM_Placeholder;

architecture Behavioral of RAM_Placeholder is
    TYPE memoryArray IS ARRAY ( 256 DOWNTO 0 ) OF std_logic_vector( 15 DOWNTO 0);
   SIGNAL s_memContents   : memoryArray;
begin

   --------------------------------------------------------------------------------
   -- The control signals are defined here                                       --
   --------------------------------------------------------------------------------

   --------------------------------------------------------------------------------
   -- The input registers are defined here                                       --
   --------------------------------------------------------------------------------
   
   --------------------------------------------------------------------------------
   -- The actual memorie(s) is(are) defined here                                 --
   --------------------------------------------------------------------------------
   mem : PROCESS(CLK) IS
   BEGIN
      IF (rising_edge(CLK)) THEN
         IF (WE = '1') THEN
            s_memContents(to_integer(unsigned(Address))) <= DataIn;
         END IF;
      END IF;
   END PROCESS mem;

   --------------------------------------------------------------------------------
   -- The output register is defined here                                        --
   --------------------------------------------------------------------------------
   
   DataOut <= s_memContents(to_integer(unsigned(Address)));
   

end Behavioral;