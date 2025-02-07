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
    component design_1_wrapper is
        port (
            clk_0 : in STD_LOGIC;
            rxData_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
            rxDataValid_0 : in STD_LOGIC;
            txData_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
            txDataSended_0 : in STD_LOGIC;
            txDataValid_0 : out STD_LOGIC;
            debugEnable_0 : out STD_LOGIC;
            nodeClkOut_0 : out STD_LOGIC;
            nodeDataOut_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
            nodeDataIn_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
        );
    end component design_1_wrapper;

    signal clk_0: std_logic := '0';
    signal rxData_0: std_logic_vector(7 downto 0) := (others => '0');
    signal rxDataValid_0: std_logic := '0';

    signal txData_0: std_logic_vector(7 downto 0) := (others => '0');
    signal txDataValid_0: std_logic := '0';
    signal txDataSended_0: std_logic := '0';

    signal debugEnable_0: std_logic := '0';
    signal nodeClkOut_0: std_logic := '0';
    signal nodeDataOut_0: std_logic_vector(15 downto 0) := (others => '0');
    signal nodeDataIn_0: std_logic_vector ( 15 downto 0 ) := x"ABAB";
begin
    EUT: design_1_wrapper
    port map (
        clk_0 => clk_0,
        rxData_0 => rxData_0,
        rxDataValid_0 => rxDataValid_0,
        txData_0 => txData_0,
        txDataValid_0 => txDataValid_0,
        txDataSended_0 => txDataSended_0,
        debugEnable_0 => debugEnable_0,
        nodeClkOut_0 => nodeClkOut_0,
        nodeDataOut_0 => nodeDataOut_0,
        nodeDataIn_0 => nodeDataIn_0
        
    );

    clock: process begin
        clk_0 <= not clk_0;
        wait for 2.5ns;
    end process clock;

    test: process begin
        rxDataValid_0 <= '0';
        wait for 5ns;
        -- start data transmission
        -- Await Data
        rxData_0 <= "00001001"; -- cmdID: 1, burst length: 1
        rxDataValid_0 <= '1';
        wait for 5ns;
        -- Read Bytes
        rxData_0 <= "00000001"; -- nsel: 1
        rxDataValid_0 <= '1';
        wait for 5ns;
        -- Read Bytes
        rxData_0 <= "00000010"; -- ecc: 2
        rxDataValid_0 <= '1';
        wait for 5ns;
        -- Error Corrected
        rxDataValid_0 <= '0';
        wait for 5ns;
        -- control signal set
        -- data_0 <= x"ABAB";
        -- assert debugBufferClk_0 = '1' report "DebugBufferClk is not high" severity error;
        wait for 5ns;
        -- Send
        -- assert nsel = "00000001" report "nsel is not 1" severity error;
        -- data <= "ZZZZZZZZZZZZZZZZ";
        wait for 5ns;
        -- Wait Sended
        txDataSended_0 <= '1';
        -- assert txDataValid = '1' report "txDataValid is not high" severity error;
        wait for 5ns;
        -- Send
        txDataSended_0 <= '0';
        wait for 5ns;
        -- Wait Sended
        txDataSended_0 <= '1';
        -- assert txDataValid = '0' report "txDataValid is not low" severity error;
        wait for 5ns;
        -- Send
        txDataSended_0 <= '0';
        -- assert txDataValid = '0' report "txDataValid is not low" severity error;
        wait for 5ns;
        -- Wait Sended
        txDataSended_0 <= '1';
        -- assert txDataValid = '1' report "txDataValid is not high" severity error;
        wait for 5ns;
        -- Send
        txDataSended_0 <= '0';
        -- assert txDataValid = '0' report "txDataValid is not low" severity error;
        wait for 5ns;
        -- Wait Sended
        txDataSended_0 <= '1';
        -- assert txDataValid = '1' report "txDataValid is not high" severity error;
        wait for 5ns;
        -- Await Data
        -- assert txDataValid = '0' report "txDataValid is not low" severity error;
        wait;
    end process test;


end Behavioral;
