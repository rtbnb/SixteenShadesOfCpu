----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 20:09:55
-- Design Name: 
-- Module Name: ALU_TB_ADDING - Behavioral
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

entity ALU_TB_ADDING is
    --  Port ( );
end ALU_TB_ADDING;

architecture Behavioral of ALU_TB_ADDING is
    component ALU
         Port ( 
            D1: IN std_logic_vector(15 downto 0 );
            D2: IN std_logic_vector(15 downto 0 );
            ALU_OPP: IN std_logic_vector(3 downto 0 );
            RHO_PIN: IN std_logic;
            ALU_OUT: OUT std_logic_vector(15 downto 0 );
            ALU_FLAGS: OUT std_logic_vector(15 downto 0);
            
            ALU_FLAGS1: OUT signed(16 downto 0) := (others => '0')
         );
    end component;

    signal D1: std_logic_vector(15 downto 0 );
    signal D2: std_logic_vector(15 downto 0 );
    signal ALU_OPP: std_logic_vector(3 downto 0 );
    signal RHO_PIN: std_logic;
    
    signal ALU_OUT: std_logic_vector(15 downto 0 );
    signal ALU_FLAGS: std_logic_vector(15 downto 0);
    signal ALU_FLAGS1: signed(16 downto 0);

begin

    UUT: ALU port map (
        D1 => D1,
        D2 => D2,
        ALU_OPP => ALU_OPP,
        RHO_PIN => RHO_PIN,
        ALU_OUT => ALU_OUT,
        ALU_FLAGS => ALU_FLAGS,
        ALU_FLAGS1 => ALU_FLAGS1
    );
    
    process
    begin 
        wait for 10 ns;
        D1 <= "0111111111111111";
        D2 <= "0111111111111111";
        RHO_PIN <= '0'; 
        ALU_OPP <= "0000"; 
        wait for 10 ns;
        D1 <= "0000000000000001";
        D2 <= "0000000000000001";
        RHO_PIN <= '0'; 
        ALU_OPP <= "0001"; 
        wait for 10 ns;
        
        D1 <= "0000000000000001";
        D2 <= "0000000000000001";
        RHO_PIN <= '0'; 
        ALU_OPP <= "0011"; 
        wait for 10 ns;
        
    end process;

end Behavioral;
