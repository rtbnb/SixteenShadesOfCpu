----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2024 11:13:30
-- Design Name: 
-- Module Name: UART - Behavioral
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

entity RX_UART is
    generic (
        CLKS_PER_BIT: integer := 109 -- (clock Frequency) / (Baud Rate)
    );
    Port (
        clk: in std_logic;
        rx_serial_input: in std_logic;
        data_output: out std_logic_vector(7 downto 0);
        data_valid: out std_logic := '0'
    );
end RX_UART;

 architecture Behavioral of RX_UART is
    type state_type is (Idle, Start_RX, Bit0, Bit1, Bit2, Bit3, Bit4, Bit5, Bit6, Bit7, StopBit, Reset);
    signal current_state: state_type := Idle;
    signal rx_data_in: std_logic;
    signal rx_data_in_buf: std_logic;
    signal data_out: std_logic_vector(7 downto 0) := (others => '0');
    signal clock_cnt: integer range 0 to CLKS_PER_BIT - 1 := 0;
begin
    --data_output <= data_out;
    buffer_data: process (clk)
    begin
        if rising_edge(clk) then
            -- data buffering
            rx_data_in_buf <= rx_serial_input;
            rx_data_in <= rx_data_in_buf;
        end if;
    end process buffer_data;

    rx: process(clk)
    begin
        if rising_edge(clk) then
            -- state machine
            case current_state is
                when Idle =>
                    clock_cnt <= 0;
                    if (rx_data_in = '0') then
                        current_state <= Start_RX;
                        data_valid <= '0';
                    else
                        current_state <= Idle;
                    end if;
                when Start_RX =>
                    if (clock_cnt = (CLKS_PER_BIT - 1) / 2) then
                        if (rx_data_in = '0') then
                            clock_cnt <= 0;
                            current_state <= Bit0;
                        else
                            current_state <= Idle;
                        end if;
                    else
                        clock_cnt <= clock_cnt + 1;
                        current_state <= Start_RX;
                    end if;
                when Bit0 =>
                    if (clock_cnt < CLKS_PER_BIT - 1) then
                        clock_cnt <= clock_cnt + 1;
                        current_state <= Bit0;
                    else
                        clock_cnt <= 0;
                        data_out(0) <= rx_data_in;
                        current_state <= Bit1;
                    end if;
                when Bit1 =>
                    if (clock_cnt < CLKS_PER_BIT - 1) then
                        clock_cnt <= clock_cnt + 1;
                        current_state <= Bit1;
                    else
                        clock_cnt <= 0;
                        data_out(1) <= rx_data_in;
                        current_state <= Bit2;
                    end if;
                when Bit2 =>
                    if (clock_cnt < CLKS_PER_BIT - 1) then
                        clock_cnt <= clock_cnt + 1;
                        current_state <= Bit2;
                    else
                        clock_cnt <= 0;
                        data_out(2) <= rx_data_in;
                        current_state <= Bit3;
                    end if;
                when Bit3 =>
                    if (clock_cnt < CLKS_PER_BIT - 1) then
                        clock_cnt <= clock_cnt + 1;
                        current_state <= Bit3;
                    else
                        clock_cnt <= 0;
                        data_out(3) <= rx_data_in;
                        current_state <= Bit4;
                    end if;
                when Bit4 =>
                    if (clock_cnt < CLKS_PER_BIT - 1) then
                        clock_cnt <= clock_cnt + 1;
                        current_state <= Bit4;
                    else
                        clock_cnt <= 0;
                        data_out(4) <= rx_data_in;
                        current_state <= Bit5;
                    end if;
                when Bit5 =>
                    if (clock_cnt < CLKS_PER_BIT - 1) then
                        clock_cnt <= clock_cnt + 1;
                        current_state <= Bit5;
                    else
                        clock_cnt <= 0;
                        data_out(5) <= rx_data_in;
                        current_state <= Bit6;
                    end if;
                when Bit6 =>
                    if (clock_cnt < CLKS_PER_BIT - 1) then
                        clock_cnt <= clock_cnt + 1;
                        current_state <= Bit6;
                    else
                        clock_cnt <= 0;
                        data_out(6) <= rx_data_in;
                        current_state <= Bit7;
                    end if;
                when Bit7 =>
                    if (clock_cnt < CLKS_PER_BIT - 1) then
                        clock_cnt <= clock_cnt + 1;
                        current_state <= Bit7;
                    else
                        clock_cnt <= 0;
                        data_out(7) <= rx_data_in;
                        current_state <= StopBit;
                    end if;
                when StopBit =>
                    if (clock_cnt < CLKS_PER_BIT - 1) then
                        clock_cnt <= clock_cnt + 1;
                        current_state <= StopBit;
                    else
                        clock_cnt <= 0;
                        data_output <= data_out;
                        data_valid <= '1';
                        current_state <= Reset;
                    end if;
                when Reset =>
                    current_state <= Idle;
                    data_valid <= '0';
                when others =>
            end case;
        end if;        
    end process rx;

end Behavioral;