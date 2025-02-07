library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BusSlave is
port (
    mode: in std_logic;
    data: inout std_logic_vector(15 downto 0);
    dataIn: in std_logic_vector(15 downto 0);
    dataOut: out std_logic_vector(15 downto 0)
);
end BusSlave;

architecture BusInterface of BusSlave is
begin
    data <= dataIn when mode = '1' else "ZZZZZZZZZZZZZZZZ";
    dataOut <= data;
end BusInterface;