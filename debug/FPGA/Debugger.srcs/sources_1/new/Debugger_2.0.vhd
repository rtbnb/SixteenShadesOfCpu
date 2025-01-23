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

    entity Debugger is
        generic (
            BYTES_PER_WORD : unsigned := 2;
            W_FORMAT_MAX_ADDR : unsigned := ((BYTES_PER_WORD + 3)) * 8 - 1;
            W_FORMAT_BYTES : unsigned := BYTES_PER_WORD + 3;
            R_FORMAT_BYTES  : unsigned := 3;
            D_FORMAT_BYTES  : unsigned := 2
        );
        Port (
            clk: in std_logic;
            rxData: in std_logic_vector(7 downto 0);
            rxDataValid: in std_logic;

            txData: out std_logic_vector(7 downto 0);
            txDataValid: out std_logic;
            txDataSended: in std_logic;

            nsel: out std_logic_vector(7 downto 0);
            debugBufferClk: out std_logic;
            data: inout std_logic_vector((BYTES_PER_WORD * 8) - 1 downto 0) := (others => 'Z');
            mode: out std_logic;

            -- architecture specific Shade 1
            debugEnable: out std_logic := '0'
        );
    end Debugger;

    architecture Behavioral of Debugger is
        -- state machine
        type state_recv_type is (Idle, RecvCommand);
        type state_send_type is (Idle, Send);

        signal s_dataOut: std_logic_vector(W_FORMAT_MAX_ADDR downto 0) := (others => '0');
        signal s_dataIn: std_logic_vector(W_FORMAT_MAX_ADDR downto 0) := (others => '0');
        signal s_recvLock: std_logic := '0';
        signal s_processLock: std_logic := '0';
        signal s_requestedByteSend: std_logic := '0';
        signal s_commandSend: std_logic := '0';
        signal s_burst: std_logic := '0';
        signal s_debugBufferClk: std_logic := '0';
        signal s_burstCounter: unsigned(4 downto 0) := (others => '0');
        signal s_dataCounter: unsigned(2 downto 0) := (others => '0');
        signal s_byteSendCounter: unsigned(2 downto 0) := (others => '0');
        signal s_state_recv: state_recv_type := Idle;
        signal s_state_send: state_send_type := Idle;
    begin
        debugBufferClk <= s_debugBufferClk;

        recv: process(clk, rxDataValid) is
        begin
            if rising_edge(clk) then
                case s_state_recv is
                    when Idle =>
                        if (rxDataValid) = '1' then
                            s_dataIn(7 downto 0) <= rxData;
                            if (rxData(7 downto 6) = "00") then -- R-Format
                                s_state <= RFormatRecv;
                                s_dataCounter <= R_FORMAT_BYTES - 1; -- first byte already received
                            elsif (rxData(7 downto 6) = "01") then -- D-Format
                                s_state <= DFormatRecv;
                                s_dataCounter <= D_FORMAT_BYTES - 1; -- first byte already received
                            elsif (rxData(7) = "1") then -- W-Format
                                s_state <= WFormatRecv;
                                s_dataCounter <= W_FORMAT_BYTES - 1; -- first byte already received
                            end if;
                        elsif (s_recvLock and s_processLock) = '1' then -- resets recvLock if other lock is in place
                            s_recvLock <= '0';
                        end if;
                    when RecvCommand =>
                        if (s_dataCounter = 0) then
                            -- TODO: error correction code
                            s_recvLock <= '1';
                            s_state <= Idle;
                        elsif (rxDataValid = '1') then
                            s_dataIn(s_dataCounter * 8 + 7 downto s_dataCounter * 8) <= rxData;
                            s_dataCounter <= s_dataCounter -1;
                        end if;
                    when ProcessCmd =>
                        s_debugBufferClk <= '1';
                        case s_dataIn(2 downto 0) is
                            when "000" => -- Read
                                s_state <= NodeRead;
                                data <= "ZZZZZZZZZZZZZZZZ";
                                nsel <= s_dataIn(15 downto 8);
                            when "001" => -- Burst Read
                                s_state <= NodeBurstRead;
                                s_burstCounter <= unsigned(s_dataIn(7 downto 3));
                                data <= "ZZZZZZZZZZZZZZZZ";
                                nsel <= s_dataIn(15 downto 8);
                            when "010" => -- Cpu Clk Step
                            -- TODO: specify node select address for clock controler clk step
                            when "011" => -- DEBUG
                                debugEnable <= s_dataIn(3);
                            when "100" => -- Reserved
                            when "101" => -- Mem Write
                                s_state <= NodeRead;
                            -- TODO: specify node select address for memory data
                            when "110" => -- Mem Read
                                s_state <= NodeBurstRead;
                                s_burstCounter <= unsigned(s_dataIn(7 downto 3));
                                data <= "ZZZZZZZZZZZZZZZZ";
                            -- nsel <= ;
                            -- TODO: specify node select address for memory address
                            when "111" => -- Write
                                data <= s_dataIn(((BYTES_PER_WORD + 2) * 8) - 1 downto 16);
                                nsel <= s_dataIn(15 downto 8);
                            when others =>
                                s_state <= NodeRead;
                        end case;
                    when NodeRead =>
                        s_debugBufferClk <= '0';
                        case s_dataIn(2 downto 0) is
                            when "000" => -- Read
                            when "001" => -- Burst Read
                            when "010" => -- Cpu Clk Step
                            when "011" => -- DEBUG
                            when "100" => -- Reserved
                            when "101" => -- Mem Write
                            when "110" => -- Mem Read
                            when "111" => -- Write
                            when others =>
                        end case;
                    when NodeBurstRead =>
                        if s_burstCounter = 0 then
                            s_state <= Send;
                        else
                            if s_debugBufferClk = '1' then -- data in output register => fetch data

                                s_debugBufferClk <= '0';
                            else -- increment addr
                                s_debugBufferClk <= '1';
                            end if;
                        end if;
                    when Send =>
                    when others =>
                end case;
            end if;
        end process recv;

        send: process(clk) is
        begin
            if rising_edge(clk) then
                case s_state_send is
                    when Idle =>
                        if (s_requestedByteSend) = '1' then
                            s_state_send <= Send;
                        end if;
                    when Send =>
                        if s_byteSendCounter = 0 then
                            if txDataSended = '1' then
                                s_state_send <= Idle;
                            end if;
                        else
                            tx_data <= s_dataOut(s_byteSendCounter * 8 + 7 downto s_byteSendCounter * 8);
                            s_byteSendCounter <= s_byteSendCounter - 1;
                        end if;
                    when others =>
                end case;

            end if;
        end process send;
    end Behavioral;
