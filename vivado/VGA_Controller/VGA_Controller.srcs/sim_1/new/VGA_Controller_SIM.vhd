----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.11.2024 15:45:13
-- Design Name: 
-- Module Name: VGA_Controller_SIM - Behavioral
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

entity VGA_Controller_SIM is
--  Port ( );
end VGA_Controller_SIM;

architecture Behavioral of VGA_Controller_SIM is

    component VGA_Controller is
        Port ( InstrExec_CLK : in STD_LOGIC;
               r : out STD_LOGIC_VECTOR (3 downto 0);
               g : out STD_LOGIC_VECTOR (3 downto 0);
               b : out STD_LOGIC_VECTOR (3 downto 0);
               ioe : out STD_LOGIC;
               h_sync : out STD_LOGIC;
               v_sync : out STD_LOGIC;
               VRAM_Addr : out STD_LOGIC_VECTOR (15 downto 0);
               VRAM_Data : in STD_LOGIC_VECTOR (15 downto 0);
               VRAM_Clk : out STD_LOGIC);
    end component VGA_Controller;
    
    signal InstrExec_CLK : STD_LOGIC := '0';
    signal VRAM_Data : STD_LOGIC_VECTOR(15 downto 0) := X"0000";
begin
    
    EUT : VGA_Controller port map(
        InstrExec_CLK => InstrExec_CLK,
        VRAM_Data => VRAM_Data
    );
    
    InstrExec_CLK <= not InstrExec_CLK after 5 ns;
    

end Behavioral;
