----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2024 08:21:20
-- Design Name: 
-- Module Name: GPU - Behavioral
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

entity GPU is
    Port ( InstrLoad_CLK : in STD_LOGIC;
           InstrExec_CLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Bridge_IsGPU_OP : in STD_LOGIC;
           Bridge_Command : in STD_LOGIC_VECTOR (3 downto 0);
           Bridge_Arg1 : in STD_LOGIC_VECTOR (15 downto 0);
           Bridge_Arg2 : in STD_LOGIC_VECTOR (15 downto 0);
           VRAM_CLK : out STD_LOGIC;
           VRAM_WE : out STD_LOGIC_VECTOR (0 downto 0);
           VRAM_Addr : out STD_LOGIC_VECTOR (15 downto 0);
           VRAM_Dout : out STD_LOGIC_VECTOR (15 downto 0));
end GPU;

architecture Behavioral of GPU is
    
    signal bridge_is_gpu_op_s : STD_LOGIC := '0';
    signal bridge_command_s : STD_LOGIC_VECTOR(3 downto 0) := X"0";
    signal bridge_arg_1_s, bridge_arg_2_s : STD_LOGIC_VECTOR(15 downto 0) := X"0000";
    
begin

    loader:process(InstrLoad_CLK, Reset) is
    begin
        if Reset = '1' then
            bridge_is_gpu_op_s <= '1';
            bridge_command_s <= X"0";
            bridge_arg_1_s <= X"0000";
            bridge_arg_2_s <= X"0000";
        elsif rising_edge(InstrLoad_CLK) then
            bridge_is_gpu_op_s <= Bridge_IsGPU_OP;
            bridge_command_s <= Bridge_Command;
            bridge_arg_1_s <= Bridge_Arg1;
            bridge_arg_2_s <= Bridge_Arg2;
        end if;
    end process loader;
    
    VRAM_CLK <= InstrExec_CLK;
    VRAM_WE(0) <= bridge_is_gpu_op_s;
    VRAM_Addr <= bridge_arg_1_s;
    VRAM_Dout <= bridge_arg_2_s;
    
    
    

end Behavioral;
