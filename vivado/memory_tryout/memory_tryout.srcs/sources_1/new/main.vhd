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
        
        iram_mem_addr, iram_mem_din: out std_logic_vector(15 downto 0) := "0000000000000000";
        iram_mem_clk: out std_logic;
        iram_mem_we, iram_mem_oe: out std_logic := '0';
        iram_mem_dout: in std_logic_vector(15 downto 0);
--iram end
        iram_en_t: out std_logic
    );
end main;

architecture Behavioral of main is
    signal iram_mem_clk_s: std_logic;
    signal iram_mem_addr_s: std_logic_vector(15 downto 0);
    signal iram_mem_din_s: std_logic_vector(15 downto 0);
    signal iram_mem_we_s: std_logic := '0';
    signal iram_mem_oe_s: std_logic := '0';
    signal iram_dout_s: std_logic_vector(15 downto 0);
    signal iram_op_s: std_logic;
    
begin
    iram_mem_clk <= iram_mem_clk_s;
    
    iram_mem_we <= iram_mem_we_s;
    iram_mem_addr <= iram_mem_addr_s;
    iram_mem_din <= iram_mem_din_s;
    
    
    with iram_mem_oe_s select
       iram_dout_s <= iram_mem_dout        when '1', 
                     "0000000000000000" when others;
                 
    with iram_dout_s select
        iram_dout <= "0000000000000000" when "XXXXXXXXXXXXXXXX",
                     iram_dout_s when others;                   
    
    iram_op_s <= iram_we or iram_oe;
                     
    
    mmu_main:process(clk200mhz)
    begin
        if falling_edge(clk200mhz) then
            iram_mem_clk_s <= '0';
        end if;
  
        if rising_edge(clk200mhz) and rising_edge(iram_clk) then
--and iram_op_s='1' 
--not (iram_addr="UUUUUUUUUUUUUUUU" or iram_din="UUUUUUUUUUUUUUUU")
                iram_mem_clk_s <= '1';
                iram_mem_oe <= '1'; --this is set one time and stays set as long as the cpu runs
                iram_mem_addr_s <= iram_addr;
                iram_mem_we_s <= iram_we;
                iram_mem_oe_s <= iram_oe;
                iram_mem_din_s <= iram_din;
        end if;
        
        if rising_edge(clk200mhz) and falling_edge(iram_clk) and iram_op_s='1' then
            iram_mem_clk_s <= '1';
        end if;
        
    end process;

end Behavioral;
