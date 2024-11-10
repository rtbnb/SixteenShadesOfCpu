----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 12:03:04
-- Design Name: 
-- Module Name: CU_ImmediateManipulator - Behavioral
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

entity CU_ImmediateManipulator is
    Port ( Reg1 : in STD_LOGIC_VECTOR (15 downto 0);
           Immidiate : in STD_LOGIC_VECTOR (15 downto 0);
           RF_WHB : in STD_LOGIC;
           RF_WLB : in STD_LOGIC;
           ManipulatedImmidiate : out STD_LOGIC_VECTOR (15 downto 0));
end entity CU_ImmediateManipulator;

architecture Behavioral of CU_ImmediateManipulator is
    signal selection : STD_LOGIC_VECTOR (1 downto 0);
    signal imh, iml : STD_LOGIC_VECTOR (15 downto 0);
begin
    
    selection(0) <= RF_WHB;
    selection(1) <= RF_WLB;
    
    imh(7 downto 0) <= Reg1(7 downto 0);
    imh(15 downto 8) <= Immidiate(7 downto 0);
    
    iml(7 downto 0) <= Immidiate(7 downto 0);
    iml(15 downto 8) <= Reg1(15 downto 8);
    
    WITH selection SELECT ManipulatedImmidiate <=
        Reg1 WHEN "00",
        imh WHEN "01",
        iml WHEN "10",
        Immidiate WHEN "11",
        X"0000" WHEN OTHERS;
     

end architecture Behavioral;
