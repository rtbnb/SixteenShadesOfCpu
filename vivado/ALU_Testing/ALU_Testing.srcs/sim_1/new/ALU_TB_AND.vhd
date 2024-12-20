----------------------------------------------------------------------------------
-- Create Date: 06.11.2024 21:11:45
-- Name: Matthias Fuchs
-- Design Name: ShadeCpu
-- Module Name: ALU_TB_AND - Behavioral
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

entity ALU_TB_AND is
      --Port ();
end ALU_TB_AND;

architecture Behavioral of ALU_TB_AND is
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
    
        --Testing 0000000000000001 and 0000000000000001
        wait for 10 ns;
        D1 <= "0000000000000001";
        D2 <= "0000000000000001";
        RHO_PIN <= '0'; 
        ALU_OPP <= "1001"; 
        wait for 10 ns;
        assert ALU_OUT = "0000000000000001"
            report "0000000000000001 and 0000000000000001 operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "0000000000000001 and 0000000000000001 operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '0'
            report "0000000000000001 and 0000000000000001 operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '0'
            report "0000000000000001 and 0000000000000001 operation Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '1'
            report "0000000000000001 and 0000000000000001 operation Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "0000000000000001 and 0000000000000001 operation Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '1'
            report "0000000000000001 and 0000000000000001 operation Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '0'
            report "0000000000000001 and 0000000000000001 operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
            
        --Testing 0000000000000001 nand 0000000000000001
        wait for 10 ns;
        D1 <= "0000000000000001";
        D2 <= "0000000000000001";
        RHO_PIN <= '0'; 
        ALU_OPP <= "1101"; 
        wait for 10 ns;
        assert ALU_OUT = "1111111111111110"
            report "0000000000000001 nand 0000000000000001 operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "0000000000000001 nand 0000000000000001 operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '0'
            report "0000000000000001 nand 0000000000000001 operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '1'
            report "0000000000000001 nand 0000000000000001 operation Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '0'
            report "0000000000000001 nand 0000000000000001 operation Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "0000000000000001 nand 0000000000000001 operation Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '1'
            report "0000000000000001 nand 0000000000000001 operation Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '0'
            report "0000000000000001 nand 0000000000000001 operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
        
        
        --Testing 1111111111111111 and 1111111111111111
        wait for 10 ns;
        D1 <= "1111111111111111";
        D2 <= "1111111111111111";
        RHO_PIN <= '0'; 
        ALU_OPP <= "1001"; 
        wait for 10 ns;
        assert ALU_OUT = "1111111111111111"
            report "1111111111111111 and 1111111111111111 operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "1111111111111111 and 1111111111111111 operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '0'
            report "1111111111111111 and 1111111111111111 operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '1'
            report "1111111111111111 and 1111111111111111 operation Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '0'
            report "1111111111111111 and 1111111111111111 operation Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "1111111111111111 and 1111111111111111 operation Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '1'
            report "1111111111111111 and 1111111111111111 operation Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '0'
            report "1111111111111111 and 1111111111111111 operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
            
        --Testing 0000000000000001 nand 0000000000000001
        wait for 10 ns;
        D1 <= "1111111111111111";
        D2 <= "1111111111111111";
        RHO_PIN <= '0'; 
        ALU_OPP <= "1101"; 
        wait for 10 ns;
        assert ALU_OUT = "0000000000000000"
            report "0000000000000001 and 0000000000000001 operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "0000000000000001 and 0000000000000001 operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '1'
            report "0000000000000001 and 0000000000000001 operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '0'
            report "0000000000000001 and 0000000000000001 operation Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '0'
            report "0000000000000001 and 0000000000000001 operation Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "0000000000000001 and 0000000000000001 operation Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '0'
            report "0000000000000001 and 0000000000000001 operation Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '0'
            report "0000000000000001 and 0000000000000001 operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
    end process;

end Behavioral;
