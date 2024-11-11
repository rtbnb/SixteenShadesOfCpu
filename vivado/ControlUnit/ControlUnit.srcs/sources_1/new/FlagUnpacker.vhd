----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2024 17:47:27
-- Design Name: 
-- Module Name: FlagUnpacker - Behavioral
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

entity FlagUnpacker is
    Port ( Flags : in STD_LOGIC_VECTOR (15 downto 0);
           CarryFlag : out STD_LOGIC;
           ZeroFlag : out STD_LOGIC;
           SmallerZeroFlag : out STD_LOGIC;
           BiggerZeroFlag : out STD_LOGIC;
           OverflowFlag : out STD_LOGIC;
           RhoFlag : out STD_LOGIC);
end FlagUnpacker;

architecture Behavioral of FlagUnpacker is

begin
    
    CarryFlag <= Flags(0);
    ZeroFlag <= Flags(1);
    SmallerZeroFlag <= Flags(2);
    BiggerZeroFlag <= Flags(3);
    OverflowFlag <= Flags(4);
    RhoFlag <= Flags(5);
    

end Behavioral;
