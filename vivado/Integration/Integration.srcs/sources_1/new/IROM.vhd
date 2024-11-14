----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2024 14:37:28
-- Design Name: 
-- Module Name: IROM - Behavioral
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity IROM is
    Port ( Address : in STD_LOGIC_VECTOR (15 downto 0);
           Data : out STD_LOGIC_VECTOR (15 downto 0));
end IROM;

architecture Behavioral of IROM is

begin

    WITH (Address) SELECT Data <=
        X"4000" WHEN X"0000",
        X"5000" WHEN X"0001",
        X"4101" WHEN X"0002",
        X"5100" WHEN X"0003",
        X"4300" WHEN X"0004",
        X"5300" WHEN X"0005",
        X"e200" WHEN X"0006",
        X"e010" WHEN X"0007",
        X"f022" WHEN X"0008",
        X"1002" WHEN X"0009",
        X"8003" WHEN X"000a",
        X"e1e0" WHEN X"000b",
        X"a006" WHEN X"000c",
        X"0000" WHEN OTHERS;

end Behavioral;