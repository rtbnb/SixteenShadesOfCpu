----------------------------------------------------------------------------------
-- Create Date: 16.11.2024 14:46:10
-- Name: Robin
-- Design Name: ShadeCpu
-- Module Name: mmu - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mmu is
    port(
        loadClk: in std_logic;
        
        gramAddr, gramDin : in std_logic_vector(15 downto 0);
        gramBank: in std_logic_vector(3 downto 0);
        gramWe, gramOe: in std_logic;        
        gramDout: out std_logic_vector(15 downto 0);
        
        iramAddr: in std_logic_vector(15 downto 0);
        iramDout: out std_logic_vector(15 downto 0);
        
        debugEnable, debugOverrideEnable, debugClk: in std_logic;
        debugAddr, debugDin: in std_logic_vector(15 downto 0);
        debugBank: in std_logic_vector(3 downto 0);
        debugWe : in std_logic;
        debugDout: out std_logic_vector(15 downto 0);
        
        gpuClk: in std_logic;
        gpuAddr: in std_logic_vector(15 downto 0);
        gpuDin: in std_logic_vector(11 downto 0);
        gpuWe: in std_logic;
        gpuDout: out std_logic_vector(11 downto 0);
        
        vgaClk: in std_logic;
        vgaAddr: in std_logic_vector(15 downto 0);
        vgaDout: out std_logic_vector(11 downto 0);
        
        vramaMemAddr: out std_logic_vector (15 downto 0);
        vramaMemClk: out std_logic;
        vramaMemDin: out std_logic_vector (11 downto 0);
        vramaMemWe: out std_logic_vector(0 downto 0);
        vramaMemDout: in std_logic_vector(11 downto 0);
        
        vrambMemAddr: out std_logic_vector (15 downto 0);
        vrambMemClk: out std_logic;
        vrambMemDin: out std_logic_vector (11 downto 0);
        vrambMemWe: out std_logic_vector(0 downto 0);
        vrambMemDout: in std_logic_vector(11 downto 0);    
    
        mmioMemClk, mmioMemWe: out std_logic;
        mmioMemAddr, mmioMemDin: out std_logic_vector(15 downto 0);
        mmioMemDout: in std_logic_vector(15 downto 0)
    );
end mmu;

architecture Behavioral of mmu is
	type iram_type is array (2047 downto 0) of std_logic_vector(15 downto 0);
	type gram_type is array (2047 downto 0) of std_logic_vector(15 downto 0);
	signal iram : iram_type;	
    signal gram : gram_type;
    
    signal gram_we_s, gram_clk_s: std_logic;
    signal gram_dout_s, gram_din_s: std_logic_vector(15 downto 0);
    signal gram_addr_s: std_logic_vector(15 downto 0);
    
    signal iram_we_s, iram_clk_s: std_logic;
    signal iram_dout_s, iram_din_s: std_logic_vector(15 downto 0);
    signal iram_addr_s: std_logic_vector(15 downto 0);

    signal iram_comb_condition_s, gram_comb_condition_s, mmio_comb_condition_s, vram_comb_condition_s: std_logic_vector(1 downto 0);
    
    signal gram_bank_op_s, vram_bank_op_s, mmio_bank_op_s, iram_bank_op_s: std_logic;
    signal internal_debug_override_s: std_logic;
    
    signal output_config_s: std_logic_vector(3 downto 0);
    
    signal general_bank_s: std_logic_vector(3 downto 0);
begin
    internal_debug_override_s <= debugEnable and debugOverrideEnable;
                        
    with internal_debug_override_s select
        general_bank_s <= debugBank when '1',
                          gramBank when others;  

--general bank selection    
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
        iram_din_s <= debugDin when "11",
                        X"0000" when others;

    with iram_comb_condition_s select
        iram_we_s <= debugWe when "11",
                       '0' when others;             

    with iram_comb_condition_s select
        iram_addr_s <= debugAddr when "11",
                       "0000000000000000" when "10",
                       iramAddr when others;
    
    with iram_comb_condition_s select
        iram_clk_s <= debugClk when "11", 
                      '0' when "10",
                      not loadClk when others;
                       
    with internal_debug_override_s select
        iramDout <= X"0000" when '1',
                     iram_dout_s when others;
