
----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 14:50:41
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: Pipelining_Controller - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;



entity Pipelining_Controller is
    Port (
        loadClk : in std_logic;
        instruction : in std_logic_vector (15 downto 0);
        reset : in std_logic;
        resolveStall : in std_logic;
        stalled : out std_logic;
        instructionForwardConfiguration : out std_logic_vector (3 downto 0);
        instructionToExecute : out std_logic_vector (15 downto 0)
    );
end entity Pipelining_Controller;

architecture Behavioral of Pipelining_Controller is
    
    component CU_Decoder is
        Port (
            instruction : in std_logic_vector(15 downto 0);
            reg1Read : out std_logic;
            reg2Read : out std_logic;
            rfWHB : out std_logic;
            rfWLB : out std_logic;
            writeDataSelect : out std_logic_vector(1 downto 0);
            ramAddressSrc : out std_logic;
            ramRead : out std_logic;
            ramWrite : out std_logic;
            jmp : out std_logic;
            jmpConditional : out std_logic;
            jmpRelative : out std_logic;
            jmpDestinationSource : out std_logic;
            isALUOp : out std_logic;
            isRAMOp : out std_logic;
            isGPUOp : out std_logic
        );
    end component CU_Decoder;
    
    component Decoder is
        Port (
            instruction : in std_logic_vector(15 downto 0);
            register1 : out std_logic_vector(3 downto 0);
            register2 : out std_logic_vector(3 downto 0);
            writeBackRegister : out std_logic_vector(3 downto 0);
            immediate : out std_logic_vector(15 downto 0);
            jmpCondition : out std_logic_vector(2 downto 0)
        );
    end component Decoder;
    
    
    signal rf_read_buffer_s, execution_buffer_s, write_back_buffer_s, output_buffer_s : std_logic_vector(15 downto 0);
    signal stalled_s : std_logic := '0';
    signal stall_required_s : std_logic;
    
    signal rf_reg_1_s, rf_reg_2_s : std_logic_vector(3 downto 0);
    signal rf_reg_1_read_s, rf_reg_2_read_s, rf_jmp_s : std_logic;
    
    signal exc_write_reg_s : std_logic_vector(3 downto 0);
    signal exc_rf_whb_s, exc_rf_wlb_s, exc_alu_s : std_logic;
    
    signal reg_1_reads_flags_s, reg_2_reads_flags_s, reg_1_reads_exc_results_s, reg_2_reads_exc_results_s : boolean;
    signal exc_write_s : boolean;
    constant FL : std_logic_vector(3 downto 0) := X"f";
    
    signal taking_data_s : boolean := false;
    
    signal input_forward_s, rf_forward_s, execution_forward_s, write_back_forward_s, output_forward_s : std_logic_vector(3 downto 0);
    
    signal ram_stall_s : std_logic;
    signal ram_stall_reset_s : std_logic;
    signal jmp_stalled_s : std_logic;
    signal ram_stalled_s : std_logic;
    
    signal rf_read_buffer_write_data_s : std_logic_vector(15 downto 0);
