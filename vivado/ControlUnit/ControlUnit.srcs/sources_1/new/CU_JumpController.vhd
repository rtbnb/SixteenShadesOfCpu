----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 12:03:04
-- Design Name: 
-- Module Name: CU_JumpController - Behavioral
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

entity CU_JumpController is
    Port ( JMP : in STD_LOGIC;
           JMP_Conditional : in STD_LOGIC;
           JMP_Relative : in STD_LOGIC;
           JMP_Condition : in STD_LOGIC_VECTOR (2 downto 0);
           Flags : in STD_LOGIC_VECTOR (15 downto 0);
           JMP_Addr : in STD_LOGIC_VECTOR (15 downto 0);
           PC_Current : in STD_LOGIC_VECTOR (15 downto 0);
           JMP_Verified : out STD_LOGIC;
           PC_Next : out STD_LOGIC_VECTOR (0 downto 0));
end CU_JumpController;

architecture Behavioral of CU_JumpController is

begin


end Behavioral;
