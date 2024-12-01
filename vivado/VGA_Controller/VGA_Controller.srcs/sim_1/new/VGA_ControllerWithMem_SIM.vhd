----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2024 10:36:51
-- Design Name: 
-- Module Name: VGA_ControllerWithMem_SIM - Behavioral
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

entity VGA_ControllerWithMem_SIM is
--  Port ( );
end VGA_ControllerWithMem_SIM;

architecture Behavioral of VGA_ControllerWithMem_SIM is
    component TestBlockDesign_wrapper is
      port (
        InstrExec_CLK : in STD_LOGIC;
        b : out STD_LOGIC_VECTOR ( 3 downto 0 );
        g : out STD_LOGIC_VECTOR ( 3 downto 0 );
        h_sync : out STD_LOGIC;
        ioe : out STD_LOGIC;
        r : out STD_LOGIC_VECTOR ( 3 downto 0 );
        v_sync : out STD_LOGIC
      );
    end component TestBlockDesign_wrapper;
    signal InstrExec_CLK : STD_LOGIC := '0';
begin

    EUT : TestBlockDesign_wrapper port map(
        InstrExec_CLK => InstrExec_CLK
    );
    
    InstrExec_CLK <= not InstrExec_CLK after 5 ns;
end Behavioral;
