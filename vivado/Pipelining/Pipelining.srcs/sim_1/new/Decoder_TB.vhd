----------------------------------------------------------------------------------
-- Create Date: 29.11.2024 10:18:06
-- Name: Matthias Fuchs
-- Design Name: ShadeCpu
-- Module Name: Decodder_TB - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
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

entity Decodder_TB is
    --  Port ( );
end Decodder_TB;

architecture Behavioral of Decodder_TB is
    component Decoder
         Port ( 
          Instruction : in STD_LOGIC_VECTOR (15 downto 0);
           Register1 : out STD_LOGIC_VECTOR (3 downto 0);
           Register2 : out STD_LOGIC_VECTOR (3 downto 0);
           WriteBackRegister : out STD_LOGIC_VECTOR (3 downto 0);
           Immediate : out STD_LOGIC_VECTOR (15 downto 0);
           JMP_Condition : out STD_LOGIC_VECTOR (2 downto 0)
            
         );
    end component;

          signal Instruction : STD_LOGIC_VECTOR (15 downto 0);
           signal Register1 : STD_LOGIC_VECTOR (3 downto 0);
           signal Register2 : STD_LOGIC_VECTOR (3 downto 0);
           signal WriteBackRegister : STD_LOGIC_VECTOR (3 downto 0);
           signal Immediate : STD_LOGIC_VECTOR (15 downto 0);
           signal JMP_Condition : STD_LOGIC_VECTOR (2 downto 0);

begin

    UUT: Decoder port map (
        Instruction => Instruction,
        Register1 => Register1,
        Register2 => Register2,
        WriteBackRegister => WriteBackRegister,
        Immediate => Immediate,
        JMP_Condition => JMP_Condition
    );
    
    process
    begin 
    
        wait for 10 ns;
        Instruction <= "0000000000000000";
        wait for 10 ns;
        
        assert Register1 = "0000"
            report "operation Failed: wrong Register1"
            severity failure;
        assert Register2 = "0000"
            report "operation Failed: wrong Register2"
            severity failure;
        assert WriteBackRegister= "0000"
            report "operation Failed: wrong WriteBackRegister"
            severity failure;
        assert Immediate = "0000000000000000"
            report "operation Failed: wrong Immediate"
            severity failure;
        assert JMP_Condition = "000"
            report "operation Failed: wrong JMP_Condition"
            severity failure;
            
        
        wait for 10 ns;
        Instruction <= "0001000100010001";
        wait for 10 ns;
        
        assert Register1 = "0001"
            report "operation Failed: wrong Register1"
            severity failure;
        assert Register2 = "0001"
            report "operation Failed: wrong Register2"
            severity failure;
        assert WriteBackRegister= "1110"
            report "operation Failed: wrong WriteBackRegister"
            severity failure;
        assert Immediate = "0000000000000001"
            report "operation Failed: wrong Immediate"
            severity failure;
        assert JMP_Condition = "000"
            report "operation Failed: wrong JMP_Condition"
            severity failure;
            
        
        wait for 10 ns;
        Instruction <= "0001001000010001";
        wait for 10 ns;
        
        assert Register1 = "0001"
            report "operation Failed: wrong Register1"
            severity failure;
        assert Register2 = "0001"
            report "operation Failed: wrong Register2"
            severity failure;
        assert WriteBackRegister= "1110"
            report "operation Failed: wrong WriteBackRegister"
            severity failure;
        assert Immediate = "0000000000000010"
            report "operation Failed: wrong Immediate"
            severity failure;
        assert JMP_Condition = "001"
            report "operation Failed: wrong JMP_Condition"
            severity failure;
            
        
        wait for 10 ns;
        Instruction <= "0010001000010001";
        wait for 10 ns;
        
        assert Register1 = "0000"
            report "operation Failed: wrong Register1"
            severity failure;
        assert Register2 = "0000"
            report "operation Failed: wrong Register2"
            severity failure;
        assert WriteBackRegister= "0010"
            report "operation Failed: wrong WriteBackRegister"
            severity failure;
        assert Immediate = "0000000000010001"
            report "operation Failed: wrong Immediate"
            severity failure;
        assert JMP_Condition = "001"
            report "operation Failed: wrong JMP_Condition"
            severity failure;
            
        
        wait for 10 ns;
        Instruction <= "1000001000010001";
        wait for 10 ns;
        
        assert Register1 = "0000"
            report "operation Failed: wrong Register1"
            severity failure;
        assert Register2 = "1111"
            report "operation Failed: wrong Register2"
            severity failure;
        assert WriteBackRegister= "0000"
            report "operation Failed: wrong WriteBackRegister"
            severity failure;
        assert Immediate = "0000000000010001"
            report "operation Failed: wrong Immediate"
            severity failure;
        assert JMP_Condition = "001"
            report "operation Failed: wrong JMP_Condition"
            severity failure;
        
    end process;

end Behavioral;