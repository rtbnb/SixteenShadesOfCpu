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

-- Declare the attributes in the architecture section
 --ATTRIBUTE X_INTERFACE_INFO : STRING;
 --ATTRIBUTE X_INTERFACE_INFO of <clock_port_name>: SIGNAL is "xilinx.com:signal:clock:1.0 <clock_port_name> CLK";
-- Supported parameters: ASSOCIATED_CLKEN, ASSOCIATED_RESET, ASSOCIATED_ASYNC_RESET, ASSOCIATED_BUSIF, CLK_DOMAIN, PHASE, FREQ_HZ
-- Most of these parameters are optional.  However, when using AXI, at least one clock must be associated to the AXI interface.
-- Use the axi interface name for ASSOCIATED_BUSIF, if there are multiple interfaces, separate each name by ':'
-- Use the port name for ASSOCIATED_RESET.
-- Output clocks will require FREQ_HZ to be set (note the value is in HZ and an integer is expected).
-- Setting FREQ_TOLERANCE_HZ to 0 would allow FREQ_HZ value i:e 100000000 frequency only on the port, setting to FREQ_HZ value would
-- allow FREQ_HZ within range from  FREQ_HZ-10MHz to FREQ_HZ+10MHz, setting to â€˜-1â€™ would allow any FREQ_HZ value on the clock port 
-- from the top BD.
 --ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
 --ATTRIBUTE X_INTERFACE_PARAMETER of <clock_port_name>: SIGNAL is "ASSOCIATED_BUSIF <AXI_interface_name>, ASSOCIATED_RESET <reset_port_name>, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0";


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
        iram_addr: in std_logic_vector(15 downto 0) := "0000000000000000";
        iram_clk: in std_logic := '0';
        iram_dout: out std_logic_vector(15 downto 0);
        
        iram_mem_din: out std_logic_vector(15 downto 0) := "0000000000000000";
        iram_mem_addr: out std_logic_vector(13 downto 0) := "00000000000000";
        iram_mem_ck: out std_logic;
        iram_mem_we : out std_logic := '0'; --TODO Build into debug
        iram_mem_oe : out std_logic := '1';
        iram_mem_dout: in std_logic_vector(15 downto 0);
--iram end
    
--gram begin
        gram_addr, gram_din: in std_logic_vector(15 downto 0) := "0000000000000000";
        gram_we, gram_oe, gram_clk: in std_logic := '0';
        gram_bank: in std_logic_vector(3 downto 0) := "0000";
        gram_dout: out std_logic_vector(15 downto 0);
        
        gram_mem_din: out std_logic_vector(15 downto 0) := "0000000000000000";
        gram_mem_addr: out std_logic_vector(13 downto 0) := "00000000000000";
        gram_mem_ck: out std_logic;
        gram_mem_we : out std_logic := '0';
        gram_mem_oe : out std_logic := '1';
        gram_mem_dout: in std_logic_vector(15 downto 0);
--gram end

--vram begin
        vram_clk: in std_logic;
        vram_addr: in std_logic_vector(15 downto 0);
        vram_dout: out std_logic_vector(15 downto 0);
        
        vram_mem_addr, vram_mem_din: out std_logic_vector(15 downto 0) := "0000000000000000";
        vram_mem_ck: out std_logic;
        vram_mem_we, vram_mem_oe: out std_logic := '0';
        vram_mem_dout: in std_logic_vector(15 downto 0);
--vram end

