----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.11.2024 13:12:47
-- Design Name: 
-- Module Name: clockcontroller - Behavioral
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
library UNISIM;
use UNISIM.VComponents.all;

entity clockcontroller is
    port(
        clk100mhz_in, fault_reset, debug_reset: in std_logic;
        debug_enable, debug_mock_clk, debug_mmu_override_enbale: in std_logic;
        load_clk, vga_clk, debug_clk, clk100mhz_out: out std_logic
    );
end clockcontroller;

architecture Behavioral of clockcontroller is
    attribute X_INTERFACE_PARAMETER: string;
    attribute X_INTERFACE_INFO      :STRING;  
    
    attribute X_INTERFACE_INFO      of debug_clk       :signal is "xilinx.com:signal:clock:1.0 debug_clk CLK";
    attribute X_INTERFACE_PARAMETER of debug_clk       :SIGNAL is "FREQ_HZ 50000000";
    attribute X_INTERFACE_INFO      of load_clk       :signal is "xilinx.com:signal:clock:1.0 debug_clk CLK";
    attribute X_INTERFACE_PARAMETER of load_clk       :SIGNAL is "FREQ_HZ 50000000";
    attribute X_INTERFACE_INFO      of vga_clk       :signal is "xilinx.com:signal:clock:1.0 debug_clk CLK";
    attribute X_INTERFACE_PARAMETER of vga_clk       :SIGNAL is "FREQ_HZ 50000000";

    signal output_en_s: std_logic;
    signal fault_s: std_logic := '0';
    signal debug_en_s: std_logic := '1';
    signal clk50mhz_buf_s: std_logic;
    signal clk_mux_s: std_logic;
    signal clk50mhz_s, transfer_clk_s, load_clk_transfer_s: std_logic;
begin
    output_en_s <= not (debug_en_s or debug_mmu_override_enbale);
    
    clk50mhz_divider : BUFR
    generic map (
       BUFR_DIVIDE => "2",   -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
       SIM_DEVICE => "7SERIES"  -- Must be set to "7SERIES"
    )
    port map (
       O => transfer_clk_s,     -- 1-bit output: Clock output port
       CE => '1',   -- 1-bit input: Active high, clock enable (Divided modes only)
       CLR => '0', -- 1-bit input: Active high, asynchronous clear (Divided modes only)
       I => clk100mhz_in      -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
    );

    load_clk_mux : BUFGMUX
    port map (
       O => load_clk_transfer_s,   -- 1-bit output: Clock output
       I0 => debug_mock_clk, -- 1-bit input: Clock input (S=0)
       I1 => transfer_clk_s, -- 1-bit input: Clock input (S=1)
       S => output_en_s     -- 1-bit input: Clock select
    );
    
    clk50mhz_forwarder: BUFG
    port map (
       O => clk50mhz_s, -- 1-bit output: Clock output
       I => transfer_clk_s  -- 1-bit input: Clock input
    );

    load_clk_forwarder: BUFG
    port map (
       O => load_clk, -- 1-bit output: Clock output
       I => load_clk_transfer_s  -- 1-bit input: Clock input
    );
    
    clk100mhz_forwarder: BUFG
    port map (
        O => clk100mhz_out,
        I => clk100mhz_in
    );

--    BUFG_inst : BUFG
--    port map (
--       O => clk50mhz_buf_s, -- 1-bit output: Clock output
--       I => clk50mhz_in  -- 1-bit input: Clock input
--    );
    
    vga_clk <= clk50mhz_s;
    debug_clk <= clk50mhz_s;


    debug_state:process(clk50mhz_s) is
    begin
        if rising_edge(clk50mhz_s) then
            if debug_enable='0' and debug_reset='1' then
                debug_en_s <= '0';
            elsif debug_enable='1' then
                debug_en_s <= '1';
            end if;
        end if;
    end process debug_state;
    
end Behavioral;
