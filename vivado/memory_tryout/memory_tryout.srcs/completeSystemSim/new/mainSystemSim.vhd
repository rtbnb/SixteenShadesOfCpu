----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 12:41:05
-- Design Name: 
-- Module Name: mainSystemSim - Behavioral
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

entity mainSystemSim is
--  Port ( );
end mainSystemSim;

architecture Behavioral of mainSystemSim is
    component main_block
        port(clk100mhz, test_write, should_write, should_read : in std_logic;
            test_addr, test_data : in std_logic_vector(15 downto 0);
            mem_clk, we_t, oe_t : out std_logic;
            addr1_t, din1_t, dout1_t : out std_logic_vector(15 downto 0));
    end component;
    
    signal clk100mhz, mem_clk, we_t, oe_t, test_write, should_write, should_read : std_logic;
    signal addr1_t, din1_t, dout1_t, test_addr, test_data : std_logic_vector(15 downto 0);
begin
    EUT: main_block port map(clk100mhz => clk100mhz, mem_clk => mem_clk, we_t => we_t, oe_t => oe_t, addr1_t => addr1_t, din1_t => din1_t, dout1_t => dout1_t, test_addr => test_addr, test_data => test_data, test_write => test_write, should_read => should_read, should_write => should_write);
  
    process begin
        wait for 100ns;
--        test_write <= '0';
--        clk100mhz <= '1';
--        test_addr <= "0000000000000010";
--        test_data <= "0000000000001010";
        clk100mhz <= '1';
        wait for 100ns;
        clk100mhz <= '0';
        
    end process;
    
    process begin
        wait for 100ns;
        should_write <= '1';
        should_read <= '1';
        test_addr <= "0000000000000010";
        test_data <= "0000000000001010";
        test_write <= '1';
        
        wait for 200ns;
        test_addr <= "0000000000000010";
        test_data <= "0000000000001011";
        
        wait for 200ns;
        test_addr <= "0000000000000010";
        test_data <= "0000000000001100";

        wait for 200ns;
        test_addr <= "0000000000000010";
        test_data <= "0000000000001010";

        wait for 100ns;
        test_addr <= "0000000000000010";
        test_data <= "0000000000001011";
        
        wait for 100ns;
        test_addr <= "0000000000000010";
        test_data <= "0000000000001100";
        
        wait for 600ns;
        should_read <= '0';
        should_write <= '0';
        wait for 400ns;
        should_read <= '1';
        wait for 400ns;
    end process;


end Behavioral;
