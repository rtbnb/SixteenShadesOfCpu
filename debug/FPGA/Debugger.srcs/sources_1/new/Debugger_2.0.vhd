----------------------------------------------------------------------------------
-- Create Date: 16.11.2024 12:24:33
-- Name: Nico Tunkowski
-- Design Name: ShadeCpu
-- Module Name: Debugger - Behavioral
-- Version: 2.0
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Debugger is
    generic (
        BYTES_PER_WORD : unsigned := "010";
        W_FORMAT_BYTES : unsigned := "0101";
        R_FORMAT_BYTES  : unsigned := "0011";
        D_FORMAT_BYTES  : unsigned := "0010"
    );
    Port (
        clk: in std_logic;
        rxData: in std_logic_vector(7 downto 0);
        rxDataValid: in std_logic;

        txData: out std_logic_vector(7 downto 0);
        txDataValid: out std_logic;
        txDataSended: in std_logic;

        nsel: out std_logic_vector(7 downto 0);
        debugBufferClk: out std_logic := '0';
        data: inout std_logic_vector((2 * 8) - 1 downto 0) := (others => 'Z');
        mode: out std_logic;

        -- architecture specific Shade 1
        debugEnable: out std_logic := '0'
    );
end Debugger;

architecture Behavioral of Debugger is
    -- state machine
    type state_type is (AwaitData, ReadBytes, ErrorCorrected, ControlSignalSet, Send, SendACC, Error);

    signal s_state: state_type := AwaitData;

    -- data storage
    signal s_dataIn: std_logic_vector((to_integer(W_FORMAT_BYTES) * 8) - 1 downto 0);
    signal s_dataOut: std_logic_vector((to_integer(W_FORMAT_BYTES) * 8) - 1 downto 0);

    -- counter signals
    signal s_counter_target: unsigned(3 downto 0) := (others => '0');
    signal s_counter: unsigned(3 downto 0) := (others => '0');
    signal s_burstCounter: unsigned(4 downto 0) := (others => '0');
    signal s_dataOutCounter: unsigned(2 downto 0) := (others => '0');
