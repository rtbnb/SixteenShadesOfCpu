----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.11.2024 19:50:38
-- Design Name: 
-- Module Name: mmio - Behavioral
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

entity mmio is
    port(
        clk100mhz_in, clk50mhz_in: in std_logic;
        clk, we: in std_logic;
        addr, din: in std_logic_vector(15 downto 0);
        dout: out std_logic_vector(15 downto 0);
        
        led00, led01, led02, led03, led04, led05, led06, led07, led08, led09, led10, led11, led12, led13, led14, led15, led16, led17, led18, led19: out std_logic;
        rgb0, rgb1, rgb2, rgb3: out std_logic_vector(2 downto 0);
        btn00, btn01, btn02, btn03, btn04, btn05, btn06, btn07, btn08, btn09, btn10, btn11, btn12, btn13, btn14, btn15, btn16, btn17, btn18, btn19: in std_logic;
        rho: out std_logic
    );
end mmio;

architecture Behavioral of mmio is
    signal internal_addr_s: integer range 0 to 65535;

    signal mmio_config_reg_s, rho_config_reg_s, rho_reset_reg_s: std_logic_vector( 15 downto 0 );
    
--    signal led0_reg_s, led1_reg_s, led2_reg_s, led3_reg_s: std_logic_vector( 15 downto 0 );
--    signal btn0_reg_s, btn1_reg_s, btn2_reg_s, btn3_reg_s, btn4_reg_s, btn5_reg_s, btn6_reg_s, btn7_reg_s, btn8_reg_s, btn9_reg_s, btn10_reg_s, btn11_reg_s, btn12_reg_s, btn13_reg_s, btn14_reg_s, btn15_reg_s, btn16_reg_s, btn17_reg_s, btn18_reg_s, btn19_reg_s: std_logic_vector( 15 downto 0 );

-- general configs begin
    signal rho_s, rho_reset_s, internal_rho_set_s: std_logic;
-- general configs end
    
    
--led signals begin
    signal led_bank0_config_reg_s, led_bank1_config_reg_s, led_bank2_config_reg_s, led_bank3_config_reg_s, led_bank4_config_reg_s: std_logic_vector(15 downto 0);
    
    signal led00_s, led01_s, led02_s, led03_s, led04_s, led05_s, led06_s, led07_s, led08_s, led09_s, led10_s, led11_s, led12_s, led13_s, led14_s, led15_s, led16_s, led17_s, led18_s, led19_s: std_logic;
    signal led00_tim_s, led01_tim_s, led02_tim_s, led03_tim_s, led04_tim_s, led05_tim_s, led06_tim_s, led07_tim_s, led08_tim_s, led09_tim_s, led10_tim_s, led11_tim_s, led12_tim_s, led13_tim_s, led14_tim_s, led15_tim_s, led16_tim_s, led17_tim_s, led18_tim_s, led19_tim_s: std_logic;
    signal led00_tim_conf, led01_tim_conf, led02_tim_conf, led03_tim_conf, led04_tim_conf, led05_tim_conf, led06_tim_conf, led07_tim_conf, led08_tim_conf, led09_tim_conf, led10_tim_conf, led11_tim_conf, led12_tim_conf, led13_tim_conf, led14_tim_conf, led15_tim_conf, led16_tim_conf, led17_tim_conf, led18_tim_conf, led19_tim_conf: std_logic_vector(1 downto 0);
--led signals end

