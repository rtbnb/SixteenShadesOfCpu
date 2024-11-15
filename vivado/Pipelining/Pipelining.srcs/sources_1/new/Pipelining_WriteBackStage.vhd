----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 14:50:40
-- Design Name: 
-- Module Name: Pipelining_WriteBackStage - Behavioral
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

entity Pipelining_WriteBackStage is
    Port ( InstrLoad_CLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           WriteAddress : in STD_LOGIC_VECTOR (3 downto 0);
           WriteData : in STD_LOGIC_VECTOR (15 downto 0);
           Flags : in STD_LOGIC_VECTOR (15 downto 0);
           WHB : in STD_LOGIC;
           WLB : in STD_LOGIC;
           Is_ALU_OP : in STD_LOGIC;
           JMP : in STD_LOGIC;
           WriteAddress_out : out STD_LOGIC_VECTOR (3 downto 0);
           WriteData_out : out STD_LOGIC_VECTOR (15 downto 0);
           Flags_out : out STD_LOGIC_VECTOR (15 downto 0);
           RF_WE_out : out STD_LOGIC;
           Is_ALU_OP_out : out STD_LOGIC;
           JMP_out : out STD_LOGIC);
end Pipelining_WriteBackStage;

architecture Behavioral of Pipelining_WriteBackStage is
    signal rf_we_s, is_alu_op_s, jmp_s : STD_LOGIC := '0'; 
    signal write_address_s : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal write_data_s, flags_s : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
begin
    
    latcher:process(InstrLoad_CLK, Reset) is
    begin
    if (Reset = '1') then
        rf_we_s <= '0';
        is_alu_op_s <= '0';
        jmp_s <= '0';
        write_address_s <= X"0";
        write_data_s <= X"0000";
        flags_s <= X"0000";        
    elsif (rising_edge(InstrLoad_CLK)) then
        rf_we_s <= WHB or WLB;
        is_alu_op_s <= Is_ALU_OP;
        jmp_s <= JMP;
        write_address_s <= WriteAddress;
        write_data_s <= WriteData;
        flags_s <= Flags;        
    end if;
    end process latcher;
    
    
    WriteAddress_out <= write_address_s;
    WriteData_out <= write_data_s;
    Flags_out <= flags_s;
    
    RF_WE_out <= rf_we_s;
    Is_ALU_OP_out <= is_alu_op_s;
    JMP_out <= jmp_s;

end Behavioral;