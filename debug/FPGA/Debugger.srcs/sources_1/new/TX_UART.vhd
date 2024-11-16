----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2024 16:43:36
-- Design Name: 
-- Module Name: TX_UART - Behavioral
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

entity TX_UART is
    generic (
        CLKS_PER_BIT: integer := 10417 -- (clock Frequency) / (Baud Rate) => 100000000 / 9600
    );
    Port (
        send_data: in std_logic; -- as long as this input is high, the data at data_in will be sended in loop
        data_in: in std_logic_vector(7 downto 0);
        clk: in std_logic;
        tx_output: out std_logic;
        send_valid: out std_logic
    );
end TX_UART;

architecture Behavioral of TX_UART is
    type state_type is (Idle, Start_TX, Bit0, Bit1, Bit2, Bit3, Bit4, Bit5, Bit6, Bit7);
    signal current_state: state_type := Idle;
    signal next_state: state_type;
    signal clock_cnt: integer range 0 to CLKS_PER_BIT - 1 := 0;
    signal tx_clock: std_logic := '0';
    signal tx_data_send: std_logic := '1';
    signal send_valid_s: std_logic := '0';
    signal writing_data_to_uart: std_logic := '0';
begin
    tx_output <= tx_data_send;
    send_valid <= send_valid_s;

    clock: process(clk, send_data, writing_data_to_uart) begin
        if rising_edge(clk) then
            current_state <= next_state;
            -- increment clocking count
            if ((send_data or writing_data_to_uart) = '1') then
                clock_cnt <= clock_cnt + 1;
                if (clock_cnt = CLKS_PER_BIT - 1) then
                    clock_cnt <= 0;
                    tx_clock <= '1';
                else
                    tx_clock <= '0';
                end if;
            else
                clock_cnt <= CLKS_PER_BIT - 1;
                tx_clock <= '0';
            end if;
        end if;
    end process clock;
    
    tx: process(tx_clock, current_state) begin
        if rising_edge(tx_clock) then
            case current_state is
                when Idle =>
                    tx_data_send <= '1';
                    next_state <= Start_TX;
                    writing_data_to_uart <= '1';
                when Start_TX =>
                    tx_data_send <= '0';
                    next_state <= Bit0;
                when Bit0 =>
                    tx_data_send <= data_in(0);
                    next_state <= Bit1;
                when Bit1 =>
                    tx_data_send <= data_in(1);
                    next_state <= Bit2;
                when Bit2 =>
                    tx_data_send <= data_in(2);
                    next_state <= Bit3;
                when Bit3 =>
                    tx_data_send <= data_in(3);
                    next_state <= Bit4;
                when Bit4 =>
                    tx_data_send <= data_in(4);
                    next_state <= Bit5;
                when Bit5 =>
                    tx_data_send <= data_in(5);
                    next_state <= Bit6;
                when Bit6 =>
                    tx_data_send <= data_in(6);
                    next_state <= Bit7;
                when Bit7 =>
                    tx_data_send <= data_in(7);
                    next_state <= Idle;
                    writing_data_to_uart <= '0';
                when others =>
            end case;
        end if;
    end process tx;


end Behavioral;
