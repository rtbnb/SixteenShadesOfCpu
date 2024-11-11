----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2024 11:34:47
-- Design Name: 
-- Module Name: CU_JumpDestinationSelector_SIM - Behavioral
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

entity CU_JumpDestinationSelector_SIM is
--  Port ( );
end CU_JumpDestinationSelector_SIM;

architecture Behavioral of CU_JumpDestinationSelector_SIM is

    component CU_JumpDestinationSelector is
        Port ( Immediate : in STD_LOGIC_VECTOR (15 downto 0);
               Register1 : in STD_LOGIC_VECTOR (15 downto 0);
               JMP_DestinationSelect : in STD_LOGIC;
               JMP_Address : out STD_LOGIC_VECTOR (15 downto 0));
    end component CU_JumpDestinationSelector;
    
    signal Immediate : STD_LOGIC_VECTOR(15 downto 0) := X"ab15";
    signal Register1 : STD_LOGIC_VECTOR(15 downto 0) := X"cdef";
    signal JMP_DestinationSelect : STD_LOGIC;
begin
    EUT : CU_JumpDestinationSelector port map(
        Immediate => Immediate,
        Register1 => Register1,
        JMP_DestinationSelect => JMP_DestinationSelect
    );
    
    process is
    begin
        JMP_DestinationSelect <= '0';
        wait for 10 ns;
        JMP_DestinationSelect <= '1';
        wait for 10 ns;
    end process;

end Behavioral;