--mmio begin
        mmio_clk, mmio_we, mmio_oe : in std_logic;
        mmio_addr, mmio_din: in std_logic_vector(15 downto 0);
        mmio_dout: out std_logic_vector(15 downto 0);
        
        mmio_mem_ck, mmio_mem_we, mmio_mem_oe: out std_logic;
        mmio_mem_addr, mmio_mem_din: out std_logic_vector(15 downto 0);
        mmio_mem_dout: in std_logic_vector(15 downto 0);      
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
    signal internal_clk_s: std_logic;
    
    signal iram_mem_addr_s, iram_dout_s: std_logic_vector(15 downto 0);
    signal iram_mem_we_s, iram_mem_oe_s, iram_op_s: std_logic := '0';
    
    signal gram_mem_addr_s, gram_mem_din_s, gram_dout_s: std_logic_vector(15 downto 0);
    signal gram_mem_we_s, gram_mem_oe_s, gram_op_s: std_logic := '0';
    
    signal vram_mem_ck_s: std_logic;
    signal vram_mem_addr_s, vram_mem_din_s, vram_dout_s: std_logic_vector(15 downto 0);
    signal vram_mem_we_s, vram_mem_oe_s, vram_op_s: std_logic := '0'; --TODO Implement vram op when implementing vram buffer interface
    
    signal debug_gram_mem_addr_s, debug_gram_mem_din_s, debug_iram_mem_addr_s, debug_iram_mem_din_s : std_logic_vector(15 downto 0) := "0000000000000000";
    signal debug_gram_mem_we_s, debug_gram_mem_oe_s, debug_iram_mem_we_s, debug_iram_mem_oe_s: std_logic := '0';
    signal debug_dout_s: std_logic_vector(15 downto 0); --should be irrelevant
    signal debug_op_s, debug_enable_s: std_logic := '0';
    signal debug_iram_select_s: std_logic := '0';
    
    signal test_op_s: std_logic;
    signal iram_op_state: integer range 0 to 10 := 0;
    signal gram_op_state: integer range 0 to 10 := 0;
    signal debug_op_state: integer range 0 to 10 := 0;
    
begin
    with debug_enable select
        internal_clk_s <= not debug_clk200mhz when '1',
                          not clk200mhz when others;

--debug begin
    with debug_enable select
        debug_enable_s <= '1' when '1',
                          '0' when others;
    
    debug_op_s <= (debug_we or debug_oe) and debug_enable_s;
--debug end

--iram begin
    iram_op_s <= not debug_enable_s;

    with iram_op_state select
        iram_mem_ck <= internal_clk_s when 1|2|3,
                       '0' when others;

    with debug_enable_s select
        iram_mem_addr <= debug_iram_mem_addr_s(13 downto 0) when '1',
                         iram_mem_addr_s( 13 downto 0) when others;
                         
    with debug_enable_s select
        iram_mem_din <= debug_iram_mem_din_s when '1',
                        "0000000000000000" when others;
    
    with debug_enable_s select
        iram_mem_we <= debug_iram_mem_we_s when '1',
                       iram_mem_we_s when others;
    
    with iram_mem_oe_s select
       iram_dout_s <= iram_mem_dout        when '1', 
                     "0000000000000000" when others;
                 
    with iram_dout_s select
        iram_dout <= "0000000000000000" when "XXXXXXXXXXXXXXXX",
                     iram_dout_s when others;                   
--iram end
    
--gram begin
    gram_op_s <= (gram_we or gram_oe) and not debug_enable_s;

    with gram_op_state select
        gram_mem_ck <= internal_clk_s when 1|2|3,
                       '0' when others;          

    with debug_enable_s select
        gram_mem_we <= debug_gram_mem_we_s when '1',
                       gram_mem_we_s when others;
    
    with debug_enable_s select
        gram_mem_addr <= debug_gram_mem_addr_s( 13 downto 0) when '1', --TODO Change to debug_mem_addr_s
                         gram_mem_addr_s( 13 downto 0) when others;
                         
    with debug_enable_s select
        gram_mem_din <= debug_gram_mem_din_s when '1',
                        gram_mem_din_s when others;   
                        
    with gram_mem_oe_s select
       gram_dout_s <= gram_mem_dout        when '1', 
                     "0000000000000000" when others;
                 
    with gram_dout_s select
        gram_dout <= "0000000000000000" when "XXXXXXXXXXXXXXXX",
                     gram_dout_s when others;      
--gram end
 
