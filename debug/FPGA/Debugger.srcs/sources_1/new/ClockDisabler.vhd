----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.11.2024 15:11:19
-- Design Name: 
-- Module Name: ClockDisabler - Behavioral
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

entity ClockDisabler is
    Port (
        InstrExec_CLK_in: in std_logic;
        InstrLoad_CLK_in: in std_logic;
        debug_EN_LOW_ACTIVE: in std_logic;
        
        InstrExec_CLK_out: out std_logic;
        InstrLoad_CLK_out: out std_logic
    );
end ClockDisabler;

architecture Behavioral of ClockDisabler is

begin
    debug: process(debug_EN_LOW_ACTIVE, InstrLoad_CLK_in, InstrExec_CLK_in) begin
        if (debug_EN_LOW_ACTIVE = '1') then
            InstrExec_CLK_out <= InstrExec_CLK_in;
            InstrLoad_CLK_out <= InstrLoad_CLK_in;
        else
            InstrExec_CLK_out <= '1';
            InstrLoad_CLK_out <= '0';
        end if;
    end process debug;


end Behavioral;
