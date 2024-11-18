----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2024 16:23:48
-- Design Name: 
-- Module Name: CU_WriteSelector_SIM - Behavioral
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

entity CU_WriteSelector_SIM is
--  Port ( );
end CU_WriteSelector_SIM;

architecture Behavioral of CU_WriteSelector_SIM is
    component CU_WriteSelector is
        Port ( RAM_Out : in STD_LOGIC_VECTOR (15 downto 0);
               Manipulated_Immidiate : in STD_LOGIC_VECTOR (15 downto 0);
               Reg1 : in STD_LOGIC_VECTOR (15 downto 0);
               ALU_Out : in STD_LOGIC_VECTOR (15 downto 0);
               Write_Sel : in STD_LOGIC_VECTOR (1 downto 0);
               Write_Data : out STD_LOGIC_VECTOR (15 downto 0));
    end component CU_WriteSelector;
    
    
    signal RAM_Out : STD_LOGIC_VECTOR(15 downto 0) := X"1234";
    signal Manipulated_Immidiate : STD_LOGIC_VECTOR(15 downto 0) := X"5678";
    signal Reg1 : STD_LOGIC_VECTOR(15 downto 0) := X"9abc";
    signal ALU_Out : STD_LOGIC_VECTOR(15 downto 0) := X"def0";
    
    signal Write_Sel : STD_LOGIC_VECTOR(1 downto 0);
    
begin
    
    EUT : CU_WriteSelector port map(
        RAM_Out => RAM_Out,
        Manipulated_Immidiate => Manipulated_Immidiate,
        Reg1 => Reg1,
        ALU_Out => ALU_Out,
        Write_Sel => Write_Sel
    );
    
    process is
    begin
        FOR i in 0 to 3 loop
            Write_Sel <= std_logic_vector(to_unsigned(i, 2));
            wait for 10 ns;
        end loop;
    end process;
end Behavioral;
