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
    D1: IN std_logic_vector(15 downto 0 ):= (others => '0');
    D2: IN std_logic_vector(15 downto 0 ):= (others => '0');
    ALU_OPP: IN std_logic_vector(3 downto 0 ):= (others => '0');
    RHO_PIN: IN std_logic:= '0';
    ALU_OUT: OUT std_logic_vector(15 downto 0 ):= (others => '0');
    ALU_FLAGS: OUT std_logic_vector(15 downto 0) := (others => '0');
    
    ALU_FLAGS1: OUT signed(16 downto 0) := (others => '0')
 );
end ALU;

architecture ALUBehavioral of ALU is
signal D1Singend: signed(16 downto 0);
signal D2Singend: signed(16 downto 0);
signal ALU_OUT_Internal: std_logic_vector(16 downto 0);

signal temp:  signed(16 downto 0); --Adding using a bit more then needed

begin
    D1Singend <=resize(signed(D1), 17);
    D2Singend <=resize(signed(D2), 17);
    with ((ALU_OPP)) select AlU_OUT_Internal <= 
        std_logic_vector(D1Singend+D2Singend) when "0000", --addtion
        std_logic_vector(D1Singend-D2Singend) when "0001", -- subtraction
        std_logic_vector(shift_left(D1Singend, to_integer(unsigned(D2Singend)))) when "0010", --shift left
        std_logic_vector(shift_right(D1Singend, to_integer(unsigned(D2Singend)))) when "0011", --shift right
        '0' & D1 when "1000", -- identity
        '0' &(D1 AND D2) when "1001", -- and
        '0' &(D1 OR D2) when "1010", -- or
        '0' &(D1 XOR D2) when "1011", -- XOR
        '0' & (not D1) when "1100", -- identity
        '0' &(D1 NAND D2) when "1101", -- and
        '0' &(D1 NOR D2) when "1110", -- or
        '0' &(D1 XNOR D2) when "1111", -- XOR
        
        std_logic_vector(D1Singend+D2Singend) when others;
           
         
    ALU_OUT <= ALU_OUT_Internal(15 downto 0);
     
    ALU_FLAGS(0) <= ALU_OUT_Internal(16);
    
    --zero flag
    with ALU_OUT_Internal(15 downto 0) select
       ALU_FLAGS(1) <= '1' when "0000000000000000",
              '0' when others;
    
    --Non zero flag
    with ALU_OUT_Internal(15 downto 0) select
       ALU_FLAGS(6) <= '0' when "0000000000000000",
              '1' when others;
              
    -- smaller then zero flag
    with ALU_OUT_Internal(15) select
       ALU_FLAGS(2) <= '1' when '1',
              '0' when others;
    
    
    -- bigger then zero flag
    with ALU_OUT_Internal(15) select
       ALU_FLAGS(3) <= '1' when '0',
              '0' when others;
              
     
     -- ALU FLAG: overflow
     ALU_FLAGS(4) <= ((ALU_OPP(0) XOR D2(15)) XNOR D1(15)) AND (D1(15) XOR ALU_OUT_Internal(15));
     
     ALU_FLAGS(5) <= RHO_PIN;
     
    -- ALU_OUT <= ALU_OUT_Internal;
     
end ALUBehavioral;
