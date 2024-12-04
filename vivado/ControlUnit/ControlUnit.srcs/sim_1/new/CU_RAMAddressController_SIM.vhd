----------------------------------------------------------------------------------
-- Create Date: 10.11.2024 16:23:48
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: CU_RAMAddressController_SIM - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.ALL;


entity CU_RAMAddressController_SIM is
end entity CU_RAMAddressController_SIM;

architecture Behavioral of CU_RAMAddressController_SIM is
    component CU_RAMAddressController is
        Port (
            reg2 : in std_logic_vector(15 downto 0);
            immediate : in std_logic_vector(15 downto 0);
            ramAddressSrc : in std_logic;
            ramAddress : out std_logic_vector(15 downto 0)
        );
    end component CU_RAMAddressController;
    
    signal reg_2_s : std_logic_vector(15 downto 0) := X"0acb";
    signal immediate_s : std_logic_vector(15 downto 0) := X"f123";
    signal ram_address_src_s : std_logic;
begin
    -- Outputs are not connected, as they will be configured in the waveform
    EUT : CU_RAMAddressController port map(
        reg2 => reg_2_s,
        immediate => immediate_s,
        ramAddressSrc => ram_address_src_s
    );
    
    simulator : process is
    begin
        ram_address_src_s <= '0';
        Use_MA <= '0';
        wait for 10 ns;
        ram_address_src_s <= '0';
        Use_MA <= '1';
        wait for 10 ns;
        ram_address_src_s <= '1';
        Use_MA <= '0';
        wait for 10 ns;
        ram_address_src_s <= '1';
        Use_MA <= '1';
        wait for 10 ns;
    end process simulator;

end architecture Behavioral;
