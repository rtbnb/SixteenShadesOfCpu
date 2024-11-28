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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mmu is
    port(
        load_clk: in std_logic;
        
        gram_addr, gram_din : in std_logic_vector( 15 downto 0 );
        gram_bank: in std_logic_vector( 3 downto 0 );
        gram_we, gram_oe: in std_logic;        
        gram_dout: out std_logic_vector( 15 downto 0 );
        
        iram_addr: in std_logic_vector( 15 downto 0 );
        iram_dout: out std_logic_vector( 15 downto 0 );
        
        debug_enable, debug_override_enable, debug_clk: in std_logic;
        debug_addr, debug_din: in std_logic_vector( 15 downto 0 );
        debug_bank: in std_logic_vector( 3 downto 0 );
        debug_we : in std_logic;
        debug_dout: out std_logic_vector(  15 downto 0 );
        
        gpu_clk: in std_logic;
        gpu_addr: in std_logic_vector( 15 downto 0 );
        gpu_din: in std_logic_vector( 11 downto 0 );
        gpu_we: in std_logic;
        gpu_dout: out std_logic_vector( 11 downto 0 );
        
        vga_clk: in std_logic;
        vga_addr: in std_logic_vector( 15 downto 0 );
        vga_dout: out std_logic_vector( 11 downto 0 );
        
        vrama_mem_addr: out std_logic_vector ( 15 downto 0 );
        vrama_mem_ck: out std_logic;
        vrama_mem_din: out std_logic_vector ( 11 downto 0 );
        vrama_mem_we: out std_logic_vector( 0 downto 0 );
        vrama_mem_dout: in std_logic_vector( 11 downto 0 );
        
        vramb_mem_addr: out std_logic_vector ( 15 downto 0 );
        vramb_mem_ck: out std_logic;
        vramb_mem_din: out std_logic_vector ( 11 downto 0 );
        vramb_mem_we: out std_logic_vector( 0 downto 0 );
        vramb_mem_dout: in std_logic_vector( 11 downto 0 );    
    
        mmio_mem_ck, mmio_mem_we: out std_logic;
        mmio_mem_addr, mmio_mem_din: out std_logic_vector( 15 downto 0 );
        mmio_mem_dout: in std_logic_vector( 15 downto 0 )
    );
end mmu;

architecture Behavioral of mmu is
	type ram_type is array (2047 downto 0) of std_logic_vector(15 downto 0);
	signal iram : ram_type;	
    signal gram : ram_type;
    
    signal gram_we_s, gram_clk_s: std_logic;
    signal gram_dout_s, gram_din_s: std_logic_vector( 15 downto 0 );
    signal gram_addr_s: std_logic_vector( 15 downto 0 );
    
    signal iram_we_s, iram_clk_s: std_logic;
    signal iram_dout_s, iram_din_s: std_logic_vector( 15 downto 0 );
    signal iram_addr_s: std_logic_vector( 15 downto 0 );

    signal iram_comb_condition_s, gram_comb_condition_s, mmio_comb_condition_s, vram_comb_condition_s: std_logic_vector( 1 downto 0 );
    
    signal gram_bank_op_s, vram_bank_op_s, mmio_bank_op_s, iram_bank_op_s: std_logic;
    signal internal_debug_override_s: std_logic;
    
    signal output_config_s: std_logic_vector( 3 downto 0 );
    
    signal general_bank_s: std_logic_vector( 3 downto 0 );
begin
    internal_debug_override_s <= debug_enable and debug_override_enable;
                        
    with internal_debug_override_s select
        general_bank_s <= debug_bank when '1',
                          gram_bank when others;  
    
    gram_bank_op_s <= (not (general_bank_s(3) or general_bank_s(2) or general_bank_s(1) or general_bank_s(0)));
    mmio_bank_op_s <= (not (general_bank_s(3) or general_bank_s(2) or general_bank_s(1))) and general_bank_s(0);
    vram_bank_op_s <= (not (general_bank_s(3) or general_bank_s(2) or general_bank_s(0))) and general_bank_s(1);
    iram_bank_op_s <= general_bank_s(3) and general_bank_s(2) and general_bank_s(1) and general_bank_s(0);
    
    iram_comb_condition_s <= internal_debug_override_s & iram_bank_op_s;
    gram_comb_condition_s <= internal_debug_override_s & gram_bank_op_s;
    mmio_comb_condition_s <= internal_debug_override_s & mmio_bank_op_s;
    vram_comb_condition_s <= internal_debug_override_s & vram_bank_op_s;
    
