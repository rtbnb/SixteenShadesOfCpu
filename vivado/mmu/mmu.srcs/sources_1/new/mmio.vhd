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
        ck, we: in std_logic;
        addr, din: in std_logic_vector(15 downto 0);
        dout: out std_logic_vector(15 downto 0);
        
        led0, led1, led2, led3: out std_logic;
        btn0, btn1, btn2, btn3: in std_logic;
        rho: out std_logic
    );


--  Port ( );
end mmio;

architecture Behavioral of mmio is
    signal led0_s, led1_s, led2_s, led3_s: std_logic;
    signal mmio_config_reg_s, led0_reg_s, led1_reg_s, led2_reg_s, led3_reg_s: std_logic_vector( 15 downto 0 );
    signal btn0_s, btn1_s, btn2_s, btn3_s: std_logic;
    signal btn0_pressed_s, btn1_pressed_s, btn2_pressed_s, btn3_pressed_s: std_logic;
    signal btn0_reg_s, btn1_reg_s, btn2_reg_s, btn3_reg_s: std_logic_vector( 15 downto 0 );
    signal btn0_pressed_reg_s, btn1_pressed_reg_s, btn2_pressed_reg_s, btn3_pressed_reg_s: std_logic_vector( 15 downto 0 );
    
    signal btn0_pressed_reg_op_s, btn1_pressed_reg_op_s, btn2_pressed_reg_op_s, btn3_pressed_reg_op_s: boolean;
    signal btn0_prepReset_s: std_logic;
    
    signal btn0_pressed_rst_s: std_logic := '0';
    
begin
    led0 <= led0_s;

    mmio_config_reg_s <= "0000000000000000"; 
    led0_reg_s <= "000000000000000" & led0_s;
    led1_reg_s <= "000000000000000" & led1_s;
    led2_reg_s <= "000000000000000" & led2_s;
    led3_reg_s <= "000000000000000" & led3_s;
    btn0_reg_s <= "000000000000000" & btn0;
    btn1_reg_s <= "000000000000000" & btn1;
    btn2_reg_s <= "000000000000000" & btn2;
    btn3_reg_s <= "000000000000000" & btn3;
    btn0_pressed_reg_s <= "000000000000000" & ( btn0_pressed_s );
    btn1_pressed_reg_s <= "000000000000000" & ( btn1_pressed_s );
    btn2_pressed_reg_s <= "000000000000000" & ( btn2_pressed_s );
    btn3_pressed_reg_s <= "000000000000000" & ( btn3_pressed_s );
    
    btn0_pressed_reg_op_s <= addr = "0000000000001001";
    btn1_pressed_reg_op_s <= addr = "0000000000001010";
    btn2_pressed_reg_op_s <= addr = "0000000000001011";
    btn3_pressed_reg_op_s <= addr = "0000000000001100";
    
    --btn0_pressed_s <= (btn0 or btn0_pressed_s) and not btn0_pressed_rst_s;
    btn0_pressed_s <= '0';
    
    with addr select
        dout <= mmio_config_reg_s when  "0000000000000000",
                led0_reg_s when         "0000000000000001",
                led1_reg_s when         "0000000000000010",
                led2_reg_s when         "0000000000000011",
                led3_reg_s when         "0000000000000100",
                btn0_reg_s when         "0000000000000101",
                btn1_reg_s when         "0000000000000110",
                btn2_reg_s when         "0000000000000111",
                btn3_reg_s when         "0000000000001000",
                btn0_pressed_reg_s when "0000000000001001",
                btn1_pressed_reg_s when "0000000000001010",
                btn2_pressed_reg_s when "0000000000001011",
                btn3_pressed_reg_s when "0000000000001100",
                "0000000000000000" when others;
    
    data_input:process(ck)
    begin
        if rising_edge(ck) and we='1' then
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
    
--    btn0_pressed_reset:process(ck, btn0)
--    begin
--        if btn0='1' then
--            btn_pressed_s <= '0'; --This is basicly a reset
--        end if;
        
--        if rising_edge(ck) then
--            if addr="0000000000001001" then
--                btn0_prepReset_s <= '1';
--            end if;
            
--            if btn0_prepReset_s='1' then
--                btn0_pressed_s <= '1';
--                btn0_prepReset_s <= '0';
--            end if;
--        end if;
--    end process;
    

    
end Behavioral;