--btn signals begin
    signal btn_bank0_config_reg_s, btn_bank1_config_reg_s, btn_bank2_config_reg_s, btn_bank3_config_reg_s, btn_bank4_config_reg_s: std_logic_vector(15 downto 0);
    
    signal btn00p_s, btn01p_s, btn02p_s, btn03p_s, btn04p_s, btn05p_s, btn06p_s, btn07p_s, btn08p_s, btn09p_s, btn10p_s, btn11p_s, btn12p_s, btn13p_s, btn14p_s, btn15p_s, btn16p_s, btn17p_s, btn18p_s, btn19p_s: std_logic;
    signal btn00_rho_s, btn01_rho_s, btn02_rho_s, btn03_rho_s, btn04_rho_s, btn05_rho_s, btn06_rho_s, btn07_rho_s, btn08_rho_s, btn09_rho_s, btn10_rho_s, btn11_rho_s, btn12_rho_s, btn13_rho_s, btn14_rho_s, btn15_rho_s, btn16_rho_s, btn17_rho_s, btn18_rho_s, btn19_rho_s: std_logic;
    
    signal btn00p_s_rst_s: std_logic := '0';
--btn signals end

--rgb signals begin
    signal rgb_bank0_config_reg_s: std_logic_vector(15 downto 0);
    
    signal rgb0_s, rgb1_s, rgb2_s, rgb3_s: std_logic_vector( 2 downto 0 );

--rgb singals end

--tim signals begin
    signal tim0_config_reg_s, tim1_config_reg_s, tim2_config_reg_s, tim3_config_reg_s: std_logic_vector(15 downto 0);
    signal tim0_prescaler_reg_s, tim1_prescaler_reg_s: std_logic_vector(15 downto 0);
    signal tim0_max_cnt_reg_s, tim1_max_cnt_reg_s: std_logic_vector(15 downto 0);
    signal tim0_cnt_reg_s, tim1_cnt_reg_s: std_logic_vector(15 downto 0);
    signal tim0_pwm_val_reg_s, tim1_pwm_val_reg_s: std_logic_vector(15 downto 0);
    
    signal tim1_master_clk_s, tim1_clk_s: std_logic;
--tim signals end
    
    
    signal btn0_pressed_reg_s, btn1_pressed_reg_s, btn2_pressed_reg_s, btn3_pressed_reg_s: std_logic_vector( 15 downto 0 );
    
    signal btn0_s, btn1_s, btn2_s, btn3_s: std_logic;
    signal btn0_pressed_s, btn1_pressed_s, btn2_pressed_s, btn3_pressed_s: std_logic;
    
    signal latch_signal : std_logic := '0';  -- Internes Signal zum Speichern des Zustands
    signal btn0_reset_s: std_logic;
