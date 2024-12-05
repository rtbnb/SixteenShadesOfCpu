--------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- -- Create Date: 10.11.2024 16:23:48
-- -- Name: Lukas Reil
-- -- Design Name: ShadeCpu
-- -- Module Name: CU_ImmediateManipulator_SIM - Behavioral
-- -- Project Name: ShadeCpu-1
-- -- Target Devices: Arty A7-35T Development Board
-- -- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
-- ----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.ALL;

entity CU_ImmediateManipulator_SIM is
end entity CU_ImmediateManipulator_SIM;

architecture Behavioral of CU_ImmediateManipulator_SIM is

    component CU_ImmediateManipulator is
        Port (
            reg1 : in std_logic_vector(15 downto 0);
            immediate : in std_logic_vector(15 downto 0);
            rfWHB : in std_logic;
            rfWLB : in std_logic;
            manipulatedImmediate : out std_logic_vector(15 downto 0)
        );
    end component CU_ImmediateManipulator;
    
    signal reg1_s : std_logic_vector(15 downto 0) := X"abcd";
    signal immediate_s : std_logic_vector(15 downto 0) := X"3377";
    signal rf_whb_s, rf_wlb_s : std_logic;
    
begin
    -- Outputs are not connected, as they will be configured in the waveform
    EUT : CU_ImmediateManipulator port map(
        reg1 => reg1_s,
        immediate => immediate_s,
        rfWHB => rf_whb_s,
        rfWLB => rf_wlb_s
    );
    
    -- Tests all possible combinations of rfWHB and rfWLB
    simulator : process is
    begin
        rf_whb_s <= '0';
        rf_wlb_s <= '0';
        wait for 10 ns;
        rf_whb_s <= '0';
        rf_wlb_s <= '1';
        wait for 10 ns;
        rf_whb_s <= '1';
        rf_wlb_s <= '0';
        wait for 10 ns;
        rf_whb_s <= '1';
        rf_wlb_s <= '1';
        wait for 10 ns;
    end process simulator;

end architecture Behavioral;
