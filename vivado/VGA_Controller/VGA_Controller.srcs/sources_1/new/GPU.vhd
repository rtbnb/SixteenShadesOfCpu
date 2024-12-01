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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GPU is
    Port (
        InstrLoad_CLK : in std_logic;
        Reset : in std_logic;
        Bridge_IsGPU_OP : in std_logic;
        Bridge_Command : in std_logic_vector(3 downto 0);
        Bridge_Arg1 : in std_logic_vector(15 downto 0);
        Bridge_Arg2 : in std_logic_vector(15 downto 0);
        VRAM_CLK : out std_logic;
        VRAM_WE : out std_logic_vector(0 downto 0);
        VRAM_Addr : out std_logic_vector(15 downto 0);
        VRAM_Dout : out std_logic_vector(15 downto 0);
        VGAFramBufferSelect : out std_logic
    );
end GPU;

architecture Behavioral of GPU is
    
    signal bridge_is_gpu_op_s : std_logic := '0';
    signal bridge_command_s : std_logic_vector(3 downto 0) := X"0";
    signal bridge_arg_1_s, bridge_arg_2_s : std_logic_vector(15 downto 0) := X"0000";

    signal vga_frame_buffer_s : std_logic := '0';
    signal cpu_frame_buffer_s : std_logic := '0';
    
    signal is_frame_buffer_write_op_s : std_logic;
    
begin

    VGAFramBufferSelect <= vga_frame_buffer_s;

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
    
    VRAM_CLK <= not InstrLoad_CLK;
    is_frame_buffer_write_op_s <= '1' when (bridge_command_s = "0000") else '0';
    VRAM_WE(0) <= bridge_is_gpu_op_s and is_frame_buffer_write_op_s;
    VRAM_Addr <= std_logic_vector(unsigned(bridge_arg_1_s) + 30000) when cpu_frame_buffer_s = '1' else bridge_arg_1_s;
    VRAM_Dout <= bridge_arg_2_s;

    frame_buffer_selector : process(InstrLoad_CLK, Reset) is
    begin
        if falling_edge(InstrLoad_CLK) and bridge_is_gpu_op_s = '1' then
            if bridge_command_s = "0001" then
                cpu_frame_buffer_s <= not cpu_frame_buffer_s;
            elsif bridge_command_s = "0010" then
                vga_frame_buffer_s <= not vga_frame_buffer_s;
            elsif bridge_command_s = "0011" then
                cpu_frame_buffer_s <= '1';
                vga_frame_buffer_s <= '0';
            elsif bridge_command_s = "0100" then
                cpu_frame_buffer_s <= '0';
                vga_frame_buffer_s <= '1';
            end if;
        end if;
    end process frame_buffer_selector;

    
    

end Behavioral;
