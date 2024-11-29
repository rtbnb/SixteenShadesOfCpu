----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 14:50:41
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: Pipelining_Forwarder - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity Pipelining_Forwarder is
    Port (
        currentOperand1 : in std_logic_vector(15 downto 0);
        currentOperand2 : in std_logic_vector(15 downto 0);
        executionWriteData : in std_logic_vector(15 downto 0);
        executionFlags : in std_logic_vector(15 downto 0);
        forwardingConfiguration : in std_logic_vector(3 downto 0);
        forwardedOperand1 : out std_logic_vector(15 downto 0);
        forwardedOperand2 : out std_logic_vector(15 downto 0)
    );
end entity Pipelining_Forwarder;

architecture Behavioral of Pipelining_Forwarder is
    signal operand1Sel_s, operand2Sel_s : std_logic_vector(1 downto 0);
begin

    operand1Sel_s <= forwardingConfiguration(1 downto 0);
    operand2Sel_s <= forwardingConfiguration(3 downto 2);

    with operand1Sel_s select
        forwardedOperand1 <= currentOperand1 when "00",
                             currentOperand1 when "01",
                             executionWriteData when "10",
                             executionFlags when "11",
                             X"0000" when others;

    with operand2Sel_s select
        forwardedOperand2 <= currentOperand2 when "00",
                             currentOperand2 when "01",
                             executionWriteData when "10",
                             executionFlags when "11",
                             X"0000" when others;

end architecture Behavioral;