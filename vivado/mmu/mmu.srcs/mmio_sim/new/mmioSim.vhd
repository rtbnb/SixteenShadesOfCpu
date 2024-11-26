----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.11.2024 09:15:53
-- Design Name: 
-- Module Name: mmioSim - Behavioral
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

entity mmioSim is
--  Port ( );
end mmioSim;

architecture Behavioral of mmioSim is
    component mmio
        port(
            clk, we: in std_logic;
            addr, din: in std_logic_vector(15 downto 0);
            dout: out std_logic_vector(15 downto 0);
            
            led00, led01, led02, led03, led04, led05, led06, led07, led08, led09, led10, led11, led12, led13, led14, led15, led16, led17, led18, led19: out std_logic;
            rgb0, rgb1, rgb2, rgb3: out std_logic_vector(2 downto 0);
            btn00, btn01, btn02, btn03, btn04, btn05, btn06, btn07, btn08, btn09, btn10, btn11, btn12, btn13, btn14, btn15, btn16, btn17, btn18, btn19: in std_logic;
            rho: out std_logic
        );
    end component;
    
    signal clk, we: std_logic := '0';
    signal addr, din, dout: std_logic_vector(15 downto 0);
    signal led00, led01, led02, led03, led04, led05, led06, led07, led08, led09, led10, led11, led12, led13, led14, led15, led16, led17, led18, led19: std_logic;
    signal rgb0, rgb1, rgb2, rgb3: std_logic_vector(2 downto 0);
    signal btn00, btn01, btn02, btn03, btn04, btn05, btn06, btn07, btn08, btn09, btn10, btn11, btn12, btn13, btn14, btn15, btn16, btn17, btn18, btn19: std_logic;
    
    signal cnt_s: std_logic := '0';
begin
    EUT : mmio port map(
        clk => clk,
        we => we,
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
        rgb0 => rgb0,
        rgb1 => rgb1,
        rgb2 => rgb2,
        rgb3 => rgb3
    );
    
    
    process
    begin
        clk <= '1';
        
        while true loop
            wait for 5ns;
            clk <= not clk;
        end loop;
    end process;
    
    
    process
    begin
        cnt_s <= '0';
        we <= '0';
        addr <= std_logic_vector(to_unsigned(32768, addr'length));
        din <= "0000000000000001";
        
        wait for 50ns;
        we <= '1';
        wait for 200ns;
        while true loop
            wait for 100ns;
            
            we <= '1';
            addr <= std_logic_vector(to_unsigned(32768, addr'length));
            din <= "0000000000000000";
            
            wait for 100ns;
            
            we <= '0';
            addr <= std_logic_vector(to_unsigned(32768, addr'length));
            din <= "0000000000000000";            
            
            wait for 100ns;
            
            we <= '1';
            addr <= std_logic_vector(to_unsigned(32768, addr'length));
            din <= "0000000000000001";             

            wait for 100ns;
            
            we <= '0';
            addr <= std_logic_vector(to_unsigned(32768, addr'length));
            din <= "0000000000000000";
            
        end loop;
        
    end process;
    
--    process
--    begin
--        btn0 <= '0';
--        wait for 22ns;
--        btn0 <= '1';
--        wait for 500ps;
--        btn0 <= '0';
--        
--    end process;

end Behavioral;
