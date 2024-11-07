----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 12:03:04
-- Design Name: 
-- Module Name: CU_ProgramCounterController - Behavioral
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

entity CU_ProgramCounterController is
    Port ( JumpController_JMP_Verified : in STD_LOGIC;
           InstrExec_CLK : in STD_LOGIC;
           PipeliningController_PC_CLK : in STD_LOGIC;
           PC_CLK : out STD_LOGIC);
end CU_ProgramCounterController;

architecture Behavioral of CU_ProgramCounterController is
    
begin

    PC_CLK <= PipeliningController_PC_CLK or (InstrExec_CLK and JumpController_JMP_Verified);

end Behavioral;
