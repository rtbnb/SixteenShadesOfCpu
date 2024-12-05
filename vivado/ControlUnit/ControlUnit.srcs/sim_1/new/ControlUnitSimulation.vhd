----------------------------------------------------------------------------------
-- Create Date: 04.12.2024 22:43:31
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: ControlUnitSimulation - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ControlUnitSimulation is
end entity ControlUnitSimulation;

architecture Behavioral of ControlUnitSimulation is

component CU_Decoder_SIM is
end component CU_Decoder_SIM;

component CU_ImmediateManipulator_SIM is
end component CU_ImmediateManipulator_SIM;

component CU_JumpController_SIM is
end component CU_JumpController_SIM;

component CU_JumpDestinationSelector_SIM is
end component CU_JumpDestinationSelector_SIM;

component CU_RAMAddressController_SIM is
end component CU_RAMAddressController_SIM;

component CU_WriteSelector_SIM is
end component CU_WriteSelector_SIM;


begin

    CU_Decoder : CU_Decoder_SIM;
    CU_ImmediateManipulator : CU_ImmediateManipulator_SIM;
    CU_JumpController : CU_JumpController_SIM;
    CU_JumpDestinationSelector : CU_JumpDestinationSelector_SIM;
    CU_RAMAddressController : CU_RAMAddressController_SIM;
    CU_WriteSelector : CU_WriteSelector_SIM;


end architecture Behavioral;
