----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 14:50:41
-- Design Name: 
-- Module Name: Pipelining_Forwarder - Behavioral
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

entity Pipelining_Forwarder is
    Port ( CurrentOperand1 : in STD_LOGIC_VECTOR (15 downto 0);
           CurrentOperand2 : in STD_LOGIC_VECTOR (15 downto 0);
           CurrentMA : in STD_LOGIC_VECTOR (15 downto 0);
           ExecutionWriteData : in STD_LOGIC_VECTOR (15 downto 0);
           ExecutionFlags : in STD_LOGIC_VECTOR (15 downto 0);
           ForwardingConfiguration : in STD_LOGIC_VECTOR (4 downto 0);
           ForwardedOperand1 : out STD_LOGIC_VECTOR (15 downto 0);
           ForwardedOperand2 : out STD_LOGIC_VECTOR (15 downto 0);
           ForwardedMA : out STD_LOGIC_VECTOR (15 downto 0));
end Pipelining_Forwarder;

architecture Behavioral of Pipelining_Forwarder is
    signal operand_1_sel_s, operand_2_sel_s : STD_LOGIC_VECTOR(1 downto 0);
    signal ma_sel_s : STD_LOGIC; 
begin
    
    operand_1_sel_s <= ForwardingConfiguration(1 downto 0);
    operand_2_sel_s <= ForwardingConfiguration(3 downto 2);
    ma_sel_s <= ForwardingConfiguration(4);
    
    WITH (operand_1_sel_s) SELECT ForwardedOperand1 <=
        CurrentOperand1 WHEN "00",
        CurrentOperand1 WHEN "01",
        ExecutionWriteData WHEN "10",
        ExecutionFlags WHEN "11",
        X"0000" WHEN OTHERS;
        
    WITH (operand_2_sel_s) SELECT ForwardedOperand2 <=
        CurrentOperand2 WHEN "00",
        CurrentOperand2 WHEN "01",
        ExecutionWriteData WHEN "10",
        ExecutionFlags WHEN "11",
        X"0000" WHEN OTHERS;
        
    WITH (ma_sel_s) SELECT ForwardedMA <=
        CurrentMA WHEN '0',
        ExecutionWriteData WHEN '1',
        X"0000" WHEN OTHERS;

end Behavioral;
