----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.11.2024 14:46:10
-- Design Name: 
-- Module Name: mmu - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mmu is
    port(
        clk200mhz: in std_logic;
        
        debug_clk200mhz, debug_clk, debug_we, debug_enable, debug_override_enable: std_logic;
        debug_addr, debug_din: in std_logic_vector( 15 downto 0 );
        debug_bank: in std_logic_vector( 3 downto 0 );
        debug_dout: out std_logic_vector( 15 downto 0 );
         
        iram_clk: in std_logic;
        iram_addr: in std_logic_vector( 15 downto 0 );
        iram_dout: out std_logic_vector( 15 downto 0 );

        gram_clk, gram_we: in std_logic;
        gram_addr, gram_din : in std_logic_vector( 15 downto 0 );
        gram_dout: out std_logic_vector( 15 downto 0 );
        gram_bank: in std_logic_vector( 3 downto 0 );

        vram_clk: in std_logic;
        vram_addr: in std_logic_vector( 15 downto 0 );
        vram_dout: out std_logic_vector( 15 downto 0 );
        
        iram_mem_addr: out std_logic_vector( 13 downto 0 ); 
        iram_mem_ck: out std_logic;
        iram_mem_din: out std_logic_vector( 15 downto 0 );
        iram_mem_we: out std_logic_vector( 0 downto 0 );
        iram_mem_dout: in std_logic_vector( 15 downto 0 );
        
        gram_mem_addr: out std_logic_vector( 13 downto 0 );
        gram_mem_ck: out std_logic;
        gram_mem_din: out std_logic_vector( 15 downto 0 );
        gram_mem_we: out std_logic_vector( 0 downto 0 );  
        gram_mem_dout: in std_logic_vector( 15 downto 0 );
        
        vrama_mem_addr: out std_logic_vector ( 15 downto 0 );
        vrama_mem_ck: out std_logic;
        vrama_mem_din: out std_logic_vector ( 15 downto 0 );
        vrama_mem_we: out std_logic_vector( 0 downto 0 );
        vrama_mem_dout: in std_logic_vector( 15 downto 0 );
        
        vramb_mem_addr: out std_logic_vector ( 15 downto 0 );
        vramb_mem_ck: out std_logic;
        vramb_mem_din: out std_logic_vector ( 15 downto 0 );
        vramb_mem_we: out std_logic_vector( 0 downto 0 );
        vramb_mem_dout: in std_logic_vector( 15 downto 0 );    
    
        mmio_mem_ck, mmio_mem_we, mmio_mem_oe: out std_logic;
        mmio_mem_addr, mmio_mem_din: out std_logic_vector( 15 downto 0 );
        mmio_mem_dout: in std_logic_vector( 15 downto 0 )
    );
end mmu;

architecture Behavioral of mmu is
    signal gram_bank_op_s, vram_bank_op_s, mmio_bank_op_s: std_logic;
    signal iram_op_config_s: std_logic;
    
    signal output_config_s: std_logic_vector( 5 downto 0 );
    
    signal general_bank_s: std_logic_vector( 3 downto 0 );
    signal general_we_s: std_logic_vector( 0 downto 0 );
    signal general_clk_s: std_logic;
    signal general_addr_s, general_din_s, general_dout_s: std_logic_vector( 15 downto 0 ); 
    
    signal gram_lock_s: std_logic := '0';
begin
    with debug_override_enable and debug_enable select
        general_clk_s <= not debug_clk200mhz when '1',
                         not clk200mhz when others;
                         
    with debug_override_enable and debug_enable select
        general_we_s <= (0 => debug_we) when '1',
                        (0 => gram_we) when others;
                        
    with debug_override_enable and debug_enable select
        general_bank_s <= debug_bank when '1',
                          gram_bank when others;  
                          
    with debug_override_enable and debug_enable select
        general_addr_s <= debug_addr when '1',
                          gram_addr when others;
                          
    with debug_override_enable and debug_enable select
        general_din_s <= debug_din when '1',
                         gram_din when others;
                        
    
    
