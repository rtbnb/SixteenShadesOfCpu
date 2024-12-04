----------------------------------------------------------------------------------
-- Create Date: 15.11.2024 16:43:36
-- Name: Nico Tunkowski
-- Design Name: ShadeCpu
-- Module Name: TX_UART - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity TX_UART is
    generic (
        CLKS_PER_BIT_G: integer := 434 -- (clock Frequency) / (Baud Rate) => 50000000 / 9600
    );
    Port (
        dataValid: in std_logic; -- rising edge to start the writing process
        dataIn: in std_logic_vector(7 downto 0);
        clk: in std_logic;
        txOutput: out std_logic;
        sendValid: out std_logic
    );
end TX_UART;

architecture Behavioral of TX_UART is
    type state_type is (Idle, StartTX, Bit0, Bit1, Bit2, Bit3, Bit4, Bit5, Bit6, Bit7, StopBit, Reset);
    signal state_s: state_type := Idle;
    signal clk_cnt_s: integer range 0 to CLKS_PER_BIT_G - 1 := 0;
    signal tx_data_s: std_logic_vector(7 downto 0);
    signal tx_data_out_s: std_logic;
begin
    txOutput <= tx_data_out_s;
    tx: process(clk, state_s) is
    begin
        if rising_edge(clk) then
            case state_s is
                when Idle =>
                    if (dataValid = '1') then
                        tx_data_s <= dataIn;
                        state_s <= StartTX;
                        clk_cnt_s <= 0;
                        tx_data_out_s <= '1';
                    else
                        state_s <= Idle;
                        tx_data_out_s <= '1';
                    end if;
                when StartTX =>
                    if (clk_cnt_s = (CLKS_PER_BIT_G - 1)) then
                        state_s <= Bit0;
                        clk_cnt_s <= 0;
                    else
                        state_s <= StartTX;
                        tx_data_out_s <= '0';
                        clk_cnt_s <= clk_cnt_s + 1;
                    end if;
                when Bit0 =>
                    if (clk_cnt_s = (CLKS_PER_BIT_G - 1)) then
                        state_s <= Bit1;
                        clk_cnt_s <= 0;
                    else
                        state_s <= Bit0;
                        tx_data_out_s <= tx_data_s(0);
                        clk_cnt_s <= clk_cnt_s + 1;
                    end if;
                when Bit1 =>
                    if (clk_cnt_s = (CLKS_PER_BIT_G - 1)) then
                        state_s <= Bit2;
                        clk_cnt_s <= 0;
                    else
                        state_s <= Bit1;
                        tx_data_out_s <= tx_data_s(1);
                        clk_cnt_s <= clk_cnt_s + 1;
                    end if;
                when Bit2 =>
                    if (clk_cnt_s = (CLKS_PER_BIT_G - 1)) then
                        state_s <= Bit3;
                        clk_cnt_s <= 0;
                    else
                        state_s <= Bit2;
                        tx_data_out_s <= tx_data_s(2);
                        clk_cnt_s <= clk_cnt_s + 1;
                    end if;
                when Bit3 =>
                    if (clk_cnt_s = (CLKS_PER_BIT_G - 1)) then
                        state_s <= Bit4;
                        clk_cnt_s <= 0;
                    else
                        state_s <= Bit3;
                        tx_data_out_s <= tx_data_s(3);
                        clk_cnt_s <= clk_cnt_s + 1;
                    end if;
                when Bit4 =>
                    if (clk_cnt_s = (CLKS_PER_BIT_G - 1)) then
                        state_s <= Bit5;
                        clk_cnt_s <= 0;
                    else
                        state_s <= Bit4;
                        tx_data_out_s <= tx_data_s(4);
                        clk_cnt_s <= clk_cnt_s + 1;
                    end if;
                when Bit5 =>
                    if (clk_cnt_s = (CLKS_PER_BIT_G - 1)) then
                        state_s <= Bit6;
                        clk_cnt_s <= 0;
                    else
                        state_s <= Bit5;
                        tx_data_out_s <= tx_data_s(5);
                        clk_cnt_s <= clk_cnt_s + 1;
                    end if;
                when Bit6 =>
                    if (clk_cnt_s = (CLKS_PER_BIT_G - 1)) then
                        state_s <= Bit7;
                        clk_cnt_s <= 0;
                    else
                        state_s <= Bit6;
                        tx_data_out_s <= tx_data_s(6);
                        clk_cnt_s <= clk_cnt_s + 1;
                    end if;
                when Bit7 =>
                    if (clk_cnt_s = (CLKS_PER_BIT_G - 1)) then
                        state_s <= StopBit;
                        clk_cnt_s <= 0;
                    else
                        state_s <= Bit7;
                        tx_data_out_s <= tx_data_s(7);
                        clk_cnt_s <= clk_cnt_s + 1;
                    end if;
                when StopBit =>
                    if (clk_cnt_s = (CLKS_PER_BIT_G - 1)) then
                        state_s <= Reset;
                        clk_cnt_s <= 0;
                        sendValid <= '1';
                    else
                        state_s <= StopBit;
                        tx_data_out_s <= '1';
                        clk_cnt_s <= clk_cnt_s + 1;
                    end if;
                when Reset =>
                    state_s <= Idle;
                    sendValid <= '0';
                when others =>
            end case;
        end if;
    end process tx;
end Behavioral;