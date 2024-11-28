----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.11.2024 12:24:33
-- Design Name: 
-- Module Name: Debugger - Behavioral
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

entity Debugger is
    Port (
        clk: in std_logic;
    
        rx_data: in std_logic_vector(7 downto 0);
        rx_data_valid: in std_logic;
        
        tx_data: out std_logic_vector(7 downto 0);
        tx_data_valid: out std_logic;
        tx_data_sended: in std_logic;
        
        -- debug enable
        debug_enable: out std_logic := '0';
        cc_debug_mock_clk: out std_logic := '0';
        cc_debug_reset: out std_logic := '0';
        
        -- monitoring signals
        -- pipeline
        pipeline_stalled: in std_logic;
        pipeline_instruction_forwarding_config: in std_logic_vector(4 downto 0);
        pipeline_current_instruction: in std_logic_vector(15 downto 0);
        pipeline_operand_1, pipeline_operand_2: in std_logic_vector(15 downto 0);
        pipeline_rf_read_buf: in std_logic_vector(15 downto 0);
        pipeline_jmp: in std_logic;
        pipeline_jmp_conditional: in std_logic;
        pipeline_jmp_relative: in std_logic;
        pipeline_jmp_destination_select: in std_logic;
        pipeline_jmp_condition: in std_logic_vector(2 downto 0);
        pipeline_taking_data: in std_logic;
        --pipeline_immediate: in std_logic_vector(15 downto 0);
        --pipeline_write_address: in std_logic_vector(3 downto 0);
        --pipeline_whb: in std_logic;
        --pipeline_wlb: in std_logic;
        pipeline_write_data_sel: in std_logic_vector(1 downto 0);
        pipeline_ram_src: in std_logic;
        pipeline_ram_read: in std_logic;
        pipeline_ram_write: in std_logic;
        pipeline_ram_bankid: in std_logic_vector(3 downto 0);
        --pipeline_is_alu_op: in std_logic;
        --pipeline_is_ram_op: in std_logic;
        --pipeline_is_gpu_op: in std_logic;
        
        -- program counter
        pc_din: in std_logic_vector(15 downto 0);
        pc_dout: in std_logic_vector(15 downto 0);
        pc_current_addr: in std_logic_vector(15 downto 0);
        
        -- ALU
        alu_din1: in std_logic_vector(15 downto 0);  
        alu_din2: in std_logic_vector(15 downto 0);
        alu_out: in std_logic_vector(15 downto 0);
        alu_flags: in std_logic_vector(15 downto 0);
        alu_op: in std_logic_vector(15 downto 0);
        
        -- Register File
        regfile_addr_reg1: in std_logic_vector(3 downto 0);
        regfile_addr_reg2: in std_logic_vector(3 downto 0);
        regfile_addr_write_reg: in std_logic_vector(3 downto 0);
        regfile_write_enable: in std_logic;
        regfile_overwrite_flag: in std_logic;
        regfile_write_data: in std_logic_vector(15 downto 0);
        regfile_reg1_data: in std_logic_vector(15 downto 0);
        regfile_reg2_data: in std_logic_vector(15 downto 0);
        regfile_bankid: in std_logic_vector(3 downto 0);
              
        
        -- mmu
        mmu_debug_clk: out std_logic := '0';
        mmu_debug_override_en: out std_logic := '0';
        mmu_debug_addr: out std_logic_vector(15 downto 0) := x"0000";
        mmu_debug_din: out std_logic_vector(15 downto 0) := x"0000";
        mmu_debug_bank: out std_logic_vector(3 downto 0) := x"0";
        mmu_debug_we: out std_logic := '0';
        mmu_debug_dout: in std_logic_vector(15 downto 0);
        mmu_iram_dout: in std_logic_vector(15 downto 0)

    );
end Debugger;

