----------------------------------------------------------------------------------
-- Create Date: 12.11.2024 17:21:33
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: Pipelining_WriteBackStage_SIM - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;


entity Pipelining_WriteBackStage_SIM is
end entity Pipelining_WriteBackStage_SIM;

architecture Behavioral of Pipelining_WriteBackStage_SIM is
    component Pipelining_WriteBackStage is
        Port (
            instrLoadClk : in std_logic;
            reset : in std_logic;
            writeAddress : in std_logic_vector(3 downto 0);
            writeData : in std_logic_vector(15 downto 0);
            flags : in std_logic_vector(15 downto 0);
            whb : in std_logic;
            wlb : in std_logic;
            isALUOp : in std_logic;
            writeAddressOut : out std_logic_vector(3 downto 0);
            writeDataOut : out std_logic_vector(15 downto 0);
            flagsOut : out std_logic_vector(15 downto 0);
            rfWEOut : out std_logic;
            isALUOpOut : out std_logic
        );
    end component Pipelining_WriteBackStage;
    
    
    signal load_clk_s, reset_s, whb_s, wlb_s, is_alu_op_s : std_logic;
    signal write_address_s : std_logic_vector(3 downto 0);
    signal write_data_s, flags_s : std_logic_vector(15 downto 0);
    
begin
    
    EUT : Pipelining_WriteBackStage port map(
        instrLoadClk => load_clk_s,
        reset => reset_s,
        writeAddress => write_address_s,
        writeData => write_data_s,
        flags => flags_s,
        whb => whb_s,
        wlb => wlb_s,
        isALUOp => is_alu_op_s
    );
    
    simulator : process is
    begin
        write_address_s <= X"1";
        write_data_s <= X"31ac";
        flags_s <= X"a2c2";
        whb_s <= '1';
        wlb_s <= '0';
        is_alu_op_s <= '1';
        
        wait for 20 ns;
        
        write_address_s <= X"a";
        write_data_s <= X"312a";
        flags_s <= X"875a";
        whb_s <= '0';
        wlb_s <= '1';
        is_alu_op_s <= '1';
        
        wait for 20 ns;
        
        write_address_s <= X"b";
        write_data_s <= X"ace2";
        flags_s <= X"5742";
        whb_s <= '1';
        wlb_s <= '1';
        is_alu_op_s <= '0';
        
        wait for 20 ns;
        
        write_address_s <= X"8";
        write_data_s <= X"ef32";
        flags_s <= X"7423";
        whb_s <= '0';
        wlb_s <= '0';
        is_alu_op_s <= '0';
        
        wait for 20 ns;
        
        
        
    end process simulator;
    
    clocker : process is
    begin
        load_clk_s <= '0';
        wait for 10 ns;
        load_clk_s <= '1';
        wait for 10 ns;
    end process clocker;
    
    resetter : process is
    begin
        reset_s <= '0';
        wait for 1000 ns;
        reset_s <= '1';
        wait for 10 ns;
    end process resetter;


end architecture Behavioral;
