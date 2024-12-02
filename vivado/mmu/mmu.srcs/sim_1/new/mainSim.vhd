----------------------------------------------------------------------------------
-- Create Date: 16.11.2024 14:55:29
-- Name: Robin
-- Design Name: ShadeCpu
-- Module Name: mainSim - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mainSim is
--  Port ( );
end mainSim;

architecture Behavioral of mainSim is
    component main_block_wrapper
        port(
            btn00, btn01, btn02, btn03, btn04, btn05, btn06, btn07, btn08, btn09, btn10, btn11, btn12, btn13, btn14, btn15, btn16, btn17, btn18, btn19 : in STD_LOGIC;
            clk100mhzIn : in STD_LOGIC;
            debugAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            debugBank : in STD_LOGIC_VECTOR ( 3 downto 0 );
            debugClk : out STD_LOGIC;
            debugDin : in STD_LOGIC_VECTOR ( 15 downto 0 );
            debugEnable : in STD_LOGIC;
            debugMockClk : in STD_LOGIC;
            debugOverrideEnable : in STD_LOGIC;
            debugReset : in STD_LOGIC;
            debugWe : in STD_LOGIC;
            debug_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            external_debugClk : in STD_LOGIC;
            faultReset : in STD_LOGIC;
            gpuAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            gpuClk : in STD_LOGIC;
            gpuDin : in STD_LOGIC_VECTOR ( 11 downto 0 );
            gpuWe : in STD_LOGIC;
            gpu_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
            gramAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            gramBank : in STD_LOGIC_VECTOR ( 3 downto 0 );
            gramDin : in STD_LOGIC_VECTOR ( 15 downto 0 );
            gramOe : in STD_LOGIC;
            gramWe : in STD_LOGIC;
            gram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            iramAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            iram_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
            led00, led01, led02, led03, led04, led05, led06, led07, led08, led09, led10, led11, led12, led13, led14, led15, led16, led17, led18, led19 : out STD_LOGIC;
            rgb0, rgb1, rgb2, rgb3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
            rho : out STD_LOGIC;
            vgaAddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            vgaClk : out STD_LOGIC;
            vga_dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
        );
    end component main_block_wrapper; 
    
    signal clk100mhzIn, debugMockClk, external_debugClk, gpuClk, debugClk, debugEnable, faultReset, debugReset, debugWe, gramWe, gramOe, debugOverrideEnable, btn00, btn01, btn02, btn03, btn04, btn05, btn06, btn07, btn08, btn09, btn10, btn11, btn12, btn13, btn14, btn15, btn16, btn17, btn18, btn19, led00, led01, led02, led03, led04, led05, led06, led07, led08, led09, led10, led11, led12, led13, led14, led15, led16, led17, led18, led19: STD_LOGIC := '0';
    signal debugAddr, debugDin, debug_dout, gpuAddr, iramAddr, iram_dout, gram_dout: STD_LOGIC_VECTOR( 15 downto 0 );
    signal debugBank, gramBank: STD_LOGIC_VECTOR( 3 downto 0 );
    signal gramDin, gramAddr, vgaAddr: STD_LOGIC_VECTOR( 15 downto 0 );
    signal gpu_dout, vga_dout, gpuDin: STD_LOGIC_VECTOR( 11 downto 0 );
    signal gpuWe, vgaClk: STD_LOGIC;
        
    signal count_s: std_logic;
