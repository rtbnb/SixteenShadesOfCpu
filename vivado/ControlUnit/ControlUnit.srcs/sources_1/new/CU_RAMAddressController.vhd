----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 12:03:04
-- Design Name: 
-- Module Name: CU_RAMAddressController - Behavioral
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

entity CU_RAMAddressController is
    Port ( Reg2 : in STD_LOGIC_VECTOR (15 downto 0);
           Immediate : in STD_LOGIC_VECTOR (15 downto 0);
           RAM_Address_Src : in STD_LOGIC;
           RAM_Address : out STD_LOGIC_VECTOR (15 downto 0));
end CU_RAMAddressController;

architecture Behavioral of CU_RAMAddressController is
begin
    WITH RAM_Address_Src SELECT RAM_Address <=
        Reg2 WHEN '0',
        Immediate WHEN '1',
        X"0000" WHEN OTHERS;

end Behavioral;