----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 14:50:41
-- Design Name: 
-- Module Name: Pipelining_Controller - Behavioral
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

entity Pipelining_Controller is
    Port ( InstrLoad_CLK : in STD_LOGIC;
           InstrExec_CLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Instruction : in STD_LOGIC_VECTOR (15 downto 0);
           ResetStall : in STD_LOGIC;
           PC_CLK : out STD_LOGIC;
           InstructionForwardConfiguration : out STD_LOGIC_VECTOR (4 downto 0);
           InstructionToExecute : out STD_LOGIC_VECTOR (15 downto 0));
end Pipelining_Controller;

architecture Behavioral of Pipelining_Controller is

begin


end Behavioral;
