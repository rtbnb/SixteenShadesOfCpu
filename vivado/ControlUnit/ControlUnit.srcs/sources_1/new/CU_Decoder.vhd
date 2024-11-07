----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 12:03:04
-- Design Name: 
-- Module Name: CU_Decoder - Behavioral
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

entity CU_Decoder is
    Port ( Instruction : in STD_LOGIC_VECTOR (15 downto 0);
           Reg1Read : out STD_LOGIC;
           Reg2Read : out STD_LOGIC;
           RF_WHB : out STD_LOGIC;
           RF_WLB : out STD_LOGIC;
           Write_Data_Sel : out STD_LOGIC;
           RAM_Src : out STD_LOGIC;
           RAM_Read : out STD_LOGIC;
           RAM_Write : out STD_LOGIC;
           JMP : out STD_LOGIC;
           JMP_Condintional : out STD_LOGIC;
           JMP_Relative : out STD_LOGIC;
           Is_ALU_OP : out STD_LOGIC;
           Is_RAM_OP : out STD_LOGIC);
end CU_Decoder;

architecture Behavioral of CU_Decoder is
    signal instruction_name : STD_LOGIC_VECTOR (3 downto 0);
    signal is_nop, is_alu, is_rdmi, is_wrmi, is_iml, is_imh, is_rdmr, is_wrmr, is_jc, is_jr, is_ja, is_cr : STD_LOGIC;
    signal write_whole_bytes : STD_LOGIC;
begin
    instruction_name <= Instruction(15 downto 12);
    is_nop  <= '1' WHEN instruction_name = "0000" ELSE '0';
    is_alu  <= '1' WHEN instruction_name = "0001" ELSE '0';
    is_rdmi <= '1' WHEN instruction_name = "0010" ELSE '0';
    is_wrmi <= '1' WHEN instruction_name = "0011" ELSE '0';
    is_iml  <= '1' WHEN instruction_name = "0100" ELSE '0';
    is_imh  <= '1' WHEN instruction_name = "0101" ELSE '0';
    is_rdmr <= '1' WHEN instruction_name = "0110" ELSE '0';
    is_wrmr <= '1' WHEN instruction_name = "0111" ELSE '0';
    is_jc   <= '1' WHEN instruction_name = "1000" ELSE '0';
    is_jr   <= '1' WHEN instruction_name = "1001" ELSE '0';
    is_ja   <= '1' WHEN instruction_name = "1010" ELSE '0';
    is_cr   <= '1' WHEN instruction_name = "1110" ELSE '0'; 
    
    -- ALU for operand1
    -- WRMI for write data
    -- IML/IMH for partial write data
    -- WRMR for write data
    -- JR for jump address
    -- CR for write data
    Reg1Read <= is_alu or is_wrmi or is_iml or is_imh or is_wrmr or is_jr or is_cr;
    
    -- ALU for operand2
    -- RDMR and WRMR for address
    -- JC for flags 
    Reg2Read <= is_alu or is_rdmr or is_wrmr or is_jc;
    
    -- ALU for writing result to $AO
    -- RDMI/RDMR for writing memory read result
    -- CR for writing to dst register
    write_whole_byte <= is_alu or is_rdmi or is_rdmr or is_cr; 
    
    RF_WHB <= write_whole_byte or is_imh;
    RF_WLB <= write_whole_byte or is_iml;
    
    -- ALU => Select 0
    -- IMH/IML => Select 1
    -- CR => Select 2
    -- RDMR/RDMI (others) => Select 3
    Write_Data_Sel <= "00" WHEN is_alu ELSE ("01" WHEN is_imh or is_iml ELSE ("10" WHEN is_cr ELSE "11"));
    
    JMP <= is_jc or is_jr or is_ja;
    JMP_Conditional <= is_ic;
    JMP_Relative <= is_jc;
    
    Is_ALU_OP <= is_alu;
    Is_RAM_OP <= is_rdmi or is_wrmi or is_rdmr or is_wrmr;
    
end Behavioral;
