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

entity Pipelining_ExecutionStage_SIM is
--  Port ( );
end Pipelining_ExecutionStage_SIM;

architecture Behavioral of Pipelining_ExecutionStage_SIM is

    component Pipelining_ExecutionStage is
        Port ( InstrLoad_CLK : in STD_LOGIC;
               Reset : in STD_LOGIC;
               Operand1 : in STD_LOGIC_VECTOR (15 downto 0);
               Operand2 : in STD_LOGIC_VECTOR (15 downto 0);
               Immediate : in STD_LOGIC_VECTOR (15 downto 0);
               MA : in STD_LOGIC_VECTOR (15 downto 0);
               WriteAddress : in STD_LOGIC_VECTOR (3 downto 0);
               WHB : in STD_LOGIC;
               WLB : in STD_LOGIC;
               WriteDataSel : in STD_LOGIC_VECTOR (1 downto 0);
               RAM_Src : in STD_LOGIC;
               RAM_Read : in STD_LOGIC;
               RAM_Write : in STD_LOGIC;
               Use_MA : in STD_LOGIC;
               JMP : in STD_LOGIC;
               JMP_Conditional : in STD_LOGIC;
               JMP_Relative : in STD_LOGIC;
               JMP_DestinationSelect : in STD_LOGIC;
               JMP_Condition : in STD_LOGIC_VECTOR (2 downto 0);
               Is_ALU_OP : in STD_LOGIC;
               Is_RAM_OP : in STD_LOGIC;
               Operand1_out : out STD_LOGIC_VECTOR (15 downto 0);
               Operand2_out : out STD_LOGIC_VECTOR (15 downto 0);
               Immediate_out : out STD_LOGIC_VECTOR (15 downto 0);
               MA_out : out STD_LOGIC_VECTOR (15 downto 0);
               WriteAddress_out : out STD_LOGIC_VECTOR (3 downto 0);
               WHB_out : out STD_LOGIC;
               WLB_out : out STD_LOGIC;
               WriteDataSel_out : out STD_LOGIC_VECTOR (1 downto 0);
               RAM_Src_out : out STD_LOGIC;
               RAM_Read_out : out STD_LOGIC;
               RAM_Write_out : out STD_LOGIC;
               Use_MA_out : out STD_LOGIC;
               JMP_out : out STD_LOGIC;
               JMP_Conditional_out : out STD_LOGIC;
               JMP_Relative_out : out STD_LOGIC;
               JMP_DestinationSelect_out : out STD_LOGIC;
               JMP_Condition_out : out STD_LOGIC_VECTOR (2 downto 0);
               IS_ALU_OP_out : out STD_LOGIC;
               Is_RAM_OP_out : out STD_LOGIC);
    end component Pipelining_ExecutionStage;
    
    signal InstrLoad_CLK, Reset : STD_LOGIC;
    signal Operand1, Operand2, Immediate, MA : STD_LOGIC_VECTOR(15 downto 0);
    signal WriteAddress : STD_LOGIC_VECTOR(3 downto 0);
    signal WriteDataSel : STD_LOGIC_VECTOR(1 downto 0);
    signal JMP_Condition : STD_LOGIC_VECTOR(2 downto 0);
    signal WHB, WLB, RAM_Src, RAM_Read, RAM_Write, Use_MA, JMP, JMP_Conditional, JMP_Relative, JMP_DestinationSelect, Is_ALU_OP, Is_RAM_OP : STD_LOGIC;
begin

    EUT : Pipelining_ExecutionStage port map(
        InstrLoad_CLK => InstrLoad_CLK,
        Reset => Reset,
        Operand1 => Operand1,
        Operand2 => Operand2,
        Immediate => Immediate,
        MA => MA, 
        WriteAddress => WriteAddress,
        WHB => WHB,
        WLB => WLB,
        WriteDataSel => WriteDataSel,
        RAM_Src => RAM_Src,
        RAM_Read => RAM_Read,
        RAM_Write => RAM_Write,
        Use_MA => Use_MA,
        JMP => JMP,
        JMP_Conditional => JMP_Conditional,
        JMP_Relative => JMP_Relative,
        JMP_DestinationSelect => JMP_DestinationSelect,
        JMP_Condition => JMP_Condition,
        Is_ALU_OP => Is_ALU_OP,
        Is_RAM_OP => Is_RAM_OP
    );

    process is
    begin
        Operand1 <= X"12c1";
        Operand2 <= X"acd1";
        Immediate <= X"c321";
        MA <= X"42ac";
        WriteAddress <= X"f";
        WHB <= '1';
        WLB <= '1';
        WriteDataSel <= "01";
        RAM_Src <= '1';
        RAM_Read <= '0';
        RAM_Write <= '1';
        Use_MA <= '0';
        JMP <= '1';
        JMP_Conditional <= '1';
        JMP_Relative <= '1';
        JMP_DestinationSelect <= '0';
        JMP_Condition <= "111";
        Is_ALU_OP <= '1';
        Is_RAM_OP <= '1';
        wait for 20 ns;
        
        Operand1 <= X"fc21";
        Operand2 <= X"654c";
        Immediate <= X"9762";
        MA <= X"423e";
        WriteAddress <= X"e";
        WHB <= '0';
        WLB <= '1';
        WriteDataSel <= "11";
        RAM_Src <= '0';
        RAM_Read <= '1';
        RAM_Write <= '0';
        Use_MA <= '0';
        JMP <= '0';
        JMP_Conditional <= '0';
        JMP_Relative <= '1';
        JMP_DestinationSelect <= '1';
        JMP_Condition <= "111";
        Is_ALU_OP <= '0';
        Is_RAM_OP <= '0';
        wait for 20 ns;
        
        Operand1 <= X"756a";
        Operand2 <= X"ce32";
        Immediate <= X"fe62";
        MA <= X"32de";
        WriteAddress <= X"f";
        WHB <= '1';
        WLB <= '0';
        WriteDataSel <= "00";
        RAM_Src <= '1';
        RAM_Read <= '1';
        RAM_Write <= '1';
        Use_MA <= '0';
        JMP <= '0';
        JMP_Conditional <= '1';
        JMP_Relative <= '1';
        JMP_DestinationSelect <= '0';
        JMP_Condition <= "001";
        Is_ALU_OP <= '1';
        Is_RAM_OP <= '0';
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
