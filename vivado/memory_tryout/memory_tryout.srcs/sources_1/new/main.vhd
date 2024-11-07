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
        we: out std_logic := '1';
        oe: out std_logic := '1';
        dout1: in std_logic_vector(15 downto 0) := "0000000000000000";
        dout2: in std_logic_vector(15 downto 0) := "0000000000000000";
        clka: out std_logic;
        clkb: out std_logic;
        test_data: in std_logic_vector(15 downto 0) := "0000000000000000";
        test_addr: in std_logic_vector(15 downto 0) := "0000000000000000";
        test_write: in std_logic;
        should_write: in std_logic;
        should_read: in std_logic
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
signal oe_s: std_logic := '1';
signal dout1_s: std_logic_vector(15 downto 0) := "0000000000000000";
signal dout2_s: std_logic_vector(15 downto 0) := "0000000000000000";
signal doneWriting: boolean := FALSE;
signal memAddr_s: unsigned(15 downto 0) := "0000000000000000";
signal clk2: std_logic := '0';
signal state: integer range 0 to 10;
signal clka_s: std_logic := '0';
signal clkb_s: std_logic := '0';
signal write_active: boolean := FALSE; 
begin
    led <= led_s;
    we <= we_s;
    oe <= oe_s;
    clka <= clka_s; 
    clkb <= clkb_s;
    
    addr1 <= std_logic_vector(memAddr_s);
    addr2 <= std_logic_vector(memAddr_s);
    din1 <= din_s;
    din2 <= din_s;
    
    mem_validate:process(clk)
    begin
        if state=0 then
            if test_write='1' then
                state <= 1;
            end if;
        end if;
        
        if write_active then
            if rising_edge(clk) then
                clka_s <= '1';
            end if;
            
            if falling_edge(clk) then
                clka_s <= '0';
            end if;
        end if;
    
        if rising_edge(clk) then
            clka_s <= '1';
        
            case state is
                when 0 =>
                    state <= 0;
                when 1 =>
                    memAddr_s <= unsigned(test_addr);
                    din_s <= test_data;
--                    memAddr_s <= "0000000000000010";
--                    din_s <= "0000000000001010";
                    state <= 1;
                    
                    we_s <= should_write;
                    oe_s <= should_read;
                    
                    write_active <= TRUE;
--                when 2 => 
--                    state <= 3;
--                    memAddr_s <= unsigned(test_addr);
--                    din_s <= test_data;
--                    memAddr_s <= "0000000000000000";
--                    din_s <= "0000000000000000";
--                when 3 =>
--                    state <= 4;
--                    write_active <= FALSE;
--                when 4 => 
--                    state <= 0;
                when others =>
                    state <= 0;
            end case;
            
        end if;
        
        
        
    
    
    end process;

end Behavioral;
