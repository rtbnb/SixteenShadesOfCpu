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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pipelining_Controller_SIM is
--  Port ( );
end Pipelining_Controller_SIM;

architecture Behavioral of Pipelining_Controller_SIM is
    component Pipelining_Controller is
        Port ( InstrLoad_CLK : in STD_LOGIC;
               InstrExec_CLK : in STD_LOGIC;
               Reset : in STD_LOGIC;
               Instruction : in STD_LOGIC_VECTOR (15 downto 0);
               ResetStall : in STD_LOGIC;
               PC_Count : out STD_LOGIC;
               InstructionForwardConfiguration : out STD_LOGIC_VECTOR (4 downto 0);
               InstructionToExecute : out STD_LOGIC_VECTOR (15 downto 0));
    end component Pipelining_Controller;
    
    signal InstrLoad_CLK, InstrExec_CLK, Reset : STD_LOGIC;
    signal Instruction : STD_LOGIC_VECTOR(15 downto 0);
    signal ResetStall : STD_LOGIC;
    
begin
    
    EUT : Pipelining_Controller port map(
        InstrLoad_CLK => InstrLoad_CLK,
        InstrExec_CLK => InstrExec_CLK,
        Reset => Reset,
        Instruction => Instruction,
        ResetStall => ResetStall
    );
    
    InstrExec_CLK <= not InstrLoad_CLK;

    process is
    begin
        Instruction <= X"0000";
        ResetStall <= '0';
        wait for 15 ns;
        Instruction <= X"4000";
        wait for 20 ns;
        Instruction <= X"5000";
        wait for 20 ns;
        Instruction <= X"4101";
        wait for 20 ns;
        Instruction <= X"5100";
        wait for 20 ns;
        Instruction <= X"4300";
        wait for 20 ns;
        Instruction <= X"5300";
        wait for 20 ns;
        Instruction <= X"4401";
        wait for 20 ns;
        Instruction <= X"5400";
        wait for 20 ns;
        Instruction <= X"e200";
        wait for 20 ns;
        Instruction <= X"e001";
        wait for 20 ns;
        Instruction <= X"7230";
        wait for 20 ns;
        Instruction <= X"1002";
        wait for 20 ns;
        Instruction <= X"8005";
        wait for 20 ns;
        Instruction <= X"e10e";
        wait for 105 ns;
        ResetStall <= '1';
        wait for 10 ns;
        ResetStall <= '0';
        wait for 200 ns;
        
    end process;
    
    process is
    begin
        InstrLoad_CLK <= '0';
        wait for 10 ns;
        InstrLoad_CLK <= '1';
        wait for 10 ns;
    end process;
    
    process is
    begin
        Reset <= '0';
        wait for 20 ns;
        Reset <= '1';
        wait for 10 ns;
        Reset <= '0';
        wait for 370 ns;
    end process;

end Behavioral;
