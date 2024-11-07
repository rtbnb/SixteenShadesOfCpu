----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 14:50:40
-- Design Name: 
-- Module Name: Pipelining_WriteBackStage - Behavioral
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

entity Pipelining_WriteBackStage is
    Port ( InstrLoad_CLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           WriteAddress : in STD_LOGIC_VECTOR (15 downto 0);
           WriteData : in STD_LOGIC_VECTOR (15 downto 0);
           Flags : in STD_LOGIC_VECTOR (15 downto 0);
           WHB : in STD_LOGIC;
           WLB : in STD_LOGIC;
           Is_ALU_OP : in STD_LOGIC;
           JMP : in STD_LOGIC;
           WriteAddress_out : out STD_LOGIC_VECTOR (15 downto 0);
           WriteData_out : out STD_LOGIC_VECTOR (15 downto 0);
           Flags_out : out STD_LOGIC_VECTOR (15 downto 0);
           WHB_out : out STD_LOGIC;
           WLB_out : out STD_LOGIC;
           Is_ALU_OP_out : out STD_LOGIC;
           JMP_out : out STD_LOGIC);
end Pipelining_WriteBackStage;

architecture Behavioral of Pipelining_WriteBackStage is

begin


end Behavioral;
