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
           Write_Data_Sel : out STD_LOGIC_VECTOR (1 downto 0);
           RAM_Address_Src : out STD_LOGIC;
           RAM_Read : out STD_LOGIC;
           RAM_Write : out STD_LOGIC;
           JMP : out STD_LOGIC;
           JMP_Conditional : out STD_LOGIC;
           JMP_Relative : out STD_LOGIC;
           JMP_DestinationSource : out STD_LOGIC;
           Is_ALU_OP : out STD_LOGIC;
           Is_RAM_OP : out STD_LOGIC;
           Is_GPU_OP : out STD_LOGIC);
end CU_Decoder;

architecture Behavioral of CU_Decoder is
    signal instruction_name : STD_LOGIC_VECTOR (3 downto 0);
    signal is_nop, is_alu, is_rdmi, is_wrmi, is_iml, is_imh, is_rdmr, is_wrmr, is_jc, is_jr, is_ja, is_cr, is_gpu : boolean;
    signal write_whole_byte : boolean;
begin
    instruction_name <= Instruction(15 downto 12);
    is_nop  <= instruction_name = "0000";
    is_alu  <= instruction_name = "0001";
    is_rdmi <= instruction_name = "0010";
    is_wrmi <= instruction_name = "0011";
    is_iml  <= instruction_name = "0100";
    is_imh  <= instruction_name = "0101";
    is_rdmr <= instruction_name = "0110";
    is_wrmr <= instruction_name = "0111";
    is_jc   <= instruction_name = "1000";
    is_jr   <= instruction_name = "1001";
    is_ja   <= instruction_name = "1010";
    is_cr   <= instruction_name = "1110"; 
    is_gpu  <= instruction_name = "1111"; 
    
    -- ALU for operand1
    -- WRMI for write data
    -- IML/IMH for partial write data
    -- WRMR for write data
    -- JR for jump address
    -- CR for write data
    -- GPU for arg1
    Reg1Read <= '1' WHEN is_alu or is_wrmi or is_iml or is_imh or is_wrmr or is_jr or is_cr or is_gpu ELSE '0';
    
    -- ALU for operand2
    -- RDMR and WRMR for address
    -- JC for flags 
    -- GPU for arg2
    Reg2Read <= '1' WHEN is_alu or is_rdmr or is_wrmr or is_jc or is_gpu ELSE '0';
    
    -- ALU for writing result to $AO
    -- RDMI/RDMR for writing memory read result
    -- CR for writing to dst register
    write_whole_byte <= is_alu or is_rdmi or is_rdmr or is_cr; 
    
    RF_WHB <= '1' WHEN write_whole_byte or is_imh ELSE '0';
    RF_WLB <= '1' WHEN write_whole_byte or is_iml ELSE '0';
    
    -- ALU => Select 0 (Also used as default)
    -- IMH/IML => Select 1
    -- CR => Select 2
    -- RDMR/RDMI (others) => Select 3
    Write_Data_Sel <= "00" WHEN is_alu ELSE 
                      "01" WHEN is_imh or is_iml ELSE 
                      "10" WHEN is_cr ELSE 
                      "11" WHEN is_rdmi or is_rdmr ELSE
                      "10";
    -- '0': Reg2 is used as RAM Address
    -- '1': Immediate is used as RAM Address                  
    RAM_Address_Src <= '1' WHEN is_rdmi or is_wrmi ELSE '0';
    RAM_Read <= '1' WHEN is_rdmi or is_rdmr ELSE '0';
    RAM_Write <= '1' WHEN is_wrmi or is_wrmr ELSE '0';
    
    JMP <= '1' WHEN is_jc or is_jr or is_ja ELSE '0';
    JMP_Conditional <= '1' WHEN is_jc ELSE '0';
    JMP_Relative <= '1' WHEN is_jc ELSE '0';
    
    -- '1': Jumps to value in Reg1
    -- '0': Jumps to value in Immediate
    JMP_DestinationSource <= '1' WHEN is_jr ELSE '0';
    
    Is_ALU_OP <= '1' WHEN is_alu ELSE '0';
    Is_RAM_OP <= '1' WHEN is_rdmi or is_wrmi or is_rdmr or is_wrmr ELSE '0';
    Is_GPU_OP <= '1' WHEN is_gpu ELSE '0';
    
end Behavioral;
