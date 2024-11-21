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
            btn0 : in STD_LOGIC;
            btn1 : in STD_LOGIC;
            btn2 : in STD_LOGIC;
            btn3 : in STD_LOGIC;
            clk100mhz_in : in STD_LOGIC;
            debug_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            debug_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
            debug_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
            debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            debug_en : in STD_LOGIC;
            debug_enable : in STD_LOGIC;
            debug_override_enable : in STD_LOGIC;
            debug_reset : in STD_LOGIC;
            debug_we : in STD_LOGIC;
            fault_reset : in STD_LOGIC;
            gram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            gram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
            gram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
            gram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            gram_we : in STD_LOGIC;
            iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            led0 : out STD_LOGIC;
            led1 : out STD_LOGIC;
            led2 : out STD_LOGIC;
            led3 : out STD_LOGIC;
            reset : in STD_LOGIC;
            vram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            vram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
        );
    end component; 
    
    
    signal clk100mhz_in, debug_enable, fault_reset, debug_reset, reset, debug_we, gram_we, debug_override_enable, btn0, btn1, btn2, btn3, led0, led1, led2, led3: STD_LOGIC;
    signal debug_addr, debug_din, debug_dout, gram_addr, iram_addr, iram_dout, vram_addr, vram_dout, gram_din, gram_dout: STD_LOGIC_VECTOR( 15 downto 0 );
    signal debug_bank, gram_bank: STD_LOGIC_VECTOR( 3 downto 0 );
        
    signal count_s: std_logic;
begin
    EUT : main_block_wrapper port map(
        clk100mhz_in => clk100mhz_in,
        debug_enable => debug_enable,
        debug_en => debug_enable,
        debug_override_enable => debug_override_enable,
        debug_we => debug_we,
        gram_we => gram_we,
        debug_addr => debug_addr,
        debug_din => debug_din,
        debug_dout => debug_dout,
        gram_addr => gram_addr,
        iram_addr => iram_addr,
        iram_dout => iram_dout,
        vram_addr => vram_addr,
        vram_dout => vram_dout,
        debug_bank => debug_bank,
        gram_bank => gram_bank,
        gram_din => gram_din,
        gram_dout => gram_dout,
        btn0 => btn0,
        btn1 => btn1,
        btn2 => btn2,
        btn3 => btn3,
        led0 => led0,
        led1 => led1,
        led2 => led2,
        led3 => led3,
        debug_reset => debug_reset,
        fault_reset => fault_reset,
        reset => reset
    );
    
    process
    begin
        clk100mhz_in <= '1';
        
        while true loop
            wait for 5ns;    
            clk100mhz_in <= not clk100mhz_in;
        end loop;
    end process;
    
    process
    begin
        vram_addr <= X"0001";
        iram_addr <= X"0000";
        debug_enable <= '0';
        debug_reset <= '0';
        fault_reset <= '0';
        reset <= '0';
        debug_override_enable <= '0';
        
        gram_bank <= "0000";
        count_s <= '0';
        gram_we <= '0';
        gram_din <= X"0000";
        gram_addr <= X"0000";
        wait for 10ns;
        
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
