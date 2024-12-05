
----------------------------------------------------------------------------------
-- Create Date: 04.12.2024 23:01:45
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: PipeliningSimulation - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.ALL;

entity PipeliningSimulation is
end entity PipeliningSimulation;

architecture Behavioral of PipeliningSimulation is
    component Pipelining_Controller_SIM is
    end component Pipelining_Controller_SIM;

    component Pipelining_ExecutionStage_SIM is
    end component Pipelining_ExecutionStage_SIM;
    
    component Pipelining_Forwarder_SIM is
    end component Pipelining_Forwarder_SIM;
    
    component Pipelining_WriteBackStage_SIM is
    end component Pipelining_WriteBackStage_SIM;
begin

    Pipelining_Controller : Pipelining_Controller_SIM;
    Pipelining_ExecutionStage : Pipelining_ExecutionStage_SIM;
    Pipelining_Forwarder : Pipelining_Forwarder_SIM;
    Pipelining_WriteBackStage : Pipelining_WriteBackStage_SIM;

end architecture Behavioral;
