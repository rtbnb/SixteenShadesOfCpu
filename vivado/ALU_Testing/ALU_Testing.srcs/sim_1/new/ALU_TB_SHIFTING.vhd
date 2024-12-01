----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 20:09:55
-- Design Name: 
-- Module Name: ALU_TB_ADDING - Behavioral
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

entity ALU_TB_SHIFTING is
      --Port ();
end ALU_TB_SHIFTING;

architecture Behavioral of ALU_TB_SHIFTING is
    component ALU
         Port ( 
            D1: IN std_logic_vector(15 downto 0 );
            D2: IN std_logic_vector(15 downto 0 );
            ALU_OPP: IN std_logic_vector(3 downto 0 );
            RHO_PIN: IN std_logic;
            ALU_OUT: OUT std_logic_vector(15 downto 0 );
            CARRY_FLAG: OUT STD_LOGIC:= '0';
            ZERO_FLAG: OUT STD_LOGIC:= '0';
            SMALLER_ZERO_FLAG: OUT STD_LOGIC:= '0';
            BIGGER_ZERO_FLAG: OUT STD_LOGIC:= '0';
            OVERFLOW_FLAG: OUT STD_LOGIC:= '0';
            RHO_FLAG: OUT STD_LOGIC:= '0';
            NOT_ZERO_FLAG: OUT STD_LOGIC:= '0'
            
         );
    end component;

    signal D1: std_logic_vector(15 downto 0 );
    signal D2: std_logic_vector(15 downto 0 );
    signal ALU_OPP: std_logic_vector(3 downto 0 );
    signal RHO_PIN: std_logic;
    
    signal ALU_OUT: std_logic_vector(15 downto 0 );
    
    signal CARRY_FLAG: STD_LOGIC:= '0';
    signal ZERO_FLAG: STD_LOGIC:= '0';
    signal SMALLER_ZERO_FLAG: STD_LOGIC:= '0';
    signal BIGGER_ZERO_FLAG: STD_LOGIC:= '0';
    signal OVERFLOW_FLAG: STD_LOGIC:= '0';
    signal RHO_FLAG: STD_LOGIC:= '0';
    signal NOT_ZERO_FLAG: STD_LOGIC:= '0';

begin

    UUT: ALU port map (
        D1 => D1,
        D2 => D2,
        ALU_OPP => ALU_OPP,
        RHO_PIN => RHO_PIN,
        ALU_OUT => ALU_OUT,
        
        CARRY_FLAG => CARRY_FLAG,
        ZERO_FLAG => ZERO_FLAG,
        SMALLER_ZERO_FLAG => SMALLER_ZERO_FLAG,
        BIGGER_ZERO_FLAG => BIGGER_ZERO_FLAG,
        RHO_FLAG => RHO_FLAG,
        NOT_ZERO_FLAG => NOT_ZERO_FLAG,
        OVERFLOW_FLAG => OVERFLOW_FLAG
         
    );
    
    process
    begin 
    
        --Testing shifting 1 to the left
        wait for 10 ns;
        D1 <= "0000000000000001";
        D2 <= "0000000000000001";
        RHO_PIN <= '0'; 
        ALU_OPP <= "0010"; 
        wait for 10 ns;
        assert ALU_OUT = "0000000000000010"
            report "shifting 1 to the left operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "shifting 1 to the left operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '0'
            report "shifting 1 to the left operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '0'
            report "shifting 1 to the left operation Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '1'
            report "shifting 1 to the left operation Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "shifting 1 to the left operation Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '1'
            report "shifting 1 to the left operation Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '0'
            report "shifting 1 to the left operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
            
       
        --Testing shifting 1 to the 2xleft
        wait for 10 ns;
        D1 <= "0000000000000001";
        D2 <= "0000000000000010";
        RHO_PIN <= '0'; 
        ALU_OPP <= "0010"; 
        wait for 10 ns;
        assert ALU_OUT = "0000000000000100"
            report "shifting 2 to the left operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "shifting 2 to the left operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '0'
            report "shifting 2 to the left operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '0'
            report "shifting 2 to the left operation Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '1'
            report "shifting 2 to the left operation Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "shifting 2 to the left operation Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '1'
            report "shifting 2 to the left operation Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '0'
            report "shifting 2 to the left operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
        
        
        --Testing shifting 32767 to the left (Overflow)
        wait for 10 ns;
        D1 <= "0111111111111111";
        D2 <= "0000000000000001";
        RHO_PIN <= '0'; 
        ALU_OPP <= "0010"; 
        wait for 10 ns;
        assert ALU_OUT = "1111111111111110"
            report "shifting 32767 to the left (Overflow) operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "shifting 32767 to the left (Overflow) operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '0'
            report "shifting 32767 to the left (Overflow) operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '1'
            report "shifting 32767 to the left (Overflow) Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '0'
            report "shifting 32767 to the left (Overflow) Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "shifting 32767 to the left (Overflow) Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '1'
            report "shifting 32767 to the left (Overflow) Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '1'
            report "shifting 32767 to the left (Overflow) operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
    
        --Testing shifting 1 to the right
        wait for 10 ns;
        D1 <= "0000000000000001";
        D2 <= "0000000000000001";
        RHO_PIN <= '0'; 
        ALU_OPP <= "0011"; 
        wait for 10 ns;
        assert ALU_OUT = "0000000000000000"
            report "shifting 1 to the right operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "shifting 1 to the right operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '1'
            report "shifting 1 to the right operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '0'
            report "shifting 1 to the right operation Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '0'
            report "shifting 1 to the right operation Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "shifting 1 to the right operation Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '0'
            report "shifting 1 to the right operation Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '0'
            report "shifting 1 to the right operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
            
       
        --Testing shifting 1 to the 2x right
        wait for 10 ns;
        D1 <= "0100000000000000";
        D2 <= "0000000000000010";
        RHO_PIN <= '0'; 
        ALU_OPP <= "0011"; 
        wait for 10 ns;
        assert ALU_OUT = "0001000000000000"
            report "shifting 2 to the right operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "shifting 2 to the right operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '0'
            report "shifting 2 to the right operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '0'
            report "shifting 2 to the right operation Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '1'
            report "shifting 2 to the right operation Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "shifting 2 to the right operation Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '1'
            report "shifting 2 to the right operation Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '0'
            report "shifting 2 to the right operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
        
    end process;

end Behavioral;
