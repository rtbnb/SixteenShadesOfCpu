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
    Port ( InstrExec_CLK : in STD_LOGIC;
           r : out STD_LOGIC_VECTOR (3 downto 0);
           g : out STD_LOGIC_VECTOR (3 downto 0);
           b : out STD_LOGIC_VECTOR (3 downto 0);
           ioe : out STD_LOGIC;
           h_sync : out STD_LOGIC;
           v_sync : out STD_LOGIC;
           VRAM_Addr : out STD_LOGIC_VECTOR (15 downto 0);
           VRAM_Data : in STD_LOGIC_VECTOR (15 downto 0);
           VRAM_Clk : out STD_LOGIC);
end VGA_Controller;

architecture Behavioral of VGA_Controller is
    signal divided_clock_s : STD_LOGIC := '0';
    signal divider_counter_s : integer range 0 to 10 := 0;
    signal h_blank_s : STD_LOGIC := '0';
    signal v_blank_s : STD_LOGIC := '0';
    signal h_sync_s : STD_LOGIC := '0';
    signal v_sync_s : STD_LOGIC := '0';
    signal h_counter_s : integer range 0 to 264 := 0;
    signal v_counter_s : integer range 0 to 628 := 0;
    signal x_pixel_s : integer range 0 to 199 := 0;
    signal y_pixel_s : integer range 0 to 150 := 0;
    signal pixel_address_s : integer range 0 to 30000 := 0;
    signal frame_counter_s : integer range 0 to 60 := 0;
    signal rgb_s : std_logic_vector(11 downto 0);
    
    signal fetch_sync_s : STD_LOGIC := '0';
    
    type lineMemory is array(199 downto 0) of STD_LOGIC_VECTOR(11 downto 0);
    signal draw_line : lineMemory;
    signal fetch_line : lineMemory;
    
    signal fetch_counter : integer range 0 to 150 := 0;
    signal was_last_time : boolean := false;
    signal fetched_y_coord : unsigned(15 downto 0) := X"0000";
    signal memory_read_buffer_s : std_logic_vector(11 downto 0) := X"000";
begin

    divider:process(InstrExec_CLK) is
    begin
    if rising_edge(InstrExec_CLK) then
        divider_counter_s <= divider_counter_s + 1;
        if divider_counter_s = 4 then
            divider_counter_s <= 0;
            divided_clock_s <= '0';
        elsif divider_counter_s = 2 then
            divided_clock_s <= '1';
        end if;
    end if;
    end process divider;
    
    ioe <= h_blank_s or v_blank_s;
    
    syncer:process(divided_clock_s) is
    begin
    if rising_edge(divided_clock_s) then
        h_counter_s <= h_counter_s + 1;
        if h_counter_s + 1 = 264 then
            h_counter_s <= 0;
            v_counter_s <= v_counter_s + 1;
            if v_counter_s + 1 = 628 then
                v_counter_s <= 0;
                frame_counter_s <= frame_counter_s + 1;
                if frame_counter_s + 1 = 60 then
                    frame_counter_s <= 0;
                end if;
            end if;
        end if;
    end if;
    end process syncer;
    
    
    h_blank_s <= '1' when h_counter_s >= 200 else '0';
    v_blank_s <= '1' when v_counter_s >= 600 else '0'; 
    
    h_sync_s <= '0' when h_counter_s >= 210 and h_counter_s < 242 else '1';
    v_sync_s <= '0' when v_counter_s >= 601 and v_counter_s < 605 else '1';
    
    h_sync <= h_sync_s;
    v_sync <= v_sync_s;
    
    x_pixel_s <= 199 when h_counter_s > 199 else h_counter_s;
    y_pixel_s <= integer(600 when v_counter_s > 600 else v_counter_s) / 4;
    
    pixel_address_s <= y_pixel_s * 200 + x_pixel_s; 
    
    --r <= std_logic_vector(to_unsigned((x_pixel_s * 16) / 200, 4));
    --g <= std_logic_vector(to_unsigned((y_pixel_s * 16) / 150, 4));
    --b <= std_logic_vector(to_unsigned((frame_counter_s * 16) / 60, 4));
    
    r <= rgb_s(11 downto 8);
    g <= rgb_s(7 downto 4);
    b <= rgb_s(3 downto 0);
    
    rgb_s <= draw_line(x_pixel_s);
    

    fetch_sync_s <= TO_UNSIGNED(v_counter_s, 2)(1);
    
    draw_line_setter: process(fetch_sync_s) is
    begin
    if falling_edge(fetch_sync_s) then
        draw_line <= fetch_line;
    end if;
    end process draw_line_setter;
    
    fetcher_counter: process(InstrExec_CLK) is
    begin
    if rising_edge(InstrExec_CLK) then
        was_last_time <= to_unsigned(v_counter_s, 2) = "00";
        if to_unsigned(v_counter_s, 2) = "00" then
            if not was_last_time then
                fetch_counter <= 0;
                if y_pixel_s < 150 then
                    fetched_y_coord <= fetched_y_coord + X"00C8";
                else
                    fetched_y_coord <= X"0000"; 
                end if;
            else 
                fetch_counter <= fetch_counter + 1;
            end if;            
        end if;
    end if;
    end process fetcher_counter;
    fetcher: process(InstrExec_CLK) is
    begin
    if falling_edge(InstrExec_CLK) then
            --fetched_y_coord := y_pixel_s + 1;
            --if fetched_y_coord > 149 then
            --    fetched_y_coord := 0;
            --end if;
            
            VRAM_Addr <= std_logic_vector(fetched_y_coord + to_unsigned(fetch_counter, 16));
            if fetch_counter >= 2 then
                if fetch_counter - 2 < 200 then
                    --memory_read_buffer_s <= VRAM_Data(11 downto 0);
                    --fetch_line(fetch_counter - 3) <= memory_read_buffer_s;
                    fetch_line(fetch_counter - 2) <= VRAM_Data(11 downto 0);
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
