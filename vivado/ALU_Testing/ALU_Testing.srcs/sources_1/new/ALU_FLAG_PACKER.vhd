----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2024 13:42:50
-- Design Name: 
-- Module Name: ALU_FLAG_PACKER - Behavioral
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

entity ALU_FLAG_PACKER is
    Port(
        CARRY_FLAG: IN STD_LOGIC:= '0';
        ZERO_FLAG: IN STD_LOGIC:= '0';
        SMALLER_ZERO_FLAG: IN STD_LOGIC:= '0';
        BIGGER_ZERO_FLAG: IN STD_LOGIC:= '0';
        OVERFLOW_FLAG: IN STD_LOGIC:= '0';
        RHO_FLAG: IN STD_LOGIC:= '0';
        NOT_ZERO_FLAG: IN STD_LOGIC:= '0';
        ALU_FLAGS: OUT std_logic_vector(15 downto 0) := (others => '0')
    );
end ALU_FLAG_PACKER;

architecture Behavioral of ALU_FLAG_PACKER is

begin
    ALU_FLAGS(0) <= CARRY_FLAG;
    ALU_FLAGS(1) <= ZERO_FLAG;
    ALU_FLAGS(2) <= SMALLER_ZERO_FLAG;
    ALU_FLAGS(3) <= BIGGER_ZERO_FLAG;
    ALU_FLAGS(4) <= OVERFLOW_FLAG;
    ALU_FLAGS(5) <= RHO_FLAG;
    ALU_FLAGS(6) <= NOT_ZERO_FLAG;


end Behavioral;