architecture Behavioral of Debugger is
    -- state machine
    type state_types is (Idle, Readback, ReadbackAck,
        ReceivePreCommandDecission, ReceiveInstructionDataHIGH, ReceiveInstructionDataLOW, ReceiveInstructionData2HIGH, ReceiveInstructionData2LOW,
        HoldClock, BufferState, ProcessCommand,
        TransmitDataInstruction, TransmitDataHIGH, TransmitDataLOW, TransmitDataAddrHIGH, TransmitDataAddrLOW, ResetTX,
        TransmitDataInstructionSHORT, TransmitDataHIGHSHORT, TransmitDataLOWSHORT,
        TransmitInstructionOnly,
        ClockMMUDebug, ResetMMUDebug,
        ClockVRAM1, ClockVRAM2, ClockVRAM3,
        ClockBlockRamRead1, ClockBlockRamRead2, ClockBlockRamRead3, ClockBlockRamReadReset, ClockBlockRamReadFetch,
        MMUFetchIRAMWriteToTX, MMUFetchIRAMReset,
        MMUFetchGRAMClock, MMUFetchGRAMWriteToTX, MMUFetchGRAMReset,
        ClockOneCycleHigh, ClockOneCycleLow,
        ClockResume, ClockResumeAck
    );
    signal state: state_types := Idle;
    
    -- rx data buffer
    signal rx_instruction_buffer: std_logic_vector(7 downto 0);
    signal rx_instruction_data_buffer: std_logic_vector(15 downto 0);
    signal rx_instruction_data2_buffer: std_logic_vector(15 downto 0);
    signal rx_instruction_buffer_ack: std_logic_vector(7 downto 0);
    signal rx_instruction_data_buffer_ack: std_logic_vector(15 downto 0);
    signal rx_instruction_data2_buffer_ack: std_logic_vector(15 downto 0);
    
    -- tx data buffer
    signal tx_instruction_buffer: std_logic_vector(7 downto 0) := x"00";
    signal tx_data_buffer: std_logic_vector(15 downto 0) := x"0000";
    signal tx_addr_buffer: std_logic_vector(15 downto 0) := x"0000";
    
    signal pc_current_addr_buffer: std_logic_vector(15 downto 0) := x"FFFF";

    -- data buffers
    -- pipeline
    signal pipeline_stalled_s: std_logic;
    signal pipeline_instruction_forwarding_config_s: std_logic_vector(4 downto 0);
    signal pipeline_current_instruction_s: std_logic_vector(15 downto 0);
    signal pipeline_operand_1_s, pipeline_operand_2_s: std_logic_vector(15 downto 0);
    signal pipeline_rf_read_buf_s: std_logic_vector(15 downto 0);
    signal pipeline_jmp_condl_rel_dests_cond_s: std_logic_vector(6 downto 0);
    signal pipeline_taking_data_s: std_logic;
    --signal pipeline_immediate_s: std_logic_vector(15 downto 0);
    --signal pipeline_write_address_s: std_logic_vector(3 downto 0);
    --signal pipeline_whb_wlb_s: std_logic_vector(1 downto 0);
    signal pipeline_write_data_sel_s: std_logic_vector(1 downto 0);
    signal pipeline_ram_src_read_write_bankid_s: std_logic_vector(6 downto 0);
    --signal pipeline_is_alu_ram_gpu_op_s: std_logic_vector(2 downto 0);
        
    -- program counter
    signal pc_din_s: std_logic_vector(15 downto 0);
    signal pc_dout_s: std_logic_vector(15 downto 0);
    signal pc_current_addr_s: std_logic_vector(15 downto 0);
    -- ALU
    signal alu_din1_s: std_logic_vector(15 downto 0);  
    signal alu_din2_s: std_logic_vector(15 downto 0);
    signal alu_out_s: std_logic_vector(15 downto 0);
    signal alu_flags_s: std_logic_vector(15 downto 0);
    signal alu_op_s: std_logic_vector(15 downto 0);
    -- Register File
    signal regfile_addr_reg1_s: std_logic_vector(3 downto 0);
    signal regfile_addr_reg2_s: std_logic_vector(3 downto 0);
    signal regfile_addr_write_reg_s: std_logic_vector(3 downto 0);
    signal regfile_write_enable_s: std_logic;
    signal regfile_overwrite_flag_s: std_logic;
    signal regfile_write_data_s: std_logic_vector(15 downto 0);
    signal regfile_reg1_data_s: std_logic_vector(15 downto 0);
    signal regfile_reg2_data_s: std_logic_vector(15 downto 0);
    signal regfile_bankid_s: std_logic_vector(3 downto 0);
    -- mmu
    signal mmu_iram_dout_s: std_logic_vector(15 downto 0);

