----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 12:03:04
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: CU_Decoder - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.ALL;


entity CU_Decoder is
    Port (
        instructionToDecode : in std_logic_vector(15 downto 0);
        reg1Read : out std_logic;
        reg2Read : out std_logic;
        rfWHB : out std_logic;
        rfWLB : out std_logic;
        writeDataSelect : out std_logic_vector(1 downto 0);
        ramAddressSrc : out std_logic;
        ramRead : out std_logic;
        ramWrite : out std_logic;
        jmp : out std_logic;
        jmpConditional : out std_logic;
        jmpRelative : out std_logic;
        jmpDestinationSource : out std_logic;
        isALUOp : out std_logic;
        isRAMOp : out std_logic;
        isGPUOp : out std_logic
    );
end entity CU_Decoder;

architecture Behavioral of CU_Decoder is
    signal instruction_name_s : std_logic_vector(3 downto 0);
    signal is_nop_s, is_alu_s, is_rdmi_s, is_wrmi_s, is_iml_s, is_imh_s, is_rdmr_s, is_wrmr_s, is_jc_s, is_jr_s, is_ja_s, is_cr_s, is_gpu_s : boolean;
    signal write_whole_byte_s : boolean;
begin
    instruction_name_s <= instructionToDecode(15 downto 12);
    is_nop_s  <= instruction_name_s = "0000";
    is_alu_s  <= instruction_name_s = "0001";
    is_rdmi_s <= instruction_name_s = "0010";
    is_wrmi_s <= instruction_name_s = "0011";
    is_iml_s  <= instruction_name_s = "0100";
    is_imh_s  <= instruction_name_s = "0101";
    is_rdmr_s <= instruction_name_s = "0110";
    is_wrmr_s <= instruction_name_s = "0111";
    is_jc_s   <= instruction_name_s = "1000";
    is_jr_s   <= instruction_name_s = "1001";
    is_ja_s   <= instruction_name_s = "1010";
    is_cr_s   <= instruction_name_s = "1110";
    is_gpu_s  <= instruction_name_s = "1111";

    -- ALU for operand1
    -- WRMI for write data
    -- IML/IMH for partial write data
    -- WRMR for write data
    -- JR for jump address
    -- CR for write data
    reg1Read <= '1' when is_alu_s or is_wrmi_s or is_iml_s or is_imh_s or is_wrmr_s  or is_jr_s or is_cr_s or is_gpu_s else '0';

    -- ALU for operand2
    -- RDMR and WRMR for address
    -- JC for flags
    reg2Read <= '1' when is_alu_s or is_rdmr_s or is_wrmr_s or is_jc_s or is_gpu_s else '0';

    -- ALU for writing result to $AO
    -- RDMI/RDMR for writing memory read result
    -- CR for writing to dst register
    write_whole_byte_s <= is_alu_s or is_rdmi_s or is_rdmr_s or is_cr_s;

    rfWHB <= '1' when write_whole_byte_s or is_imh_s else '0';
    rfWLB <= '1' when write_whole_byte_s or is_iml_s else '0';

    -- ALU => Select 0 (Also used as default)
    -- IMH/IML => Select 1
    -- CR => Select 2
    -- RDMR/RDMI (others) => Select 3
    writeDataSelect <= "00" when is_alu_s else
        "01" when is_imh_s or is_iml_s else
        "10" when is_cr_s else
        "11" when is_rdmi_s or is_rdmr_s else
        "00";
    -- '0': Reg2 is used as RAM Address
    -- '1': Immediate is used as RAM Address
    ramAddressSrc <= '1' when is_rdmi_s or is_wrmi_s else '0';
    ramRead <= '1' when is_rdmi_s or is_rdmr_s else '0';
    ramWrite <= '1' when is_wrmi_s or is_wrmr_s else '0';

    jmp <= '1' when is_jc_s or is_jr_s or is_ja_s else '0';
    jmpConditional <= '1' when is_jc_s else '0';
    jmpRelative <= '1' when is_jc_s else '0';

    -- '1': Jumps to value in Reg1
    -- '0': Jumps to value in Immediate
    jmpDestinationSource <= '1' when is_jr_s else '0';

    isALUOp <= '1' when is_alu_s else '0';
    isRAMOp <= '1' when is_rdmi_s or is_wrmi_s or is_rdmr_s or is_wrmr_s else '0';
    isGPUOp <= '1' when is_gpu_s else '0';

end architecture Behavioral;