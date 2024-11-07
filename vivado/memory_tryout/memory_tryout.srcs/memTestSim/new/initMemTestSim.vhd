----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 09:59:46
-- Design Name: 
-- Module Name: initMemTestSim - Behavioral
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

entity initMemTestSim is
--  Port ( );
end initMemTestSim;

architecture Behavioral of initMemTestSim is
    component main
        port(clk : in std_logic;
            dout1: in std_logic_vector(15 downto 0);
           clka : out std_logic;
           addr1, din1 : out std_logic_vector(15 downto 0));
    end component;
    
    signal clk, clka : std_logic;
    signal addr1, din1, dout1 : std_logic_vector(15 downto 0);
begin
    EUT: main port map(clk => clk, clka => clka, addr1 => addr1, din1 => din1, dout1 => dout1);
    
    process begin
        clk <= '1';
        wait for 100ns;    
        clk <= '0';
        wait for 100ns;
    
    end process;
    


end Behavioral;
