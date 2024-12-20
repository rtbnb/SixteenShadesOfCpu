----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.11.2024 10:55:36
-- Design Name: 
-- Module Name: VGA_Controller - Behavioral
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

entity VGA_Controller is
    Port ( 
        InstrExec_CLK : in std_logic;
        VGAFramBufferSelect : in std_logic;
        r : out std_logic_vector (3 downto 0);
        g : out std_logic_vector (3 downto 0);
        b : out std_logic_vector (3 downto 0);
        ioe : out std_logic;
        h_sync : out std_logic;
        v_sync : out std_logic;
        VRAM_Addr : out std_logic_vector (15 downto 0);
        VRAM_Data : in std_logic_vector (15 downto 0);
        VRAM_Clk : out std_logic
    );
end VGA_Controller;

architecture Behavioral of VGA_Controller is
    signal divided_clock_s : std_logic := '0';
    signal divider_counter_s : unsigned(3 downto 0) := X"0";
    signal h_blank_s : std_logic := '0';
    signal v_blank_s : std_logic := '0';
    signal h_sync_s : std_logic := '0';
    signal v_sync_s : std_logic := '0';
    signal h_counter_s : unsigned(8 downto 0) := "0"&X"00";
    signal v_counter_s : unsigned(9 downto 0) := "00"&X"00";
    signal x_pixel_s : unsigned(7 downto 0) := X"00";
    --signal y_pixel_s : integer range 0 to 150 := 0;
    --signal pixel_address_s : integer range 0 to 30000 := 0;
    --signal frame_counter_s : integer range 0 to 60 := 0;
    signal rgb_s : std_logic_vector(11 downto 0);
    
    signal fetch_sync_s : std_logic := '0';
    
    type lineMemory is array(199 downto 0) of std_logic_vector(11 downto 0);
    signal draw_line : lineMemory;
    signal fetch_line : lineMemory;
    
    signal fetch_counter : unsigned(7 downto 0) := X"00";
    signal was_last_time : boolean := false;
    signal fetched_y_coord : unsigned(15 downto 0) := X"0000";
    signal memory_read_buffer_s : std_logic_vector(11 downto 0) := X"000";
    signal real_frame_buffer_offset_s : unsigned(15 downto 0);
    -- 30000
    constant FRAME_BUFFER_OFFSET : unsigned(15 downto 0) := X"7530";
begin

    divider:process(InstrExec_CLK) is
    begin
    if rising_edge(InstrExec_CLK) then
        divider_counter_s <= divider_counter_s + 1;
        if divider_counter_s = X"4" then
            divider_counter_s <= X"0";
            divided_clock_s <= '0';
        elsif divider_counter_s = X"2" then
            divided_clock_s <= '1';
        end if;
    end if;
    end process divider;
    
    ioe <= h_blank_s or v_blank_s;
    
    syncer:process(divided_clock_s) is
    begin
    if rising_edge(divided_clock_s) then
        h_counter_s <= h_counter_s + 1;
        if to_integer(h_counter_s + 1) = 264 then
            h_counter_s <= "0"&X"00";
            v_counter_s <= v_counter_s + 1;
            if to_integer(v_counter_s + 1) = 628 then
                v_counter_s <= "00"&X"00";
                --frame_counter_s <= frame_counter_s + 1;
                --if frame_counter_s + 1 = 60 then
                --    frame_counter_s <= 0;
                --end if;
            end if;
        end if;
    end if;
    end process syncer;
    
    
    h_blank_s <= '1' when to_integer(h_counter_s) >= 200 else '0';
    v_blank_s <= '1' when to_integer(v_counter_s) >= 600 else '0'; 
    
    h_sync_s <= '0' when to_integer(h_counter_s) >= 210 and to_integer(h_counter_s) < 242 else '1';
    v_sync_s <= '0' when to_integer(v_counter_s) >= 601 and to_integer(v_counter_s) < 605 else '1';
    
    h_sync <= h_sync_s;
    v_sync <= v_sync_s;
    
    x_pixel_s <= to_unsigned(199, 8) when to_integer(h_counter_s) > 199 else h_counter_s(7 downto 0);
    --y_pixel_s <= integer(600 when to_integer(v_counter_s) > 600 else to_integer(v_counter_s)) / 4;
    
    --pixel_address_s <= y_pixel_s * 200 + x_pixel_s; 
    
    --r <= std_logic_vector(to_unsigned((x_pixel_s * 16) / 200, 4));
    --g <= std_logic_vector(to_unsigned((y_pixel_s * 16) / 150, 4));
    --b <= std_logic_vector(to_unsigned((frame_counter_s * 16) / 60, 4));
    
    r <= rgb_s(11 downto 8);
    g <= rgb_s(7 downto 4);
    b <= rgb_s(3 downto 0);
    
    rgb_s <= draw_line(to_integer(x_pixel_s));
    

    fetch_sync_s <= v_counter_s(1);
    
    draw_line_setter: process(fetch_sync_s) is
    begin
    if falling_edge(fetch_sync_s) then
        draw_line <= fetch_line;
    end if;
    end process draw_line_setter;
    
    fetcher_counter: process(InstrExec_CLK) is
    begin
    if rising_edge(InstrExec_CLK) then
        was_last_time <= v_counter_s(1 downto 0) = "00";
        if v_counter_s(1 downto 0) = "00" then
            if not was_last_time then
                fetch_counter <= X"00";
                if to_integer(v_counter_s(9 downto 2)) < 150 then
                    fetched_y_coord <= fetched_y_coord + X"00C8";
                else
                    fetched_y_coord <= X"0000"; 
                end if;
            else 
                if to_integer(fetch_counter) < 199 then
                    fetch_counter <= fetch_counter + 1;
                end if;
            end if;            
        end if;
    end if;
    end process fetcher_counter;
    
    
    real_frame_buffer_offset_s <= FRAME_BUFFER_OFFSET when VGAFramBufferSelect = '1' else X"0000";
    fetcher: process(InstrExec_CLK) is
    begin
    if falling_edge(InstrExec_CLK) then
            --fetched_y_coord := y_pixel_s + 1;
            --if fetched_y_coord > 149 then
            --    fetched_y_coord := 0;
            --end if;
            VRAM_Addr <= std_logic_vector(fetched_y_coord + fetch_counter + real_frame_buffer_offset_s);
            if to_integer(fetch_counter) >= 2 then
                if to_integer(fetch_counter - 2) < 200 then
                    --memory_read_buffer_s <= VRAM_Data(11 downto 0);
                    --fetch_line(fetch_counter - 3) <= memory_read_buffer_s;
                    fetch_line(to_integer(fetch_counter - 2)) <= VRAM_Data(11 downto 0);
                end if;
            end if;      
            --if fetch_counter >= 3 then
            --    if fetch_counter - 3 < 200 then
            --        fetch_line(fetch_counter - 3) <= memory_read_buffer_s;
            --    end if;
            --end if;  
    end if;
    end process fetcher;
    
    VRAM_Clk <= InstrExec_CLK;
end Behavioral;
