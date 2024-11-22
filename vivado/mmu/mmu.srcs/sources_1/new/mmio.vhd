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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mmio is
    port(
        clk, we: in std_logic;
        addr, din: in std_logic_vector(15 downto 0);
        dout: out std_logic_vector(15 downto 0);
        
        led0, led1, led2, led3: out std_logic;
        btn0, btn1, btn2, btn3: in std_logic;
        rho: out std_logic
    );


--  Port ( );
end mmio;

architecture Behavioral of mmio is
    signal mmio_config_s, rho_mask_s: std_logic_vector( 15 downto 0 );

    signal led0_s, led1_s, led2_s, led3_s: std_logic;
    signal mmio_config_reg_s, rho_mask_reg_s: std_logic_vector( 15 downto 0 );
    
    signal led0_reg_s, led1_reg_s, led2_reg_s, led3_reg_s: std_logic_vector( 15 downto 0 );
    signal btn0_reg_s, btn1_reg_s, btn2_reg_s, btn3_reg_s: std_logic_vector( 15 downto 0 );
    signal btn0_pressed_reg_s, btn1_pressed_reg_s, btn2_pressed_reg_s, btn3_pressed_reg_s: std_logic_vector( 15 downto 0 );
    signal rgb0_reg_s, rgb1_reg_s, rgb2_reg_s, rgb3_reg_s: std_logic_vector( 15 downto 0 );
    signal tim1_prescaler_reg_s, tim1_max_cnt_reg_s, tim1_state_reg_s: std_logic_vector( 15 downto 0 );
    signal tim2_prescaler_reg_s, tim2_max_cnt_reg_s, tim2_state_reg_s: std_logic_vector( 15 downto 0 );
    
    signal btn0_s, btn1_s, btn2_s, btn3_s: std_logic;
    signal btn0_pressed_s, btn1_pressed_s, btn2_pressed_s, btn3_pressed_s: std_logic;
    signal rgb0_s, rgb1_s, rgb2_s, rgb3_s: std_logic_vector( 2 downto 0 );
   
    
    signal btn0_pressed_reg_op_s, btn1_pressed_reg_op_s, btn2_pressed_reg_op_s, btn3_pressed_reg_op_s: boolean;
    signal btn0_prepReset_s: std_logic;
    
    signal btn0_pressed_rst_s: std_logic := '0';
    
    signal tim1_prescaler, tim1_max_count: std_logic_vector( 15 downto 0 );
    signal tim2_prescaler, tim2_max_count: std_logic_vector( 15 downto 0 );
    signal tim1_reset_s, tim1_start_s, tim1_triggerd_s: std_logic; 
    
    signal latch_signal : std_logic := '0';  -- Internes Signal zum Speichern des Zustands
    signal btn0_reset_s: std_logic;
begin
    led0 <= led0_s;
    led1 <= led1_s;
    led2 <= led2_s;
    led3 <= led3_s;

    mmio_config_reg_s  <= "0000000000000000";
    rho_mask_s         <= "0000000000000000";
    led0_reg_s         <= "000000000000000" & led0_s;
    led1_reg_s         <= "000000000000000" & led1_s;
    led2_reg_s         <= "000000000000000" & led2_s;
    led3_reg_s         <= "000000000000000" & led3_s;
    btn0_reg_s         <= "000000000000000" & btn0;
    btn1_reg_s         <= "000000000000000" & btn1;
    btn2_reg_s         <= "000000000000000" & btn2;
    btn3_reg_s         <= "000000000000000" & btn3;
    btn0_pressed_reg_s <= "000000000000000" & ( btn0_pressed_s );
    btn1_pressed_reg_s <= "000000000000000" & ( btn1_pressed_s );
    btn2_pressed_reg_s <= "000000000000000" & ( btn2_pressed_s );
    btn3_pressed_reg_s <= "000000000000000" & ( btn3_pressed_s );
    rgb0_reg_s         <= "0000000000000" & rgb0_s;
    rgb1_reg_s         <= "0000000000000" & rgb1_s;
    rgb2_reg_s         <= "0000000000000" & rgb2_s;
    rgb3_reg_s         <= "0000000000000" & rgb3_s;
    
    
    btn0_pressed_reg_op_s <= addr = "0000000000001001";
    btn1_pressed_reg_op_s <= addr = "0000000000001010";
    btn2_pressed_reg_op_s <= addr = "0000000000001011";
    btn3_pressed_reg_op_s <= addr = "0000000000001100";
    
    with addr select
        dout <= mmio_config_reg_s when    "0000000000000000",
                led0_reg_s when           "0000000000000001",
                led1_reg_s when           "0000000000000010",
                led2_reg_s when           "0000000000000011",
                led3_reg_s when           "0000000000000100",
                btn0_reg_s when           "0000000000000101",
                btn1_reg_s when           "0000000000000110",
                btn2_reg_s when           "0000000000000111",
                btn3_reg_s when           "0000000000001000",
                btn0_pressed_reg_s when   "0000000000001001",
                btn1_pressed_reg_s when   "0000000000001010",
                btn2_pressed_reg_s when   "0000000000001011",
                btn3_pressed_reg_s when   "0000000000001100",
                rgb0_reg_s when           "0000000000001101",         
                rgb1_reg_s when           "0000000000001110",
                rgb2_reg_s when           "0000000000001111",
                rgb3_reg_s when           "0000000000010000",
                tim1_prescaler_reg_s when "0000000000010001",
                tim1_max_cnt_reg_s when   "0000000000010010",
                tim1_state_reg_s when     "0000000000010011",
                "0000000000000000" when others;
    
    writeData:process(clk)
    begin
        if rising_edge(clk) and we='1' then
            case addr is
                when "0000000000000001" =>
                    led0_s <= din(0);
                when "0000000000000010" =>
                    led1_s <= din(0);
                    
                    
                when "0000000000001001" =>
                    btn0_pressed_rst_s <= '1';
                
                when others =>
            end case;
            
            if btn0_pressed_rst_s='1' then
                btn0_pressed_rst_s <= '0';
            end if;
            
                   
        end if;
    end process;
       
    btn0pressed:process(clk, btn0)
    begin
    if btn0 = '1' then
      latch_signal <= '1';  -- Asynchrones Setzen des Signals, wenn der Button gedrückt wird
    elsif rising_edge(clk) then
      if btn0_reset_s = '1' then
        latch_signal <= '0';  -- Synchroner Reset des Signals zum Takt
      end if;
    end if;
    end process;
    
    btn0_pressed_s <= latch_signal;  -- Weist das interne Signal dem Ausgang zu
    
end Behavioral;
