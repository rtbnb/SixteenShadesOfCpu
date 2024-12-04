----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 20:09:55
-- Name: Matthias Fuchs
-- Design Name: ShadeCpu
-- Module Name: FPU_TB_ADDING - Behavioral
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

entity FPU_TB_ADDING  is
    --  Port ( );
end FPU_TB_ADDING;

architecture Behavioral of FPU_TB_ADDING is
    component FPU
         Port ( 
             
            D1: IN std_logic_vector(15 downto 0 ):= (others => '0');
            D2: IN std_logic_vector(15 downto 0 ):= (others => '0');
            FPU_OPP: IN std_logic_vector(3 downto 0 ):= (others => '0');
            RHO_PIN: IN std_logic:= '0';
    
            FPU_OUT: OUT std_logic_vector(15 downto 0 );
            
            
            CARRY_FLAG: OUT STD_LOGIC:= '0';
            ZERO_FLAG: OUT STD_LOGIC:= '0';
            SMALLER_ZERO_FLAG: OUT STD_LOGIC:= '0';
            BIGGER_ZERO_FLAG: OUT STD_LOGIC:= '0';
            OVERFLOW_FLAG: OUT STD_LOGIC:= '0';
            RHO_FLAG: OUT STD_LOGIC:= '0';
            NOT_ZERO_FLAG: OUT STD_LOGIC:= '0'
            
         );
    end component;


    signal D1: std_logic_vector(15 downto 0 ):= (others => '0');
    signal D2: std_logic_vector(15 downto 0 ):= (others => '0');
    signal FPU_OPP: std_logic_vector(3 downto 0 ):= (others => 'X');
    signal FPU_OUT: std_logic_vector(15 downto 0 ):= (others => '0');
    signal RHO_PIN: std_logic;
    
    
    
    signal CARRY_FLAG: STD_LOGIC:= '0';
    signal ZERO_FLAG: STD_LOGIC:= '0';
    signal SMALLER_ZERO_FLAG: STD_LOGIC:= '0';
    signal BIGGER_ZERO_FLAG: STD_LOGIC:= '0';
    signal OVERFLOW_FLAG: STD_LOGIC:= '0';
    signal RHO_FLAG: STD_LOGIC:= '0';
    signal NOT_ZERO_FLAG: STD_LOGIC:= '0';
begin

    UUT: FPU port map (
        D1 => D1,
        D2 => D2,
        FPU_OPP => FPU_OPP,
        
        RHO_PIN => RHO_PIN,
        FPU_OUT => FPU_OUT,
        
        
        CARRY_FLAG => CARRY_FLAG,
        ZERO_FLAG => ZERO_FLAG,
        SMALLER_ZERO_FLAG => SMALLER_ZERO_FLAG,
        BIGGER_ZERO_FLAG => BIGGER_ZERO_FLAG,
        RHO_FLAG => RHO_FLAG,
        NOT_ZERO_FLAG => NOT_ZERO_FLAG,
        OVERFLOW_FLAG => OVERFLOW_FLAG
    );
    
    p1: process
    begin 
        wait for 10 ns;
        D1 <= "0000000000000000";
        D2 <= "0000000000000000";
        RHO_PIN <= '0';
        FPU_OPP <= "0101"; 
        wait for 10 ns;
        assert FPU_OUT = "0000000000000000"
            report "0+0 operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "0+0 operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '1'
            report "0+0 operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "0+0 operation Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '0'
            report "0+0 operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
                
        wait for 10 ns;
        D1 <= "0011110000000000";
        D2 <= "0011110000000000";
        RHO_PIN <= '0';
        FPU_OPP <= "0101"; 
        wait for 10 ns;
        assert FPU_OUT = "0100000000000000"
            report "0+0 operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "0+0 operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '1'
            report "0+0 operation Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "0+0 operation Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '1'
            report "0+0 operation Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '0'
            report "0+0 operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
            
        wait for 10 ns;
        D1 <= "0011110000000000";
        D2 <= "1011110000000000";
        RHO_PIN <= '0';
        FPU_OPP <= "0101"; 
        wait for 10 ns;
        assert FPU_OUT = "0000000000000000"
            report "0+0 operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "0+0 operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '1'
            report "0+0 operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "0+0 operation Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '0'
            report "0+0 operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
        
        wait for 10 ns;
        D1 <= "1011110000000000";
        D2 <= "1011110000000000";
        RHO_PIN <= '0';
        FPU_OPP <= "0101"; 
        wait for 10 ns;
        assert FPU_OUT = "1100000000000000"
            report "0+0 operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "0+0 operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '1'
            report "0+0 operation Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "0+0 operation Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '1'
            report "0+0 operation Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '0'
            report "0+0 operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
            
            
        wait for 10 ns;
        D1 <= "0111101111111111";
        D2 <= "0111101111111111";
        RHO_PIN <= '0';
        FPU_OPP <= "0101"; 
        wait for 10 ns;
        assert FPU_OUT = "0111111111111111"
            report "0+0 operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "0+0 operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '1'
            report "0+0 operation Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "0+0 operation Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '1'
            report "0+0 operation Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '1'
            report "0+0 operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
            
        wait for 10 ns;
        D1 <= "1111101111111111";
        D2 <= "1111101111111111";
        RHO_PIN <= '0';
        FPU_OPP <= "0101"; 
        wait for 10 ns;
        assert FPU_OUT = "1111111111111111"
            report "0+0 operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "0+0 operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '1'
            report "0+0 operation Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "0+0 operation Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '1'
            report "0+0 operation Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '1'
            report "0+0 operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
        
        wait for 10 ns;
        D1 <= "0101010001010000";
        D2 <= "0101111010010000";
        RHO_PIN <= '0';
        FPU_OPP <= "0101"; 
        wait for 10 ns;
        assert FPU_OUT = "0101111110100100"
            report "0+0 operation Failed: wrong ALU_OUT"
            severity failure;
        assert CARRY_FLAG = '0'
            report "0+0 operation Failed: wrong CARRY_FLAG"
            severity failure;
        assert ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong ZERO_FLAG"
            severity failure;
        assert SMALLER_ZERO_FLAG = '0'
            report "0+0 operation Failed: wrong SMALLER_ZERO_FLAG"
            severity failure;
        assert BIGGER_ZERO_FLAG = '1'
            report "0+0 operation Failed: wrong BIGGER_ZERO_FLAG"
            severity failure;
        assert RHO_FLAG = '0'
            report "0+0 operation Failed: wrong RHO_FLAG"
            severity failure;
        assert NOT_ZERO_FLAG = '1'
            report "0+0 operation Failed: wrong NOT_ZERO_FLAG"
            severity failure;
        assert OVERFLOW_FLAG = '0'
            report "0+0 operation Failed: wrong OVERFLOW_FLAG"
            severity failure;
        
    end process;

end Behavioral;
