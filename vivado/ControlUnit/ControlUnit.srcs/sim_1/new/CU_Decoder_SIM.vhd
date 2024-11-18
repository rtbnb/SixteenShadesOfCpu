----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2024 16:23:48
-- Design Name: 
-- Module Name: CU_Decoder_SIM - Behavioral
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

entity CU_Decoder_SIM is
--  Port ( );
end CU_Decoder_SIM;

architecture Behavioral of CU_Decoder_SIM is
    component CU_Decoder is
        Port ( Instruction : in STD_LOGIC_VECTOR (15 downto 0);
               Reg1Read : out STD_LOGIC;
               Reg2Read : out STD_LOGIC;
               RF_WHB : out STD_LOGIC;
               RF_WLB : out STD_LOGIC;
               Write_Data_Sel : out STD_LOGIC_VECTOR (1 downto 0);
               RAM_Address_Src : out STD_LOGIC;
               RAM_Read : out STD_LOGIC;
               RAM_Write : out STD_LOGIC;
               JMP : out STD_LOGIC;
               JMP_Conditional : out STD_LOGIC;
               JMP_Relative : out STD_LOGIC;
               JMP_DestinationSource : out STD_LOGIC;
               Is_ALU_OP : out STD_LOGIC;
               Is_RAM_OP : out STD_LOGIC);
    end component CU_Decoder;
    
    signal Instruction : STD_LOGIC_VECTOR (15 downto 0) := X"0000";
    signal Reg1Read,  Reg2Read, RF_WHB, RF_WLB, RAM_Address_Src, RAM_Read, RAM_Write, JMP, JMP_Conditional, JMP_Relative, JMP_DestinationSource, Is_ALU_OP, Is_RAM_OP : STD_LOGIC;
    signal Write_Data_sel : STD_LOGIC_VECTOR(1 downto 0);
    
    
    
begin

    EUT : CU_Decoder port map(
        Instruction => Instruction,
        Reg1Read => Reg1Read, 
        Reg2Read => Reg2Read, 
        RF_WHB => RF_WHB, 
        RF_WLB => RF_WLB, 
        Write_Data_Sel => Write_Data_Sel,  
        RAM_Address_Src => RAM_Address_Src, 
        RAM_Read => RAM_Read, 
        RAM_Write => RAM_Write,   
        JMP => JMP,  
        JMP_Conditional => JMP_Conditional, 
        JMP_Relative => JMP_Relative, 
        JMP_DestinationSource => JMP_DestinationSource, 
        Is_ALU_OP => Is_ALU_OP, 
        Is_RAM_OP => Is_RAM_OP 
    );  
    
    
    process is
    begin
        FOR i in 0 to 15 loop
            Instruction(15 downto 12) <= std_logic_vector(to_unsigned(i, 4));
            wait for 10ns;
        end loop;
    end process;

end Behavioral;
