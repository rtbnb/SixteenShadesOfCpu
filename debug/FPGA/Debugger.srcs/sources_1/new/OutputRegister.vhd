----------------------------------------------------------------------------------
-- Create Date: 16.11.2024 8:23:33
-- Name: Nico Tunkowski
-- Design Name: ShadeCpu
-- Module Name: OutputRegister - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity OutputRegister is
generic(
    nSelAddr: std_logic_vector(7 downto 0) := x"01"
);
port(
    debugClk: in std_logic := '0';
    -- debugData: inout std_logic_vector(15 downto 0);
    debugDataOut: out std_logic_vector(15 downto 0) := (others => '0');
    debugDataIn: in std_logic_vector(15 downto 0);
    debugNSel: in std_logic_vector(7 downto 0);
    -- debugMode: in std_logic;

    nodeDataIn: in std_logic_vector(15 downto 0);
    nodeDataOut: out std_logic_vector(15 downto 0);
    nodeClkOut: out std_logic
);
end OutputRegister;

architecture Behaviour of OutputRegister is
begin
    --debugData <= nodeDataIn when debugMode = '0' else "ZZZZZZZZZZZZZZZZ";
    --nodeDataOut <= debugData;
    debugDataOut <= nodeDataIn when debugNSel = nSelAddr;
    nodeDataOut <= debugDataIn when debugNSel = nSelAddr;

    nodeClkOut <= debugClk;

end architecture Behaviour;