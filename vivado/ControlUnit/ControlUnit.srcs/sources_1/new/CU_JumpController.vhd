----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 12:03:04
-- Design Name: 
-- Module Name: CU_JumpController - Behavioral
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

entity CU_JumpController is
    Port ( InstrExec_CLK : in STD_LOGIC;
           JMP : in STD_LOGIC;
           JMP_Conditional : in STD_LOGIC;
           JMP_Relative : in STD_LOGIC;
           JMP_Condition : in STD_LOGIC_VECTOR (2 downto 0);
           Flags : in STD_LOGIC_VECTOR (15 downto 0);
           JMP_Address : in STD_LOGIC_VECTOR (15 downto 0);
           PC_Current : in STD_LOGIC_VECTOR (15 downto 0);
           PC_Load : out STD_LOGIC;
           PC_Next : out STD_LOGIC_VECTOR (0 downto 0));
end CU_JumpController;

architecture Behavioral of CU_JumpController is
    
    component FlagUnpacker is
        Port ( Flags : in STD_LOGIC_VECTOR (15 downto 0);
               CarryFlag : out STD_LOGIC;
               ZeroFlag : out STD_LOGIC;
               SmallerZeroFlag : out STD_LOGIC;
               BiggerZeroFlag : out STD_LOGIC;
               OverflowFlag : out STD_LOGIC;
               RhoFlag : out STD_LOGIC);
    end component FlagUnpacker;
    
    signal carry_flag, zero_flag, smaller_zero_flag, bigger_zero_flag, overflow_flag, rho_flag : STD_LOGIC;
    signal not_zero_flag : STD_LOGIC;
    signal jump_condition_fullfilled : STD_LOGIC;
    signal relative_jump_destination : STD_LOGIC_VECTOR(15 downto 0);
    signal jmp_verified : STD_LOGIC;
    constant pc_offset : signed(15 downto 0) := "1111111111111111";
begin
    
    FlagUnpackerInstance : FlagUnpacker port map(
        Flags => Flags,
        CarryFlag => carry_flag,
        ZeroFlag => zero_flag,
        SmallerZeroFlag => smaller_zero_flag,
        BiggerZeroFlag => bigger_zero_flag,
        OverflowFlag => overflow_flag,
        RhoFlag => rho_flag
    );
    
    not_zero_flag <= not zero_flag;
    
    WITH JMP_Condition SELECT jump_condition_fullfilled <=
        carry_flag WHEN "000",
        zero_flag WHEN "001",
        smaller_zero_flag WHEN "010",
        bigger_zero_flag WHEN "011",
        overflow_flag WHEN "100",
        rho_flag WHEN "101",
        not_zero_flag WHEN "110",
        '1' WHEN "111",
        '0' WHEN OTHERS;
    
    jmp_verified <= JMP and ((not JMP_Conditional) or jump_condition_fullfilled);
    PC_Load <= jmp_verified and InstrExec_CLK;
    relative_jump_destination <= std_logic_vector(SIGNED(JMP_Address) + SIGNED(PC_Current) + pc_offset);
    
    WITH JMP_Relative SELECT PC_Next <=
        JMP_Address WHEN '0',
        relative_jump_destination WHEN '1',
        X"0000" WHEN OTHERS;

end Behavioral;
