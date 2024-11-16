----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2024 16:43:36
-- Design Name: 
-- Module Name: TX_UART - Behavioral
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

entity TX_UART is
    generic (
        CLKS_PER_BIT: integer := 10417 -- (clock Frequency) / (Baud Rate)
    );
    Port (
        data_in: std_logic_vector(7 downto 0);
        clk: std_logic
    );
end TX_UART;

architecture Behavioral of TX_UART is
    signal clock_cnt: integer range 0 to CLKS_PER_BIT - 1 := 0;
begin
    clock: process(clk) begin
        if rising_edge(clk) then
            -- increment clocking count
            clock_cnt <= clock_cnt + 1;
            if (clock_cnt = CLKS_PER_BIT - 1) then
                clock_cnt <= 0;
            end if;
        end if;
    end process clock;


end Behavioral;
