----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.11.2024 10:18:06
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
 Port ( 
    D1: IN std_logic_vector(15 downto 0 );
    D2: IN std_logic_vector(15 downto 0 );
    ALU_OPP: IN std_logic_vector(3 downto 0 );
    RHO_PIN: IN std_logic;
    ALU_OUT: OUT std_logic_vector(15 downto 0 );
    ALU_FLAGS: OUT std_logic_vector(15 downto 0 )
 );
end ALU;

architecture ALUBehavioral of ALU is
signal D1Singend: signed(15 downto 0) := (others => '0');
signal D2Singend: signed(15 downto 0) := (others => '0');
signal ALU_OPP_Internal: std_logic_vector(15 downto 0) := (others => '0');


begin
process (ALU_OPP)
--Wrapping in process for testing
begin
    D1Singend <= signed(D1);
    D2Singend <= signed(D2);
    case ALU_OPP is
        when "0000" =>
            -- Adding
            ALU_OPP_Internal <= std_logic_vector(D1Singend+D2Singend);
            
         when "0001" =>
            -- Subtracting
            ALU_OPP_Internal <= std_logic_vector(D1Singend-D2Singend);
         
         when "0010" =>
            -- Shift left
            ALU_OPP_Internal <= std_logic_vector(shift_left(D1Singend, to_integer(unsigned(D2Singend))));
            
         when "0011" =>
            -- Shift right
            ALU_OPP_Internal <= std_logic_vector(shift_right(D1Singend, to_integer(unsigned(D2Singend))));
            
         when "1000" =>
            -- Identity
            ALU_OPP_Internal <= D1;
            
         when "1001" =>
            -- AND
           ALU_OPP_Internal <= D1 AND D2;
           
         when "1010" =>
            -- OR
           ALU_OPP_Internal <= D1 OR D2;           
    
         when "1011" =>
            -- XOR     
           ALU_OPP_Internal <= D1 XOR D2;
    
         when "1100" =>
            -- Neg
            ALU_OPP_Internal <= not D1;
            
         when "1101" =>
            -- NAND 
           ALU_OPP_Internal <= D1 NAND D2;
           
         when "1110" =>
            -- NOR
           ALU_OPP_Internal <= D1 NOR D2;
    
         when "1111" =>
            -- XNOR
           ALU_OPP_Internal <= D1 XNOR D2;
           
         when others =>
            --pass
            -- PANINC
         
     end case;
     
     --TODO: Check carry
     -- Check overflow
     -- Check unconditional
     
     if ALU_OPP_Internal = "0000000000000000" then
     --ALU FLAG: ZERO FLAG
        ALU_FLAGS(1) <= '1';
     else
        --ALU FLAG: Non Zero
        ALU_FLAGS(6) <= '1';
     end if;
     
     if signed(ALU_OPP_Internal) < 0 then
     --ALU FLAG: SMALLER THEN ZERO
        ALU_FLAGS(2) <= '1';
     else
     --ALU FLAG: BIGGER THEN ZERO
        ALU_FLAGS(3) <= '1';
     end if;
     
     ALU_FLAGS(5) <= RHO_PIN;
     
     
end process;

end ALUBehavioral;