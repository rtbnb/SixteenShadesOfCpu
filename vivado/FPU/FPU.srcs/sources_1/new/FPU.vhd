----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.11.2024 10:22:02
-- Design Name: 
-- Module Name: FPU - Behavioral
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

use work.FloatingPoints.all;


entity FPU is
    Port (
        D1: IN std_logic_vector(15 downto 0 ):= (others => '0');
        D2: IN std_logic_vector(15 downto 0 ):= (others => '0');
        FPU_OPP: IN std_logic_vector(3 downto 0 ):= (others => '1');
        RHO_PIN: IN std_logic:= '0';
    
        FPU_OUT: OUT std_logic_vector(15 downto 0 ):= (others => '0');
        
        CARRY_FLAG: OUT STD_LOGIC:= '0';
        ZERO_FLAG: OUT STD_LOGIC:= '0';
        SMALLER_ZERO_FLAG: OUT STD_LOGIC:= '0';
        BIGGER_ZERO_FLAG: OUT STD_LOGIC:= '0';
        OVERFLOW_FLAG: OUT STD_LOGIC:= '0';
        RHO_FLAG: OUT STD_LOGIC:= '0';
        NOT_ZERO_FLAG: OUT STD_LOGIC:= '0'
     );
end FPU;

architecture Behavioral of FPU is

    function findFirstOne (
      a : std_logic_vector(10 downto 0))
      return integer is
      begin    
        for i in 0 to 10 loop
          if a(10-i) = '1' then
            return i;
          end if;
        end loop;    
        -- all zero
        return 10;
        
      end function;


    -- Calculate addition of 2 Floats
    function AddFloats(F1 : float16;
                        F2 : float16;            
                        FPU_OUT_Int : float16) return float16 is
        variable AdditionOut : float16;
        variable AdditionMatissa: std_logic_vector(11 downto 0 ):= (others => '0');
    begin
    
        AdditionOut:=FPU_OUT_Int;
        AdditionMatissa := std_logic_vector(unsigned('0'&F1.mantissa) + unsigned('0'&F2.mantissa));
        
        if (AdditionMatissa(11) = '1') then
            AdditionMatissa:= std_logic_vector(shift_right(unsigned(AdditionMatissa),1));
            AdditionOut.exponent := std_logic_vector(unsigned(FPU_OUT_Int.exponent) + 1);
        end if;
        
        AdditionOut.mantissa:=AdditionMatissa(10 downto 0);
        
        return AdditionOut;
    end function;
    
    
    -- Calculate subtraction of 2 Floats
    function SubtractFloats(F1 : float16;
                        F2 : float16;            
                        FPU_OUT_Int : float16) return float16 is
        variable SubtractionOut : float16;
        variable shiftAmount: Integer;
        variable SubtractionMatissa: std_logic_vector(11 downto 0 ):= (others => '0');
    begin
    
        SubtractionOut.sign := '0';
        SubtractionMatissa:= std_logic_vector(unsigned('0' &F1.mantissa)+unsigned(not F2.mantissa)+1);
        if  SubtractionMatissa(11) = '1' then
            if SubtractionMatissa(10 downto 0) = "00000000000" then
                SubtractionOut.exponent := "00000";
                SubtractionOut.mantissa := "00000000000";
                SubtractionOut.sign := '0';
                
                return SubtractionOut;
            end if;
        else
            SubtractionMatissa := std_logic_vector(unsigned(not(SubtractionMatissa))+1);
            SubtractionOut.sign := not FPU_OUT_Int.sign;
        end if;
        
        shiftAmount:=findFirstOne(SubtractionMatissa(10 downto 0));
        --shiftAmount:=1;
        
        SubtractionMatissa := std_logic_vector(shift_left(unsigned(SubtractionMatissa), shiftAmount));
        SubtractionOut.exponent := std_logic_vector(unsigned(FPU_OUT_Int.exponent)-shiftAmount);
        SubtractionOut.Mantissa :=SubtractionMatissa (10 downto 0);
    
               
        return SubtractionOut;
        
        
        --return AdditionOut;
    end function;
