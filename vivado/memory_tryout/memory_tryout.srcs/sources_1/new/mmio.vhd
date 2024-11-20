----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.11.2024 19:50:38
-- Design Name: 
-- Module Name: mmio - Behavioral
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

entity mmio is
    port(
        ck, we, oe: in std_logic;
        addr, din: in std_logic_vector(15 downto 0);
        dout: out std_logic_vector(15 downto 0)
    );


--  Port ( );
end mmio;

architecture Behavioral of mmio is
begin
    with addr select
        dout <= "0000000000000000" when "0000000000000000",
                "0000000000000001" when "0000000000000001",
                "0000000000000010" when "0000000000000010",
                "0000000000000011" when "0000000000000011",
                "0000000000000100" when "0000000000000100",
                "0000000000000000" when others;

end Behavioral;
