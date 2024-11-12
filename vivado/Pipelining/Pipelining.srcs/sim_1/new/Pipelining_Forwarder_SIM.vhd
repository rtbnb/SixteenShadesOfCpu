----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.11.2024 17:21:33
-- Design Name: 
-- Module Name: Pipelining_Forwarder_SIM - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pipelining_Forwarder_SIM is
--  Port ( );
end Pipelining_Forwarder_SIM;

architecture Behavioral of Pipelining_Forwarder_SIM is
    component Pipelining_Forwarder is
        Port ( CurrentOperand1 : in STD_LOGIC_VECTOR (15 downto 0);
               CurrentOperand2 : in STD_LOGIC_VECTOR (15 downto 0);
               CurrentMA : in STD_LOGIC_VECTOR (15 downto 0);
               ExecutionWriteData : in STD_LOGIC_VECTOR (15 downto 0);
               ExecutionFlags : in STD_LOGIC_VECTOR (15 downto 0);
               ForwardingConfiguration : in STD_LOGIC_VECTOR (4 downto 0);
               ForwardedOperand1 : out STD_LOGIC_VECTOR (15 downto 0);
               ForwardedOperand2 : out STD_LOGIC_VECTOR (15 downto 0);
               ForwardedMA : out STD_LOGIC_VECTOR (15 downto 0));
    end component Pipelining_Forwarder;
    
    signal CurrentOperand1, CurrentOperand2, CurrentMA, ExecutionWriteData, ExecutionFlags : STD_LOGIC_VECTOR(15 downto 0);
    signal ForwardingConfiguration : STD_LOGIC_VECTOR(4 downto 0);
    
begin

    EUT : Pipelining_Forwarder port map(
         CurrentOperand1 => CurrentOperand1,
         CurrentOperand2 => CurrentOperand2, 
         CurrentMA => CurrentMA,
         ExecutionWriteData => ExecutionWriteData,
         ExecutionFlags => ExecutionFlags,
         ForwardingConfiguration => ForwardingConfiguration
    );
    
    process is 
    begin
        CurrentOperand1 <= X"0123";
        CurrentOperand2 <= X"42ac";
        CurrentMA <= X"51de";
        ExecutionWriteData <= X"6453";
        ExecutionFlags <= X"abcd";
        FOR i in 0 to 31 loop
            ForwardingConfiguration <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, 5));
            wait for 10 ns;
        end loop;
    end process;

end Behavioral;
