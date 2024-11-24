----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2024 13:50:37
-- Design Name: 
-- Module Name: Decoder - Behavioral
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

entity Decoder is
    Port ( Instruction : in STD_LOGIC_VECTOR (15 downto 0);
           Register1 : out STD_LOGIC_VECTOR (3 downto 0);
           Register2 : out STD_LOGIC_VECTOR (3 downto 0);
           WriteBackRegister : out STD_LOGIC_VECTOR (3 downto 0);
           Immediate : out STD_LOGIC_VECTOR (15 downto 0);
           JMP_Condition : out STD_LOGIC_VECTOR (2 downto 0);
           Use_MA : out STD_LOGIC);
end Decoder;

architecture Behavioral of Decoder is
    
    signal instruction_name : STD_LOGIC_VECTOR(3 downto 0);
    signal alu_op_immediate, eight_bit_immediate, jc_immediate, ja_immediate, gpu_immediate : STD_LOGIC_VECTOR(15 downto 0);

begin
    instruction_name <= Instruction(15 downto 12);
    
    WITH (instruction_name) SELECT Register1 <=
        X"0" WHEN X"0",
        Instruction(7 downto 4) WHEN X"1",
        X"0" WHEN X"2",
        Instruction(11 downto 8) WHEN X"3",
        Instruction(11 downto 8) WHEN X"4",
        Instruction(11 downto 8) WHEN X"5",
        X"0" WHEN X"6",
        Instruction(11 downto 8) WHEN X"7",
        X"0" WHEN X"8",
        Instruction(11 downto 8) WHEN X"9",
        X"0" WHEN X"a",
        X"0" WHEN X"b",
        X"0" WHEN X"c",
        X"0" WHEN X"d",
        Instruction(7 downto 4) WHEN X"e",
        Instruction(7 downto 4) WHEN X"f",
        X"0" WHEN OTHERS;
        
    WITH (instruction_name) SELECT Register2 <=
        X"0" WHEN X"0",
        Instruction(3 downto 0) WHEN X"1",
        X"0" WHEN X"2",
        X"0" WHEN X"3",
        X"0" WHEN X"4",
        X"0" WHEN X"5",
        Instruction(7 downto 4) WHEN X"6",
        Instruction(7 downto 4) WHEN X"7",
        X"f" WHEN X"8",
        X"0" WHEN X"9",
        X"0" WHEN X"a",
        X"0" WHEN X"b",
        X"0" WHEN X"c",
        X"0" WHEN X"d",
        X"0" WHEN X"e",
        Instruction(3 downto 0) WHEN X"f",
        X"0" WHEN OTHERS;
        
    WITH (instruction_name) SELECT WriteBackRegister <=
        X"0" WHEN X"0",
        X"e" WHEN X"1",
        Instruction(11 downto 8) WHEN X"2",
        X"0" WHEN X"3",
        Instruction(11 downto 8) WHEN X"4",
        Instruction(11 downto 8) WHEN X"5",
        Instruction(11 downto 8) WHEN X"6",
        X"0" WHEN X"7",
        X"0" WHEN X"8",
        X"0" WHEN X"9",
        X"0" WHEN X"a",
        X"0" WHEN X"b",
        X"0" WHEN X"c",
        X"0" WHEN X"d",
        Instruction(11 downto 8) WHEN X"e",
        X"0" WHEN X"f",
        X"0" WHEN OTHERS;
        
    alu_op_immediate(3 downto 0) <= Instruction(11 downto 8);
    alu_op_immediate(15 downto 4) <= X"000";
    
    eight_bit_immediate(7 downto 0) <= Instruction(7 downto 0);
    eight_bit_immediate(15 downto 8) <= X"00";
    
    
    jc_immediate(8 downto 0) <= Instruction(8 downto 0);
    -- Signed extension
    jc_immediate(9) <= Instruction(8);
    jc_immediate(10) <= Instruction(8);
    jc_immediate(11) <= Instruction(8);
    jc_immediate(12) <= Instruction(8);
    jc_immediate(13) <= Instruction(8);
    jc_immediate(14) <= Instruction(8);
    jc_immediate(15) <= Instruction(8);
    
    ja_immediate(11 downto 0) <= Instruction(11 downto 0);
    ja_immediate(15 downto 12) <= X"0";
             
    gpu_immediate(3 downto 0) <= Instruction(11 downto 8);
    gpu_immediate(15 downto 4) <= X"000";
    
    WITH (instruction_name) SELECT Immediate <=
        X"0000" WHEN X"0",
        alu_op_immediate WHEN X"1",
        eight_bit_immediate WHEN X"2",
        eight_bit_immediate WHEN X"3",
        eight_bit_immediate WHEN X"4",
        eight_bit_immediate WHEN X"5",
        X"0000" WHEN X"6",
        X"0000" WHEN X"7",
        jc_immediate WHEN X"8",
        X"0000" WHEN X"9",
        ja_immediate WHEN X"a",
        X"0000" WHEN X"b",
        X"0000" WHEN X"c",
        X"0000" WHEN X"d",
        X"0000" WHEN X"e",
        gpu_immediate WHEN X"f",
        X"0000" WHEN OTHERS;
    
    JMP_Condition <= Instruction(11 downto 9);
    WITH (instruction_name) SELECT Use_MA <=
        '0' WHEN X"0",
        '0' WHEN X"1",
        '1' WHEN X"2",
        '1' WHEN X"3",
        '0' WHEN X"4",
        '0' WHEN X"5",
        Instruction(0) WHEN X"6",
        Instruction(0) WHEN X"7",
        '0' WHEN X"8",
        '0' WHEN X"9",
        '0' WHEN X"a",
        '0' WHEN X"b",
        '0' WHEN X"c",
        '0' WHEN X"d",
        '0' WHEN X"e",
        '0' WHEN X"f",
        '0' WHEN OTHERS;

end Behavioral;