begin

    process (FPU_OPP, D1, D2)
    
    variable D1_Int: float16;
    variable D2_Int: float16;
    variable FPU_OUT_Int: float16;
    variable MultiplicationMatissa: std_logic_vector(23 downto 0);
    variable MultiplicationExponent: std_logic_vector(5 downto 0);
    
    
    begin
        
        D1_Int.sign := D1(15);
        D2_Int.sign := D2(15);
        
        D1_Int.exponent := D1(14 downto 10);
        D2_Int.exponent := D2(14 downto 10);
        
        D1_Int.mantissa := '1'&D1(9 downto 0);
        D2_Int.mantissa := '1'&D2(9 downto 0);
        FPU_OUT_Int.sign:= '0';
        FPU_OUT_Int.exponent:= "00000";
        FPU_OUT_Int.mantissa:= "00000000000";
        
        if (FPU_OPP = "0111") then
            if (D1 = "0000000000000000" or D2 = "0000000000000000") then
                FPU_OUT_Int.sign:= '0';
                FPU_OUT_Int.exponent:= "00000";
                FPU_OUT_Int.mantissa:= "00000000000";
            else 
                FPU_OUT_Int.sign := D1_Int.sign xor D2_Int.sign;
                MultiplicationMatissa:= std_logic_vector(unsigned('0'&D1_Int.mantissa) * unsigned('0'&D2_Int.mantissa));
                 
                if MultiplicationMatissa(22) = '0' then
                    MultiplicationExponent := std_logic_vector((unsigned('0'&D1_Int.exponent) + unsigned('0'&D2_Int.exponent))-15);
                    FPU_OUT_Int.mantissa := MultiplicationMatissa(20 downto 10);
                    
                else
                    MultiplicationExponent := std_logic_vector((unsigned('0'&D1_Int.exponent) + unsigned('0'&D2_Int.exponent))-14);
                    FPU_OUT_Int.mantissa := MultiplicationMatissa(21 downto 11);
                    
                end if;
                
                if MultiplicationExponent(5) = '1' then
                    MultiplicationExponent:= "111111";
                end if;
                FPU_OUT_Int.exponent:= MultiplicationExponent(4 downto 0);
            end if; 
            
            FPU_OUT(15) <= FPU_OUT_Int.sign;
            FPU_OUT(14 downto 10) <= FPU_OUT_Int.exponent;
            FPU_OUT(9 downto 0) <= FPU_OUT_Int.mantissa(9 downto 0);
        else
            
            if (D2 = "0000000000000000") then
                -- Return D1
                FPU_OUT <= D1;
            elsif(D1 = "0000000000000000") then
                FPU_OUT <= D2;
                --check for subtraction
                if (FPU_OPP = "0110") then
                    FPU_OUT(15) <= not D2(15);
                end if;
                
            else
                
                
                -- Check mantissa
                
                FPU_OUT_Int.sign := D1_Int.sign;
                
                if (D1_Int.exponent < D2_Int.exponent) then
                    D1_Int.mantissa := std_logic_vector(shift_right(unsigned(D1_Int.mantissa), to_integer(unsigned(D2_Int.exponent)-unsigned(D1_Int.exponent))));
                    D1_Int.exponent := D2_Int.exponent;
                elsif(D2_Int.exponent < D1_Int.exponent) then
                    D2_Int.mantissa := std_logic_vector(shift_right(unsigned(D2_Int.mantissa), to_integer(unsigned(D1_Int.exponent)-unsigned(D2_Int.exponent))));
                    D2_Int.exponent := D1_Int.exponent;
                end if;
                
                FPU_OUT_Int.exponent := D1_Int.exponent;
                if (FPU_OPP = "0101") then
                    if ((D1_Int.sign xor D2_Int.sign) = '0') then
                        FPU_OUT_Int := AddFloats(D1_Int, D2_Int, FPU_OUT_Int);
                    else 
                        FPU_OUT_Int:=SubtractFloats(D1_Int, D2_Int, FPU_OUT_Int);
                    end if;
                end if;
                
                if (FPU_OPP = "0110") then
                    if ((D1_Int.sign xor D2_Int.sign) = '1') then
                        FPU_OUT_Int := AddFloats(D1_Int, D2_Int, FPU_OUT_Int);
                    else 
                        FPU_OUT_Int:=SubtractFloats(D1_Int, D2_Int, FPU_OUT_Int);        
                    end if;
                     
                end if;
                
                        
                FPU_OUT(15) <= FPU_OUT_Int.sign;
                FPU_OUT(14 downto 10) <= FPU_OUT_Int.exponent;
                FPU_OUT(9 downto 0) <= FPU_OUT_Int.mantissa(9 downto 0);
                
            end if;
            
        end if;
        
        -- Post Processing
        if FPU_OUT_Int.sign = '1' then
            
            BIGGER_ZERO_FLAG <= '0';
            SMALLER_ZERO_FLAG <= '1';
            NOT_ZERO_FLAG <= '1';
            ZERO_FLAG <= '0';
            
         else
         
            BIGGER_ZERO_FLAG <= '1';
            SMALLER_ZERO_FLAG <= '0';
            NOT_ZERO_FLAG <= '1';
            ZERO_FLAG <= '0';
        
        end if;
        
        if FPU_OUT_Int.exponent = "00000" and FPU_OUT_Int.mantissa(9 downto 0) = "0000000000" then
            BIGGER_ZERO_FLAG <= '0';
            SMALLER_ZERO_FLAG <= '0';
            NOT_ZERO_FLAG <= '0';
            ZERO_FLAG <= '1';
        end if;
        
        if FPU_OUT_Int.exponent = "11111" then
            OVERFLOW_FLAG <= '1';
        else
            OVERFLOW_FLAG <= '0';
        end if;
        
        RHO_FLAG <= RHO_PIN;
            
    end process;
    
end Behavioral;