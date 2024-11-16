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
        gram_mem_ck, gram_mem_we, gram_mem_oe: out std_logic;
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
    signal gram_mem_we_s, gram_mem_oe_s: std_logic := '0';
    
    signal vram_mem_ck_s: std_logic;
    signal vram_mem_addr_s, vram_mem_din_s, vram_dout_s: std_logic_vector(15 downto 0);
    signal vram_mem_we_s, vram_mem_oe_s, vram_op_s: std_logic := '0'; --TODO Implement vram op when implementing vram buffer interface
    
    signal debug_gram_mem_addr_s, debug_gram_mem_din_s, debug_iram_mem_addr_s, debug_iram_mem_din_s : std_logic_vector(15 downto 0) := "0000000000000000";
    signal debug_gram_mem_we_s, debug_gram_mem_oe_s, debug_iram_mem_we_s, debug_iram_mem_oe_s: std_logic := '0';
    signal debug_dout_s: std_logic_vector(15 downto 0); --should be irrelevant
    signal debug_op_s, debug_enable_s: std_logic := '0';
    signal debug_iram_select_s: std_logic := '0';
    
    signal gram_op_s: std_logic;
    
begin
    internal_clk_s <= not clk200mhz;
    
    gram_op_s <= gram_we or gram_oe;
    
    gram_mem_ck <= internal_clk_s;
    
    gram_mem_addr <= gram_addr(13 downto 0);
    gram_mem_din <= gram_din;
    gram_mem_we <= gram_we;
    gram_mem_oe <= gram_oe;
    gram_dout <= gram_mem_dout;
    

end Behavioral;