--iram begin
    iram_op_config_s <= debug_enable and debug_override_enable and (debug_bank(3) and debug_bank(2) and debug_bank(1) and debug_bank(0));
    
    with iram_op_config_s select
        iram_mem_addr <= debug_addr( 13 downto 0 ) when '1',
                         iram_addr when others;
                        
    with iram_op_config_s select
        iram_mem_din <= debug_din when '1',
                        X"0000" when others;

    with iram_op_config_s select
        iram_mem_we <= ( 0 => debug_we) when '1',
                       "0" when others;             

    
    with iram_comb_config_s select
        iram_mem_addr <= debug_addr( 13 downto 0 ) when "11",
                         "00000000000000" when "10",
                         iram_addr( 13 downto 0 ) when others;
    with iram_comb_config_s select
        iram_mem_ck <= not debug_clk200mhz when "11",
                       '0' when "10",
                       not clk200mhz when others;
    with iram_comb_config_s select
        iram_mem_we <= (0 => debug_we) when "11",
                       "0" when others;
    with iram_comb_config_s select
        iram_dout <= X"0000" when "11",
                     iram_mem_dout when others;

--iram end    

--gram begin
    gram_bank_op_s <= not (general_bank_s(3) or general_bank_s(2) or general_bank_s(1) or general_bank_s(0));
    vram_bank_op_s <= (not (general_bank_s(3) or general_bank_s(2) or general_bank_s(1))) and general_bank_s(0);
    mmio_bank_op_s <= (not (general_bank_s(3) or general_bank_s(2) or general_bank_s(0))) and general_bank_s(1);

--ck section-------------------------------------------------    
    with gram_bank_op_s select
        gram_mem_ck <= general_clk_s when '1',
                       '0' when others;
    with vram_bank_op_s select
        vrama_mem_ck <= general_clk_s when '1',
                        '0' when others;                
    with mmio_bank_op_s select
        mmio_mem_ck <= general_clk_s when '1',
                       '0' when others;                        
-------------------------------------------------------------

--we section-------------------------------------------------
    with gram_bank_op_s select
        gram_mem_we <= general_we_s when '1',
                       "0" when others;
    with vram_bank_op_s select
        vrama_mem_we <= general_we_s when '1',
                        "0" when others;    
    with mmio_bank_op_s select
        mmio_mem_we <= general_we_s(0) when '1',
                       '0' when others;
-------------------------------------------------------------                

--addr section-----------------------------------------------
    with gram_bank_op_s select
        gram_mem_addr <= general_addr_s( 13 downto 0 ) when '1',
                         "00000000000000" when others;
    with vram_bank_op_s select
        vrama_mem_addr <= general_addr_s when '1',
                          X"0000" when others;
    with mmio_bank_op_s select
        mmio_mem_addr <= general_addr_s when '1',
                         X"0000" when others;                                                
-------------------------------------------------------------

--din section------------------------------------------------
    with gram_bank_op_s select
        gram_mem_din <= general_din_s when '1',
                        X"0000" when others;
    with vram_bank_op_s select
        vrama_mem_din <= general_din_s when '1',
                        X"0000" when others;
    with mmio_bank_op_s select
        mmio_mem_din <= general_din_s when '1',
                        X"0000" when others;             
-------------------------------------------------------------
   
    with output_config_s select
        gram_dout <= gram_mem_dout when "000000",
                     vrama_mem_dout when "000100",
                     mmio_mem_dout when "001000",
                     X"0000" when others;
    with output_config_s select
        debug_dout <= gram_mem_dout when "000010",
                      vrama_mem_dout when "000110",
                      mmio_mem_dout when "001010",
                      X"0000" when others;                     
--gram end


--vram begin
    vramb_mem_addr <= vram_addr;
    vramb_mem_we <= "0";
    vramb_mem_ck <= general_clk_s;
    vram_dout <= vramb_mem_dout;
--vram end

--debug begin

--debug end


------------------------------------------------------------
-- This Process is only affected by the normal gram config
-- The process doesnt do anything when debug is enabled to not deactivate debug when data is written
--
------------------------------------------------------------
    gram_lock:process(internal_clk_s)
    begin
        if rising_edge(internal_clk_s) then
            gram_lock_s <= gram_we and (not gram_clk);
        end if;
    end process;

------------------------------------------------------------
-- This Process is needed to relief timing concerns.
-- This Process holds the old comb_bank_s value until the process for the new value is finished. By this it is guaranteed that the value can be safely read be the client 
--
------------------------------------------------------------
    bank_update:process(gram_lock_s)
    begin
        if falling_edge(gram_lock_s) then
            output_gram_bank_s <= comb_bank_s;
        end if;
    end process;

end Behavioral;