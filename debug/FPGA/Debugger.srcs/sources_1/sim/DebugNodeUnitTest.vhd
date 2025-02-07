----------------------------------------------------------------------------------
-- Create Date: 30.10.2025 14:19:00
-- Name: Nico Tunkowski
-- Design Name: ShadeCpu
-- Module Name: DebuggerNodeUnitTest - Unit Test
-- Project Name: ShadeCpu-2
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity DebuggerNodeUnitTest is

end DebuggerNodeUnitTest;

architecture Behavioral of DebuggerNodeUnitTest is
    component Debugger is
    port (
        clk: in std_logic;
        rxData: in std_logic_vector(7 downto 0);
        rxDataValid: in std_logic;

        txData: out std_logic_vector(7 downto 0);
        txDataValid: out std_logic;
        txDataSended: in std_logic;

        nsel: out std_logic_vector(7 downto 0);
        debugBufferClk: out std_logic := '0';
        data: inout std_logic_vector((2 * 8) - 1 downto 0) := (others => 'Z');
        mode: out std_logic;

        -- architecture specific Shade 1
        debugEnable: out std_logic := '0'
    );
    end component Debugger;
begin
end Behavioral;