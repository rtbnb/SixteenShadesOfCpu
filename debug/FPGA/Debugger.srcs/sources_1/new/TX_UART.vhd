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
        CLKS_PER_BIT: integer := 55 -- (clock Frequency) / (Baud Rate) => 100000000 / 921600
    );
    Port (
        data_valid: in std_logic; -- rising edge to start the writing process
        data_in: in std_logic_vector(7 downto 0);
        clk: in std_logic;
        tx_output: out std_logic;
        send_valid: out std_logic
    );
end TX_UART;

architecture Behavioral of TX_UART is
    type state_type is (Idle, Start_TX, Bit0, Bit1, Bit2, Bit3, Bit4, Bit5, Bit6, Bit7, Stop_Bit, Reset);
    signal current_state: state_type := Idle;
    signal clk_cnt: integer range 0 to CLKS_PER_BIT - 1 := 0;
    signal tx_data: std_logic_vector(7 downto 0);
    signal tx_data_out: std_logic;
begin
    tx_output <= tx_data_out;

    clock: process(clk) begin
        
    end process clock;
    
    tx: process(clk, current_state) begin
        if rising_edge(clk) then
            case current_state is
                when Idle =>
                    if (data_valid = '1') then
                        tx_data <= data_in;
                        current_state <= Start_TX;
                        clk_cnt <= 0;
                        tx_data_out <= '1';
                    else
                        current_state <= Idle;
                        tx_data_out <= '1';
                    end if;
                when Start_TX =>
                    if (clk_cnt = (CLKS_PER_BIT - 1)) then
                        current_state <= Bit0;
                        clk_cnt <= 0;
                    else
                        current_state <= Start_TX;
                        tx_data_out <= '0';
                        clk_cnt <= clk_cnt + 1;
                    end if;
                when Bit0 =>
                    if (clk_cnt = (CLKS_PER_BIT - 1)) then
                        current_state <= Bit1;
                        clk_cnt <= 0;
                    else
                        current_state <= Bit0;
                        tx_data_out <= tx_data(7);
                        clk_cnt <= clk_cnt + 1;
                    end if;
                when Bit1 =>
                    if (clk_cnt = (CLKS_PER_BIT - 1)) then
                        current_state <= Bit2;
                        clk_cnt <= 0;
                    else
                        current_state <= Bit1;
                        tx_data_out <= tx_data(6);
                        clk_cnt <= clk_cnt + 1;
                    end if;
                when Bit2 =>
                    if (clk_cnt = (CLKS_PER_BIT - 1)) then
                        current_state <= Bit3;
                        clk_cnt <= 0;
                    else
                        current_state <= Bit2;
                        tx_data_out <= tx_data(5);
                        clk_cnt <= clk_cnt + 1;
                    end if;
                when Bit3 =>
                    if (clk_cnt = (CLKS_PER_BIT - 1)) then
                        current_state <= Bit4;
                        clk_cnt <= 0;
                    else
                        current_state <= Bit3;
                        tx_data_out <= tx_data(4);
                        clk_cnt <= clk_cnt + 1;
                    end if;
                when Bit4 =>
                    if (clk_cnt = (CLKS_PER_BIT - 1)) then
                        current_state <= Bit5;
                        clk_cnt <= 0;
                    else
                        current_state <= Bit4;
                        tx_data_out <= tx_data(3);
                        clk_cnt <= clk_cnt + 1;
                    end if;
                when Bit5 =>
                    if (clk_cnt = (CLKS_PER_BIT - 1)) then
                        current_state <= Bit6;
                        clk_cnt <= 0;
                    else
                        current_state <= Bit5;
                        tx_data_out <= tx_data(2);
                        clk_cnt <= clk_cnt + 1;
                    end if;
                when Bit6 =>
                    if (clk_cnt = (CLKS_PER_BIT - 1)) then
                        current_state <= Bit7;
                        clk_cnt <= 0;
                    else
                        current_state <= Bit6;
                        tx_data_out <= tx_data(1);
                        clk_cnt <= clk_cnt + 1;
                    end if;
                when Bit7 =>
                    if (clk_cnt = (CLKS_PER_BIT - 1)) then
                        current_state <= Stop_Bit;
                        clk_cnt <= 0;
                    else
                        current_state <= Bit7;
                        tx_data_out <= tx_data(0);
                        clk_cnt <= clk_cnt + 1;
                    end if;
                when Stop_Bit =>
                    if (clk_cnt = (CLKS_PER_BIT - 1)) then
                        current_state <= Reset;
                        clk_cnt <= 0;
                        send_valid <= '1';
                    else
                        current_state <= Stop_Bit;
                        tx_data_out <= '1';
                        clk_cnt <= clk_cnt + 1;
                    end if;
                when Reset =>
                    current_state <= Idle;
                    send_valid <= '0';
                when others =>
            end case;
        end if;
    end process tx;


end Behavioral;
