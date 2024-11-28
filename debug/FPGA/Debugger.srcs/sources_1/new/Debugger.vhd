----------------------------------------------------------------------------------
-- Create Date: 16.11.2024 12:24:33
-- Name: Nico
-- Design Name: ShadeCpu
-- Module Name: Debugger - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity Debugger is
    Port (
        clk: in std_logic;
    
        rxData: in std_logic_vector(7 downto 0);
        rxDataValid: in std_logic;
        
        txData: out std_logic_vector(7 downto 0);
        txDataValid: out std_logic;
        txDataSended: in std_logic;
        
        -- debug enable
        debugEnable: out std_logic := '0';
        ccDebugMockClk: out std_logic := '0';
        ccDebugReset: out std_logic := '0';
        
        -- monitoring signals
        -- pipeline
        pipelineStalled: in std_logic;
        pipelineInstructionForwardingConfig: in std_logic_vector(4 downto 0);
        pipelineCurrentInstruction: in std_logic_vector(15 downto 0);
        pipelineOperand1, pipelineOperand2: in std_logic_vector(15 downto 0);
        pipelineJmp: in std_logic;
        pipelineJmpConditional: in std_logic;
        pipelineJmpRelative: in std_logic;
        pipelineJmpDestinationSelect: in std_logic;
        pipelineJmpCondition: in std_logic_vector(2 downto 0);
        pipelineWriteDataSel: in std_logic_vector(1 downto 0);
        pipelineRamSrc: in std_logic;
        pipelineRamRead: in std_logic;
        pipelineRamRrite: in std_logic;
        pipelineRamBankid: in std_logic_vector(3 downto 0);
        
        -- program counter
        pcDin: in std_logic_vector(15 downto 0);
        pcDout: in std_logic_vector(15 downto 0);
        pcCurrentAddr: in std_logic_vector(15 downto 0);
        
        -- ALU
        aluDin1: in std_logic_vector(15 downto 0);
        aluDin2: in std_logic_vector(15 downto 0);
        aluOut: in std_logic_vector(15 downto 0);
        aluFlags: in std_logic_vector(15 downto 0);
        aluOp: in std_logic_vector(15 downto 0);
        
        -- Register File
        regfileAddrReg1: in std_logic_vector(3 downto 0);
        regfileAddrReg2: in std_logic_vector(3 downto 0);
        regfileAddrWriteReg: in std_logic_vector(3 downto 0);
        regfileWriteEnable: in std_logic;
        regfileOverwriteFlag: in std_logic;
        regfileWriteData: in std_logic_vector(15 downto 0);
        regfileReg1Data: in std_logic_vector(15 downto 0);
        regfileReg2Data: in std_logic_vector(15 downto 0);
        regfileBankid: in std_logic_vector(3 downto 0);
              
        
        -- mmu
        mmuDebugClk: out std_logic := '0';
        mmuDebugOverrideEn: out std_logic := '0';
        mmuDebugAddr: out std_logic_vector(15 downto 0) := x"0000";
        mmuDebugDin: out std_logic_vector(15 downto 0) := x"0000";
        mmuDebugBank: out std_logic_vector(3 downto 0) := x"0";
        mmuDebugWe: out std_logic := '0';
        mmuDebugDout: in std_logic_vector(15 downto 0);
        mmuIramDout: in std_logic_vector(15 downto 0)

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
    signal state_s: state_types := Idle;
    
    -- rx data buffer
    signal rx_instruction_buffer_s: std_logic_vector(7 downto 0);
    signal rx_instruction_data_buffer_s: std_logic_vector(15 downto 0);
    signal rx_instruction_data2_buffer_s: std_logic_vector(15 downto 0);
    signal rx_instruction_buffer_ack_s: std_logic_vector(7 downto 0);
    signal rx_instruction_data_buffer_ack_s: std_logic_vector(15 downto 0);
    signal rx_instruction_data2_buffer_ack_s: std_logic_vector(15 downto 0);
    
    -- tx data buffer
    signal tx_instruction_buffer_s: std_logic_vector(7 downto 0) := x"00";
    signal tx_data_buffer_s: std_logic_vector(15 downto 0) := x"0000";
    signal tx_addr_buffer_s: std_logic_vector(15 downto 0) := x"0000";
    
    signal pc_current_addr_buffer_s: std_logic_vector(15 downto 0) := x"FFFF";

    -- data buffers
    -- pipeline
    signal pipeline_stalled_s: std_logic;
    signal pipeline_instruction_forwarding_config_s: std_logic_vector(4 downto 0);
    signal pipeline_current_instruction_s: std_logic_vector(15 downto 0);
    signal pipeline_operand_1_s, pipeline_operand_2_s: std_logic_vector(15 downto 0);
    signal pipeline_jmp_condl_rel_dests_cond_s: std_logic_vector(6 downto 0);
    signal pipeline_write_data_sel_s: std_logic_vector(1 downto 0);
    signal pipeline_ram_src_read_write_bankid_s: std_logic_vector(6 downto 0);
        
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
    pc_current_addr_buffer_s <= pcCurrentAddr;
    state_machine: process(clk, state_s, rxDataValid, txDataSended) is
    begin
        if rising_edge(clk) then
            case state is
                when Idle =>
                    -- if first byte read on rx
                    if (rxDataValid = '1') then
                        rx_instruction_buffer_s <= rxData;
                        state_s <= ReceivePreCommandDecission;
                    else
                        state_s <= Idle;
                    end if;
                -- rx states
                when ReceivePreCommandDecission =>
                    case rx_instruction_buffer_s is
                        -- general
                        when x"00" => state_s <= Readback;
                        when x"01" => state_s <= Readback;
                        when x"02" => state_s <= Readback;
                        when x"03" => state_s <= Readback;
                        when x"0E" => state_s <= ReadbackAck;
                        -- pipeline signal request
                        when x"10" => state_s <= Readback;
                        when x"11" => state_s <= Readback;
                        when x"12" => state_s <= Readback;
                        when x"13" => state_s <= Readback;
                        when x"14" => state_s <= Readback;
                        when x"15" => state_s <= Readback;
                        when x"16" => state_s <= Readback;
                        when x"17" => state_s <= Readback;
                        when x"1B" => state_s <= Readback;
                        when x"1C" => state_s <= Readback;
                        -- program counter signal request
                        when x"20" => state_s <= Readback;
                        when x"21" => state_s <= Readback;
                        when x"22" => state_s <= Readback;
                        -- memory
                        when x"30" => state_s <= ReceiveInstructionDataHIGH;
                        when x"31" => state_s <= ReceiveInstructionDataHIGH;
                        when x"32" => state_s <= ReceiveInstructionData2HIGH; -- iram read
                        when x"33" => state_s <= ReceiveInstructionDataHIGH;
                        when x"34" => state_s <= ReceiveInstructionDataHIGH;
                        when x"35" => state_s <= ReceiveInstructionData2HIGH; -- vram read
                        when x"36" => state_s <= ReceiveInstructionData2HIGH; -- gram read
                        when x"37" => state_s <= ReceiveInstructionData2HIGH; -- mmio read
                        when x"38" => state_s <= Readback;
                        -- alu signal request
                        when x"40" => state_s <= Readback;
                        when x"41" => state_s <= Readback;
                        when x"42" => state_s <= Readback;
                        when x"43" => state_s <= Readback;
                        when x"44" => state_s <= Readback;
                        -- regfile signal request
                        when x"50" => state_s <= Readback;
                        when x"51" => state_s <= Readback;
                        when x"52" => state_s <= Readback;
                        when x"53" => state_s <= Readback;
                        when x"54" => state_s <= Readback;
                        when x"55" => state_s <= Readback;
                        when x"56" => state_s <= Readback;
                        when x"57" => state_s <= Readback;
                        when x"58" => state_s <= Readback;
                        when x"59" => state_s <= Readback;
                        -- others
                        when others => 
                            -- send error message
                            tx_instruction_buffer_s <= x"0F";
                            tx_data_buffer_s(15 downto 8) <= x"00";
                            tx_data_buffer_s(7 downto 0) <= rx_instruction_buffer;
                            state_s <= TransmitDataInstructionSHORT;
                    end case;
                when ReceiveInstructionDataHIGH =>
                    if (rxDataValid = '1') then
                        rx_instruction_data_buffer_s(15 downto 8) <= rxData;
                        state_s <= ReceiveInstructionDataLOW;
                    else
                        state_s <= ReceiveInstructionDataHIGH;
                    end if;
                when ReceiveInstructionDataLOW =>
                    if (rxDataValid = '1') then
                        rx_instruction_data_buffer_s(7 downto 0) <= rxData;
                        state_s <= ReceiveInstructionData2HIGH;
                    else
                        state_s <= ReceiveInstructionDataLOW;
                    end if;
                when ReceiveInstructionData2HIGH =>
                    if (rxDataValid = '1') then
                        rx_instruction_data2_buffer_s(15 downto 8) <= rxData;
                        state_s <= ReceiveInstructionData2LOW;
                    else
                        state_s <= ReceiveInstructionData2HIGH;
                    end if;
                when ReceiveInstructionData2LOW =>
                    if (rxDataValid = '1') then
                        rx_instruction_data2_buffer_s(7 downto 0) <= rxData;
                        state_s <= Readback;
                    else
                        state_s <= ReceiveInstructionData2LOW;
                    end if;
                -- readback
                when Readback =>
                    rx_instruction_buffer_ack_s <= rx_instruction_buffer_s;
                    rx_instruction_data_buffer_ack <= rx_instruction_data_buffer_s;
                    rx_instruction_data2_buffer_ack_s <= rx_instruction_data2_buffer_s;
                    tx_instruction_buffer_s <= rx_instruction_buffer_s;
                    tx_data_buffer_s <= rx_instruction_data_buffer_s;
                    tx_addr_buffer_s <= rx_instruction_data2_buffer_s;
                    state_s <= TransmitDataInstruction;
                when ReadbackAck =>
                        rx_instruction_buffer_s <= rx_instruction_buffer_ack_s;
                        rx_instruction_data_buffer_s <= rx_instruction_data_buffer_ack;
                        rx_instruction_data2_buffer_s <= rx_instruction_data2_buffer_ack_s;
                        state_s <= HoldClock;
                -- command processing states
                when HoldClock =>
                    debug_enable <= '1';
                    state_s <= BufferState;
                when BufferState =>
                    -- buffering every input
                    pipeline_stalled_s <= pipelineStalled;
                    pipeline_instruction_forwarding_config_s <= pipelineInstructionForwardingConfig;
                    pipeline_current_instruction_s <= pipelineCurrentInstruction;
                    pipeline_operand_1_s <= pipelineOperand1;
                    pipeline_operand_2_s <= pipelineOperand2;
                    pipeline_jmp_condl_rel_dests_cond_s(0) <= pipelineJmp;
                    pipeline_jmp_condl_rel_dests_cond_s(1) <= pipelineJmpConditional;
                    pipeline_jmp_condl_rel_dests_cond_s(2) <= pipelineJmpRelative;
                    pipeline_jmp_condl_rel_dests_cond_s(3) <= pipelineJmpDestinationSelect;
                    pipeline_jmp_condl_rel_dests_cond_s(6 downto 4) <= pipelineJmpCondition;
                    pipeline_write_data_sel_s <= pipelineWriteDataSel;
                    pipeline_ram_src_read_write_bankid_s(0) <= pipelineRamSrc;
                    pipeline_ram_src_read_write_bankid_s(1) <= pipelineRamRead;
                    pipeline_ram_src_read_write_bankid_s(2) <= pipelineRamWrite;
                    pipeline_ram_src_read_write_bankid_s(6 downto 3) <= pipelineRamBankid;
                    pc_din_s <= pcDin;
                    pc_dout_s <= pcDout;
                    pc_current_addr_s <= pc_current_addr_buffer_s;
                    alu_din1_s <= aluDin1;
                    alu_din2_s <= aluDin2;
                    alu_out_s <= aluOut;
                    alu_flags_s <= aluFlags;
                    alu_op_s <= aluOp;
                    regfile_addr_reg1_s <= regfileAddrReg1;
                    regfile_addr_reg2_s <= regfileAddrReg2;
                    regfile_addr_write_reg_s <= regfileAddrWriteReg;
                    regfile_write_enable_s <= regfileWriteEnable;
                    regfile_overwrite_flag_s <= regfileOverwriteFlag;
                    regfile_write_data_s <= regfileWriteData;
                    regfile_reg1_data_s <= regfileReg1Data;
                    regfile_reg2_data_s <= regfileReg2Data;
                    regfile_bankid_s <= regfileBankid;
                    mmu_iram_dout_s <= mmuIramDout;
                    state_s <= ProcessCommand;
                when ProcessCommand =>
                    -- command decode
                    case rx_instruction_buffer_s is
                        -- general
                        when x"00" => -- hold clk
                            tx_instruction_buffer_s <= x"00";
                            state_s <= TransmitInstructionOnly;
                        when x"01" => -- count one cycle
                            state_s <= ClockOneCycleHigh;
                        when x"02" => -- resume clk
                            cc_debug_reset <= '1';
                            debug_enable <= '0';
                            state_s <= ClockResumeAck;
                        -- pipeline
                        when x"10" =>
                            tx_instruction_buffer_s <= x"10";
                            tx_data_buffer_s(15 downto 1) <= "000000000000000";
                            tx_data_buffer_s(0) <= pipeline_stalled_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"11" =>
                            tx_instruction_buffer_s <= x"11";
                            tx_data_buffer_s(15 downto 5) <= "00000000000";
                            tx_data_buffer_s(4 downto 0) <= pipeline_instruction_forwarding_config_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"12" =>
                            tx_instruction_buffer_s <= x"12";
                            tx_data_buffer_s <= pipeline_current_instruction_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"13" =>
                            tx_instruction_buffer_s <= x"13";
                            tx_data_buffer_s <= pipeline_operand_1_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"14" =>
                            tx_instruction_buffer_s <= x"14";
                            tx_data_buffer_s <= pipeline_operand_2_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"15" =>
                            tx_instruction_buffer_s <= x"15";
                            tx_data_buffer_s <= pipeline_rf_read_buf_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"16" =>
                            tx_data_buffer_s(15 downto 7) <= "000000000";
                            tx_instruction_buffer_s <= x"16";
                            tx_data_buffer_s(6 downto 0) <= pipeline_jmp_condl_rel_dests_cond_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"17" =>
                            tx_instruction_buffer_s <= x"17";
                            tx_data_buffer_s(15 downto 1) <= "000000000000000";
                            tx_data_buffer_s(0) <= pipeline_taking_data_s;
                            state_s <= TransmitDataInstructionSHORT;
                       
                        when x"1B" =>
                            tx_data_buffer_s(15 downto 2) <= "00000000000000";
                            tx_instruction_buffer_s <= x"1B";
                            tx_data_buffer_s(1 downto 0) <= pipeline_write_data_sel_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"1C" =>
                            tx_data_buffer_s(15 downto 7) <= "000000000";
                            tx_instruction_buffer_s <= x"1C";
                            tx_data_buffer_s(6 downto 0) <= pipeline_ram_src_read_write_bankid_s;
                            state_s <= TransmitDataInstructionSHORT;
                        
                        -- program counter
                        when x"20" =>
                            tx_instruction_buffer_s <= x"20";
                            tx_data_buffer_s <= pc_din_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"21" =>
                            tx_instruction_buffer_s <= x"21";
                            tx_data_buffer_s <= pc_dout_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"22" =>
                            tx_instruction_buffer_s <= x"22";
                            tx_data_buffer_s <= pc_current_addr_s;
                            state_s <= TransmitDataInstructionSHORT;
                        -- memmory
                        when x"30" =>
                            mmuDebugAddr <= rx_instruction_data_buffer_s;
                            mmuDebugDin <= rx_instruction_data2_buffer_s;
                            mmuDebugBank <= "0000";
                            mmuDebugOverrideEn <= '1';
                            mmuDebugWe <= '1';
                            -- send acknoledge
                            tx_instruction_buffer_s <= x"30";
                            state_s <= ClockMMUDebug;
                        when x"31" =>
                            mmuDebugAddr <= rx_instruction_data_buffer_s;
                            mmuDebugDin <= rx_instruction_data2_buffer_s;
                            mmuDebugBank <= "1111";
                            mmuDebugOverrideEn <= '1';
                            mmuDebugWe <= '1';
                            -- send acknoledge
                            tx_instruction_buffer_s <= x"31";
                            state_s <= ClockMMUDebug;
                        when x"32" => -- iram read
                            mmuDebugAddr <= rx_instruction_data2_buffer_s;
                            mmuDebugBank <= "1111";
                            mmuDebugOverrideEn <= '1';
                            mmuDebugWe <= '0';
                            tx_instruction_buffer_s <= x"32";
                            state_s <= MMUFetchIRAMWriteToTX;
                        when x"33" =>
                            mmuDebugAddr <= rx_instruction_data_buffer_s;
                            mmuDebugDin <= rx_instruction_data2_buffer_s;
                            mmuDebugBank <= "0010";
                            mmuDebugOverrideEn <= '1';
                            mmuDebugWe <= '1';
                            -- send acknoledge
                            tx_instruction_buffer_s <= x"33";
                            state_s <= ClockVRAM1;
                        when x"34" =>
                            mmuDebugAddr <= rx_instruction_data_buffer_s;
                            mmuDebugDin <= rx_instruction_data2_buffer_s;
                            mmuDebugBank <= "0001";
                            mmuDebugOverrideEn <= '1';
                            mmuDebugWe <= '1';
                            -- send acknoledge
                            tx_instruction_buffer_s <= x"34";
                            state_s <= ClockMMUDebug;
                        when x"35" => -- vram read
                            mmuDebugAddr <= rx_instruction_data2_buffer_s;
                            mmuDebugBank <= "0010";
                            mmuDebugOverrideEn <= '1';
                            mmuDebugWe <= '0';
                            tx_instruction_buffer_s <= x"35";
                            state_s <= ClockBlockRamRead1;
                        when x"36" => -- gram read
                            mmuDebugAddr <= rx_instruction_data2_buffer_s;
                            mmuDebugBank <= "0000";
                            mmuDebugOverrideEn <= '1';
                            mmuDebugWe <= '0';
                            tx_instruction_buffer_s <= x"36";
                            state_s <= MMUFetchIRAMWriteToTX;
                        when x"37" => -- mmio read
                            mmuDebugAddr <= rx_instruction_data2_buffer_s;
                            mmuDebugBank <= "0001";
                            mmuDebugOverrideEn <= '1';
                            mmuDebugWe <= '0';
                            tx_instruction_buffer_s <= x"37";
                            state_s <= MMUFetchIRAMWriteToTX;
                        when x"38" =>
                            tx_data_buffer_s <= mmu_iram_dout_s;
                            tx_instruction_buffer_s <= x"38";
                            state_s <= TransmitDataInstructionSHORT;
                        -- alu
                        when x"40" =>
                            tx_instruction_buffer_s <= x"40";
                            tx_data_buffer_s <= alu_din1_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"41" =>
                            tx_instruction_buffer_s <= x"41";
                            tx_data_buffer_s <= alu_din2_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"42" =>
                            tx_instruction_buffer_s <= x"42";
                            tx_data_buffer_s <= alu_out_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"43" =>
                            tx_instruction_buffer_s <= x"43";
                            tx_data_buffer_s <= alu_flags_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"44" =>
                            tx_instruction_buffer_s <= x"44";
                            tx_data_buffer_s <= alu_op_s;
                            state_s <= TransmitDataInstructionSHORT;
                        -- register file
                        when x"50" =>
                            tx_instruction_buffer_s <= x"50";
                            tx_data_buffer_s(15 downto 4) <= "000000000000";
                            tx_data_buffer_s(3 downto 0) <= regfile_addr_reg1_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"51" =>
                            tx_instruction_buffer_s <= x"51";
                            tx_data_buffer_s(15 downto 4) <= "000000000000";
                            tx_data_buffer_s(3 downto 0) <= regfile_addr_reg2_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"52" =>
                            tx_instruction_buffer_s <= x"52";
                            tx_data_buffer_s(15 downto 4) <= "000000000000";
                            tx_data_buffer_s(3 downto 0) <= regfile_addr_write_reg_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"53" =>
                            tx_instruction_buffer_s <= x"53";
                            tx_data_buffer_s(15 downto 1) <= "000000000000000";
                            tx_data_buffer_s(0) <= regfile_write_enable_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"54" =>
                            tx_instruction_buffer_s <= x"54";
                            tx_data_buffer_s(15 downto 1) <= "000000000000000";
                            tx_data_buffer_s(0) <= regfile_overwrite_flag_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"55" =>
                            tx_instruction_buffer_s <= x"55";
                            tx_data_buffer_s <= regfile_write_data_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"56" =>
                            tx_instruction_buffer_s <= x"56";
                            tx_data_buffer_s <= regfile_reg1_data_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"57" =>
                            tx_instruction_buffer_s <= x"57";
                            tx_data_buffer_s <= regfile_reg2_data_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"59" =>
                            tx_instruction_buffer_s <= x"59";
                            tx_data_buffer_s(15 downto 4) <= "000000000000";
                            tx_data_buffer_s(3 downto 0) <= regfile_bankid_s;
                            state_s <= TransmitDataInstructionSHORT;
                        when x"5A" => state_s <= Idle;
                        when others =>
                            state_s <= Idle;
                    end case;
                -- general clock
                when ClockOneCycleHigh =>
                    ccDebugMockClk <= '1';
                    state_s <= ClockOneCycleLow;
                when ClockOneCycleLow =>
                    ccDebugMockClk <= '0';
                    tx_instruction_buffer_s <= x"01";
                    state_s <= TransmitInstructionOnly;
                when ClockResumeAck =>
                    tx_instruction_buffer_s <= x"02";
                    ccDebugReset <= '0';
                    state_s <= TransmitInstructionOnly;
                    
                -- tx states
                -- long data transmission
                when TransmitDataInstruction =>
                    txData <= tx_instruction_buffer_s;
                    txDataValid <= '1';
                    state_s <= TransmitDataHIGH;
                when TransmitDataHIGH =>
                    if (txDataSended = '1') then
                        txData <= tx_data_buffer_s(15 downto 8);
                        txDataValid <= '1';
                        state_s <= TransmitDataLOW;
                    else
                        txDataValid <= '0';
                        state_s <= TransmitDataHIGH;
                    end if;
                when TransmitDataLOW =>
                    if (txDataSended = '1') then
                        txData <= tx_data_buffer_s(7 downto 0);
                        txDataValid <= '1';
                        state_s <= TransmitDataAddrHIGH;
                    else
                        txDataValid <= '0';
                        state_s <= TransmitDataLOW;
                    end if;
                when TransmitDataAddrHIGH =>
                    if (txDataSended = '1') then
                        txData <= tx_addr_buffer_s(15 downto 8);
                        txDataValid <= '1';
                        state_s <= TransmitDataAddrLOW;
                    else
                        txDataValid <= '0';
                        state_s <= TransmitDataAddrHIGH;
                    end if;
                when TransmitDataAddrLOW =>
                    if (txDataSended = '1') then
                        txData <= tx_addr_buffer_s(7 downto 0);
                        txDataValid <= '1';
                        state_s <= ResetTX;
                    else
                        txDataValid <= '0';
                        state_s <= TransmitDataAddrLOW;
                    end if;
                -- short data transmission
                when TransmitDataInstructionSHORT =>
                    txData <= tx_instruction_buffer_s;
                    txDataValid <= '1';
                    state_s <= TransmitDataHIGHSHORT;
                when TransmitDataHIGHSHORT => 
                    if (txDataSended = '1') then
                        txData <= tx_data_buffer_s(15 downto 8);
                        txDataValid <= '1';
                        state_s <= TransmitDataLOWSHORT;
                    else
                        txDataValid <= '0';
                        state_s <= TransmitDataHIGHSHORT;
                    end if;
                when TransmitDataLOWSHORT=>
                    if (txDataSended = '1') then
                        txData <= tx_data_buffer_s(7 downto 0);
                        txDataValid <= '1';
                        state_s <= ResetTX;
                    else
                        txDataValid <= '0';
                        state_s <= TransmitDataLOWSHORT;
                    end if;
                
                -- transmit instruction only
                when TransmitInstructionOnly =>
                    txData <= tx_instruction_buffer_s;
                    txDataValid <= '1';
                    state_s <= ResetTX;
                -- tx reset
                when ResetTX =>
                    if (txDataSended = '1') then
                        state_s <= Idle;
                        txDataValid <= '0';
                    else
                        txDataValid <= '0';
                        state_s <= ResetTX;
                    end if;
                
                -- mmu
                when ClockMMUDebug =>
                    mmuDebugClk <= '1';
                    state_s <= ResetMMUDebug;
                when ClockVRAM1 =>
                    mmuDebugClk <= '1';
                    state_s <= ClockVRAM2;
                when ClockVRAM2 =>
                    mmuDebugClk <= '0';
                    state_s <= ClockVRAM3;
                when ClockVRAM3 =>
                    mmuDebugClk <= '1';
                    state_s <= ResetMMUDebug;
                when ResetMMUDebug =>
                    mmuDebugOverrideEn <= '0';
                    mmuDebugWe <= '0';
                    mmuDebugClk <= '0';
                    state_s <= TransmitInstructionOnly;
                -- lutram
                when MMUFetchIRAMWriteToTX =>
                    tx_data_buffer_s <= mmu_debug_dout_s;
                    tx_addr_buffer_s <= rx_instruction_data2_buffer_s;
                    state_s <= MMUFetchIRAMReset;
                when MMUFetchIRAMReset =>
                    mmuDebugOverrideEn <= '0';
                    mmuDebugClk <= '0';
                    state_s <= TransmitDataInstruction;
                -- block ram
                when ClockBlockRamRead1 =>
                    mmuDebugClk <= '1';
                    state_s <= ClockBlockRamRead2;
                when ClockBlockRamRead2 =>
                    mmuDebugClk <= '0';
                    state_s <= ClockBlockRamRead3;
                when ClockBlockRamRead3 =>
                    mmuDebugClk <= '1';
                    state_s <= ClockBlockRamReadFetch;
                when ClockBlockRamReadFetch =>
                    mmuDebugClk <= '0';
                    tx_data_buffer_s <= mmu_debug_dout_s;
                    tx_addr_buffer_s <= rx_instruction_data2_buffer_s;
                    state_s <= ClockBlockRamReadReset;
                when ClockBlockRamReadReset =>
                    mmuDebugOverrideEn <= '0';
                    mmuDebugWe <= '0';
                    state_s <= TransmitDataInstruction;
                
                when others =>
                    state_s <= Idle;
            end case;
        end if;
    end process state_machine;
    


end Behavioral;
