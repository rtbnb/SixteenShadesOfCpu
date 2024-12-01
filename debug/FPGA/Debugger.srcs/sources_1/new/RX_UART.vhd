----------------------------------------------------------------------------------
-- Create Date: 15.11.2024 11:13:30
-- Name: Nico
-- Design Name: ShadeCpu
-- Module Name: RX_UART - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity RX_UART is
    generic (
        CLKS_PER_BIT_G: integer := 434 -- (clock Frequency) / (Baud Rate) => 50000000 / 9600
    );
    Port (
        clk: in std_logic;
        rxSerialInput: in std_logic;
        dataOutput: out std_logic_vector(7 downto 0);
        dataValid: out std_logic := '0'
    );
end RX_UART;

 architecture Behavioral of RX_UART is
    type state_type is (Idle, StartRX, Bit0, Bit1, Bit2, Bit3, Bit4, Bit5, Bit6, Bit7, StopBit, Reset);
    signal state_s: state_type := Idle;
    signal rx_data_in_s: std_logic;
    signal rx_data_in_buf_s: std_logic;
    signal data_out_s: std_logic_vector(7 downto 0) := (others => '0');
    signal clock_cnt_s: integer range 0 to CLKS_PER_BIT_G - 1 := 0;
begin
    --data_output <= data_out;
    buffer_data: process (clk) is
    begin
        if rising_edge(clk) then
            -- data buffering
            rx_data_in_buf_s <= rxSerialInput;
            rx_data_in_s <= rx_data_in_buf_s;
        end if;
    end process buffer_data;

    rx: process(clk) is
    begin
        if rising_edge(clk) then
            -- state machine
            case state_s is
                when Idle =>
                    clock_cnt_s <= 0;
                    if (rx_data_in_s = '0') then
                        state_s <= StartRX;
                        dataValid <= '0';
                    else
                        state_s <= Idle;
                    end if;
                when StartRX =>
                    if (clock_cnt_s = (CLKS_PER_BIT_G - 1) / 2) then
                        if (rx_data_in_s = '0') then
                            clock_cnt_s <= 0;
                            state_s <= Bit0;
                        else
                            state_s <= Idle;
                        end if;
                    else
                        clock_cnt_s <= clock_cnt_s + 1;
                        state_s <= StartRX;
                    end if;
                when Bit0 =>
                    if (clock_cnt_s < CLKS_PER_BIT_G - 1) then
                        clock_cnt_s <= clock_cnt_s + 1;
                        state_s <= Bit0;
                    else
                        clock_cnt_s <= 0;
                        data_out_s(0) <= rx_data_in_s;
                        state_s <= Bit1;
                    end if;
                when Bit1 =>
                    if (clock_cnt_s < CLKS_PER_BIT_G - 1) then
                        clock_cnt_s <= clock_cnt_s + 1;
                        state_s <= Bit1;
                    else
                        clock_cnt_s <= 0;
                        data_out_s(1) <= rx_data_in_s;
                        state_s <= Bit2;
                    end if;
                when Bit2 =>
                    if (clock_cnt_s < CLKS_PER_BIT_G - 1) then
                        clock_cnt_s <= clock_cnt_s + 1;
                        state_s <= Bit2;
                    else
                        clock_cnt_s <= 0;
                        data_out_s(2) <= rx_data_in_s;
                        state_s <= Bit3;
                    end if;
                when Bit3 =>
                    if (clock_cnt_s < CLKS_PER_BIT_G - 1) then
                        clock_cnt_s <= clock_cnt_s + 1;
                        state_s <= Bit3;
                    else
                        clock_cnt_s <= 0;
                        data_out_s(3) <= rx_data_in_s;
                        state_s <= Bit4;
                    end if;
                when Bit4 =>
                    if (clock_cnt_s < CLKS_PER_BIT_G - 1) then
                        clock_cnt_s <= clock_cnt_s + 1;
                        state_s <= Bit4;
                    else
                        clock_cnt_s <= 0;
                        data_out_s(4) <= rx_data_in_s;
                        state_s <= Bit5;
                    end if;
                when Bit5 =>
                    if (clock_cnt_s < CLKS_PER_BIT_G - 1) then
                        clock_cnt_s <= clock_cnt_s + 1;
                        state_s <= Bit5;
                    else
                        clock_cnt_s <= 0;
                        data_out_s(5) <= rx_data_in_s;
                        state_s <= Bit6;
                    end if;
                when Bit6 =>
                    if (clock_cnt_s < CLKS_PER_BIT_G - 1) then
                        clock_cnt_s <= clock_cnt_s + 1;
                        state_s <= Bit6;
                    else
                        clock_cnt_s <= 0;
                        data_out_s(6) <= rx_data_in_s;
                        state_s <= Bit7;
                    end if;
                when Bit7 =>
                    if (clock_cnt_s < CLKS_PER_BIT_G - 1) then
                        clock_cnt_s <= clock_cnt_s + 1;
                        state_s <= Bit7;
                    else
                        clock_cnt_s <= 0;
                        data_out_s(7) <= rx_data_in_s;
                        state_s <= StopBit;
                    end if;
                when StopBit =>
                    if (clock_cnt_s < CLKS_PER_BIT_G - 1) then
                        clock_cnt_s <= clock_cnt_s + 1;
                        state_s <= StopBit;
                    else
                        clock_cnt_s <= 0;
                        dataOutput <= data_out_s;
                        dataValid <= '1';
                        state_s <= Reset;
                    end if;
                when Reset =>
                    state_s <= Idle;
                    dataValid <= '0';
                when others =>
            end case;
        end if;        
    end process rx;
end Behavioral;