begin
    internal_addr_s <= to_integer(unsigned(addr));

    led00 <= led00_s or led00_tim_s;
    led01 <= led01_s or led01_tim_s;
    led02 <= led02_s or led02_tim_s;
    led03 <= led03_s or led03_tim_s;
    led04 <= led03_s or led03_tim_s;
    led05 <= led03_s or led03_tim_s;
    led06 <= led03_s or led03_tim_s;
    led07 <= led03_s or led03_tim_s;
    led08 <= led03_s or led03_tim_s;
    led09 <= led03_s or led03_tim_s;
    led10 <= led03_s or led03_tim_s;
    led11 <= led03_s or led03_tim_s;
    led12 <= led03_s or led03_tim_s;
    led13 <= led03_s or led03_tim_s;
    led14 <= led03_s or led03_tim_s;
    led15 <= led03_s or led03_tim_s;
    led16 <= led03_s or led03_tim_s;
    led17 <= led03_s or led03_tim_s;
    led18 <= led03_s or led03_tim_s;
    led19 <= led03_s or led03_tim_s;
    rgb0 <= rgb0_s;
    rgb1 <= rgb1_s;
    rgb2 <= rgb2_s;
    rgb3 <= rgb3_s;
    

    mmio_config_reg_s  <= "0000000000000000";
    rho_config_reg_s   <= "0000000000000000";
    
    led_bank0_config_reg_s <= led00_s & led00_tim_s & led00_tim_conf &
                              led01_s & led01_tim_s & led01_tim_conf &
                              led02_s & led02_tim_s & led02_tim_conf &
                              led03_s & led03_tim_s & led03_tim_conf;
                              
    led_bank1_config_reg_s <= led04_s & led04_tim_s & led04_tim_conf &
                              led05_s & led05_tim_s & led05_tim_conf &
                              led06_s & led06_tim_s & led06_tim_conf &
                              led07_s & led07_tim_s & led07_tim_conf;
                              
    led_bank2_config_reg_s <= led08_s & led08_tim_s & led08_tim_conf &
                              led09_s & led09_tim_s & led09_tim_conf &
                              led10_s & led10_tim_s & led10_tim_conf &
                              led11_s & led11_tim_s & led11_tim_conf;
                              
    led_bank3_config_reg_s <= led12_s & led12_tim_s & led12_tim_conf &
                              led13_s & led13_tim_s & led13_tim_conf &
                              led14_s & led14_tim_s & led14_tim_conf &
                              led15_s & led15_tim_s & led15_tim_conf;
                              
    led_bank4_config_reg_s <= led16_s & led16_tim_s & led16_tim_conf &
                              led17_s & led17_tim_s & led17_tim_conf &
                              led18_s & led18_tim_s & led18_tim_conf &
                              led19_s & led19_tim_s & led19_tim_conf;                                                                                              
    
    btn_bank0_config_reg_s <= btn00 & btn00p_s & btn00_rho_s & "0" &
                              btn01 & btn01p_s & btn01_rho_s & "0" &
                              btn02 & btn02p_s & btn02_rho_s & "0" &
                              btn03 & btn03p_s & btn03_rho_s & "0";

    
    btn_bank1_config_reg_s <= btn04 & btn04p_s & btn04_rho_s & "0" &
                              btn05 & btn05p_s & btn05_rho_s & "0" &
                              btn06 & btn06p_s & btn06_rho_s & "0" &
                              btn07 & btn07p_s & btn07_rho_s & "0";
                              
    
    btn_bank2_config_reg_s <= btn08 & btn08p_s & btn08_rho_s & "0" &
                              btn09 & btn09p_s & btn09_rho_s & "0" &
                              btn10 & btn10p_s & btn10_rho_s & "0" &
                              btn11 & btn11p_s & btn11_rho_s & "0";
                              
    
    btn_bank3_config_reg_s <= btn12 & btn12p_s & btn12_rho_s & "0" &
                              btn13 & btn13p_s & btn13_rho_s & "0" &
                              btn14 & btn14p_s & btn14_rho_s & "0" &
                              btn15 & btn15p_s & btn15_rho_s & "0";    

    btn_bank4_config_reg_s <= btn16 & btn16p_s & btn16_rho_s & "0" &
                              btn17 & btn17p_s & btn17_rho_s & "0" &
                              btn18 & btn18p_s & btn18_rho_s & "0" &
                              btn19 & btn19p_s & btn19_rho_s & "0";    
    
    rgb_bank0_config_reg_s <= rgb0_s & "0" & rgb1_s & "0" & rgb2_s & "0" & rgb3_s & "0";
    
    with tim0_config_reg_s(3 downto 2) select
        tim1_master_clk_s <= clk50mhz_in when "01",
                             clk100mhz_in when "10",
                             '0' when others;    
    
    tim1_master_clk_s <= '0';
    
    with internal_addr_s select
        dout <= mmio_config_reg_s           when  0,
                rho_config_reg_s            when  1,
                rho_reset_reg_s             when  2,
                led_bank0_config_reg_s      when  3,
                led_bank1_config_reg_s      when  4,
                led_bank2_config_reg_s      when  5,
                led_bank3_config_reg_s      when  6,
                led_bank4_config_reg_s      when  7,
                btn_bank0_config_reg_s      when  8,
                btn_bank1_config_reg_s      when  9,
                btn_bank2_config_reg_s      when 10,
                btn_bank3_config_reg_s      when 11,
                btn_bank4_config_reg_s      when 12,
                rgb_bank0_config_reg_s      when 13,
                
                tim0_config_reg_s           when 14,
                tim0_prescaler_reg_s        when 15,
                tim0_max_cnt_reg_s          when 16,
                tim0_cnt_reg_s              when 17,
                tim0_pwm_val_reg_s          when 18,

                tim1_config_reg_s           when 19,
                tim1_prescaler_reg_s        when 20,
                tim1_max_cnt_reg_s          when 21,
                tim1_cnt_reg_s              when 22,
                tim1_pwm_val_reg_s          when 23,
                
                "000000000000000" & rho_reset_s when 100,

                "000000000000000" & led00_s when 32768, --1000 0000 0000 0000
                "000000000000000" & led01_s when 32769,      
                "000000000000000" & led02_s when 32770,      
                "000000000000000" & led03_s when 32771,      
                "000000000000000" & led04_s when 32772,      
                "000000000000000" & led05_s when 32773,      
                "000000000000000" & led06_s when 32774,      
                "000000000000000" & led07_s when 32775,      
                "000000000000000" & led08_s when 32776,      
                "000000000000000" & led09_s when 32777,      
                "000000000000000" & led10_s when 32778,      
                "000000000000000" & led11_s when 32779,      
                "000000000000000" & led12_s when 32780,      
                "000000000000000" & led13_s when 32781, 
                "000000000000000" & led14_s when 32782, 
                "000000000000000" & led15_s when 32783, 
                "000000000000000" & led16_s when 32784, 
                "000000000000000" & led17_s when 32785, 
                "000000000000000" & led18_s when 32786, 
                "000000000000000" & led19_s when 32787, 

                "000000000000000" & btn00   when 32788, --1000 0000 0001 0100
                "000000000000000" & btn01   when 32789,      
                "000000000000000" & btn02   when 32790,      
                "000000000000000" & btn03   when 32791,      
                "000000000000000" & btn04   when 32792,      
                "000000000000000" & btn05   when 32793,      
                "000000000000000" & btn06   when 32794,      
                "000000000000000" & btn07   when 32795,      
                "000000000000000" & btn08   when 32796,      
                "000000000000000" & btn09   when 32797,      
                "000000000000000" & btn10   when 32798,      
                "000000000000000" & btn11   when 32799,      
                "000000000000000" & btn12   when 32800,     
                "000000000000000" & btn13   when 32801, 
                "000000000000000" & btn14   when 32802, 
                "000000000000000" & btn15   when 32803, 
                "000000000000000" & btn16   when 32804, 
                "000000000000000" & btn17   when 32805, 
                "000000000000000" & btn18   when 32806, 
                "000000000000000" & btn19   when 32807,
                
                "000000000000000" & btn00p_s when 32808,
                "000000000000000" & btn01p_s when 32809,
                "000000000000000" & btn02p_s when 32810,
                "000000000000000" & btn03p_s when 32811,
                "000000000000000" & btn04p_s when 32812,
                "000000000000000" & btn05p_s when 32813,
                "000000000000000" & btn06p_s when 32814,
                "000000000000000" & btn07p_s when 32815,
                "000000000000000" & btn08p_s when 32816,
                "000000000000000" & btn09p_s when 32817,
                "000000000000000" & btn10p_s when 32818,
                "000000000000000" & btn11p_s when 32819,
                "000000000000000" & btn12p_s when 32820,
                "000000000000000" & btn13p_s when 32821,
                "000000000000000" & btn14p_s when 32822,
                "000000000000000" & btn15p_s when 32823,
                "000000000000000" & btn16p_s when 32824,
                "000000000000000" & btn17p_s when 32825,
                "000000000000000" & btn18p_s when 32826,
                "000000000000000" & btn19p_s when 32827,
                "000000000000000" & rgb0_s(0) when 32828,
                "000000000000000" & rgb0_s(1) when 32829,
                "000000000000000" & rgb0_s(2) when 32830,
                "000000000000000" & rgb1_s(0) when 32831,
                "000000000000000" & rgb1_s(1) when 32832,
                "000000000000000" & rgb1_s(2) when 32833,
                "000000000000000" & rgb2_s(0) when 32834,
                "000000000000000" & rgb2_s(1) when 32835,
                "000000000000000" & rgb2_s(2) when 32836,
                "000000000000000" & rgb3_s(0) when 32837,
                "000000000000000" & rgb3_s(1) when 32838,
                "000000000000000" & rgb3_s(2) when 32839,
                

                "0000000000000000" when others;
    
    writeData:process(clk)
    begin
        if rising_edge(clk) and we='1' then
            case internal_addr_s is
                when 100 =>
                    rho_reset_s <= '1';
                when 32768 =>
                    led00_s <= din(0);
                when 32769 =>
                    led01_s <= din(0);
                when 32770 =>
                    led02_s <= din(0);
                when 32771 =>
                    led03_s <= din(0);
                when 32772 =>
                    led04_s <= din(0);                    
                when 32773 =>
                    led05_s <= din(0);                    
                when 32774 =>
                    led06_s <= din(0);                    
                when 32775 =>
                    led07_s <= din(0);
                when 32776 =>
                    led08_s <= din(0);
                when 32777 =>
                    led09_s <= din(0);
                when 32778 =>
                    led10_s <= din(0);
                when 32779 =>
                    led11_s <= din(0);
                when 32780 =>
                    led12_s <= din(0);
                when 32781 =>
                    led13_s <= din(0);
                when 32782 =>
                    led14_s <= din(0);
                when 32783 =>
                    led15_s <= din(0);
                when 32784 =>
                    led16_s <= din(0);                    
                when 32785 =>
                    led17_s <= din(0);
                when 32786 =>
                    led18_s <= din(0);
                when 32787 =>
                    led19_s <= din(0);                      
                when 32828 | 32829 | 32830 =>
                    rgb0_s <= din(2 downto 0);
                when 32831 | 32832 | 32833 =>
                    rgb1_s <= din(2 downto 0);
                when 32834 | 32835 | 32836 =>
                    rgb2_s <= din(2 downto 0);
                when 32837 | 32838 | 32839 =>
                    rgb3_s <= din(2 downto 0);
                when 32808 =>
                    btn00p_s_rst_s <= '1';
                
                
                when others =>
            end case;
            
            if btn00p_s_rst_s='1' then
                btn00p_s_rst_s <= '0';
            end if;
            
            if rho_reset_s='1' then
                rho_reset_s <= '0';
            end if;
                   
        end if;
    end process;
       
    btn0pressed:process(clk, btn00) is
    begin
    if btn00 = '1' then
      latch_signal <= '1';  -- Asynchrones Setzen des Signals, wenn der Button gedrückt wird
    elsif rising_edge(clk) then
      if btn0_reset_s = '1' then
        latch_signal <= '0';  -- Synchroner Reset des Signals zum Takt
      end if;
    end if;
    end process btn0pressed;
    
    btn0_pressed_s <= latch_signal;  -- Weist das interne Signal dem Ausgang zu
    
    rho_trigger:process(clk, internal_rho_set_s) is
    begin
    if internal_rho_set_s = '1' then
      rho_s <= '1';  -- Asynchrones Setzen des Signals, wenn der Button gedrückt wird
    elsif rising_edge(clk) then
      if rho_reset_s = '1' then
        rho_s <= '0';  -- Synchroner Reset des Signals zum Takt
      end if;
    end if;
    end process rho_trigger;
    
    tim1_prescaler:process(tim1_master_clk_s) is
    begin
        if rising_edge(tim1_master_clk_s) then
        
        end if;
    end process tim1_prescaler;
    
    tim1_counter:process(clk) is
    begin
    
    end process tim1_counter;
    
end Behavioral;