begin
    state_machine: process(clk, rxDataValid) is
    begin
        if rising_edge(clk) then
            case s_state is
                when AwaitData =>
                    if rxDataValid = '1' then
                        s_dataIn((to_integer(W_FORMAT_BYTES) * 8) - 1 downto (to_integer(W_FORMAT_BYTES) - 1) * 8) <= rxData;
                        s_counter <= to_unsigned(1, 4);
                        case rxData(2 downto 0) is
                            when "000" | "001" => -- R-Format
                                s_counter_target <= R_FORMAT_BYTES;
                                s_burstCounter <= unsigned(rxData(7 downto 3));
                                s_state <= ReadBytes;
                            when "010" | "011" => -- D-Format
                                s_counter_target <= D_FORMAT_BYTES;
                                s_burstCounter <= to_unsigned(1, 5);
                                s_state <= ReadBytes;
                            when "101" | "110" | "111" => -- W-Format
                                s_counter_target <= W_FORMAT_BYTES;
                                s_burstCounter <= unsigned(rxData(7 downto 3));
                                s_state <= ReadBytes;
                            when others =>
                                s_burstCounter <= to_unsigned(0, 5);
                                s_counter_target <= to_unsigned(0, 4);
                                s_state <= Error;
                        end case;
                    else -- error state
                        s_state <= AwaitData;
                    end if;
                when ReadBytes =>
                    if rxDataValid = '1' and (to_integer(s_counter) < to_integer(s_counter_target)) then -- read bytes
                        s_counter <= s_counter + 1;
                        s_dataIn((to_integer(W_FORMAT_BYTES - s_counter) * 8) - 1 downto (to_integer(W_FORMAT_BYTES - s_counter - 1) * 8)) <= rxData;
                        s_state <= ReadBytes;
                    elsif rxDataValid = '1' and (to_integer(s_counter) = to_integer(s_counter_target)) then -- read bytes + error correction
                        s_dataIn((to_integer(W_FORMAT_BYTES - s_counter) * 8) - 1 downto (to_integer(W_FORMAT_BYTES - s_counter - 1) * 8)) <= rxData;
                        s_state <= ErrorCorrected;
                    else -- error state
                        s_state <= Error;
                    end if;
                when ErrorCorrected => -- set control signals
                    case s_dataIn((to_integer(W_FORMAT_BYTES) * 8) - 1 downto (to_integer(W_FORMAT_BYTES) * 8) - 3) is
                        when "000" => -- Read
                            data((to_integer(BYTES_PER_WORD) * 8) - 1 downto 0) <= (others => 'Z');
                            nsel <= s_dataIn((to_integer(W_FORMAT_BYTES) - 1) * 8 - 1 downto (to_integer(W_FORMAT_BYTES) - 2) * 8);
                            debugBufferClk <= '1';
                            mode <= '0';
                            s_state <= ControlSignalSet;
                        when "001" => -- Burst Read
                            data((to_integer(BYTES_PER_WORD) * 8) - 1 downto 0) <= (others => 'Z');
                            nsel <= s_dataIn((to_integer(W_FORMAT_BYTES) - 1) * 8 - 1 downto (to_integer(W_FORMAT_BYTES) - 2) * 8);
                            debugBufferClk <= '1';
                            mode <= '0';
                            s_state <= ControlSignalSet;
                        when "010" => -- Cpu Clk Step
                            data((to_integer(BYTES_PER_WORD) * 8) - 1 downto 0) <= (others => 'Z');
                            mode <= '0';
                            s_state <= ControlSignalSet;
                        when "011" => -- Debug
                            data((to_integer(BYTES_PER_WORD) * 8) - 1 downto 0) <= (others => 'Z');
                            mode <= '0';
                            debugEnable <= s_dataIn((to_integer(W_FORMAT_BYTES) * 8) - 4);
                            s_state <= ControlSignalSet;
                        when "101" => -- Mem Write
                            data((to_integer(BYTES_PER_WORD) * 8) - 1 downto 0) <= s_dataIn((to_integer(W_FORMAT_BYTES) - 2) * 8 - 1 downto (to_integer(W_FORMAT_BYTES) - 2 - to_integer(BYTES_PER_WORD)) * 8);
                            nsel <= "00000000"; -- TODO: define nsel table
                            mode <= '1';
                            debugBufferClk <= '1';
                            s_state <= ControlSignalSet;
                        when "110" => -- Mem Read
                            data((to_integer(BYTES_PER_WORD) * 8) - 1 downto 0) <= (others => 'Z');
                            nsel <= "00000000"; -- TODO: define nsel table
                            mode <= '0';
                            debugBufferClk <= '1';
                            s_state <= ControlSignalSet;
                        when "111" => -- Write
                            data((to_integer(BYTES_PER_WORD) * 8) - 1 downto 0) <= s_dataIn((to_integer(W_FORMAT_BYTES) - 2) * 8 - 1 downto (to_integer(W_FORMAT_BYTES) - 2 - to_integer(BYTES_PER_WORD)) * 8);
                            nsel <= s_dataIn((to_integer(W_FORMAT_BYTES) - 1) * 8 - 1 downto (to_integer(W_FORMAT_BYTES) - 2) * 8);
                            debugBufferClk <= '1';
                            mode <= '1';
                            s_state <= ControlSignalSet;
                        when others =>
                            s_state <= Error;
                    end case;
                when ControlSignalSet =>
                    case s_dataIn((to_integer(W_FORMAT_BYTES) * 8) - 1 downto (to_integer(W_FORMAT_BYTES) * 8) - 3) is
                        when "000" | "001" | "110" => -- Data Format
                            s_dataOutCounter <= to_unsigned(2, 3) + BYTES_PER_WORD;
                            s_dataOut((to_integer(W_FORMAT_BYTES) - 1 - to_integer(BYTES_PER_WORD)) * 8 - 1 downto (to_integer(W_FORMAT_BYTES) - 2 - to_integer(BYTES_PER_WORD)) * 8) <= "00000000"; -- ECC
                            s_dataOut(((to_integer(W_FORMAT_BYTES) - 1) * 8) - 1 downto (to_integer(W_FORMAT_BYTES) - 1 - to_integer(BYTES_PER_WORD)) * 8) <= data((to_integer(BYTES_PER_WORD) * 8) - 1 downto 0); -- Data
                            s_dataOut((to_integer(W_FORMAT_BYTES) - 1 - to_integer(BYTES_PER_WORD)) * 8 - 1 downto ((to_integer(W_FORMAT_BYTES) - 1 - to_integer(BYTES_PER_WORD)) * 8) - 3) <= "000"; -- Status
                            s_dataOut((to_integer(W_FORMAT_BYTES) - 1 - to_integer(BYTES_PER_WORD)) * 8 - 4 downto ((to_integer(W_FORMAT_BYTES) - 1 - to_integer(BYTES_PER_WORD)) * 8) - 8) <= std_logic_vector(s_burstCounter); -- Data Index
                            s_burstCounter <= s_burstCounter - 1;
                            s_state <= Send;
                        when "010" | "011" | "101" | "111" => -- Acc Format
                            s_dataOutCounter <= to_unsigned(2, 3);
                            s_dataOut(((to_integer(W_FORMAT_BYTES)) * 8) - 1 downto ((to_integer(W_FORMAT_BYTES)) * 8) - 8) <= "00000000"; -- ECC
                            s_dataOut(((to_integer(W_FORMAT_BYTES) - 1) * 8) - 1 downto ((to_integer(W_FORMAT_BYTES) - 1) * 8) - 3) <= "000"; -- Status
                            s_dataOut(((to_integer(W_FORMAT_BYTES) - 1) * 8) - 4 downto ((to_integer(W_FORMAT_BYTES) - 1) * 8) - 5) <= "00"; -- BLANK
                            s_dataOut(((to_integer(W_FORMAT_BYTES) - 1) * 8) - 6 downto ((to_integer(W_FORMAT_BYTES) - 1) * 8) - 8) <= s_dataIn((to_integer(W_FORMAT_BYTES) * 8) - 1 downto (to_integer(W_FORMAT_BYTES) * 8) - 3); -- CmdID
                            s_burstCounter <= s_burstCounter - 1;
                            s_state <= Send;
                        when others =>
                            s_state <= Error;
                    end case;
                    debugBufferClk <= '0';
                when Send =>
                    txData <= s_dataOut((to_integer(W_FORMAT_BYTES - s_dataOutCounter) * 8) - 1 downto (to_integer(W_FORMAT_BYTES - s_dataOutCounter) * 8) - 8);
                    txDataValid <= '1';
                    s_dataOutCounter <= s_dataOutCounter - 1;
                    s_state <= SendACC;
                when SendACC =>
                    txDataValid <= '0';
                    if s_dataOutCounter = 0 and txDataSended = '1' then
                        if s_burstCounter = 0 then
                            s_state <= AwaitData;
                        else
                            s_state <= ErrorCorrected;
                        end if;
                    elsif txDataSended = '1' then
                        s_state <= Send;
                    else
                        s_state <= Error;
                    end if;
                when Error =>
                    s_state <= Error;
                when others =>
                    s_state <= Error;
            end case;
        end if;
    end process state_machine;
end Behavioral;
