----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2024 16:23:48
-- Design Name: 
-- Module Name: CU_JumpController_SIM - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CU_JumpController_SIM is
--  Port ( );
end CU_JumpController_SIM;

architecture Behavioral of CU_JumpController_SIM is
    component CU_JumpController is
        Port ( InstrExec_CLK : in STD_LOGIC;
               JMP : in STD_LOGIC;
               JMP_Conditional : in STD_LOGIC;
               JMP_Relative : in STD_LOGIC;
               JMP_Condition : in STD_LOGIC_VECTOR (2 downto 0);
               Flags : in STD_LOGIC_VECTOR (15 downto 0);
               JMP_Address : in STD_LOGIC_VECTOR (15 downto 0);
               PC_Current : in STD_LOGIC_VECTOR (15 downto 0);
               PC_Load : out STD_LOGIC;
               PC_Next : out STD_LOGIC_VECTOR (0 downto 0));
    end component CU_JumpController;
    
    signal InstrExec_CLK : STD_LOGIC;
    signal JMP, JMP_Conditional, JMP_Relative : STD_LOGIC;
    signal JMP_Condition : STD_LOGIC_VECTOR(2 downto 0);
    signal Flags, JMP_Address, PC_Current : STD_LOGIC_VECTOR(15 downto 0);
    
begin
    
    EUT : CU_JumpController port map(
        InstrExec_CLK => InstrExec_CLK,
        JMP => JMP,
        JMP_Conditional => JMP_Conditional,
        JMP_Relative => JMP_Relative,
        JMP_Condition => JMP_Condition,
        Flags => Flags,
        JMP_Address => JMP_Address,
        PC_Current => PC_Current
    );
    
    process is
    begin
        
        InstrExec_CLK <= '0';
        JMP <= '0';
        JMP_Conditional <= '0';
        JMP_Relative <= '0';
        JMP_Address <= X"1F00";
        PC_Current <= X"0000";
        
    
        FOR i in 0 to 7 loop
            JMP_Condition <= std_logic_vector(to_unsigned(i, 3));   
            
            wait for 10 ns;
        end loop;
    end process;

end Behavioral;
