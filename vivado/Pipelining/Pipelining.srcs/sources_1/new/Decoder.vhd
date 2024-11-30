----------------------------------------------------------------------------------
-- Create Date: 09.11.2024 13:50:37
-- Name: Robin
-- Design Name: Decoder
-- Module Name: clockcontroller - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder is
    Port ( 
        instructionToDecode : in std_logic_vector(15 downto 0);
        register1 : out std_logic_vector(3 downto 0);
        register2 : out std_logic_vector(3 downto 0);
        writeBackRegister : out std_logic_vector(3 downto 0);
        immediate : out std_logic_vector(15 downto 0);
        jmpCondition : out std_logic_vector(2 downto 0)
    );
end entity Decoder;

architecture Behavioral of Decoder is
    signal instruction_name_s : std_logic_vector(3 downto 0);
    signal alu_op_immediate_s, eight_bit_immediate_s, jc_immediate_s, ja_immediate_s, gpu_immediate_s : std_logic_vector(15 downto 0);
begin
    instruction_name_s <= instructionToDecode(15 downto 12);
    
    with (instruction_name_s) select 
        register1 <=
            X"0" when X"0",
            instructionToDecode(7 downto 4) when X"1",
            X"0" when X"2",
            instructionToDecode(11 downto 8) when X"3",
            instructionToDecode(11 downto 8) when X"4",
            instructionToDecode(11 downto 8) when X"5",
            X"0" when X"6",
            instructionToDecode(11 downto 8) when X"7",
            X"0" when X"8",
            instructionToDecode(11 downto 8) when X"9",
            X"0" when X"a",
            X"0" when X"b",
            X"0" when X"c",
            X"0" when X"d",
            instructionToDecode(7 downto 4) when X"e",
            instructionToDecode(7 downto 4) when X"f",
            X"0" when others;
        
    with (instruction_name_s) select 
        register2 <=
            X"0" when X"0",
            instructionToDecode(3 downto 0) when X"1",
            X"0" when X"2",
            X"0" when X"3",
            X"0" when X"4",
            X"0" when X"5",
            instructionToDecode(7 downto 4) when X"6",
            instructionToDecode(7 downto 4) when X"7",
            X"f" when X"8",
            X"0" when X"9",
            X"0" when X"a",
            X"0" when X"b",
            X"0" when X"c",
            X"0" when X"d",
            X"0" when X"e",
            instructionToDecode(3 downto 0) when X"f",
            X"0" when others;
        
    with (instruction_name_s) select 
        writeBackRegister <=
            X"0" when X"0",
            X"e" when X"1",
            instructionToDecode(11 downto 8) when X"2",
            X"0" when X"3",
            instructionToDecode(11 downto 8) when X"4",
            instructionToDecode(11 downto 8) when X"5",
            instructionToDecode(11 downto 8) when X"6",
            X"0" when X"7",
            X"0" when X"8",
            X"0" when X"9",
            X"0" when X"a",
            X"0" when X"b",
            X"0" when X"c",
            X"0" when X"d",
            instructionToDecode(11 downto 8) when X"e",
            X"0" when X"f",
            X"0" when others;
        
    alu_op_immediate_s(3 downto 0) <= instructionToDecode(11 downto 8);
    alu_op_immediate_s(15 downto 4) <= X"000";
    
    eight_bit_immediate_s(7 downto 0) <= instructionToDecode(7 downto 0);
    eight_bit_immediate_s(15 downto 8) <= X"00";
    
    jc_immediate_s(8 downto 0) <= instructionToDecode(8 downto 0);
    -- Signed extension
    jc_immediate_s(9) <= instructionToDecode(8);
    jc_immediate_s(10) <= instructionToDecode(8);
    jc_immediate_s(11) <= instructionToDecode(8);
    jc_immediate_s(12) <= instructionToDecode(8);
    jc_immediate_s(13) <= instructionToDecode(8);
    jc_immediate_s(14) <= instructionToDecode(8);
    jc_immediate_s(15) <= instructionToDecode(8);
    
    ja_immediate_s(11 downto 0) <= instructionToDecode(11 downto 0);
    ja_immediate_s(15 downto 12) <= X"0";
             
    gpu_immediate_s(3 downto 0) <= instructionToDecode(11 downto 8);
    gpu_immediate_s(15 downto 4) <= X"000";
    
    with (instruction_name_s) select 
        immediate <=
            X"0000" when X"0",
            alu_op_immediate_s when X"1",
            eight_bit_immediate_s when X"2",
            eight_bit_immediate_s when X"3",
            eight_bit_immediate_s when X"4",
            eight_bit_immediate_s when X"5",
            X"0000" when X"6",
            X"0000" when X"7",
            jc_immediate_s when X"8",
            X"0000" when X"9",
            ja_immediate_s when X"a",
            X"0000" when X"b",
            X"0000" when X"c",
            X"0000" when X"d",
            X"0000" when X"e",
            gpu_immediate_s when X"f",
            X"0000" when others;
    
    jmpCondition <= instructionToDecode(11 downto 9);
end architecture Behavioral;
