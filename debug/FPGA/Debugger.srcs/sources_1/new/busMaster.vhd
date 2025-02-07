library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BusMaster is
port (
    mode: out std_logic := '0'; -- R: 0, W: 1
    data: inout std_logic_vector(15 downto 0);
    dataOutput: out std_logic_vector(15 downto 0);
    dataIn: in std_logic_vector(15 downto 0) := x"ACAC";
    debugToggle: in std_logic := '0'
);
end BusMaster;

architecture BusInterface of BusMaster is
begin
    data <= dataIn when debugToggle = '1' else "ZZZZZZZZZZZZZZZZ";
    dataOutput <= data;

    mode <= not debugToggle;
end architecture BusInterface;