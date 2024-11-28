----------------------------------------------------------------------------------
-- Create Date: 14.11.2024 19:55:13
-- Name: Robin
-- Design Name: ShadeCpu
-- Module Name: clockcontroller - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity clockcontroller is
    port(
        clk100mhzIn, faultReset, debugReset: in std_logic;
        debugEnable, debugMockClk, debugMmuOverrideEnable: in std_logic;
        loadClk, vgaClk, debugClk, clk100mhzOut: out std_logic
    );
end clockcontroller;

architecture Behavioral of clockcontroller is
    attribute X_INTERFACE_PARAMETER: string;
    attribute X_INTERFACE_INFO      :STRING;  
    
    attribute X_INTERFACE_INFO      of debugClk     :signal is "xilinx.com:signal:clock:1.0 debug_clk CLK";
    attribute X_INTERFACE_PARAMETER of debugClk     :SIGNAL is "FREQ_HZ 50000000";
    attribute X_INTERFACE_INFO      of loadClk      :signal is "xilinx.com:signal:clock:1.0 debug_clk CLK";
    attribute X_INTERFACE_PARAMETER of loadClk      :SIGNAL is "FREQ_HZ 50000000";
    attribute X_INTERFACE_INFO      of vgaClk       :signal is "xilinx.com:signal:clock:1.0 debug_clk CLK";
    attribute X_INTERFACE_PARAMETER of vgaClk       :SIGNAL is "FREQ_HZ 50000000";

    signal output_en_s: std_logic;
    signal fault_s: std_logic := '0';
    signal debug_en_s: std_logic := '1';
    signal clk50mhz_buf_s: std_logic;
    signal clk_mux_s: std_logic;
    signal clk50mhz_s, transfer_clk_s, load_clk_transfer_s: std_logic;
begin
    output_en_s <= not (debug_en_s or debugMmuOverrideEnable);
    
    clk50mhz_divider : BUFR
    generic map (
       BUFR_DIVIDE => "2",      -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
       SIM_DEVICE => "7SERIES"
    )
    port map (
       O => transfer_clk_s,
       CE => '1',           
       CLR => '0',          
       I => clk100mhzIn     
    );

    load_clk_mux : BUFGMUX
    port map (
       O => load_clk_transfer_s,
       I0 => debugMockClk,      -- Clock input (S=0)
       I1 => transfer_clk_s,    -- Clock input (S=1)
       S => output_en_s         -- Select
    );
    
    clk50mhz_forwarder: BUFG
    port map (
       O => clk50mhz_s, 
       I => transfer_clk_s
    );

    load_clk_forwarder: BUFG
    port map (
       O => loadClk,
       I => load_clk_transfer_s
    );
    
    clk100mhz_forwarder: BUFG
    port map (
        O => clk100mhzOut,
        I => clk100mhzIn
    );
    
    vgaClk <= clk50mhz_s;
    debugClk <= clk50mhz_s;

    debug_state:process(clk50mhz_s) is
    begin
        if rising_edge(clk50mhz_s) then
            if debugEnable='0' and debugReset='1' then
                debug_en_s <= '0';
            elsif debugEnable='1' then
                debug_en_s <= '1';
            end if;
        end if;
    end process debug_state;
end Behavioral;