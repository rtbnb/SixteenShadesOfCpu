----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2024 16:34:09
-- Design Name: 
-- Module Name: CU_JumpDestinationSelector - Behavioral
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

entity CU_JumpDestinationSelector is
    Port ( Immediate : in STD_LOGIC_VECTOR (15 downto 0);
           Register1 : in STD_LOGIC_VECTOR (15 downto 0);
           JMP_DestinationSelect : in STD_LOGIC;
           JMP_Address : out STD_LOGIC_VECTOR (15 downto 0));
end entity CU_JumpDestinationSelector;

architecture Behavioral of CU_JumpDestinationSelector is

begin

    WITH (JMP_DestinationSelect) SELECT JMP_Address <=
        Immediate WHEN '0',
        Register1 WHEN '1',
        X"0000" WHEN OTHERS;

end Behavioral;
