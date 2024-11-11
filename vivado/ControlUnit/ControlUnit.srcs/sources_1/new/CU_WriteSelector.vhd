----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 12:03:04
-- Design Name: 
-- Module Name: CU_WriteSelector - Behavioral
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

entity CU_WriteSelector is
    Port ( RAM_Out : in STD_LOGIC_VECTOR (15 downto 0);
           Manipulated_Immidiate : in STD_LOGIC_VECTOR (15 downto 0);
           Reg1 : in STD_LOGIC_VECTOR (15 downto 0);
           ALU_Out : in STD_LOGIC_VECTOR (15 downto 0);
           Write_Sel : in STD_LOGIC_VECTOR (1 downto 0);
           Write_Data : out STD_LOGIC_VECTOR (15 downto 0));
end entity CU_WriteSelector;

architecture Behavioral of CU_WriteSelector is

begin

    WITH (Write_Sel) SELECT Write_Data <=
        RAM_Out WHEN "00",
        Manipulated_Immidiate WHEN "01",
        Reg1 WHEN "10",
        ALU_Out WHEN "11",
        X"0000" WHEN OTHERS;

end architecture Behavioral;