begin
    -- state machine
    pc_current_addr_buffer <= pc_current_addr;
    state_machine: process(clk, state, rx_data_valid, tx_data_sended) begin
        if rising_edge(clk) then
            case state is
                when Idle =>
                    -- if first byte read on rx
                    if (rx_data_valid = '1') then
                        rx_instruction_buffer <= rx_data;
                        state <= ReceivePreCommandDecission;
                    else
                        state <= Idle;
                    end if;
                -- rx states
                when ReceivePreCommandDecission =>
                    case rx_instruction_buffer is
                        -- general
                        when x"00" => state <= Readback;
                        when x"01" => state <= Readback;
                        when x"02" => state <= Readback;
                        when x"03" => state <= Readback;
                        when x"0E" => state <= ReadbackAck;
                        -- pipeline signal request
                        when x"10" => state <= Readback;
                        when x"11" => state <= Readback;
                        when x"12" => state <= Readback;
                        when x"13" => state <= Readback;
                        when x"14" => state <= Readback;
                        when x"15" => state <= Readback;
                        when x"16" => state <= Readback;
                        when x"17" => state <= Readback;
                        --when x"18" => state <= Readback;
                        --when x"19" => state <= Readback;
                        --when x"1A" => state <= Readback;
                        when x"1B" => state <= Readback;
                        when x"1C" => state <= Readback;
                        --when x"1D" => state <= Readback;
                        -- program counter signal request
                        when x"20" => state <= Readback;
                        when x"21" => state <= Readback;
                        when x"22" => state <= Readback;
                        -- memory
                        when x"30" => state <= ReceiveInstructionDataHIGH;
                        when x"31" => state <= ReceiveInstructionDataHIGH;
                        when x"32" => state <= ReceiveInstructionData2HIGH; -- iram read
                        when x"33" => state <= ReceiveInstructionDataHIGH;
                        when x"34" => state <= ReceiveInstructionDataHIGH;
                        when x"35" => state <= ReceiveInstructionData2HIGH; -- vram read
                        when x"36" => state <= ReceiveInstructionData2HIGH; -- gram read
                        when x"37" => state <= ReceiveInstructionData2HIGH; -- mmio read
                        when x"38" => state <= Readback;
                        -- alu signal request
                        when x"40" => state <= Readback;
                        when x"41" => state <= Readback;
                        when x"42" => state <= Readback;
                        when x"43" => state <= Readback;
                        when x"44" => state <= Readback;
                        -- regfile signal request
                        when x"50" => state <= Readback;
                        when x"51" => state <= Readback;
                        when x"52" => state <= Readback;
                        when x"53" => state <= Readback;
                        when x"54" => state <= Readback;
                        when x"55" => state <= Readback;
                        when x"56" => state <= Readback;
                        when x"57" => state <= Readback;
                        when x"58" => state <= Readback;
                        when x"59" => state <= Readback;
                        -- others
                        when others => 
                            -- send error message
                            tx_instruction_buffer <= x"0F";
                            tx_data_buffer(15 downto 8) <= x"00";
                            tx_data_buffer(7 downto 0) <= rx_instruction_buffer;
                            state <= TransmitDataInstructionSHORT;
                    end case;
                when ReceiveInstructionDataHIGH =>
                    if (rx_data_valid = '1') then
                        rx_instruction_data_buffer(15 downto 8) <= rx_data;
                        state <= ReceiveInstructionDataLOW;
                    else
                        state <= ReceiveInstructionDataHIGH;
                    end if;
                when ReceiveInstructionDataLOW =>
                    if (rx_data_valid = '1') then
                        rx_instruction_data_buffer(7 downto 0) <= rx_data;
                        state <= ReceiveInstructionData2HIGH;
                    else
                        state <= ReceiveInstructionDataLOW;
                    end if;
                when ReceiveInstructionData2HIGH =>
                    if (rx_data_valid = '1') then
                        rx_instruction_data2_buffer(15 downto 8) <= rx_data;
                        state <= ReceiveInstructionData2LOW;
                    else
                        state <= ReceiveInstructionData2HIGH;
                    end if;
                when ReceiveInstructionData2LOW =>
                    if (rx_data_valid = '1') then
                        rx_instruction_data2_buffer(7 downto 0) <= rx_data;
                        state <= Readback;
                    else
                        state <= ReceiveInstructionData2LOW;
                    end if;
                -- readback
                when Readback =>
                    rx_instruction_buffer_ack <= rx_instruction_buffer;
                    rx_instruction_data_buffer_ack <= rx_instruction_data_buffer;
                    rx_instruction_data2_buffer_ack <= rx_instruction_data2_buffer;
                    tx_instruction_buffer <= rx_instruction_buffer;
                    tx_data_buffer <= rx_instruction_data_buffer;
                    tx_addr_buffer <= rx_instruction_data2_buffer;
                    state <= TransmitDataInstruction;
                when ReadbackAck =>
                        rx_instruction_buffer <= rx_instruction_buffer_ack;
                        rx_instruction_data_buffer <= rx_instruction_data_buffer_ack;
                        rx_instruction_data2_buffer <= rx_instruction_data2_buffer_ack;
                        state <= HoldClock;
                -- command processing states
                when HoldClock =>
                    debug_enable <= '1';
                    state <= BufferState;
                when BufferState =>
                    -- buffering every input
                    pipeline_stalled_s <= pipeline_stalled;
                    pipeline_instruction_forwarding_config_s <= pipeline_instruction_forwarding_config;
                    pipeline_current_instruction_s <= pipeline_current_instruction;
                    pipeline_operand_1_s <= pipeline_operand_1;
                    pipeline_operand_2_s <= pipeline_operand_2;
                    pipeline_rf_read_buf_s <= pipeline_rf_read_buf;
                    pipeline_jmp_condl_rel_dests_cond_s(0) <= pipeline_jmp;
                    pipeline_jmp_condl_rel_dests_cond_s(1) <= pipeline_jmp_conditional;
                    pipeline_jmp_condl_rel_dests_cond_s(2) <= pipeline_jmp_relative;
                    pipeline_jmp_condl_rel_dests_cond_s(3) <= pipeline_jmp_destination_select;
                    pipeline_jmp_condl_rel_dests_cond_s(6 downto 4) <= pipeline_jmp_condition;
                    pipeline_taking_data_s <= pipeline_taking_data;
                    --pipeline_immediate_s <= pipeline_immediate;
                    --pipeline_write_address_s <= pipeline_write_address;
                    --pipeline_whb_wlb_s(0) <= pipeline_whb;
                    --pipeline_whb_wlb_s(1) <= pipeline_wlb;
                    pipeline_write_data_sel_s <= pipeline_write_data_sel;
                    pipeline_ram_src_read_write_bankid_s(0) <= pipeline_ram_src;
                    pipeline_ram_src_read_write_bankid_s(1) <= pipeline_ram_read;
                    pipeline_ram_src_read_write_bankid_s(2) <= pipeline_ram_write;
                    pipeline_ram_src_read_write_bankid_s(6 downto 3) <= pipeline_ram_bankid;
                    --pipeline_is_alu_ram_gpu_op_s(0) <= pipeline_is_alu_op;
                    --pipeline_is_alu_ram_gpu_op_s(1) <= pipeline_is_ram_op;
                    --pipeline_is_alu_ram_gpu_op_s(2) <= pipeline_is_gpu_op;
                    pc_din_s <= pc_din;
                    pc_dout_s <= pc_dout;
                    pc_current_addr_s <= pc_current_addr_buffer;
                    alu_din1_s <= alu_din1;
                    alu_din2_s <= alu_din2;
                    alu_out_s <= alu_out;
                    alu_flags_s <= alu_flags;
                    alu_op_s <= alu_op;
                    regfile_addr_reg1_s <= regfile_addr_reg1;
                    regfile_addr_reg2_s <= regfile_addr_reg2;
                    regfile_addr_write_reg_s <= regfile_addr_write_reg;
                    regfile_write_enable_s <= regfile_write_enable;
                    regfile_overwrite_flag_s <= regfile_overwrite_flag;
                    regfile_write_data_s <= regfile_write_data;
                    regfile_reg1_data_s <= regfile_reg1_data;
                    regfile_reg2_data_s <= regfile_reg2_data;
                    regfile_bankid_s <= regfile_bankid;
                    mmu_iram_dout_s <= mmu_iram_dout;
                    state <= ProcessCommand;
                when ProcessCommand =>
                    -- command decode
                    case rx_instruction_buffer is
                        -- general
                        when x"00" => -- hold clk
                            tx_instruction_buffer <= x"00";
                            state <= TransmitInstructionOnly;
                        when x"01" => -- count one cycle
                            state <= ClockOneCycleHigh;
                        when x"02" => -- resume clk
                            cc_debug_reset <= '1';
                            debug_enable <= '0';
                            state <= ClockResumeAck;
                        -- pipeline
                        when x"10" =>
                            tx_instruction_buffer <= x"10";
                            tx_data_buffer(15 downto 1) <= "000000000000000";
                            tx_data_buffer(0) <= pipeline_stalled_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"11" =>
                            tx_instruction_buffer <= x"11";
                            tx_data_buffer(15 downto 5) <= "00000000000";
                            tx_data_buffer(4 downto 0) <= pipeline_instruction_forwarding_config_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"12" =>
                            tx_instruction_buffer <= x"12";
                            tx_data_buffer <= pipeline_current_instruction_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"13" =>
                            tx_instruction_buffer <= x"13";
                            tx_data_buffer <= pipeline_operand_1_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"14" =>
                            tx_instruction_buffer <= x"14";
                            tx_data_buffer <= pipeline_operand_2_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"15" =>
                            tx_instruction_buffer <= x"15";
                            tx_data_buffer <= pipeline_rf_read_buf_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"16" =>
                            tx_data_buffer(15 downto 7) <= "000000000";
                            tx_instruction_buffer <= x"16";
                            tx_data_buffer(6 downto 0) <= pipeline_jmp_condl_rel_dests_cond_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"17" =>
                            tx_instruction_buffer <= x"17";
                            tx_data_buffer(15 downto 1) <= "000000000000000";
                            tx_data_buffer(0) <= pipeline_taking_data_s;
                            state <= TransmitDataInstructionSHORT;
                       
                        when x"1B" =>
                            tx_data_buffer(15 downto 2) <= "00000000000000";
                            tx_instruction_buffer <= x"1B";
                            tx_data_buffer(1 downto 0) <= pipeline_write_data_sel_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"1C" =>
                            tx_data_buffer(15 downto 7) <= "000000000";
                            tx_instruction_buffer <= x"1C";
                            tx_data_buffer(6 downto 0) <= pipeline_ram_src_read_write_bankid_s;
                            state <= TransmitDataInstructionSHORT;
                        
                        -- program counter
                        when x"20" =>
                            tx_instruction_buffer <= x"20";
                            tx_data_buffer <= pc_din_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"21" =>
                            tx_instruction_buffer <= x"21";
                            tx_data_buffer <= pc_dout_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"22" =>
                            tx_instruction_buffer <= x"22";
                            tx_data_buffer <= pc_current_addr_s;
                            state <= TransmitDataInstructionSHORT;
                        -- memmory
                        when x"30" =>
                            mmu_debug_addr <= rx_instruction_data_buffer;
                            mmu_debug_din <= rx_instruction_data2_buffer;
                            mmu_debug_bank <= "0000";
                            mmu_debug_override_en <= '1';
                            mmu_debug_we <= '1';
                            -- send acknoledge
                            tx_instruction_buffer <= x"30";
                            state <= ClockMMUDebug;
                        when x"31" =>
                            mmu_debug_addr <= rx_instruction_data_buffer;
                            mmu_debug_din <= rx_instruction_data2_buffer;
                            mmu_debug_bank <= "1111";
                            mmu_debug_override_en <= '1';
                            mmu_debug_we <= '1';
                            -- send acknoledge
                            tx_instruction_buffer <= x"31";
                            state <= ClockMMUDebug;
                        when x"32" => -- iram read
                            mmu_debug_addr <= rx_instruction_data2_buffer;
                            mmu_debug_bank <= "1111";
                            mmu_debug_override_en <= '1';
                            mmu_debug_we <= '0';
                            tx_instruction_buffer <= x"32";
                            state <= MMUFetchIRAMWriteToTX;
                        when x"33" =>
                            mmu_debug_addr <= rx_instruction_data_buffer;
                            mmu_debug_din <= rx_instruction_data2_buffer;
                            mmu_debug_bank <= "0010";
                            mmu_debug_override_en <= '1';
                            mmu_debug_we <= '1';
                            -- send acknoledge
                            tx_instruction_buffer <= x"33";
                            state <= ClockVRAM1;
                        when x"34" =>
                            mmu_debug_addr <= rx_instruction_data_buffer;
                            mmu_debug_din <= rx_instruction_data2_buffer;
                            mmu_debug_bank <= "0001";
                            mmu_debug_override_en <= '1';
                            mmu_debug_we <= '1';
                            -- send acknoledge
                            tx_instruction_buffer <= x"34";
                            state <= ClockMMUDebug;
                        when x"35" => -- vram read
                            mmu_debug_addr <= rx_instruction_data2_buffer;
                            mmu_debug_bank <= "0010";
                            mmu_debug_override_en <= '1';
                            mmu_debug_we <= '0';
                            tx_instruction_buffer <= x"35";
                            state <= ClockBlockRamRead1;
                        when x"36" => -- gram read
                            mmu_debug_addr <= rx_instruction_data2_buffer;
                            mmu_debug_bank <= "0000";
                            mmu_debug_override_en <= '1';
                            mmu_debug_we <= '0';
                            tx_instruction_buffer <= x"36";
                            state <= MMUFetchIRAMWriteToTX;
                        when x"37" => -- mmio read
                            mmu_debug_addr <= rx_instruction_data2_buffer;
                            mmu_debug_bank <= "0001";
                            mmu_debug_override_en <= '1';
                            mmu_debug_we <= '0';
                            tx_instruction_buffer <= x"37";
                            state <= MMUFetchIRAMWriteToTX;
                        when x"38" =>
                            tx_data_buffer <= mmu_iram_dout_s;
                            tx_instruction_buffer <= x"38";
                            state <= TransmitDataInstructionSHORT;
                        -- alu
                        when x"40" =>
                            tx_instruction_buffer <= x"40";
                            tx_data_buffer <= alu_din1_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"41" =>
                            tx_instruction_buffer <= x"41";
                            tx_data_buffer <= alu_din2_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"42" =>
                            tx_instruction_buffer <= x"42";
                            tx_data_buffer <= alu_out_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"43" =>
                            tx_instruction_buffer <= x"43";
                            tx_data_buffer <= alu_flags_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"44" =>
                            tx_instruction_buffer <= x"44";
                            tx_data_buffer <= alu_op_s;
                            state <= TransmitDataInstructionSHORT;
                        -- register file
                        when x"50" =>
                            tx_instruction_buffer <= x"50";
                            tx_data_buffer(15 downto 4) <= "000000000000";
                            tx_data_buffer(3 downto 0) <= regfile_addr_reg1_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"51" =>
                            tx_instruction_buffer <= x"51";
                            tx_data_buffer(15 downto 4) <= "000000000000";
                            tx_data_buffer(3 downto 0) <= regfile_addr_reg2_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"52" =>
                            tx_instruction_buffer <= x"52";
                            tx_data_buffer(15 downto 4) <= "000000000000";
                            tx_data_buffer(3 downto 0) <= regfile_addr_write_reg_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"53" =>
                            tx_instruction_buffer <= x"53";
                            tx_data_buffer(15 downto 1) <= "000000000000000";
                            tx_data_buffer(0) <= regfile_write_enable_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"54" =>
                            tx_instruction_buffer <= x"54";
                            tx_data_buffer(15 downto 1) <= "000000000000000";
                            tx_data_buffer(0) <= regfile_overwrite_flag_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"55" =>
                            tx_instruction_buffer <= x"55";
                            tx_data_buffer <= regfile_write_data_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"56" =>
                            tx_instruction_buffer <= x"56";
                            tx_data_buffer <= regfile_reg1_data_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"57" =>
                            tx_instruction_buffer <= x"57";
                            tx_data_buffer <= regfile_reg2_data_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"59" =>
                            tx_instruction_buffer <= x"59";
                            tx_data_buffer(15 downto 4) <= "000000000000";
                            tx_data_buffer(3 downto 0) <= regfile_bankid_s;
                            state <= TransmitDataInstructionSHORT;
                        when x"5A" => state <= Idle;
                        when others =>
                            state <= Idle;
                    end case;
                -- general clock
                when ClockOneCycleHigh =>
                    cc_debug_mock_clk <= '1';
                    state <= ClockOneCycleLow;
                when ClockOneCycleLow =>
                    cc_debug_mock_clk <= '0';
                    tx_instruction_buffer <= x"01";
                    state <= TransmitInstructionOnly;
                when ClockResumeAck =>
                    tx_instruction_buffer <= x"02";
                    cc_debug_reset <= '0';
                    state <= TransmitInstructionOnly;
                    
                -- tx states
                -- long data transmission
                when TransmitDataInstruction =>
                    tx_data <= tx_instruction_buffer;
                    tx_data_valid <= '1';
                    state <= TransmitDataHIGH;
                when TransmitDataHIGH =>
                    if (tx_data_sended = '1') then
                        tx_data <= tx_data_buffer(15 downto 8);
                        tx_data_valid <= '1';
                        state <= TransmitDataLOW;
                    else
                        tx_data_valid <= '0';
                        state <= TransmitDataHIGH;
                    end if;
                when TransmitDataLOW =>
                    if (tx_data_sended = '1') then
                        tx_data <= tx_data_buffer(7 downto 0);
                        tx_data_valid <= '1';
                        state <= TransmitDataAddrHIGH;
                    else
                        tx_data_valid <= '0';
                        state <= TransmitDataLOW;
                    end if;
                when TransmitDataAddrHIGH =>
                    if (tx_data_sended = '1') then
                        tx_data <= tx_addr_buffer(15 downto 8);
                        tx_data_valid <= '1';
                        state <= TransmitDataAddrLOW;
                    else
                        tx_data_valid <= '0';
                        state <= TransmitDataAddrHIGH;
                    end if;
                when TransmitDataAddrLOW =>
                    if (tx_data_sended = '1') then
                        tx_data <= tx_addr_buffer(7 downto 0);
                        tx_data_valid <= '1';
                        state <= ResetTX;
                    else
                        tx_data_valid <= '0';
                        state <= TransmitDataAddrLOW;
                    end if;
                -- short data transmission
                when TransmitDataInstructionSHORT =>
                    tx_data <= tx_instruction_buffer;
                    tx_data_valid <= '1';
                    state <= TransmitDataHIGHSHORT;
                when TransmitDataHIGHSHORT => 
                    if (tx_data_sended = '1') then
                        tx_data <= tx_data_buffer(15 downto 8);
                        tx_data_valid <= '1';
                        state <= TransmitDataLOWSHORT;
                    else
                        tx_data_valid <= '0';
                        state <= TransmitDataHIGHSHORT;
                    end if;
                when TransmitDataLOWSHORT=>
                    if (tx_data_sended = '1') then
                        tx_data <= tx_data_buffer(7 downto 0);
                        tx_data_valid <= '1';
                        state <= ResetTX;
                    else
                        tx_data_valid <= '0';
                        state <= TransmitDataLOWSHORT;
                    end if;
                
                -- transmit instruction only
                when TransmitInstructionOnly =>
                    tx_data <= tx_instruction_buffer;
                    tx_data_valid <= '1';
                    state <= ResetTX;
                -- tx reset
                when ResetTX =>
                    if (tx_data_sended = '1') then
                        state <= Idle;
                        tx_data_valid <= '0';
                    else
                        tx_data_valid <= '0';
                        state <= ResetTX;
                    end if;
                
                -- mmu
                when ClockMMUDebug =>
                    mmu_debug_clk <= '1';
                    state <= ResetMMUDebug;
                when ClockVRAM1 =>
                    mmu_debug_clk <= '1';
                    state <= ClockVRAM2;
                when ClockVRAM2 =>
                    mmu_debug_clk <= '0';
                    state <= ClockVRAM3;
                when ClockVRAM3 =>
                    mmu_debug_clk <= '1';
                    state <= ResetMMUDebug;
                when ResetMMUDebug =>
                    mmu_debug_override_en <= '0';
                    mmu_debug_we <= '0';
                    mmu_debug_clk <= '0';
                    state <= TransmitInstructionOnly;
                -- lutram
                when MMUFetchIRAMWriteToTX =>
                    tx_data_buffer <= mmu_debug_dout;
                    tx_addr_buffer <= rx_instruction_data2_buffer;
                    state <= MMUFetchIRAMReset;
                when MMUFetchIRAMReset =>
                    mmu_debug_override_en <= '0';
                    mmu_debug_clk <= '0';
                    state <= TransmitDataInstruction;
                -- block ram
                when ClockBlockRamRead1 =>
                    mmu_debug_clk <= '1';
                    state <= ClockBlockRamRead2;
                when ClockBlockRamRead2 =>
                    mmu_debug_clk <= '0';
                    state <= ClockBlockRamRead3;
                when ClockBlockRamRead3 =>
                    mmu_debug_clk <= '1';
                    state <= ClockBlockRamReadFetch;
                when ClockBlockRamReadFetch =>
                    mmu_debug_clk <= '0';
                    tx_data_buffer <= mmu_debug_dout;
                    tx_addr_buffer <= rx_instruction_data2_buffer;
                    state <= ClockBlockRamReadReset;
                when ClockBlockRamReadReset =>
                    mmu_debug_override_en <= '0';
                    mmu_debug_we <= '0';
                    state <= TransmitDataInstruction;    
                
                when others =>
                    state <= Idle;
            end case;
        end if;
    end process state_machine;
    


end Behavioral;
