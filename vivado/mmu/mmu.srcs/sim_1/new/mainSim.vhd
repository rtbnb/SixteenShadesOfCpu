----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.11.2024 14:55:29
-- Design Name: 
-- Module Name: mainSim - Behavioral
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity mainSim is
--  Port ( );
end mainSim;

architecture Behavioral of mainSim is
    component main_block_wrapper
        port(
            clk200mhz : in STD_LOGIC;
            debug_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            debug_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
            debug_clk : in STD_LOGIC;
            debug_clk200mhz : in STD_LOGIC;
            debug_clk_enable : in STD_LOGIC;
            debug_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
            debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            debug_enable : in STD_LOGIC;
            debug_iram_select : in STD_LOGIC;
            debug_we : in STD_LOGIC;
            gram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            gram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
            gram_clk : in STD_LOGIC;
            gram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
            gram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            gram_we : in STD_LOGIC;
            iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            iram_clk : in STD_LOGIC;
            iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            vram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            vram_clk : in STD_LOGIC;
            vram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
        );
    end component; 
    
    
    signal clk200mhz, debug_clk, debug_clk200mhz, debug_clk_enable, debug_enable, debug_iram_select, debug_we, gram_we, iram_clk, vram_clk, gram_clk: STD_LOGIC;
    signal debug_addr, debug_din, debug_dout, gram_addr, iram_addr, iram_dout, vram_addr, vram_dout, gram_din, gram_dout: STD_LOGIC_VECTOR( 15 downto 0 );
    signal debug_bank, gram_bank: STD_LOGIC_VECTOR( 3 downto 0 );
        
    signal count_s: std_logic;
begin
    EUT : main_block_wrapper port map(
        clk200mhz => clk200mhz,
        debug_clk => debug_clk,
        debug_clk200mhz => debug_clk200mhz,
        debug_clk_enable => debug_clk_enable,
        debug_enable => debug_enable,
        debug_iram_select => debug_iram_select,
        debug_we => debug_we,
        gram_we => gram_we,
        iram_clk => iram_clk,
        vram_clk => vram_clk,
        debug_addr => debug_addr,
        debug_din => debug_din,
        debug_dout => debug_dout,
        gram_addr => gram_addr,
        gram_clk => gram_clk,
        iram_addr => iram_addr,
        iram_dout => iram_dout,
        vram_addr => vram_addr,
        vram_dout => vram_dout,
        debug_bank => debug_bank,
        gram_bank => gram_bank,
        gram_din => gram_din,
        gram_dout => gram_dout   
    );
    
    process
    begin
        clk200mhz <= '1';
        
        while true loop
            wait for 2500ps;    
            clk200mhz <= not clk200mhz;
        end loop;
    end process;
    
    process
    begin
        gram_clk <= '1';
        vram_clk <= '1';
        iram_clk <= '1';
        
        while true loop
            wait for 5ns;
            gram_clk <= not gram_clk;
            vram_clk <= not vram_clk;
            iram_clk <= not iram_clk;
        end loop;
    end process;
    
    process
    begin
        vram_addr <= X"0001";
        iram_addr <= X"0000";
        
        gram_bank <= "0000";
        count_s <= '0';
        gram_we <= '0';
        gram_din <= X"0000";
        gram_addr <= X"0000";
        wait for 5ns;
        
        while true loop
            count_s <= not count_s;
            
            if count_s='1' then
                gram_bank <= "0001"; 
            else
                gram_bank <= "0000";
            end if;
            
            gram_we <= '1';
            gram_addr <= X"0001";
            gram_din <= std_logic_vector(unsigned(gram_din) + 1);
            wait for 10ns;
        end loop;
    
    end process;

end Behavioral;
