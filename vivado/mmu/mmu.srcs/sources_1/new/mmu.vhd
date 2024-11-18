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
        debug_en_lock: out std_logic;
        fault: out std_logic;
        
        cpu_sync, debug_sync, vram_sync: in std_logic; --The sync signal is a replacement for the old clk signals. It is used for the locks and to initiate a operation
        
        debug_clk200mhz, debug_we, debug_enable, debug_override_enable: std_logic;
        debug_addr, debug_din: in std_logic_vector( 15 downto 0 );
        debug_bank: in std_logic_vector( 3 downto 0 );
        debug_dout: out std_logic_vector( 15 downto 0 );
         
        iram_addr: in std_logic_vector( 15 downto 0 );
        iram_dout: out std_logic_vector( 15 downto 0 );

        gram_we: in std_logic;
        gram_addr, gram_din : in std_logic_vector( 15 downto 0 );
        gram_dout: out std_logic_vector( 15 downto 0 );
        gram_bank: in std_logic_vector( 3 downto 0 );

        vram_clk200mhz: in std_logic;
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
    signal iram_comb_condition_s: std_logic_vector( 1 downto 0 );
    
    signal gram_bank_op_s, vram_bank_op_s, mmio_bank_op_s, iram_bank_op_s: std_logic;
    signal internal_debug_override_s: std_logic;
    
    signal output_config_s: std_logic_vector( 4 downto 0 );
    
    signal general_bank_s: std_logic_vector( 3 downto 0 );
    signal general_we_s: std_logic_vector( 0 downto 0 );
    signal general_clk_s: std_logic;
    signal general_addr_s, general_din_s, general_dout_s: std_logic_vector( 15 downto 0 ); 
    
    signal cpu_lock_s: std_logic := '0';
begin
    debug_en_lock <= cpu_lock_s and not debug_enable;

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
                        
    internal_debug_override_s <= debug_enable and debug_override_enable;
    
    gram_bank_op_s <= not (general_bank_s(3) or general_bank_s(2) or general_bank_s(1) or general_bank_s(0));
    vram_bank_op_s <= (not (general_bank_s(3) or general_bank_s(2) or general_bank_s(1))) and general_bank_s(0);
    mmio_bank_op_s <= (not (general_bank_s(3) or general_bank_s(2) or general_bank_s(0))) and general_bank_s(1);
    iram_bank_op_s <= general_bank_s(3) and general_bank_s(2) and general_bank_s(1) and general_bank_s(0);
    
    iram_comb_condition_s <= internal_debug_override_s & iram_bank_op_s;
        
--iram begin                   
    with iram_comb_condition_s select
        iram_mem_din <= debug_din when "11",
                        X"0000" when others;

    with iram_comb_condition_s select
        iram_mem_we <= ( 0 => debug_we) when "11",
                       "0" when others;             

    with iram_comb_condition_s select
        iram_mem_addr <= debug_addr( 13 downto 0 ) when "11",
                         "00000000000000" when "10",
                         iram_addr( 13 downto 0 ) when others;
    
    with iram_comb_condition_s select
        iram_mem_ck <= '0' when "10",
                       general_clk_s when others;
                       
    with iram_comb_condition_s select
        iram_dout <= X"0000" when "11",
                     X"0000" when "10",
                     iram_mem_dout when others;

--iram end    

--gram begin
--TODO Build combined condition to only select gram when iram is not written to




--ck section-------------------------------------------------
    gram_ck:process(general_clk_s)
    begin
        case gram_bank_op_s is
            when '1' =>
                gram_mem_ck <= general_clk_s;
            when others =>
                gram_mem_ck <= '0';
        end case;    
    end process;

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
   
    with output_config_s select --TODO This needs to be fixed to also work with the general output
        gram_dout <= gram_mem_dout when "00000",
                     gram_mem_dout when "00001",
                     vrama_mem_dout when "00010",
                     vrama_mem_dout when "00011",
                     mmio_mem_dout when "00100",
                     mmio_mem_dout when "00101",
                     X"0000" when others;
    
    with output_config_s select
        debug_dout <= gram_mem_dout when "00000",
                      gram_mem_dout when "00001",
                      vrama_mem_dout when "00010",
                      vrama_mem_dout when "00011",
                      mmio_mem_dout when "00100",
                      mmio_mem_dout when "00101",
                      iram_mem_dout when "11111",
                      X"0000" when others;                     
--gram end


--vram begin
    vramb_mem_addr <= vram_addr;
    vramb_mem_we <= "0";
    
    with debug_override_enable and debug_enable select
        vramb_mem_ck <= not debug_clk200mhz when '1',
                        not vram_clk200mhz when others;
                        
    vram_dout <= vramb_mem_dout;
--vram end


------------------------------------------------------------
-- This Process is only affected by the normal gram config
-- The process doesnt do anything when debug is enabled to not deactivate debug when data is written
--
------------------------------------------------------------
    cpu_lock:process(clk200mhz)
    begin
        if falling_edge(clk200mhz) then
            cpu_lock_s <= gram_we and (not cpu_sync);
        end if;
    end process;

------------------------------------------------------------
-- This Process is needed to relief timing concerns.
-- This Process holds the old comb_bank_s value until the process for the new value is finished. By this it is guaranteed that the value can be safely read be the client 
--
------------------------------------------------------------
    output_bank_update:process(cpu_lock_s)
    begin
        if falling_edge(cpu_lock_s) then
            output_config_s <= general_bank_s & internal_debug_override_s;
        end if;
    end process;

end Behavioral;
