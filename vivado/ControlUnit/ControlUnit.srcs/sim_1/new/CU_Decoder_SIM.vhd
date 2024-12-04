----------------------------------------------------------------------------------
-- Create Date: 10.11.2024 16:23:48
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: CU_Decoder_SIM - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

use ieee.numeric_std.all;


entity CU_Decoder_SIM is
end entity CU_Decoder_SIM;

architecture Behavioral of CU_Decoder_SIM is
    component CU_Decoder is
        Port (
            instructionToDecode : in std_logic_vector(15 downto 0);
            reg1Read : out std_logic;
            reg2Read : out std_logic;
            rfWHB : out std_logic;
            rfWLB : out std_logic;
            rfWrite : out std_logic;
            writeDataSelect : out std_logic_vector(2 downto 0);
            flagSelect : out std_logic_vector(0 downto 0);
            ramAddressSrc : out std_logic;
            ramRead : out std_logic;
            ramWrite : out std_logic;
            jmp : out std_logic;
            jmpConditional : out std_logic;
            jmpRelative : out std_logic;
            jmpDestinationSource : out std_logic;
            isALUOp : out std_logic;
            isRAMOp : out std_logic;
            isGPUOp : out std_logic
        );
    end component CU_Decoder;
    
    signal instruction_s : std_logic_vector(15 downto 0) := X"0000";
    
    
    
begin

    -- Outputs are not connected, as they will be configured in the waveform
    EUT : CU_Decoder port map(
        instructionToDecode => instruction_s
    );  
    
    
    simulator : process is
    begin
        -- Iterates over all possible instructions, nothing else is used by the Control Unit
        for i in 0 to 15 loop
            instruction_s(15 downto 12) <= std_logic_vector(to_unsigned(i, 4));
            wait for 10ns;
        end loop;
    end process simulator;

end architecture Behavioral;
