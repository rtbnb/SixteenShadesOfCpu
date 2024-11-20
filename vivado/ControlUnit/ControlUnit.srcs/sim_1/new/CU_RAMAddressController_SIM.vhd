----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2024 16:23:48
-- Design Name: 
-- Module Name: CU_RAMAddressController_SIM - Behavioral
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

entity CU_RAMAddressController_SIM is
--  Port ( );
end CU_RAMAddressController_SIM;

architecture Behavioral of CU_RAMAddressController_SIM is
    component CU_RAMAddressController is
        Port ( Reg2 : in STD_LOGIC_VECTOR (15 downto 0);
               Immediate : in STD_LOGIC_VECTOR (15 downto 0);
               MA : in STD_LOGIC_VECTOR (15 downto 0);
               RAM_Address_Src : in STD_LOGIC;
               Use_MA : in STD_LOGIC;
               RAM_Address : out STD_LOGIC_VECTOR (15 downto 0));
    end component CU_RAMAddressController;
    
    signal Reg2 : STD_LOGIC_VECTOR(15 downto 0) := X"0acb";
    signal Immediate : STD_LOGIC_VECTOR(15 downto 0) := X"f123";
    signal MA : STD_LOGIC_VECTOR(15 downto 0) := X"0007";
    signal RAM_Address_Src, Use_MA : STD_LOGIC;
begin
    EUT : CU_RAMAddressController port map(
        Reg2 => Reg2,
        Immediate => Immediate,
        MA => MA,
        RAM_Address_Src => RAM_Address_Src,
        Use_MA => Use_MA
    );
    
    process is
    begin
        RAM_Address_Src <= '0';
        Use_MA <= '0';
        wait for 10 ns;
        RAM_Address_Src <= '0';
        Use_MA <= '1';
        wait for 10 ns;
        RAM_Address_Src <= '1';
        Use_MA <= '0';
        wait for 10 ns;
        RAM_Address_Src <= '1';
        Use_MA <= '1';
        wait for 10 ns;
    end process;

end Behavioral;
