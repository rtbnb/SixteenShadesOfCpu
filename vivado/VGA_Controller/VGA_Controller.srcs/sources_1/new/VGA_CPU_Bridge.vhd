----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.11.2024 12:52:40
-- Design Name: 
-- Module Name: VGA_CPU_Bridge - Behavioral
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

entity VGA_CPU_Bridge is
    Port ( InstrExec_CLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           IsGPU_OP : in STD_LOGIC;
           Immediate_In : in STD_LOGIC_VECTOR (15 downto 0);
           Reg1_In : in STD_LOGIC_VECTOR (15 downto 0);
           Reg2_In : in STD_LOGIC_VECTOR (15 downto 0);
           IsGPU_OP_out : out STD_LOGIC;
           GPU_Command_out : out STD_LOGIC_VECTOR (3 downto 0);
           Arg1_out : out STD_LOGIC_VECTOR (15 downto 0);
           Arg2_out : out STD_LOGIC_VECTOR (15 downto 0));
end VGA_CPU_Bridge;

architecture Behavioral of VGA_CPU_Bridge is
    
    signal is_gpu_op_s : STD_LOGIC := '0';
    signal reg_1_s, reg_2_s : STD_LOGIC_VECTOR(15 downto 0) := X"0000";
    signal gpu_command_s : STD_LOGIC_VECTOR(3 downto 0) := X"0";
    
begin

    command_buffer : process(InstrExec_CLK, Reset) is
    begin
    if Reset = '1' then
        is_gpu_op_s <= '0';
        reg_1_s <= X"0000";
        reg_2_s <= X"0000";
        gpu_command_s <= X"0";
    elsif rising_edge(InstrExec_CLK) then
        if IsGPU_OP = '1' then
            is_gpu_op_s <= IsGPU_OP;
            reg_1_s <= Reg1_In;
            reg_2_s <= Reg2_In;
            gpu_command_s <= Immediate_In(3 downto 0);    
        else
            is_gpu_op_s <= '0';
            reg_1_s <= X"0000";
            reg_2_s <= X"0000";
            gpu_command_s <= X"0";
        end if;
    end if;
    end process command_buffer;
    
    IsGPU_OP_out <= is_gpu_op_s;
    Arg1_out <= reg_1_s;
    Arg2_out <= reg_2_s;
    GPU_Command_out <= gpu_command_s;
    
    
end Behavioral;
