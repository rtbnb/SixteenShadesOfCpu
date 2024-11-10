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
            clk200mhz, iram_clk, iram_oe, iram_we : in STD_LOGIC;
            iram_en_t, iram_mem_clk : out STD_LOGIC;
            iram_addr, iram_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
            iram_bank : in STD_LOGIC_VECTOR ( 3 downto 0 );
            iram_dout, iram_dout_t : out STD_LOGIC_VECTOR ( 15 downto 0 )
        );
    end component;
    
    signal clk200mhz, iram_clk, iram_oe, iram_we, iram_en_t, iram_mem_clk : STD_LOGIC;
    signal iram_addr, iram_din, iram_dout, iram_dout_t : STD_LOGIC_VECTOR ( 15 downto 0 );
    signal iram_bank : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
    EUT: main_block_wrapper port map(clk200mhz => clk200mhz, iram_clk => iram_clk, iram_oe => iram_oe, iram_we => iram_we, iram_en_t => iram_en_t, iram_addr => iram_addr, iram_din => iram_din, iram_dout => iram_dout, iram_bank => iram_bank, iram_mem_clk => iram_mem_clk, iram_dout_t => iram_dout_t);

    process begin
        clk200mhz <= '0';
        wait for 100ns;
        clk200mhz <= '1';
        wait for 100ns;    
    end process;
    
    process begin
        iram_clk <= '0';
        wait for 100ns;
        iram_clk <= '1';
        iram_addr <= "0000000000000000";
        iram_din <= "0000000000000001";
        iram_we <= '1';
        iram_oe <= '1';
        wait for 200ns;
        iram_clk <= '0';
        iram_addr <= "UUUUUUUUUUUUUUUU";
        iram_din <= "UUUUUUUUUUUUUUUU";
        iram_we <= '0';
        iram_oe <= '0';
        wait for 100ns;
        iram_clk <= '0';
        wait for 200ns;
        
    end process;


end Behavioral;
