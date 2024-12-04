----------------------------------------------------------------------------------
-- Create Date: 10.11.2024 16:23:48
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: CU_WriteSelector_SIM - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------



library ieee;
use ieee.std_logic_1164.ALL;

use ieee.numeric_std.ALL;

entity CU_WriteSelector_SIM is
end entity CU_WriteSelector_SIM;

architecture Behavioral of CU_WriteSelector_SIM is
    component CU_WriteSelector is
        Port (
            ramOut : in std_logic_vector(15 downto 0);
            manipulatedImmediate : in std_logic_vector(15 downto 0);
            reg1 : in std_logic_vector(15 downto 0);
            aluOut : in std_logic_vector(15 downto 0);
            fpuOut : in std_logic_vector(15 downto 0);
            aluFlags : in std_logic_vector(15 downto 0);
            fpuFlags : in std_logic_vector(15 downto 0);
            writeSel : in std_logic_vector(2 downto 0);
            flagSel : in std_logic_vector(0 downto 0);
            writeData : out std_logic_vector(15 downto 0);
            flags : out std_logic_vector(15 downto 0)
        );
    end component CU_WriteSelector;
    

    
    signal write_sel_s : std_logic_vector(2 downto 0);
    signal flag_sel_s : std_logic_vector(0 downto 0);
    
begin
    -- Outputs are not connected, as they will be configured in the waveform
    EUT : CU_WriteSelector port map(
        ram_out_s => X"1234",
        manipulated_immidiate_s => X"5678",
        reg_1_s => X"9abc",
        alu_out_s => X"def0",
        fpuOut => X"a3d8",
        aluFlags => "0000000000000100",
        fpuFlags => "0000000000010010",
        write_sel_s => write_sel_s,
        flagSel => flag_sel_s
    );

    simulator_1 : process is
    begin
        FOR i in 0 to 7 loop
            write_sel_s <= std_logic_vector(to_unsigned(i, 3));
            wait for 10 ns;
        end loop;
    end process simulator_1;

    simulator_1 : process is
    begin
        FOR i in 0 to 1 loop
            flag_sel_s <= std_logic_vector(to_unsigned(i, 1));
            wait for 5  ns;
        end loop;
    end process simulator_1;
end architecture Behavioral;
