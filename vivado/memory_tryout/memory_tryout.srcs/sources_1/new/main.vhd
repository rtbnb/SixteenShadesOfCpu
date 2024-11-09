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

--testOutputs
        internal_clk_t: out std_logic;
        iram_en_t: out std_logic;
        iram_state_t: out std_logic_vector(4 downto 0)
    );
end main;

architecture Behavioral of main is
    signal internal_clk_s: std_logic;

    signal iram_mem_clk_s: std_logic;
    signal iram_mem_addr_s: std_logic_vector(15 downto 0);
    signal iram_mem_din_s: std_logic_vector(15 downto 0);
    signal iram_mem_we_s: std_logic := '1';
    signal iram_mem_oe_s: std_logic := '1';
    
    signal iram_en_s: std_logic := '0';
    signal iram_state_s: integer range 0 to 100;
begin
    internal_clk_s <= not clk200mhz;
    iram_mem_clk <= iram_mem_clk_s;
    
    iram_mem_we <= iram_mem_we_s;
    iram_mem_oe <= iram_mem_oe_s;
    iram_mem_addr <= iram_mem_addr_s;
    iram_mem_din <= iram_mem_din_s;
    
    iram_dout <= iram_mem_dout;
    
    iram_en_t <= iram_en_s;
  
    iram_state_t <= to_unsigned(iram_state_s, iram_state_t'length);
    
    mmu_main:process(iram_clk)
    begin
        
        if rising_edge(iram_clk) then
            case iram_state_s is
                when 0 =>
                    iram_en_s <= '1';
                    iram_mem_addr_s <= iram_addr;
                    iram_mem_we_s <= iram_we;
                    iram_mem_oe_s <= iram_oe;
                    if iram_we='1' then
                        iram_mem_din_s <= iram_din;
                    end if;
                    iram_state_s <= 1;
                when 1 =>
                    iram_dout <= iram_mem_dout;
                    iram_state_s <= 2;
                when others => 
                    iram_state_s <= 0;
                    iram_en_s <= '0';
            end case;     
        end if;
    
    end process;

end Behavioral;
