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
        X"4100" WHEN X"0002",
        X"5100" WHEN X"0003",
        X"420f" WHEN X"0004",
        X"5200" WHEN X"0005",
        X"4300" WHEN X"0006",
        X"5301" WHEN X"0007",
        X"4401" WHEN X"0008",
        X"5400" WHEN X"0009",
        X"45c8" WHEN X"000a",
        X"5500" WHEN X"000b",
        X"4696" WHEN X"000c",
        X"5600" WHEN X"000d",
        X"4708" WHEN X"000e",
        X"5700" WHEN X"000f",
        X"1267" WHEN X"0010",
        X"e6e0" WHEN X"0011",
        X"1a10" WHEN X"0012",
        X"72e0" WHEN X"0013",
        X"1004" WHEN X"0014",
        X"e0e0" WHEN X"0015",
        X"1150" WHEN X"0016",
        X"87fb" WHEN X"0017",
        X"4000" WHEN X"0018",
        X"5000" WHEN X"0019",
        X"1013" WHEN X"001a",
        X"e1e0" WHEN X"001b",
        X"1161" WHEN X"001c",
        X"87f5" WHEN X"001d",
        X"0000" WHEN OTHERS;
end Behavioral;