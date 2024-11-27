----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.11.2024 08:40:44
-- Design Name: 
-- Module Name: instr2Led - Behavioral
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

entity instr2Led is
    Port ( IRAM_Dout : in STD_LOGIC_VECTOR (15 downto 0);
           led0 : out STD_LOGIC;
           led1 : out STD_LOGIC;
           led2 : out STD_LOGIC;
           led3 : out STD_LOGIC);
end instr2Led;

architecture Behavioral of instr2Led is

begin
    
    led0 <= IRAM_Dout(12);
    led1 <= IRAM_Dout(13);
    led2 <= IRAM_Dout(14);
    led3 <= IRAM_Dout(15);

end Behavioral;
