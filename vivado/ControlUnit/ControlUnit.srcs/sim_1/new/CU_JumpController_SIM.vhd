----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 12:03:04
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: CU_JumpController - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.ALL;

use ieee.numeric_std.ALL;

entity CU_JumpController_SIM is
end entity CU_JumpController_SIM;

architecture Behavioral of CU_JumpController_SIM is
    component CU_JumpController is
        Port (
            jmp : in std_logic;
            jmpConditional : in std_logic;
            jmpRelative : in std_logic;
            -- Bit 4: Invert Condition
            -- Bit 3: HW flags_s Select
            -- Bit 0-2: Condition
            -- HW flags_s Select: 0
            -- Condition: 000: Carry
            --            001: Zero
            --            010: Smaller Zero
            --            011: Bigger Zero
            --            100: Overflow
            -- HW flags_s Select: 1
            -- Condition: 000: Rho
            --            001: GPU Done
            jmpCondition : in std_logic_vector(4 downto 0);
            flags : in std_logic_vector(15 downto 0);
            rhoPin : in std_logic;
            gpuDone : in std_logic;
            jmpAddress : in std_logic_vector(15 downto 0);
            pcCurrent : in std_logic_vector(15 downto 0);
            pcLoad : out std_logic;
            pcNext : out std_logic_vector(15 downto 0)
        );
    end component CU_JumpController;

    signal jmp_s, jmp_conditional_s, jmp_relative_s, rho_pin_s, gpu_done_s : std_logic;
    signal jmp_condition_s : std_logic_vector(4 downto 0);
    signal flags_s, jmp_address_s, pc_current_s : std_logic_vector(15 downto 0);
    
begin

    -- Outputs are not connected, as they will be configured in the waveform
    EUT : CU_JumpController port map(
        jmp => jmp_s,
        jmpConditional => jmp_conditional_s,
        jmpRelative => jmp_relative_s,
        jmpCondition => jmp_condition_s,
        flags => flags_s,
        rhoPin => rho_pin_s,
        gpuDone => gpu_done_s,
        jmpAddress => jmp_address_s,
        pcCurrent => pc_current_s
    );
    
    relative_switcher : process is
    begin
        jmp_relative_s <= '0';
        wait for 5 ns;
        jmp_relative_s <= '1';
        wait for 5 ns;
    end process relative_switcher;
    
    hardware_flags_switcher : process is
    begin
        rho_pin_s <= '0';
        gpu_done_s <= '0';
        wait for 2.5 ns;
        rho_pin_s <= '0';
        gpu_done_s <= '1';
        wait for 2.5 ns;
        rho_pin_s <= '1';
        gpu_done_s <= '0';
        wait for 2.5 ns;
        rho_pin_s <= '1';
        gpu_done_s <= '1';
        wait for 2.5 ns;
    end process hardware_flags_switcher;

    software_flags_switcher : process is
    begin
        for i in 0 to 31 loop
            flags_s <= std_logic_vector(to_unsigned(i, 16));
            wait for 10ns / 32;
        end loop;
    end process software_flags_switcher;
    
    simulator : process is
    begin

        jmp_s <= '0';
        jmp_conditional_s <= '0';
        jmp_address_s <= X"1F00";
        pc_current_s <= X"0011";
    
        for i in 0 to 31 loop
            jmp_condition_s <= std_logic_vector(to_unsigned(i, 5));
            jmp_s <= '1';
            wait for 10ns;
            jmp_s <= '0';
            wait for 10 ns;
        end loop;
        
        jmp_conditional_s <= '1';
        
        FOR i in 0 to 31 loop
            jmp_condition_s <= std_logic_vector(to_unsigned(i, 5));
            jmp_s <= '1';
            wait for 10ns;
            jmp_s <= '0';
            wait for 10 ns;
        end loop;
    end process simulator;

end architecture Behavioral;
