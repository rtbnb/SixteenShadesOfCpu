----------------------------------------------------------------------------------
-- Create Date: 12.11.2024 17:21:33
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: Pipelining_Controller_SIM - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity Pipelining_Controller_SIM is
end entity Pipelining_Controller_SIM;

architecture Behavioral of Pipelining_Controller_SIM is
    component Pipelining_Controller is
        Port (
            loadClk : in std_logic;
            instructionIn : in std_logic_vector (15 downto 0);
            reset : in std_logic;
            pcLoad : in std_logic;
            rfJmp : in std_logic;
            execJmp : in std_logic;
            stalled : out std_logic;
            instructionOut : out std_logic_vector (15 downto 0)
        );
    end component Pipelining_Controller;
    
    signal load_clk_s, reset_s : std_logic;
    signal instruction_s : std_logic_vector(15 downto 0);
    signal pc_load_s, rf_jmp_s, exec_jmp_s : std_logic;
    
begin
    
    EUT : Pipelining_Controller port map(
        loadClk => load_clk_s,
        reset => reset_s,
        pcLoad => pc_load_s,
        instructionIn => instruction_s,
        rfJmp => rf_jmp_s,
        execJmp => exec_jmp_s
    );

    simulator : process is
    begin
        instruction_s <= X"0007";
        pc_load_s <= '0';
        rf_jmp_s <= '0';
        exec_jmp_s <= '0';
        wait for 10 ns;
        instruction_s <= X"0015";
        pc_load_s <= '0';
        rf_jmp_s <= '0';
        exec_jmp_s <= '1';
        wait for 10 ns;
        instruction_s <= X"0a0a";
        pc_load_s <= '0';
        rf_jmp_s <= '1';
        exec_jmp_s <= '0';
        wait for 10 ns;
        instruction_s <= X"360f";
        pc_load_s <= '0';
        rf_jmp_s <= '1';
        exec_jmp_s <= '1';
        wait for 10 ns;
        instruction_s <= X"0007";
        pc_load_s <= '1';
        rf_jmp_s <= '0';
        exec_jmp_s <= '0';
        wait for 10 ns;
        instruction_s <= X"7256";
        pc_load_s <= '1';
        rf_jmp_s <= '0';
        exec_jmp_s <= '1';
        wait for 10 ns;
        instruction_s <= X"ab77";
        pc_load_s <= '1';
        rf_jmp_s <= '1';
        exec_jmp_s <= '0';
        wait for 10 ns;
        instruction_s <= X"76ac";
        pc_load_s <= '1';
        rf_jmp_s <= '1';
        exec_jmp_s <= '1';
        wait for 10 ns;
        
    end process simulator;
    
    clocker : process is
    begin
        load_clk_s <= '0';
        wait for 5 ns;
        load_clk_s <= '1';
        wait for 5 ns;
    end process clocker;
    
    resetter : process is
    begin
        reset_s <= '0';
        wait for 20 ns;
        reset_s <= '1';
        wait for 10 ns;
        reset_s <= '0';
        wait for 370 ns;
    end process resetter;

end architecture Behavioral;
