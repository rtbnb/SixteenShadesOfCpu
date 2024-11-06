----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.11.2024 10:48:05
-- Design Name: 
-- Module Name: main - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
    port(
        clk: in std_logic;
        led: out std_logic;
        addr1: out std_logic_vector(15 downto 0);
        addr2: out std_logic_vector(15 downto 0);
        din1: out std_logic_vector(15 downto 0);
        din2: out std_logic_vector(15 downto 0);
        we: out std_logic;
        oe: out std_logic;
        dout1: in std_logic_vector(15 downto 0);
        dout2: in std_logic_vector(15 downto 0)
    );

--  Port ( );
end main;

architecture Behavioral of main is
signal led_s: std_logic := '0';
signal counter: integer range 0 to 100000000;
signal clk_s: std_logic;
signal addr_s: std_logic_vector(15 downto 0);
signal din_s: std_logic_vector(15 downto 0);
signal we_s: std_logic := '1';
signal oe_s: std_logic := '0';
signal dout1_s: std_logic_vector(15 downto 0);
signal dout2_s: std_logic_vector(15 downto 0);
signal doneWriting: boolean := FALSE;
signal memAddr_s: unsigned(15 downto 0) := "0000000000000000";
signal clk2: std_logic := '0';
begin

    led <= led_s;
    we <= we_s;
    oe <= oe_s;
    
    addr1 <= std_logic_vector(memAddr_s);
    addr2 <= std_logic_vector(memAddr_s);
    din1 <= din_s;
    din2 <= din_s;
    
    blink_process:process(clk)
    begin
        if rising_edge(clk) then
            counter <= counter+1;
            
            if counter+1=100000000 then
--                led_s <= not led_s;
                clk2 <= not clk2;
                we_s <= not we_s;
                oe_s <= not oe_s;
            end if;
        
        end if;
    end process;
    
    mem_test:process(clk2)
    begin
        if rising_edge(clk2) then
            memAddr_s <= memAddr_s + 1;
            
            if doneWriting then
                if memAddr_s+1=65 then
                    memAddr_s <= "0000000000000000";
                end if;
            end if;
            
            if not doneWriting then
                din_s <= std_logic_vector(memAddr_s);
            end if;
            
            if memAddr_s+1=65 then
                led_s <= '1';
                doneWriting <= TRUE;
                memAddr_s <= "0000000000000000";
            end if;
        end if;
    
    end process;

end Behavioral;
