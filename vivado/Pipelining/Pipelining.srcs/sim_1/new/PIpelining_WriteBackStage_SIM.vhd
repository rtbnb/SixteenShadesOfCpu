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

entity Pipelining_WriteBackStage_SIM is
--  Port ( );
end Pipelining_WriteBackStage_SIM;

architecture Behavioral of Pipelining_WriteBackStage_SIM is
    component Pipelining_WriteBackStage is
        Port ( InstrLoad_CLK : in STD_LOGIC;
               Reset : in STD_LOGIC;
               WriteAddress : in STD_LOGIC_VECTOR (15 downto 0);
               WriteData : in STD_LOGIC_VECTOR (15 downto 0);
               Flags : in STD_LOGIC_VECTOR (15 downto 0);
               WHB : in STD_LOGIC;
               WLB : in STD_LOGIC;
               Is_ALU_OP : in STD_LOGIC;
               JMP : in STD_LOGIC;
               WriteAddress_out : out STD_LOGIC_VECTOR (15 downto 0);
               WriteData_out : out STD_LOGIC_VECTOR (15 downto 0);
               Flags_out : out STD_LOGIC_VECTOR (15 downto 0);
               WHB_out : out STD_LOGIC;
               WLB_out : out STD_LOGIC;
               Is_ALU_OP_out : out STD_LOGIC;
               JMP_out : out STD_LOGIC);
    end component Pipelining_WriteBackStage;
    
    
    signal InstrLoad_CLK, Reset, WHB, WLB, Is_ALU_OP, JMP : STD_LOGIC;
    signal WriteAddress, WriteData, Flags : STD_LOGIC_VECTOR(15 downto 0);
    
begin
    
    EUT : Pipelining_WriteBackStage port map(
        InstrLoad_CLK => InstrLoad_CLK,
        Reset => Reset,
        WriteAddress => WriteAddress,
        WriteData => WriteData,
        Flags => Flags,
        WHB => WHB,
        WLB => WLB,
        Is_ALU_OP => Is_ALU_OP,
        JMP => JMP
    );
    
    process is
    begin
        WriteAddress <= X"0123";
        WriteData <= X"31ac";
        Flags <= X"a2c2";
        WHB <= '1';
        WLB <= '0';
        Is_ALU_OP <= '1';
        JMP <= '1';
        
        wait for 20 ns;
        
        WriteAddress <= X"97cd";
        WriteData <= X"312a";
        Flags <= X"875a";
        WHB <= '0';
        WLB <= '1';
        Is_ALU_OP <= '1';
        JMP <= '1';
        
        wait for 20 ns;
        
        WriteAddress <= X"fca1";
        WriteData <= X"ace2";
        Flags <= X"5742";
        WHB <= '0';
        WLB <= '1';
        Is_ALU_OP <= '0';
        JMP <= '0';
        
        wait for 20 ns;
        
        WriteAddress <= X"abcd";
        WriteData <= X"ef32";
        Flags <= X"7423";
        WHB <= '1';
        WLB <= '0';
        Is_ALU_OP <= '0';
        JMP <= '0';
        
        wait for 20 ns;
        
        
        
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
        wait for 1000 ns;
        Reset <= '1';
        wait for 10 ns;
    end process;


end Behavioral;
