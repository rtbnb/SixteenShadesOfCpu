----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2024 14:21:07
-- Design Name: 
-- Module Name: timerSim - Behavioral
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

entity timerSim is
--  Port ( );
end timerSim;

architecture Behavioral of timerSim is
    component mmio
    port(
            clk100mhz_in: in std_logic := '0';
            clk50mhz_in: in std_logic := '0';
            clk: in std_logic := '1';
            we: in std_logic := '0';
            addr, din: in std_logic_vector(15 downto 0);
            dout: out std_logic_vector(15 downto 0);
            
            led00, led01, led02, led03, led04, led05, led06, led07, led08, led09, led10, led11, led12, led13, led14, led15, led16, led17, led18, led19: out std_logic;
            rgb0, rgb1, rgb2, rgb3: out std_logic_vector(2 downto 0);
            btn00, btn01, btn02, btn03, btn04, btn05, btn06, btn07, btn08, btn09, btn10, btn11, btn12, btn13, btn14, btn15, btn16, btn17, btn18, btn19: in std_logic;
            rho: out std_logic
        );
    end component;
    
    signal clk100mhz_in: std_logic := '0';
    signal clk50mhz_in: std_logic := '0';
    signal clk: std_logic := '1';
    signal we: std_logic := '0';
    signal rho: std_logic;
    signal addr, din, dout: std_logic_vector(15 downto 0);
    signal led00, led01, led02, led03, led04, led05, led06, led07, led08, led09, led10, led11, led12, led13, led14, led15, led16, led17, led18, led19, btn00, btn01, btn02, btn03, btn04, btn05, btn06, btn07, btn08, btn09, btn10, btn11, btn12, btn13, btn14, btn15, btn16, btn17, btn18, btn19: std_logic;
    signal rgb0, rgb1, rgb2, rgb3: std_logic_vector(2 downto 0);
begin
    EUT : mmio port map(
        clk100mhz_in => clk100mhz_in, 
        clk50mhz_in => clk50mhz_in,
        clk => clk,
        we => we,
        rho => rho,
        addr => addr,
        din => din,
        dout => dout,
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
        led19 => led19,
        rgb0 => rgb0,
        rgb1 => rgb1,
        rgb2 => rgb2,
        rgb3 => rgb3,
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
        btn19 => btn19
    );
    
    process
    begin
        clk100mhz_in <= not clk100mhz_in;
        wait for 5ns;  
    end process;
    
    process
    begin
        clk50mhz_in <= not clk50mhz_in;
        clk <= not clk;
        wait for 10ns;
    end process;
    
    process
    begin
        wait for 45ns;
        
        while true loop
            addr <= std_logic_vector(to_unsigned(14, addr'length));
            din <=  std_logic_vector(to_unsigned(1, din'length));
            we <= '1';
            wait for 10ns;
            addr <= X"0000";
            din <= X"0000";
            we <= '0';
            
            wait for 10ns;
            addr <= std_logic_vector(to_unsigned(15, addr'length));
            din <=  std_logic_vector(to_unsigned(4, din'length));
            we <= '1';            
            wait for 10ns;
            addr <= X"0000";
            din <= X"0000";
            we <= '0';
            
            wait for 10ns;
            addr <= std_logic_vector(to_unsigned(13, addr'length));
            din <=  
                "00000" & -- rest
                "0" & --pwm inverted
                "1" & --auto_reset
                "0" & --rst_sig_enable
                "0" & --pwm sig enable
                "0" & --led enable
                "1" & --rho enable
                "1" & --out enable
                "01" & --clk source
                "1" & --state
                "1"; --auto restart
--                "0000000000000000";
            we <= '1';
            wait for 10ns;
            addr <= X"0000";
            din <= X"0000";
            we <= '0';
            
            wait for 390ns;
            addr <= std_logic_vector(to_unsigned(18, addr'length));
            din <=  std_logic_vector(to_unsigned(1, din'length));
            we <= '1';
            wait for 10ns;
            addr <= X"0000";
            din <= X"0000";
            we <= '0';
            wait for 10ns;
            addr <= std_logic_vector(to_unsigned(18, addr'length));
            din <=  std_logic_vector(to_unsigned(0, din'length));
            we <= '1';
            wait for 10ns;
            addr <= X"0000";
            din <= X"0000";
            we <= '0';
                               
            while true loop
                we <= '0';
                wait for 100ns;
            end loop;                  
        end loop;
        
    end process;

end Behavioral;