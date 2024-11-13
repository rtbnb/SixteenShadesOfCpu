----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 14:50:41
-- Design Name: 
-- Module Name: Pipelining_Controller - Behavioral
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

entity Pipelining_Controller is
    Port ( InstrLoad_CLK : in STD_LOGIC;
           InstrExec_CLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Instruction : in STD_LOGIC_VECTOR (15 downto 0);
           ResetStall : in STD_LOGIC;
           PC_Count : out STD_LOGIC;
           InstructionForwardConfiguration : out STD_LOGIC_VECTOR (4 downto 0);
           InstructionToExecute : out STD_LOGIC_VECTOR (15 downto 0));
end Pipelining_Controller;

architecture Behavioral of Pipelining_Controller is
    
    component CU_Decoder is
    Port ( Instruction : in STD_LOGIC_VECTOR (15 downto 0);
           Reg1Read : out STD_LOGIC;
           Reg2Read : out STD_LOGIC;
           RF_WHB : out STD_LOGIC;
           RF_WLB : out STD_LOGIC;
           Write_Data_Sel : out STD_LOGIC_VECTOR (1 downto 0);
           RAM_Address_Src : out STD_LOGIC;
           RAM_Read : out STD_LOGIC;
           RAM_Write : out STD_LOGIC;
           JMP : out STD_LOGIC;
           JMP_Conditional : out STD_LOGIC;
           JMP_Relative : out STD_LOGIC;
           JMP_DestinationSource : out STD_LOGIC;
           Is_ALU_OP : out STD_LOGIC;
           Is_RAM_OP : out STD_LOGIC);
    end component CU_Decoder;
    
    component Decoder is
    Port ( Instruction : in STD_LOGIC_VECTOR (15 downto 0);
           Register1 : out STD_LOGIC_VECTOR(3 downto 0);
           Register2 : out STD_LOGIC_VECTOR(3 downto 0);
           WriteBackRegister : out STD_LOGIC_VECTOR(3 downto 0);
           Immediate : out STD_LOGIC_VECTOR(15 downto 0);
           JMP_Condition : out STD_LOGIC_VECTOR(2 downto 0);
           Use_MA : out STD_LOGIC);
    end component Decoder;
    
    
    signal rf_read_buffer, execution_buffer, write_back_buffer, output_buffer : STD_LOGIC_VECTOR(15 downto 0);
    signal stalled : STD_LOGIC := '0';
    signal stall_required : STD_LOGIC;
    
    signal rf_reg_1, rf_reg_2 : STD_LOGIC_VECTOR(3 downto 0);
    signal rf_reg_1_read, rf_reg_2_read, rf_use_ma : STD_LOGIC;
    
    signal exc_write_reg : STD_LOGIC_VECTOR(3 downto 0);
    signal exc_rf_whb, exc_rf_wlb, exc_alu, exc_jmp : STD_LOGIC;
    
    signal reg_1_reads_flags, reg_2_reads_flags, reg_1_reads_exc_results, reg_2_reads_exc_results, ma_reads_exc_results : boolean;
    signal exc_write : boolean;
    constant MA : STD_LOGIC_VECTOR(3 downto 0) := X"a";
    constant FL : STD_LOGIC_VECTOR(3 downto 0) := X"f";
    
    signal input_forward, rf_forward, execution_forward, write_back_forward, output_forward : STD_LOGIC_VECTOR(4 downto 0);
begin
    
    CU_Decoder_RF : CU_Decoder port map(
        Instruction => rf_read_buffer,
        Reg1Read => rf_reg_1_read,
        Reg2Read => rf_reg_2_read
    );
    
    Decoder_RF : Decoder port map(
        Instruction => rf_read_buffer,
        Register1 => rf_reg_1,
        Register2 => rf_reg_2,
        Use_MA => rf_use_ma
    );
    
    CU_Decoder_Exec : CU_Decoder port map(
        Instruction => execution_buffer,
        RF_WHB => exc_rf_whb,
        RF_WLB => exc_rf_wlb,
        JMP => exc_jmp,
        Is_ALU_OP => exc_alu
    );
    
    Decoder_Exec : Decoder port map(
        Instruction => execution_buffer,
        WriteBackRegister => exc_write_reg
    );
    
    
    InstructionToExecute <= output_buffer;
    
    instruction_fetch_shift_register : process(InstrExec_CLK, InstrLoad_CLK, Reset) is
    begin
    if rising_edge(Reset) then
        rf_read_buffer <= X"0000";
        execution_buffer <= X"0000";
        write_back_buffer <= X"0000";
        output_buffer <= X"0000";
    end if;
    if (rising_edge(InstrLoad_CLK)) then
        output_buffer <= write_back_buffer;
        write_back_buffer <= execution_buffer;
        execution_buffer <= rf_read_buffer;
        rf_read_buffer <= Instruction;
    end if;
    if (rising_edge(InstrExec_CLK) and (stalled = '1')) then
        rf_read_buffer <= X"0000";
    end if;
    end process instruction_fetch_shift_Register;
    
    
    staller : process(InstrExec_CLK, Reset, stall_required) is
    begin
    if rising_edge (stall_required) then
        stalled <= '1';
    elsif (rising_edge(Reset) or (rising_edge(InstrExec_CLK) and (ResetStall = '1'))) then
        stalled <= '0';
    end if; 
    end process staller;
    
    PC_Count <= InstrExec_CLK and not stalled;
    
    
    reg_1_reads_flags <= (rf_reg_1_read = '1') and (rf_reg_1 = FL);
    reg_2_reads_flags <= (rf_reg_2_read = '1') and (rf_reg_2 = FL);
    
    reg_1_reads_exc_results <= (rf_reg_1_read = '1') and (rf_reg_1 = exc_write_reg);
    reg_2_reads_exc_results <= (rf_reg_2_read = '1') and (rf_reg_2 = exc_write_reg);
    
    ma_reads_exc_results <= (rf_use_ma = '1') and (exc_write_reg = MA);
    
    exc_write <= (exc_rf_whb or exc_rf_wlb or exc_alu) = '1';
    
    stall_required <= exc_jmp;
    
    input_forward(1 downto 0) <= 
        "11" WHEN ((exc_alu = '1') and reg_1_reads_flags) ELSE
        "10" WHEN (exc_write and reg_1_reads_exc_results) ELSE
        "01";
       
    input_forward(3 downto 2) <=
        "11" WHEN ((exc_alu = '1') and reg_2_reads_flags) ELSE
        "10" WHEN (exc_write and reg_2_reads_exc_results) ELSE
        "01";
    
    input_forward(4) <= '1' WHEN ma_reads_exc_results ELSE '0';
    
    forward_shift_register : process(InstrExec_CLK, Reset) is
    begin
    if rising_edge(Reset) then
        rf_forward <= "00000";
        execution_forward <= "00000"; 
        write_back_forward <= "00000";
        output_forward <= "00000";
    end if;
    if rising_edge(InstrExec_CLK) then
        rf_forward <= input_forward;
        execution_forward <= rf_forward; 
        write_back_forward <= execution_forward;
        output_forward <= write_back_forward;
    end if;
    end process forward_shift_register;
    
    
    InstructionForwardConfiguration <= output_forward;
    
end Behavioral;
