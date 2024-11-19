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
--use IEEE.NUMERIC_STD.ALL;

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
            ck, we: in std_logic;
            addr, din: in std_logic_vector(15 downto 0);
            dout: out std_logic_vector(15 downto 0);
        
            led0, led1, led2, led3: out std_logic;
            btn0, btn1, btn2, btn3: in std_logic
        );
    end component;
    
    signal ck, we, led0, led1, led2, led3, btn0, btn1, btn2, btn3: std_logic;
    signal addr, din, dout: std_logic_vector( 15 downto 0 ); 
begin
    EUT : mmio port map(
        ck => ck,
        we => we,
        led0 => led0,
        led1 => led1,
        led2 => led2,
        led3 => led3,
        btn0 => btn0,
        btn1 => btn1,
        btn2 => btn2,
        btn3 => btn3,
        addr => addr,
        din => din,
        dout => dout
    );
    
    
    process
    begin
        ck <= '1';
        
        while true loop
            wait for 5ns;
            ck <= not ck;
        end loop;
    end process;
    
    
    process
    begin
        we <= '1';
        addr <= "0000000000000001";
        din <= "0000000000000001";
        
        while true loop
            wait for 10ns;
        
        end loop;
        
    end process;
    
    process
    begin
        btn0 <= '0';
        wait for 22ns;
        btn0 <= '1';
        wait for 500ps;
        btn0 <= '0';
        
    end process;

end Behavioral;
