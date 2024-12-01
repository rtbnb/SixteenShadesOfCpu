----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.11.2024 18:52:45
-- Design Name: 
-- Module Name: FloatingPoints - Behavioral
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


package floatingPoints is
 
  -- Outputs from the FIFO.
  type float16 is record
    sign : std_logic;
    exponent : std_logic_vector(4 downto 0 ); 
    mantissa    : std_logic_vector(10 downto 0 );
  end record float16;  
  
end package floatingPoints;