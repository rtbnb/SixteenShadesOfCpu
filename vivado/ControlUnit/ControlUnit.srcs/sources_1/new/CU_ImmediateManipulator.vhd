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
end CU_ImmediateManipulator;

architecture Behavioral of CU_ImmediateManipulator is

begin


end Behavioral;
