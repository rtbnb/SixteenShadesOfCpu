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
        type state_type is (AwaitData, ReadBytes, ErrorCorrected, ControlSignalSet, Send);

        signal s_state: state_type := AwaitData;
        signal s_dataIn: std_logic_vector((W_FORMAT_BYTES * 8) - 1 downto 0);
    begin
        debugBufferClk <= s_debugBufferClk;

        state_machine: process(clk, rxDataValid) is
        begin
            if rising_edge(clk) then
                case s_state is
                    when AwaitData =>
                        if rxValid = '1' then

                        end if;
                    when ReadBytes =>
                    when ErrorCorrected =>
                    when ControlSignalSet =>
                    when Send =>
                    when others =>
                end case;
            end if;
        end process state_machine;

    end Behavioral;
