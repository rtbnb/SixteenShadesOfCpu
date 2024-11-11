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
        iram_clk: in std_logic := '0';
        iram_dout: out std_logic_vector(15 downto 0);
        
        iram_mem_addr, iram_mem_din: out std_logic_vector(15 downto 0) := "0000000000000000";
        iram_mem_clk: out std_logic;
        iram_mem_we, iram_mem_oe: out std_logic := '0'; --TODO Build into debug
        iram_mem_dout: in std_logic_vector(15 downto 0);
--iram end
    
--gram begin
        gram_addr, gram_din: in std_logic_vector(15 downto 0) := "0000000000000000";
        gram_we, gram_oe, gram_clk: in std_logic := '0';
        gram_bank: in std_logic_vector(3 downto 0) := "0000";
        gram_dout: out std_logic_vector(15 downto 0);
        
        gram_mem_addr, gram_mem_din: out std_logic_vector(15 downto 0) := "0000000000000000";
        gram_mem_clk: out std_logic;
        gram_mem_we, gram_mem_oe: out std_logic := '0';
        gram_mem_dout: in std_logic_vector(15 downto 0);
--gram end

--vram begin
        vram_clk: in std_logic;
        vram_addr: in std_logic_vector(15 downto 0);
        vram_dout: out std_logic_vector(15 downto 0);
        
        vram_mem_addr, vram_mem_din: out std_logic_vector(15 downto 0) := "0000000000000000";
        vram_mem_clk: out std_logic;
        vram_mem_we, vram_mem_oe: out std_logic := '0';
        vram_mem_dout: in std_logic_vector(15 downto 0);
--vram end

--mmio begin
        mmio_clk, mmio_we, mmio_oe : in std_logic;
        mmio_addr, mmio_din: in std_logic_vector(15 downto 0);
             
--mmio end

--debug begin
        debug_clk200mhz, debug_clk, debug_we, debug_oe, debug_enable, debug_iram_select: in std_logic := '0';
        debug_addr, debug_din: in std_logic_vector(15 downto 0) := "0000000000000000";
        debug_bank: in std_logic_vector(3 downto 0) := "0000";
        debug_dout: out std_logic_vector(15 downto 0)
--debug end
    );
end main;

architecture Behavioral of main is
    signal iram_mem_clk_s: std_logic;
    signal iram_mem_addr_s, iram_mem_din_s, iram_dout_s: std_logic_vector(15 downto 0);
    signal iram_mem_we_s, iram_mem_oe_s: std_logic := '0';
    
    signal gram_mem_clk_s: std_logic;
    signal gram_mem_addr_s, gram_mem_din_s, gram_dout_s: std_logic_vector(15 downto 0);
    signal gram_mem_we_s, gram_mem_oe_s, gram_op_s: std_logic := '0';
    
    signal vram_mem_clk_s: std_logic;
    signal vram_mem_addr_s, vram_mem_din_s, vram_dout_s: std_logic_vector(15 downto 0);
    signal vram_mem_we_s, vram_mem_oe_s, vram_op_s: std_logic := '0';
    
    signal debug_dout_s: std_logic_vector(15 downto 0); --should be irrelevant
    
begin
    iram_mem_clk <= iram_mem_clk_s;
    iram_mem_we <= iram_mem_we_s;
    iram_mem_addr <= iram_mem_addr_s;
    iram_mem_din <= iram_mem_din_s;
    
    gram_mem_clk <= gram_mem_clk_s;
    gram_mem_we <= gram_mem_we_s;
    gram_mem_addr <= gram_mem_addr_s;
    gram_mem_din <= gram_mem_din_s;
    
    vram_mem_clk <= vram_mem_clk_s;
    vram_mem_addr <= vram_mem_addr_s;
    vram_mem_din <= vram_mem_din_s;
    vram_mem_we <= vram_mem_we_s;
    
    
    with iram_mem_oe_s select
       iram_dout_s <= iram_mem_dout        when '1', 
                     "0000000000000000" when others;
                 
    with iram_dout_s select
        iram_dout <= "0000000000000000" when "XXXXXXXXXXXXXXXX",
                     iram_dout_s when others;                   
    
    with vram_mem_oe_s select
       vram_dout_s <= vram_mem_dout        when '1', 
                     "0000000000000000" when others;
                 
    with vram_dout_s select
        vram_dout <= "0000000000000000" when "XXXXXXXXXXXXXXXX",
                     vram_dout_s when others;            
                   

    iram_main:process(clk200mhz)
    begin
        if debug_enable='0' then
            if falling_edge(clk200mhz) then
                iram_mem_clk_s <= '0';
            end if;
      
            if rising_edge(clk200mhz) and rising_edge(iram_clk) then
                iram_mem_clk_s <= '1';
                iram_mem_oe <= '1'; --this is set one time and stays set as long as the cpu runs
                iram_mem_addr_s <= iram_addr;
                iram_mem_we_s <= '0';
                iram_mem_oe_s <= '1';
                iram_mem_din_s <= iram_din;
            end if;
            
            if rising_edge(clk200mhz) and falling_edge(iram_clk) then
                iram_mem_clk_s <= '1';
            end if;
        end if;     
    end process;
    
    gram_main:process(clk200mhz)
    begin
        if debug_enable='0' then
        
            if falling_edge(clk200mhz) then
                gram_mem_clk_s <= '0';
            end if;
      
            if rising_edge(clk200mhz) and rising_edge(gram_clk) then
                gram_mem_clk_s <= '1';
                gram_mem_oe <= '1'; --this is set one time and stays set as long as the cpu runs
                gram_mem_addr_s <= gram_addr;
                gram_mem_we_s <= gram_we;
                gram_mem_oe_s <= gram_oe;
                gram_mem_din_s <= gram_din;
            end if;
            
            if rising_edge(clk200mhz) and falling_edge(gram_clk) and gram_op_s='1' then
                gram_mem_clk_s <= '1';
            end if;
        end if;
    end process;
    
    vram_main:process(clk200mhz)
    begin
    
    
    end process;
    
    debug_main:process(debug_clk200mhz)
    begin
    
    end process;
    
    

end Behavioral;
