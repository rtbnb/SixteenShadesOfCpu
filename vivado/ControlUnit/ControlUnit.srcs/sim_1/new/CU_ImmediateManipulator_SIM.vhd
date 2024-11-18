----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2024 16:23:48
-- Design Name: 
-- Module Name: CU_ImmediateManipulator_SIM - Behavioral
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

entity CU_ImmediateManipulator_SIM is
--  Port ( );
end CU_ImmediateManipulator_SIM;

architecture Behavioral of CU_ImmediateManipulator_SIM is
    component CU_ImmediateManipulator is
        Port ( Reg1 : in STD_LOGIC_VECTOR (15 downto 0);
               Immediate : in STD_LOGIC_VECTOR (15 downto 0);
               RF_WHB : in STD_LOGIC;
               RF_WLB : in STD_LOGIC;
               ManipulatedImmidiate : out STD_LOGIC_VECTOR (15 downto 0));
    end component CU_ImmediateManipulator;
    
    signal Reg1 : std_logic_vector(15 downto 0) := X"abcd";
    signal Immediate : std_logic_vector(15 downto 0) := X"3377";
    signal RF_WHB, RF_WLB : STD_LOGIC;
    
begin
    EUT : CU_ImmediateManipulator port map(
        Reg1 => Reg1,
        Immediate => Immediate,
        RF_WHB => RF_WHB,
        RF_WLB => RF_WLB
    );
    
    
    process is
    begin
        RF_WHB <= '0';
        RF_WLB <= '0';
        wait for 10 ns;
        RF_WHB <= '0';
        RF_WLB <= '1';
        wait for 10 ns;
        RF_WHB <= '1';
        RF_WLB <= '0';
        wait for 10 ns;
        RF_WHB <= '1';
        RF_WLB <= '1';
        wait for 10 ns;
    end process;

end Behavioral;