--iram end    

--gram begin
    with gram_comb_condition_s select
        gram_clk_s <= debugClk when "11",
                      not loadClk when "01",
                      '0' when others;
                       
    with gram_comb_condition_s select
        gram_we_s <= debugWe when "11",
                     gramWe when "01",
                     '0' when others;
                       
    with gram_comb_condition_s select
        gram_addr_s <= debugAddr when "11",
                       gramAddr when "01",
                       X"0000" when others;
                         
    with gram_comb_condition_s select
        gram_din_s <= debugDin when "11",
                      gramDin when "01",
                      X"0000" when others; 
--gram end

--mmio begin
    with mmio_comb_condition_s select
        mmioMemClk <= debugClk when "11",
                       not loadClk when "01",
                       '0' when others; 
                       
    with mmio_comb_condition_s select
        mmioMemWe <= debugWe when "11",
                       gramWe when "01",
                       '0' when others;      
                       
    with mmio_comb_condition_s select
        mmioMemAddr <= debugAddr when "11",
                         gramAddr when "01",
                         X"0000" when others;           
                         
    with mmio_comb_condition_s select
        mmioMemDin <= debugDin when "11",
                        gramDin when "01",
                        X"0000" when others;      
--mmio end

--vrama begin
        with vram_comb_condition_s select
            vramaMemClk <= debugClk when "11",
                            '0' when "01",
                            gpuClk when others;   
                            
        with vram_comb_condition_s select
            vramaMemAddr <= debugAddr when "11",
                              X"0000" when "10",
                              gpuAddr when others; 
                              
        with vram_comb_condition_s select
            vramaMemDin <= debugDin(11 downto 0) when "11",
                             X"000" when "10",
                             gpuDin when others;                 
        
        with vram_comb_condition_s select
            vramaMemWe <= (0 => debugWe) when "11",
                            "0" when "10",
                            (0 => gpuWe) when others; 
                      
        with vram_comb_condition_s select
            gpuDout <= X"000" when "10",
                        X"000" when "11",
                        vramaMemDout when others;                 
--vrama end

--vramb begin
        vrambMemClk <= vgaClk;
        vrambMemAddr <= vgaAddr;
        vgaDout <= vrambMemDout;

        vrambMemDin <= "000000000000";
        vrambMemWe <= "0";    
--vramb end
   
   output_config_s <=  gram_bank_op_s & mmio_bank_op_s & vram_bank_op_s & iram_bank_op_s;

    with output_config_s select
        gramDout <= gram_dout_s when "1000",
                     mmioMemDout when "0100",   
                     X"0000" when others;
                     
    with output_config_s select               
        debugDout <= gram_dout_s when "1000",
                     mmioMemDout when "0100",
                     std_logic_vector(resize(signed(vramaMemDout), gramDout'length)) when "0010",
                     iram_dout_s when "0001",
                     X"0000" when others;
    
    iram_lutram:process(iram_clk_s) is
	begin
	   if rising_edge(iram_clk_s) then
            if iram_we_s = '1' then
				iram(to_integer(unsigned(iram_addr_s(10 downto 0)))) <= iram_din_s;
			end if;
	   end if;
	end process iram_lutram;
	iram_dout_s <= iram(to_integer(unsigned(iram_addr_s(10 downto 0))));
	
    gram_lutram:process(gram_clk_s) is
	begin
	   if rising_edge(gram_clk_s) then
            if gram_we_s = '1' then
				gram(to_integer(unsigned(gram_addr_s(10 downto 0)))) <= gram_din_s;
			end if;
	   end if;
	end process gram_lutram;
	
	with gramOe or internal_debug_override_s select
	   gram_dout_s <= gram(to_integer(unsigned(gram_addr_s(10 downto 0)))) when '1',
	                  X"0000" when '0',
	                  X"0000" when others;
end Behavioral;