--iram begin                   
    with iram_comb_condition_s select
        iram_din_s <= debug_din when "11",
                        X"0000" when others;

    with iram_comb_condition_s select
        iram_we_s <= debug_we when "11",
                       '0' when others;             

    with iram_comb_condition_s select
        iram_addr_s <= debug_addr when "11",
                       "0000000000000000" when "10",
                       iram_addr when others;
    
    with iram_comb_condition_s select
        iram_clk_s <= debug_clk when "11", 
                      '0' when "10",
                      not load_clk when others;
                       
    with internal_debug_override_s select
        iram_dout <= X"0000" when '1',
                     iram_dout_s when others;
--iram end    

--gram begin
    with gram_comb_condition_s select
        gram_clk_s <= debug_clk when "11",
                      not load_clk when "01",
                      '0' when others;
                       
    with gram_comb_condition_s select
        gram_we_s <= debug_we when "11",
                     gram_we when "01",
                     '0' when others;
                       
    with gram_comb_condition_s select
        gram_addr_s <= debug_addr when "11",
                       gram_addr when "01",
                       X"0000" when others;
                         
    with gram_comb_condition_s select
        gram_din_s <= debug_din when "11",
                      gram_din when "01",
                      X"0000" when others; 
--gram end

--mmio begin
    with mmio_comb_condition_s select
        mmio_mem_ck <= debug_clk when "11",
                       not load_clk when "01",
                       '0' when others; 
                       
    with mmio_comb_condition_s select
        mmio_mem_we <= debug_we when "11",
                       gram_we when "01",
                       '0' when others;      
                       
    with mmio_comb_condition_s select
        mmio_mem_addr <= debug_addr when "11",
                         gram_addr when "01",
                         X"0000" when others;           
                         
    with mmio_comb_condition_s select
        mmio_mem_din <= debug_din when "11",
                        gram_din when "01",
                        X"0000" when others;      
--mmio end

--vrama begin
        with vram_comb_condition_s select
            vrama_mem_ck <= debug_clk when "11",
                            '0' when "01",
                            gpu_clk when others;   
                            
        with vram_comb_condition_s select
            vrama_mem_addr <= debug_addr when "11",
                              X"0000" when "10",
                              gpu_addr when others; 
                              
        with vram_comb_condition_s select
            vrama_mem_din <= debug_din( 11 downto 0 ) when "11",
                             X"000" when "10",
                             gpu_din when others;                 
        
        with vram_comb_condition_s select
            vrama_mem_we <= ( 0 => debug_we ) when "11",
                            "0" when "10",
                            ( 0 => gpu_we ) when others; 
                      
        with vram_comb_condition_s select
            gpu_dout <= X"000" when "10",
                        X"000" when "11",
                        vrama_mem_dout when others;                 
--vrama end

--vramb begin
        vramb_mem_ck <= vga_clk;
        vramb_mem_addr <= vga_addr;
        vga_dout <= vramb_mem_dout;

        vramb_mem_din <= "000000000000";
        vramb_mem_we <= "0";    
--vramb end
   
   output_config_s <=  gram_bank_op_s & mmio_bank_op_s & vram_bank_op_s & iram_bank_op_s;

    with output_config_s select
        gram_dout <= gram_dout_s when "1000",
                     mmio_mem_dout when "0100",   
                     X"0000" when others;
                     
    with output_config_s select               
        debug_dout <= gram_dout_s when "1000",
                      mmio_mem_dout when "0100",
                      std_logic_vector(resize(signed(vrama_mem_dout), gram_dout'length)) when "0010",
                      iram_dout_s when "0001",
                      X"0000" when others;
    
    iram_lutram:process(iram_clk_s)
	begin
	   if rising_edge(iram_clk_s) then
            if iram_we_s = '1' then
				iram(to_integer(unsigned(iram_addr_s(10 downto 0)))) <= iram_din_s;
			end if;
	   end if;
	end process;
	iram_dout_s <= iram(to_integer(unsigned(iram_addr_s(10 downto 0))));
	
    gram_lutram:process(gram_clk_s)
	begin
	   if rising_edge(gram_clk_s) then
            if gram_we_s = '1' then
				gram(to_integer(unsigned(gram_addr_s(10 downto 0)))) <= gram_din_s;
			end if;
	   end if;
	end process;
	
	with gram_oe or internal_debug_override_s select
	   gram_dout_s <= gram(to_integer(unsigned(gram_addr_s(10 downto 0)))) when '1',
	                  X"0000" when '0',
	                  X"0000" when others;
    
end Behavioral;
