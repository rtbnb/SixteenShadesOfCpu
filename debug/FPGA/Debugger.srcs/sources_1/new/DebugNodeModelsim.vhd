----------------------------------------------------------------------------------
-- Create Date: 06.11.2024 15:14:57
-- Name: Nico Tunkowski
-- Design Name: ShadeCpu
-- Module Name: RegFileSim - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DebugNodeModelsim is

end DebugNodeModelsim;

architecture Behavioral of DebugNodeModelsim is
    component Debugger is
        port (
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
    end component Debugger;

    signal clk: std_logic := '0';
    signal rxData: std_logic_vector(7 downto 0) := (others => '0');
    signal rxDataValid: std_logic := '0';

    signal txData: std_logic_vector(7 downto 0) := (others => '0');
    signal txDataValid: std_logic := '0';
    signal txDataSended: std_logic := '0';

    signal nsel: std_logic_vector(7 downto 0) := (others => '0');
    signal debugBufferClk: std_logic := '0';
    signal data: std_logic_vector((2 * 8) - 1 downto 0) := (others => 'Z');
    signal mode: std_logic := '0';

    -- architecture specific Shade 1
    signal debugEnable: std_logic := '0';
begin
    EUT: Debugger
    port map (
        clk => clk,
        rxData => rxData,
        rxDataValid => rxDataValid,
        txData => txData,
        txDataValid => txDataValid,
        txDataSended => txDataSended,
        nsel => nsel,
        debugBufferClk => debugBufferClk,
        data => data,
        mode => mode,
        debugEnable => debugEnable
    );

    clock: process begin
        clk <= not clk;
        wait for 2.5ns;
    end process clock;

    test: process begin
        rxDataValid <= '0';
        wait for 5ns;
        -- start data transmission
        -- Await Data
        rxData <= "00001001"; -- cmdID: 1, burst length: 1
        rxDataValid <= '1';
        wait for 5ns;
        -- Read Bytes
        rxData <= "00000001"; -- nsel: 1
        rxDataValid <= '1';
        wait for 5ns;
        -- Read Bytes
        rxData <= "00000010"; -- ecc: 2
        rxDataValid <= '1';
        wait for 5ns;
        -- Error Corrected
        rxDataValid <= '0';
        data <= x"ABAB";
        assert debugBufferClk = '1' report "DebugBufferClk is not high" severity error;
        assert nsel = "00000001" report "nsel is not 1" severity error;
        wait for 5ns;
        -- control signal set
        data <= x"ABAB";
        assert debugBufferClk = '0' report "DebugBufferClk is not low" severity error;
        wait for 5ns;
        -- Send
        data <= "ZZZZZZZZZZZZZZZZ";
        assert txDataValid = '1' report "txDataValid is not high" severity error;
        wait for 5ns;
        -- Wait Sended
        txDataSended <= '1';
        assert txDataValid = '0' report "txDataValid is not low" severity error;
        wait for 5ns;
        -- Send
        txDataSended <= '0';
        assert txDataValid = '1' report "txDataValid is not high" severity error;
        wait for 5ns;
        -- Wait Sended
        txDataSended <= '1';
        assert txDataValid = '0' report "txDataValid is not low" severity error;
        wait for 5ns;
        -- Send
        txDataSended <= '0';
        assert txDataValid = '1' report "txDataValid is not high" severity error;
        wait for 5ns;
        -- Wait Sended
        txDataSended <= '1';
        assert txDataValid = '0' report "txDataValid is not low" severity error;
        wait for 5ns;
        -- Send
        txDataSended <= '0';
        assert txDataValid = '1' report "txDataValid is not high" severity error;
        wait for 5ns;
        -- Wait Sended
        txDataSended <= '1';
        assert txDataValid = '0' report "txDataValid is not low" severity error;
        wait for 5ns;
        -- Await Data
        wait;
    end process test;


end Behavioral;