begin
    EUT : main_block_wrapper port map(
        clk100mhzIn => clk100mhzIn,
        debugAddr => debugAddr,
        debugBank => debugBank,
        debugDin => debugDin,
        debug_dout => debug_dout,
        debugMockClk => debugMockClk,
        external_debugClk => external_debugClk,
        gpuClk => gpuClk,
        gpuAddr => gpuAddr,
        gpu_dout => gpu_dout,
        gpuWe => gpuWe,
        gpuDin => gpuDin,
        gramAddr => gramAddr,
        gramDin => gramDin,
        gram_dout => gram_dout,
        gramOe => gramOe,
        gramWe => gramWe,
        gramBank => gramBank,
        iramAddr => iramAddr,
        iram_dout => iram_dout,
        vgaAddr => vgaAddr,
        vgaClk => vgaClk,
        debugClk => debugClk,
        debugEnable => debugEnable,
        faultReset => faultReset,
        debugReset => debugReset,
        debugWe => debugWe,
        debugOverrideEnable => debugOverrideEnable,
        btn00 => btn00,
        btn01 => btn01,
        btn02 => btn02,
        btn03 => btn03,
        btn04 => btn04,
        btn05 => btn05,
        btn06 => btn06,
        btn07 => btn07,
        btn08 => btn08,
        btn09 => btn09,
        btn10 => btn10,
        btn11 => btn11,
        btn12 => btn12,
        btn13 => btn13,
        btn14 => btn14,
        btn15 => btn15,
        btn16 => btn16,
        btn17 => btn17,
        btn18 => btn18,
        btn19 => btn19,
        led00 => led00,
        led01 => led01,
        led02 => led02,
        led03 => led03,
        led04 => led04,
        led05 => led05,
        led06 => led06,
        led07 => led07,
        led08 => led08,
        led09 => led09,
        led10 => led10,
        led11 => led11,
        led12 => led12,
        led13 => led13,
        led14 => led14,
        led15 => led15,
        led16 => led16,
        led17 => led17,
        led18 => led18,
        led19 => led19
    );
    
    process
    begin
        clk100mhzIn <= '1';
        
        while true loop
            wait for 2500ps;    
            clk100mhzIn <= not clk100mhzIn;
        end loop;
    end process;
    
    process 
    begin
        wait for 17500ps; --iram write
        debugBank <= "1111";
        debugAddr <= "0000000000000001";
        debugDin <= "0000000000001001";
        debugOverrideEnable <= '1';
        debugEnable <= '1';
        debugWe <= '1';
        
        wait for 7500ps; --blank
        debugBank <= "UUUU";
        debugAddr <= "UUUUUUUUUUUUUUUU";
        debugDin <= "UUUUUUUUUUUUUUUU";
        debugWe <= '0';
        
        wait for 2500ps; --gram write
        debugBank <= "0000";
        debugAddr <= "0000000000000001";
        debugDin <= "0000000000001101";
        debugWe <= '1';
        
        wait for 7500ps; --blank
        debugBank <= "UUUU";
        debugAddr <= "UUUUUUUUUUUUUUUU";
        debugDin <= "UUUUUUUUUUUUUUUU";
        debugWe <= '0';
        
        wait for 2500ps; --iram read
        debugBank <= "1111";
        debugAddr <= "0000000000000001";
        debugWe <= '0';        
        
        wait for 7500ps; --blank
        debugBank <= "UUUU";
        debugAddr <= "UUUUUUUUUUUUUUUU";
        debugDin <= "UUUUUUUUUUUUUUUU";
        debugWe <= '0';
        
        wait for 2500ps; --gram read
        debugBank <= "0000";
        debugAddr <= "0000000000000001";
        debugWe <= '0';                  
        
        wait for 7500ps; --blank
        debugBank <= "UUUU";
        debugAddr <= "UUUUUUUUUUUUUUUU";
        debugDin <= "UUUUUUUUUUUUUUUU";
        debugWe <= '0';
        
        wait for 2500ps; --mmio led set
        debugBank <= "0001";
        debugAddr <= "1000000000000000";
        debugDin <= "0000000000000001";
        debugWe <= '1';      
        
        wait for 7500ps; --blank  
        debugBank <= "UUUU";
        debugAddr <= "UUUUUUUUUUUUUUUU";
        debugDin <= "UUUUUUUUUUUUUUUU";
        debugWe <= '0';
        
        wait for 2500ps; --mmio led clear        
        debugBank <= "0001";
        debugAddr <= "1000000000000000";
        debugDin <= "0000000000000000";
        debugWe <= '1';  

        wait for 7500ps; --blank
        debugBank <= "UUUU";
        debugAddr <= "UUUUUUUUUUUUUUUU";
        debugDin <= "UUUUUUUUUUUUUUUU";
        debugWe <= '0';
        
        btn00 <= '1';
        
        wait for 2500ps; --mmio button read
        debugBank <= "0001";
        debugAddr <= "1000000000010100";
        debugWe <= '0';
        
        wait for 7500ps; --blank
        debugBank <= "UUUU";
        debugAddr <= "UUUUUUUUUUUUUUUU";
        debugDin <= "UUUUUUUUUUUUUUUU";
        debugWe <= '0';
        
        btn00 <= '0';
        debugOverrideEnable <= '0';
        debugEnable <= '0';
        wait for 2500ps;
        
        debugReset <= '1';
        wait for 7500ps;
        debugReset <= '0';
        
        wait for 2500ps;
        iramAddr <= "0000000000000001";
        gramAddr <= "0000000000000001";
        gramBank <= "0000";
        gramOe <= '1';
        gramWe <= '0';
        
        wait for 7500ps;
        gramAddr <= "UUUUUUUUUUUUUUUU";
        iramAddr <= "UUUUUUUUUUUUUUUU";
        debugDin <= "UUUUUUUUUUUUUUUU";
        gramBank <= "UUUU";
        gramOe <= '0';
        gramWe <= '0';
        
        wait for 2500ps;
        
        wait for 30ns;
        
        
        while true loop
            debugOverrideEnable <= '0';
            wait for 10ns;
        end loop;
    
    end process;
    
    process
    begin
        external_debugClk <= '0';
        wait for 20ns;
        external_debugClk <= '1';
        wait for 5ns;
        external_debugClk <= '0';
        wait for 5ns;
        external_debugClk <= '1';
        wait for 5ns;
        external_debugClk <= '0';
        wait for 5ns;
        external_debugClk <= '1';
        wait for 5ns;
        external_debugClk <= '0';
        wait for 5ns;
        external_debugClk <= '1';
        wait for 5ns;
        external_debugClk <= '0';
        wait for 5ns;
        external_debugClk <= '1';
        wait for 5ns;
        external_debugClk <= '0';
        wait for 5ns;
        external_debugClk <= '1';
        wait for 5ns;
        external_debugClk <= '0';
        wait for 5ns;
        external_debugClk <= '1';
        wait for 5ns;
        external_debugClk <= '0';    
                                
        while true loop
            wait for 10ns;
            external_debugClk <= '0';
        end loop;
    end process;
    
    process
    begin
        debugMockClk <= '0';
        wait for 10ns;
    end process;
    
end Behavioral;