begin

    
    CU_Decoder_RF : CU_Decoder port map(
        instruction => rf_read_buffer_s,
        reg1Read => rf_reg_1_read_s,
        reg2Read => rf_reg_2_read_s,
        ramRead => ram_stall_s,
        jmp => rf_jmp_s
    );
    
    Decoder_RF : Decoder port map(
        instruction => rf_read_buffer_s,
        register1 => rf_reg_1_s,
        register2 => rf_reg_2_s
    );
    
    CU_Decoder_Exec : CU_Decoder port map(
        instruction => execution_buffer_s,
        rfWHB => exc_rf_whb_s,
        rfWLB => exc_rf_wlb_s,
        ramRead => ram_stall_reset_s,
        isALUOp => exc_alu_s
    );
    
    Decoder_Exec : Decoder port map(
        instruction => execution_buffer_s,
        writeBackRegister => exc_write_reg_s
    );
    
    
    instructionToExecute <= output_buffer_s;
    
    start_guard : process(loadClk, reset) is
    begin
        if (reset = '1') then
            taking_data_s <= false;
        elsif falling_edge(loadClk) then
            taking_data_s <= true;
        end if;
    end process start_guard;
    
    with stalled_s select
        rf_read_buffer_write_data_s <= X"0000"      when '1',
                                       instruction  when others;
        
    
    
    instruction_fetch_shift_register : process(loadClk, reset, stalled_s) is
    begin
        if (reset = '1') then
            rf_read_buffer_s <= X"0000";
            execution_buffer_s <= X"0000";
            write_back_buffer_s <= X"0000";
            output_buffer_s <= X"0000";
        elsif (rising_edge(loadClk) and taking_data_s) then
            output_buffer_s <= write_back_buffer_s;
            write_back_buffer_s <= execution_buffer_s;
            execution_buffer_s <= rf_read_buffer_s;
            rf_read_buffer_s <= rf_read_buffer_write_data_s;
        end if;
    end process instruction_fetch_shift_register;
    
    
    staller : process(loadClk, reset, stall_required_s) is
    begin
        if (reset = '1') then
            jmp_stalled_s <= '0';
        elsif (falling_edge(loadClk)) then
            if (stall_required_s = '1') then
                jmp_stalled_s <= '1';
            elsif (resolveStall = '1') then
                jmp_stalled_s <= '0';
            else
                jmp_stalled_s <= jmp_stalled_s;
            end if;
        end if;
    end process staller;
    
    staller2 : process(loadClk, reset, ram_stall_s) is
    begin
        if (reset = '1') then
            ram_stalled_s <= '0';
        elsif (falling_edge(loadClk)) then
            if (ram_stall_s = '1') then
                ram_stalled_s <= '1';
            elsif (ram_stall_reset_s = '1') then
                ram_stalled_s <= '0';
            else
                ram_stalled_s <= ram_stalled_s;
            end if;
        end if;
    end process staller2;
    
    stalled_s <= ram_stalled_s or jmp_stalled_s;
    stalled_s <= stalled_s ;
    
    
    reg_1_reads_flags_s <= (rf_reg_1_read_s = '1') and (rf_reg_1_s = FL);
    reg_2_reads_flags_s <= (rf_reg_2_read_s = '1') and (rf_reg_2_s = FL);
    
    reg_1_reads_exc_results_s <= (rf_reg_1_read_s = '1') and (rf_reg_1_s = exc_write_reg_s);
    reg_2_reads_exc_results_s <= (rf_reg_2_read_s = '1') and (rf_reg_2_s = exc_write_reg_s);
    
    
    exc_write_s <= (exc_rf_whb_s or exc_rf_wlb_s or exc_alu_s) = '1';
    
    stall_required_s <= rf_jmp_s;
    
    input_forward_s(1 downto 0) <= "11" when ((exc_alu_s = '1') and reg_1_reads_flags_s) else
                                   "10" when (exc_write_s and reg_1_reads_exc_results_s) else
                                   "01";
       
    input_forward_s(3 downto 2) <= "11" when ((exc_alu_s = '1') and reg_2_reads_flags_s) else
                                   "10" when (exc_write_s and reg_2_reads_exc_results_s) else
                                   "01";
    
    
    forward_shift_register : process(loadClk, reset) is
    begin
        if (reset = '1') then
            rf_forward_s <= "0000";
            execution_forward_s <= "0000";
            write_back_forward_s <= "0000";
            output_forward_s <= "0000";
        elsif falling_edge(loadClk) then
            rf_forward_s <= input_forward_s;
            execution_forward_s <= rf_forward_s;
            write_back_forward_s <= execution_forward_s;
            output_forward_s <= write_back_forward_s;
        end if;
    end process forward_shift_register;
    
    
    instructionForwardConfiguration <= output_forward_s;
    
end architecture Behavioral;