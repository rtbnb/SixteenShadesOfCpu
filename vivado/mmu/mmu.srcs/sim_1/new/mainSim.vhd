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
            btn00, btn01, btn02, btn03, btn04, btn05, btn06, btn07, btn08, btn09, btn10, btn11, btn12, btn13, btn14, btn15, btn16, btn17, btn18, btn19 : in STD_LOGIC;
            clk100mhz_in : in STD_LOGIC;
            debugClk : out STD_LOGIC;
            debugMockClk : in STD_LOGIC;
            debugAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            debugBank : in STD_LOGIC_VECTOR ( 3 downto 0 );
            debug_clk : in STD_LOGIC;
            debug_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
            debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            debug_enable : in STD_LOGIC;
            debug_override_enable : in STD_LOGIC;
            debug_reset : in STD_LOGIC;
            debug_we : in STD_LOGIC;
            fault_reset : in STD_LOGIC;
            gpu_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            gpu_clk : in STD_LOGIC;
            gpu_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
            gpu_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
            gpu_we : in STD_LOGIC;
            gram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            gram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
            gram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
            gram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            gram_oe : in STD_LOGIC;
            gram_we : in STD_LOGIC;
            iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            led00, led01, led02, led03, led04, led05, led06, led07, led08, led09, led10, led11, led12, led13, led14, led15, led16, led17, led18, led19 : out STD_LOGIC;
            rgb0, rgb1, rgb2, rgb3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
            rho : out STD_LOGIC;
            vgaClk : out STD_LOGIC;
            vga_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            vga_clk : in STD_LOGIC;
            vga_dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
        );
    end component; 
    
    
    signal clk100mhz_in, debug_mock_clk, gpu_clk, debug_clk, debug_enable, fault_reset, debug_reset, debug_we, gram_we, debug_override_enable, btn00, btn01, btn02, btn03, btn04, btn05, btn06, btn07, btn08, btn09, btn10, btn11, btn12, btn13, btn14, btn15, btn16, btn17, btn18, btn19, led00, led01, led02, led03, led04, led05, led06, led07, led08, led09, led10, led11, led12, led13, led14, led15, led16, led17, led18, led19: STD_LOGIC;
    signal debugAddr, debug_din, debug_dout, gram_addr, iram_addr, iram_dout, gram_din, gram_dout: STD_LOGIC_VECTOR( 15 downto 0 );
    signal debugBank, gram_bank: STD_LOGIC_VECTOR( 3 downto 0 );
    signal gpu_addr, vga_addr: STD_LOGIC_VECTOR( 15 downto 0 );
    signal gpu_din, gpu_dout, vga_dout: STD_LOGIC_VECTOR( 11 downto 0 );
    signal gpu_we, vga_clk: STD_LOGIC;
        
    signal count_s: std_logic;
begin
    EUT : main_block_wrapper port map(
        clk100mhz_in => clk100mhz_in,
        debugAddr => debugAddr,
        debugBank => debugBank,
        debug_din => debug_din,
        debug_dout => debug_dout,
        debugMockClk => debug_mock_clk,
        gpu_clk => gpu_clk,
        gpu_addr => gpu_addr,
        gpu_din => gpu_din,
        gpu_dout => gpu_dout,
        gpu_we => gpu_we,
        debug_clk => debug_clk,
        debug_enable => debug_enable,
        fault_reset => fault_reset,
        debug_reset => debug_reset,
        debug_we => debug_we,
        debug_override_enable => debug_override_enable,
        btn00 => btn00,
        btn01 => btn01,
        btn02 => btn02,
        btn03 => btn03,
        btn04 => btn04,
        btn05 => btn05,
        btn06 => btn06,
        btn07 => btn07,
        btn08 => btn08,
        btn09 => btn09,
        btn10 => btn10,
        btn11 => btn11,
        btn12 => btn12,
        btn13 => btn13,
        btn14 => btn14,
        btn15 => btn15,
        btn16 => btn16,
        btn17 => btn17,
        btn18 => btn18,
        btn19 => btn19,
        led00 => led00,
        led01 => led01,
        led02 => led02,
        led03 => led03,
        led04 => led04,
        led05 => led05,
        led06 => led06,
        led07 => led07,
        led08 => led08,
        led09 => led09,
        led10 => led10,
        led11 => led11,
        led12 => led12,
        led13 => led13,
        led14 => led14,
        led15 => led15,
        led16 => led16,
        led17 => led17,
        led18 => led18,
        led19 => led19
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
        debug_mock_clk <= '1';
        
        while true loop
            wait for 10ns;
            debug_mock_clk <= not debug_mock_clk;
        end loop;
    end process;
    
    process
    begin
        iram_addr <= X"0000";
        debug_enable <= '0';
        debug_reset <= '0';
        fault_reset <= '0';
        debug_override_enable <= '0';
        
        gram_bank <= "0000";
        count_s <= '0';
        gram_we <= '0';
        gram_din <= X"0000";
        gram_addr <= X"0000";
        wait for 10ns;
        
        debug_reset <= '1';
        
        while true loop
            count_s <= not count_s;
            
            if count_s='1' then
                gram_bank <= "0000";
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
