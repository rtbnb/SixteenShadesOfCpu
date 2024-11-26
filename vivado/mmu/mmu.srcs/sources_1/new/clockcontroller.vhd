----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.11.2024 13:12:47
-- Design Name: 
-- Module Name: clockcontroller - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity clockcontroller is
    port(
        clk50mhz_in, clk100mhz_in, wizard_locked, fault_reset, debug_reset: in std_logic;
        debug_enable, debug_mock_clk, debug_mmu_override_enbale: in std_logic;
        load_clk, exec_clk, vga_clk: out std_logic; 
        debug_clk: out std_logic; 
        ck_stable: out std_logic
    );
end clockcontroller;

architecture Behavioral of clockcontroller is
    signal output_en_s: std_logic_vector( 2 downto 0 );
    signal fault_s: std_logic := '0';
    signal debug_en_s: std_logic := '1';
    signal clk50mhz_buf_s: std_logic;
begin
    output_en_s <= wizard_locked & debug_en_s & debug_mmu_override_enbale;
    ck_stable <= wizard_locked;
    
    BUFG_inst : BUFG
    port map (
       O => clk50mhz_buf_s, -- 1-bit output: Clock output
       I => clk50mhz_in  -- 1-bit input: Clock input
    );
    
    with output_en_s select
        load_clk <= clk50mhz_in when "100",
                    debug_mock_clk when "110",
                    '0' when others;
    with output_en_s select
        exec_clk <= not clk50mhz_in when "100",
                    not debug_mock_clk when "110",
                    '0' when others;    
                                    
                    
    with wizard_locked select
        vga_clk <= clk50mhz_in when '1',
                   '0' when others;
    with wizard_locked select
        debug_clk <= clk50mhz_buf_s when '1',
                     '0' when others;
    
                        
    debug_state:process(clk50mhz_in) is
    begin
        if rising_edge(clk50mhz_in) then
            if debug_enable='0' and debug_reset='1' then
                debug_en_s <= '0';
            elsif debug_enable='1' then
                debug_en_s <= '1';
            end if;
        end if;
    end process debug_state;
    
end Behavioral;
