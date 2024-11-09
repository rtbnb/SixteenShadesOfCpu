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
    component main_block
        port (
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
    
--testOutputs
            internal_clk_t: out std_logic;
            iram_en_t: out std_logic;
            iram_state_t: out std_logic_vector(4 downto 0)
        );
    end component;
    
    signal clk200mhz, iram_we, iram_oe, iram_clk, iram_mem_clk, iram_mem_we, iram_mem_oe: std_logic;
    signal iram_addr, iram_din, iram_dout, iram_mem_addr, iram_mem_din, iram_mem_dout: std_logic_vector(15 downto 0);
    signal iram_bank: std_logic_vector(3 downto 0);
begin
    EUT: main_block port map(clk200mhz => clk200mhz, iram_we => iram_we, iram_oe => iram_oe, iram_clk => iram_clk, iram_bank => iram_bank, iram_dout => iram_dout, iram_mem_addr => iram_mem_addr, iram_mem_din => iram_mem_din, iram_mem_clk => iram_mem_clk, iram_mem_we => iram_mem_we, iram_mem_oe => iram_mem_oe, iram_mem_dout => iram_mem_dout);

    process begin
        clk200mhz <= '0';
        wait for 100ns;
        clk200mhz <= '1';
        wait for 100ns;    
    end process;


end Behavioral;
