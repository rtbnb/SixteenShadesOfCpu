----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 14:50:41
-- Design Name: 
-- Module Name: Pipelining_ExecutionStage - Behavioral
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

entity Pipelining_ExecutionStage is
    Port ( InstrLoad_CLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Operand1 : in STD_LOGIC_VECTOR (15 downto 0);
           Operand2 : in STD_LOGIC_VECTOR (15 downto 0);
           Immediate : in STD_LOGIC_VECTOR (15 downto 0);
           MA : in STD_LOGIC_VECTOR (15 downto 0);
           WriteAddress : in STD_LOGIC_VECTOR (3 downto 0);
           WHB : in STD_LOGIC;
           WLB : in STD_LOGIC;
           WriteDataSel : in STD_LOGIC_VECTOR (1 downto 0);
           RAM_Src : in STD_LOGIC;
           RAM_Read : in STD_LOGIC;
           RAM_Write : in STD_LOGIC;
           Use_MA : in STD_LOGIC;
           JMP : in STD_LOGIC;
           JMP_Conditional : in STD_LOGIC;
           JMP_Relative : in STD_LOGIC;
           JMP_Condition : in STD_LOGIC_VECTOR (2 downto 0);
           Is_ALU_OP : in STD_LOGIC;
           Is_RAM_OP : in STD_LOGIC;
           Operand1_out : out STD_LOGIC_VECTOR (15 downto 0);
           Operand2_out : out STD_LOGIC_VECTOR (15 downto 0);
           Immediate_out : out STD_LOGIC_VECTOR (15 downto 0);
           MA_out : out STD_LOGIC_VECTOR (15 downto 0);
           WriteAddress_out : out STD_LOGIC_VECTOR (3 downto 0);
           WHB_out : out STD_LOGIC;
           WLB_out : out STD_LOGIC;
           WriteDataSel_out : out STD_LOGIC_VECTOR (1 downto 0);
           RAM_Src_out : out STD_LOGIC;
           RAM_Read_out : out STD_LOGIC;
           RAM_Write_out : out STD_LOGIC;
           Use_MA_out : out STD_LOGIC;
           JMP_out : out STD_LOGIC;
           JMP_Conditional_out : out STD_LOGIC;
           JMP_Relative_out : out STD_LOGIC;
           JMP_Condition_out : out STD_LOGIC_VECTOR (2 downto 0);
           IS_ALU_OP_out : out STD_LOGIC;
           Is_RAM_OP_out : out STD_LOGIC);
end Pipelining_ExecutionStage;

architecture Behavioral of Pipelining_ExecutionStage is

begin


end Behavioral;
