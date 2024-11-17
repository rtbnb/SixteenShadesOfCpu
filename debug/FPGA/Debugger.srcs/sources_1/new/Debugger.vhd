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
        tx_data_sended: in std_logic
        
        -- monitoring signals
        
    );
end Debugger;

architecture Behavioral of Debugger is
    type state_types is (Idle,
        ReceiveInstructionDataHIGH, ReceiveInstructionDataLOW,
        ProcessCommand,
        TransmitDataInstruction, TransmitDataHIGH, TransmitDataLOW, TransmitDataAddrHIGH, TransmitDataAddrLOW, ResetTX
    );
    signal state: state_types := Idle;
    signal tx_data_valid_s: std_logic := '0';
    signal tx_data_s: std_logic_vector(7 downto 0) := "00000000";
    
    -- rx data buffer
    signal rx_instruction_buffer: std_logic_vector(7 downto 0);
    signal rx_instruction_data_buffer: std_logic_vector(15 downto 0);
    
    -- tx data buffer
    signal tx_instruction_buffer: std_logic_vector(7 downto 0) := x"00";
    signal tx_data_buffer: std_logic_vector(15 downto 0) := x"0000";
    signal tx_addr_buffer: std_logic_vector(15 downto 0) := x"0000";
begin

    state_machine: process(clk, state, rx_data_valid, tx_data_sended) begin
        if rising_edge(clk) then
            case state is
                when Idle =>
                    if (rx_data_valid = '1') then
                        rx_instruction_buffer <= rx_data;
                        state <= ReceiveInstructionDataHIGH;
                    else
                        state <= Idle;
                    end if;
                -- rx states
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
                    case rx_instruction_buffer is
                        when x"00" =>
                            tx_instruction_buffer <= x"AA";
                            tx_data_buffer <= x"AAAA";
                            tx_addr_buffer <= x"AAAA";
                            state <= TransmitDataInstruction;
                        when x"01" =>
                            tx_instruction_buffer <= x"BB";
                            tx_data_buffer <= x"BBBB";
                            tx_addr_buffer <= x"BBBB";
                            state <= TransmitDataInstruction;
                        when others =>
                            state <= Idle;
                    end case;
                -- tx states
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
