----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2024 16:01:16
-- Design Name: 
-- Module Name: mainSim - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mainSim is
--  Port ( );
end mainSim;

architecture Behavioral of mainSim is
    component main_block_wrapper
        port (
            clk200mhz : in STD_LOGIC;
            debug_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            debug_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
            debug_clk : in STD_LOGIC;
            debug_clk200mhz : in STD_LOGIC;
            debug_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
            debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            debug_enable : in STD_LOGIC;
            debug_iram_select : in STD_LOGIC;
            debug_oe : in STD_LOGIC;
            debug_we : in STD_LOGIC;
            gram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            gram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
            gram_clk : in STD_LOGIC;
            gram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
            gram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            gram_oe : in STD_LOGIC;
            gram_we : in STD_LOGIC;
            iram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            iram_clk : in STD_LOGIC;
            iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            mmio_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            mmio_clk : in STD_LOGIC;
            mmio_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
            mmio_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            mmio_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
            mmio_mem_ck : out STD_LOGIC;
            mmio_mem_din : out STD_LOGIC_VECTOR ( 15 downto 0 );
            mmio_mem_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
            mmio_mem_oe : out STD_LOGIC;
            mmio_mem_we : out STD_LOGIC;
            mmio_oe : in STD_LOGIC;
            mmio_we : in STD_LOGIC;
            vram_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            vram_clk : in STD_LOGIC;
            vram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
        );
    end component;
    
    signal clk200mhz, debug_clk, debug_clk200mhz, debug_enable, debug_iram_select, debug_oe, debug_we, gram_clk, gram_oe, gram_we, iram_clk, mmio_clk, mmio_mem_ck, mmio_mem_oe, mmio_mem_we, mmio_oe, mmio_we, vram_clk : STD_LOGIC;
    signal debug_addr, debug_din, debug_dout, gram_addr, gram_din, gram_dout, iram_addr, iram_dout, mmio_addr, mmio_din, mmio_dout, mmio_mem_addr, mmio_mem_din, mmio_mem_dout, vram_addr, vram_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
    signal debug_bank, gram_bank: STD_LOGIC_VECTOR ( 3 downto 0 );
begin
    EUT: main_block_wrapper port map(
        clk200mhz => clk200mhz,
        debug_addr => debug_addr,
        debug_bank => debug_bank,
        debug_clk => debug_clk,
        debug_clk200mhz => debug_clk200mhz,
        debug_din => debug_din,
        debug_dout => debug_dout,
        debug_enable => debug_enable,
        debug_iram_select => debug_iram_select,
        debug_oe => debug_oe,
        debug_we => debug_we,
        gram_addr => gram_addr,
        gram_bank => gram_bank,
        gram_clk => gram_clk,
        gram_din => gram_din,
        gram_dout => gram_dout,
        gram_oe => gram_oe,
        gram_we => gram_we,
        iram_addr => iram_addr,
        iram_clk => iram_clk,
        iram_dout => iram_dout,
        mmio_addr => mmio_addr,
        mmio_clk => mmio_clk,
        mmio_din => mmio_din,
        mmio_dout => mmio_dout,
        mmio_mem_addr => mmio_mem_addr,
        mmio_mem_ck => mmio_mem_ck,
        mmio_mem_din => mmio_mem_din,
        mmio_mem_dout => mmio_mem_dout,
        mmio_mem_oe => mmio_mem_oe,
        mmio_mem_we => mmio_mem_we,
        mmio_oe => mmio_oe,
        mmio_we => mmio_we,
        vram_addr => vram_addr,
        vram_clk => vram_clk,
        vram_dout => vram_dout
    );
    
    process begin
        clk200mhz <= '0';
        wait for 50ns;
        clk200mhz <= '1';
        wait for 50ns;    
    end process;
    
    process begin
        gram_clk <= '0';
        wait for 50ns;
        gram_clk <= '1';
        wait for 100ns;
        gram_clk <= '0';
        wait for 50ns;
    end process;
    
    process begin
        iram_clk <= '0';
        wait for 50ns;
        iram_clk <= '1';
        wait for 100ns;
        iram_clk <= '0';
        wait for 50ns;
    end process;
    
    process begin  
        gram_addr <= "UUUUUUUUUUUUUUUU";
        gram_din <= "UUUUUUUUUUUUUUUU";
        gram_we <= '0';
        gram_oe <= '0';
        
        wait for 150ns;

        gram_addr <= "0000000000000000";
        gram_din <= "0000000000000001";
        gram_we <= '1';
        gram_oe <= '1';
        
        wait for 200ns;

        gram_addr <= "0000000000000001";
        gram_din <= "0000000000000011";
        gram_we <= '1';
        gram_oe <= '0';
        wait for 200ns;

        gram_addr <= "UUUUUUUUUUUUUUUU";
        gram_din <= "UUUUUUUUUUUUUUUU";
        gram_we <= '0';
        gram_oe <= '0';
        wait for 200ns;
        

        gram_addr <= "0000000000000000";
        gram_din <= "0000000000000001";
        gram_we <= '0';
        gram_oe <= '1';
        wait for 200ns;
    end process;
    
    process begin
        iram_addr <= "UUUUUUUUUUUUUUUU";
        
        wait for 150ns;

        iram_addr <= "0000000000000000";
        
        wait for 200ns;

        iram_addr <= "0000000000000001";
        
        wait for 200ns;

        iram_addr <= "UUUUUUUUUUUUUUUU";
        
        wait for 200ns;
        
        iram_addr <= "0000000000000000";
        
        wait for 200ns;
    end process;
    
    process begin
        debug_enable <= '0';
        wait for 350ns;
        debug_enable <= '1';
    end process;


end Behavioral;
