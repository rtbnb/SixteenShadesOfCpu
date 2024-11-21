----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 14:50:41
-- Design Name: 
-- Module Name: Pipelining_ExecutionStage - Behavioral
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

entity Pipelining_ExecutionStage is
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
           RAM_BankID : in STD_LOGIC_VECTOR (3 downto 0);
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
           RAM_BankID_out : out STD_LOGIC_VECTOR (3 downto 0);
           Use_MA_out : out STD_LOGIC;
           JMP_out : out STD_LOGIC;
           JMP_Conditional_out : out STD_LOGIC;
           JMP_Relative_out : out STD_LOGIC;
           JMP_DestinationSelect_out : out STD_LOGIC;
           JMP_Condition_out : out STD_LOGIC_VECTOR (2 downto 0);
           IS_ALU_OP_out : out STD_LOGIC;
           Is_RAM_OP_out : out STD_LOGIC);
end Pipelining_ExecutionStage;
architecture Behavioral of Pipelining_ExecutionStage is
    signal operand1_s, operand2_s, immediate_s, ma_s : STD_LOGIC_VECTOR(15 downto 0);
    signal write_address_s : STD_LOGIC_VECTOR(3 downto 0);
    signal whb_s, wlb_s, ram_src_s, ram_read_s, ram_write_s, use_ma_s, jmp_s, jmp_conditional_s, jmp_relative_s, jmp_destination_sel_s, is_alu_op_s, is_ram_op_s : STD_LOGIC;
    signal write_data_select_s : STD_LOGIC_VECTOR(1 downto 0);
    signal jmp_condition_s : STD_LOGIC_VECTOR(2 downto 0);
    signal bank_id_s : STD_LOGIC_VECTOR (3 downto 0);
begin

    latcher:process(InstrLoad_CLK, Reset) is
    begin
    if (Reset = '1') then
        operand1_s <= X"0000";
        operand2_s <= X"0000";
        immediate_s <= X"0000";
        ma_s <= X"0000";
        write_address_s <= X"0";
        whb_s <= '0';
        wlb_s <= '0';
        write_data_select_s <= "00";
        ram_src_s <= '0';
        ram_read_s <= '0';
        ram_write_s <= '0';
        bank_id_s <= "0000";
        use_ma_s <= '0';
        jmp_s <= '0';
        jmp_conditional_s <= '0';
        jmp_relative_s <= '0';
        jmp_destination_sel_s <= '0';
        jmp_condition_s <= "000";
        is_alu_op_s <= '0';
        is_ram_op_s <= '0';
    elsif rising_edge(InstrLoad_CLK) then
        operand1_s <= Operand1;
        operand2_s <= Operand2;
        immediate_s <= Immediate;
        ma_s <= MA;
        write_address_s <= WriteAddress;
        whb_s <= WHB;
        wlb_s <= WLB;
        write_data_select_s <= WriteDataSel;
        ram_src_s <= RAM_Src;
        ram_read_s <= RAM_Read;
        ram_write_s <= RAM_Write;
        bank_id_s <= RAM_BankID;
        use_ma_s <= Use_MA;
        jmp_s <= JMP;
        jmp_conditional_s <= JMP_Conditional;
        jmp_relative_s <= JMP_Relative;
        jmp_destination_sel_s <= JMP_DestinationSelect;
        jmp_condition_s <= JMP_Condition;
        is_alu_op_s <= Is_ALU_OP;
        is_ram_op_s <= Is_RAM_OP;
    end if;
    end process latcher;
    
    Operand1_out <= operand1_s;
    Operand2_out <= operand2_s;
    Immediate_out <= immediate_s;
    MA_out <= ma_s;
    WriteAddress_out <= write_address_s;
    WHB_out <= whb_s;
    WLB_out <= wlb_s;
    WriteDataSel_out <= write_data_select_s;
    RAM_Src_out <= ram_src_s;
    RAM_Read_out <= ram_read_s;
    RAM_Write_out <= ram_write_s;
    RAM_BankID_out <= bank_id_s;
    Use_MA_out <= use_ma_s;
    JMP_out <= jmp_s;
    JMP_Conditional_out <= jmp_conditional_s;
    JMP_Relative_out <= jmp_relative_s;
    JMP_DestinationSelect_out <= jmp_destination_sel_s;
    JMP_Condition_out <= jmp_condition_s;
    IS_ALU_OP_out <= is_alu_op_s;
    Is_RAM_OP_out <= is_ram_op_s;

end Behavioral;