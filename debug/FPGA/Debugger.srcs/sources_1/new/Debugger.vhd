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
        
        -- debug clk
        debug_clk_stop_LOW_ACTIVE: out std_logic;
        
        -- monitoring signals        
        -- programm counter
        pc_current_addr: in std_logic_vector(15 downto 0);
        pc_din: in std_logic_vector(15 downto 0);
        
        -- IRAM
        iram_current_instruction: in std_logic_vector(15 downto 0);
        
        -- pipeline
        pipeline_stalled: in std_logic;
        pipeline_instruction_forwarding_config: in std_logic_vector(4 downto 0);
        pipeline_current_instruction: in std_logic_vector(15 downto 0);
        pipeline_operand_1, pipeline_operand_2: in std_logic_vector(15 downto 0);
        pipeline_memory_addr_reg: in std_logic_vector(15 downto 0);
        
        -- mmu
        mmu_debug_overwrite_enable: out std_logic
        
        
        
    );
end Debugger;

architecture Behavioral of Debugger is
    -- state machine
    type state_types is (Idle,
        ReceivePreCommandDecission, ReceiveInstructionDataHIGH, ReceiveInstructionDataLOW, ReceiveInstructionData2HIGH, ReceiveInstructionData2LOW,
        ProcessCommand,
        TransmitDataInstruction, TransmitDataHIGH, TransmitDataLOW, TransmitDataAddrHIGH, TransmitDataAddrLOW, ResetTX,
        TransmitDataInstructionSHORT, TransmitDataHIGHSHORT, TransmitDataLOWSHORT
    );
    signal state: state_types := Idle;
    
    -- rx data buffer
    signal rx_instruction_buffer: std_logic_vector(7 downto 0);
    signal rx_instruction_data_buffer: std_logic_vector(15 downto 0);
    
    -- tx data buffer
    signal tx_instruction_buffer: std_logic_vector(7 downto 0) := x"00";
    signal tx_data_buffer: std_logic_vector(15 downto 0) := x"0000";
    signal tx_addr_buffer: std_logic_vector(15 downto 0) := x"0000";
    
    signal debug_clk_stop: std_logic := '0';
    signal pc_current_addr_buffer: std_logic_vector(15 downto 0) := x"FFFF";
begin
    debug_clk_stop_LOW_ACTIVE <= debug_clk_stop;
    pc_current_addr_buffer <= pc_current_addr;
    state_machine: process(clk, state, rx_data_valid, tx_data_sended) begin
        if rising_edge(clk) then
            case state is
                when Idle =>
                    debug_clk_stop <= '1';
                    -- if first byte read on rx
                    if (rx_data_valid = '1') then
                        rx_instruction_buffer <= rx_data;
                        state <= ReceivePreCommandDecission;
                    else
                        state <= Idle;
                    end if;
                -- rx states
                when ReceivePreCommandDecission =>
                    case rx_instruction_data_buffer is
                        -- general
                        when x"00" => state <= ProcessCommand;
                        when x"01" => state <= ProcessCommand;
                        when x"02" => state <= ProcessCommand;
                        -- pipeline read request
                        when x"10" => state <= ProcessCommand;
                        when x"11" => state <= ProcessCommand;
                        when x"12" => state <= ProcessCommand;
                        when x"13" => state <= ProcessCommand;
                        when x"14" => state <= ProcessCommand;
                        when x"15" => state <= ProcessCommand;
                        -- divers signal request
                        when x"20" =>
                        when x"21" =>
                        when x"22" =>
                        -- memory
                        when x"30" =>
                        when x"31" =>
                        -- others
                        when others => state <= ReceiveInstructionDataHIGH;
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
                        state <= ProcessCommand;
                    else
                        state <= ReceiveInstructionDataLOW;
                    end if;
                -- command processing states
                when ProcessCommand =>
                    -- command decode
                    debug_clk_stop <= '0';
                    case rx_instruction_buffer is
                        when x"03" =>
                            tx_instruction_buffer <= x"03";
                            tx_data_buffer <= pc_current_addr_buffer;
                            state <= TransmitDataInstruction;
                        when others =>
                            state <= Idle;
                    end case;
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
                        tx_data <= tx_addr_buffer(15 downto 8);
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
                -- tx reset
                when ResetTX =>
                    if (tx_data_sended = '1') then
                        state <= Idle;
                        tx_data_valid <= '0';
                    else
                        tx_data_valid <= '0';
                        state <= ResetTX;
                    end if;
                    
                    
                when others =>
                    state <= Idle;
            end case;
        end if;
    end process state_machine;
    


end Behavioral;
