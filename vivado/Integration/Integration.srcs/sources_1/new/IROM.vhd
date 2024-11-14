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
        X"4401" WHEN X"0006",
        X"5400" WHEN X"0007",
        X"e200" WHEN X"0008",
        X"e010" WHEN X"0009",
        X"7230" WHEN X"000a",
        X"1002" WHEN X"000b",
        X"8005" WHEN X"000c",
        X"e1e0" WHEN X"000d",
        X"1034" WHEN X"000e",
        X"e3e0" WHEN X"000f",
        X"a008" WHEN X"0010",
        X"4000" WHEN X"0011",
        X"5000" WHEN X"0012",
        X"1130" WHEN X"0013",
        X"8406" WHEN X"0014",
        X"6100" WHEN X"0015",
        X"f011" WHEN X"0016",
        X"1004" WHEN X"0017",
        X"e0e0" WHEN X"0018",
        X"a013" WHEN X"0019",
        X"0000" WHEN OTHERS;
end Behavioral;