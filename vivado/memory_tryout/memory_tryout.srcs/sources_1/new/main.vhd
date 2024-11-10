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
        clk200mhz: in std_logic;
--iram begin        
        iram_addr, iram_din: in std_logic_vector(15 downto 0) := "0000000000000000";
        iram_we, iram_oe, iram_clk: in std_logic := '0';
        iram_bank: in std_logic_vector(3 downto 0) := "0000";
        iram_dout: out std_logic_vector(15 downto 0);
        
        iram_mem_addr, iram_mem_din: out std_logic_vector(15 downto 0);
        iram_mem_clk: out std_logic;
        iram_mem_we, iram_mem_oe: out std_logic := '1';
        iram_mem_dout: in std_logic_vector(15 downto 0) := "0000000000000000";
--iram end
        iram_en_t: out std_logic
    );
end main;

architecture Behavioral of main is
    signal iram_mem_clk_s: std_logic;
    signal iram_mem_addr_s: std_logic_vector(15 downto 0);
    signal iram_mem_din_s: std_logic_vector(15 downto 0);
    signal iram_mem_we_s: std_logic := '1';
    signal iram_mem_oe_s: std_logic := '1';
    signal iram_dout_s: std_logic_vector(15 downto 0);
    
    signal iram_en_s: std_logic := '0';
    signal iram_op_en: boolean := FALSE;
begin
    iram_mem_clk <= iram_mem_clk_s;
    
    iram_mem_we <= iram_mem_we_s;
    iram_mem_oe <= iram_mem_oe_s;
    iram_mem_addr <= iram_mem_addr_s;
    iram_mem_din <= iram_mem_din_s;
    
    iram_en_t <= iram_en_s;
    iram_dout <= iram_mem_dout;
    
--    with iram_oe select
--       iram_dout_s <= iram_mem_dout        when '1', 
--                     "0000000000000000" when others;
                     
--    with iram_dout_s select
--        iram_dout <= "0000000000000000" when "XXXXXXXXXXXXXXXX",
--                     iram_dout_s when others;                   

    
--    with iram_mem_dout select
--        iram_dout_s <= "0000000000000000" when "XXXXXXXXXXXXXXXX",
--                       iram_mem_dout      when others;
    
--    with iram_oe select
--        iram_dout <= iram_dout_s        when '1', 
--                     "0000000000000000" when others;
                     
    
    mmu_main:process(clk200mhz)
    begin
        if falling_edge(clk200mhz) then
            iram_mem_clk_s <= '0';
        end if;
  
        if rising_edge(clk200mhz) and rising_edge(iram_clk) then
                iram_mem_clk_s <= '1';
                iram_en_s <= '1';
                iram_mem_addr_s <= iram_addr;
                iram_mem_we_s <= iram_we;
                iram_mem_oe_s <= iram_oe;
                if iram_we='1' then
                    iram_mem_din_s <= iram_din;
                end if;
                iram_op_en <= TRUE; 
        end if;
        
        if rising_edge(clk200mhz) and falling_edge(iram_clk) then
            iram_op_en <= FALSE;
            iram_en_s <= '0';
            iram_mem_clk_s <= '1';
        end if;
        
    end process;

end Behavioral;
