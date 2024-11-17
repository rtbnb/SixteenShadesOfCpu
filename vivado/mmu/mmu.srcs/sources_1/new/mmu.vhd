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
        
        debug_clk200mhz, debug_clk, debug_we, debug_enable, debug_clk_enable, debug_iram_select: std_logic;
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
    
    signal output_gram_bank_s: std_logic_vector( 3 downto 0 );
    
    signal internal_clk_s: std_logic;
    signal gram_lock_s: std_logic := '0';
begin
    with debug_clk_enable and debug_enable select
        internal_clk_s <= not debug_clk200mhz when '1',
                          not clk200mhz when others;

--iram begin
    iram_mem_addr <= iram_addr( 13 downto 0 );
    iram_mem_ck <= internal_clk_s;
    iram_mem_we <= "0";
    iram_dout <= iram_mem_dout;
--iram end    

--gram begin
    gram_bank_op_s <= not (gram_bank(0) or gram_bank(1) or gram_bank(2) or gram_bank(3));
    vram_bank_op_s <= (not (gram_bank(3) or gram_bank(2) or gram_bank(1))) and gram_bank(0);
    mmio_bank_op_s <= (not (gram_bank(3) or gram_bank(2) or gram_bank(0))) and gram_bank(1);
      
    gram_mem_ck <= internal_clk_s and gram_bank_op_s;
    vrama_mem_ck <= internal_clk_s and vram_bank_op_s;
    mmio_mem_ck <= internal_clk_s and mmio_bank_op_s; 
    
    gram_mem_we <= (0 => (gram_we and gram_bank_op_s));
    vrama_mem_we <= (0 => (gram_we and vram_bank_op_s));
    mmio_mem_we <= gram_we and mmio_bank_op_s;
    
    with gram_bank select
        gram_mem_addr <= gram_addr( 13 downto 0 ) when "0000",
                         "00000000000000" when others;
    with gram_bank select
        vrama_mem_addr <= gram_addr when "0001",
                          X"0000" when others;
    with gram_bank select
        mmio_mem_addr <= gram_addr when "0010",
                         X"0000" when others;                     
    
    with gram_bank select
        gram_mem_din <= gram_din when "0000",
                        X"0000" when others;
    with gram_bank select
        vrama_mem_din <= gram_din when "0001",
                         X"0000" when others;
    with gram_bank select
        mmio_mem_din <= gram_din when "0010",
                        X"0000" when others;              
    
    with output_gram_bank_s select
        gram_dout <= gram_mem_dout when "0000",
                     vrama_mem_dout when "0001",
                     mmio_mem_dout when "0010",
                     X"0000" when others;
--gram end


--vram begin
    iram_mem_ck <= internal_clk_s;

    vramb_mem_addr <= vram_addr;
    vramb_mem_we <= "0";
    vramb_mem_ck <= internal_clk_s;
    vram_dout <= vramb_mem_dout;
--vram end

--debug begin

--debug end



    gram_lock:process(internal_clk_s)
    begin
        if rising_edge(internal_clk_s) then
            gram_lock_s <= gram_we and (not gram_clk);
        end if;
    end process;

------------------------------------------------------------
-- This Process is needed to relief timing concerns.
-- This Process holds the old gram_bank value until the process for the new value is finished. By this it is guaranteed that the value can be safely read be the client 
--
------------------------------------------------------------
    bank_update:process(gram_lock_s)
    begin
        if falling_edge(gram_lock_s) then
            output_gram_bank_s <= gram_bank;
        end if;
    end process;

end Behavioral;