--vram begin    
    vram_mem_ck <= vram_mem_ck_s;
    vram_mem_addr <= vram_mem_addr_s;
    vram_mem_din <= vram_mem_din_s;
    vram_mem_we <= vram_mem_we_s;
    
    with vram_mem_oe_s select
       vram_dout_s <= vram_mem_dout        when '1', 
                     "0000000000000000" when others;
                 
    with vram_dout_s select
        vram_dout <= "0000000000000000" when "XXXXXXXXXXXXXXXX",
                     vram_dout_s when others;  
--vram end

--debug begin
    with debug_iram_select select
        debug_iram_select_s <= debug_iram_select when '1',
                               debug_iram_select when '0',
                               '0' when others;
--debug end

    iram:process(internal_clk_s)
    begin
        if debug_enable_s='0' then
            if rising_edge(internal_clk_s) and iram_clk='0' and iram_op_state=0 and iram_op_s='1' then
                iram_op_state <= 1;
                
--                iram_mem_oe <= '1'; --this is set one time and stays set as long as the cpu runs
                iram_mem_addr_s <= iram_addr;
                iram_mem_we_s <= '0';
                iram_mem_oe_s <= '1';
            end if;
            
            if falling_edge(internal_clk_s) and iram_op_state=1 then
                iram_op_state <= 2;
            end if;
            
            if rising_edge(internal_clk_s) and iram_op_state=2 then
                iram_op_state <= 3;
            end if;
            
            if falling_edge(internal_clk_s) and iram_op_state=3 then
                iram_mem_we_s <= '0';
                iram_op_state <= 0;
            end if;
            
        end if;
    end process;
   
   gram:process(internal_clk_s)
   begin
        if debug_enable_s='0' then        
            if rising_edge(internal_clk_s) and gram_clk='0' and gram_op_state=0 and gram_op_s='1' then
                gram_op_state <= 1;
                
--                gram_mem_oe <= '1'; --this is set one time and stays set as long as the cpu runs
                gram_mem_addr_s <= gram_addr;
                gram_mem_din_s <= gram_din;
                gram_mem_we_s <= gram_we;
                gram_mem_oe_s <= gram_oe;
            end if;
            
            if falling_edge(internal_clk_s) and gram_op_state=1 then
                gram_op_state <= 2;
            end if;
            
            if rising_edge(internal_clk_s) and gram_op_state=2 then
                gram_op_state <= 3;
            end if;
            
            if falling_edge(internal_clk_s) and gram_op_state=3 then
                gram_mem_we_s <= '0';
                gram_op_state <= 0;
            end if;
        end if;    
   end process;
    
    vram_main:process(clk200mhz)
    begin
    
    
    end process;
    
    debug:process(internal_clk_s)
    begin
        if debug_enable_s='1' then        
            if rising_edge(internal_clk_s) and debug_clk='0' and debug_op_state=0 and debug_op_s='1' then
                debug_op_state <= 1;
                
                iram_mem_oe <= '1'; --this is set one time and stays set as long as the cpu runs
                gram_mem_oe <= '1';
                
                if debug_iram_select_s='1' then
                    debug_iram_mem_addr_s <= debug_addr;
                    debug_iram_mem_din_s <= debug_din;
                    debug_iram_mem_we_s <= debug_we;
                    debug_iram_mem_oe_s <= debug_oe;
                else
                    debug_gram_mem_addr_s <= debug_addr;
                    debug_gram_mem_din_s <= debug_din;
                    debug_gram_mem_we_s <= debug_we;
                    debug_gram_mem_oe_s <= debug_oe;
                end if;
            end if;
            
            if falling_edge(internal_clk_s) and debug_op_state=1 then
                debug_op_state <= 2;
            end if;
            
            if rising_edge(internal_clk_s) and debug_op_state=2 then
                debug_op_state <= 3;
            end if;
            
            if falling_edge(internal_clk_s) and debug_op_state=3 then
 --               debug_mem_we_s <= '0';
                debug_op_state <= 0;
            end if;
        end if;         
    
    
        --TODO Implement base process to write gram (with banks) or iram
    end process;
    
    

end Behavioral;
