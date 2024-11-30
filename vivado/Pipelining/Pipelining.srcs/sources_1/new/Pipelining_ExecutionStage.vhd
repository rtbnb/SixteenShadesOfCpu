----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 14:50:41
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: Pipelining_ExecutionStage - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity Pipelining_ExecutionStage is
    Port (
        loadClk : in std_logic;
        reset : in std_logic;
        operand1 : in std_logic_vector(15 downto 0);
        operand2 : in std_logic_vector(15 downto 0);
        immediate : in std_logic_vector(15 downto 0);
        writeAddress : in std_logic_vector(3 downto 0);
        whb : in std_logic;
        wlb : in std_logic;
        rfWrite : in std_logic;
        writeDataSel : in std_logic_vector(1 downto 0);
        ramSrc : in std_logic;
        ramRead : in std_logic;
        ramWrite : in std_logic;
        ramBankID : in std_logic_vector(3 downto 0);
        jmp : in std_logic;
        jmpConditional : in std_logic;
        jmpRelative : in std_logic;
        jmpDestinationSelect : in std_logic;
        jmpCondition : in std_logic_vector(2 downto 0);
        isALUOp : in std_logic;
        isRAMOp : in std_logic;
        isGPUOp : in std_logic;
        operand1Out : out std_logic_vector(15 downto 0);
        operand2Out : out std_logic_vector(15 downto 0);
        immediateOut : out std_logic_vector(15 downto 0);
        writeAddressOut : out std_logic_vector(3 downto 0);
        whbOut : out std_logic;
        wlbOut : out std_logic;
        rfWriteOut : out std_logic;
        writeDataSelOut : out std_logic_vector(1 downto 0);
        ramSrcOut : out std_logic;
        ramReadOut : out std_logic;
        ramWriteOut : out std_logic;
        ramBankIDOut : out std_logic_vector(3 downto 0);
        jmpOut : out std_logic;
        jmpConditionalOut : out std_logic;
        jmpRelativeOut : out std_logic;
        jmpDestinationSelectOut : out std_logic;
        jmpConditionOut : out std_logic_vector(2 downto 0);
        isALUOpOut : out std_logic;
        isRAMOpOut : out std_logic;
        isGPUOpOut : out std_logic
    );
end entity Pipelining_ExecutionStage;

architecture Behavioral of Pipelining_ExecutionStage is
    signal operand1_s, operand2_s, immediate_s : std_logic_vector(15 downto 0);
    signal write_address_s : std_logic_vector(3 downto 0);
    signal whb_s, wlb_s, rf_write_s, ram_src_s, ram_read_s, ram_write_s, jmp_s, jmp_conditional_s, jmp_relative_s, jmp_destination_sel_s, is_alu_op_s, is_ram_op_s, is_gpu_op_s : std_logic;
    signal write_data_select_s : std_logic_vector(1 downto 0);
    signal jmp_condition_s : std_logic_vector(2 downto 0);
    signal bank_id_s : std_logic_vector(3 downto 0);
begin
    latcher : process(loadClk, reset) is
    begin
        if (reset = '1') then
            operand1_s <= X"0000";
            operand2_s <= X"0000";
            immediate_s <= X"0000";
            write_address_s <= X"0";
            whb_s <= '0';
            wlb_s <= '0';
            rf_write_s <= '0';
            write_data_select_s <= "00";
            ram_src_s <= '0';
            ram_read_s <= '0';
            ram_write_s <= '0';
            bank_id_s <= "0000";
            jmp_s <= '0';
            jmp_conditional_s <= '0';
            jmp_relative_s <= '0';
            jmp_destination_sel_s <= '0';
            jmp_condition_s <= "000";
            is_alu_op_s <= '0';
            is_ram_op_s <= '0';
            is_gpu_op_s <= '0';
        elsif rising_edge(loadClk) then
            operand1_s <= operand1;
            operand2_s <= operand2;
            immediate_s <= immediate;
            write_address_s <= writeAddress;
            whb_s <= whb;
            wlb_s <= wlb;
            rf_write_s <= rfWrite;
            write_data_select_s <= writeDataSel;
            ram_src_s <= ramSrc;
            ram_read_s <= ramRead;
            ram_write_s <= ramWrite;
            bank_id_s <= ramBankID;
            jmp_s <= jmp;
            jmp_conditional_s <= jmpConditional;
            jmp_relative_s <= jmpRelative;
            jmp_destination_sel_s <= jmpDestinationSelect;
            jmp_condition_s <= jmpCondition;
            is_alu_op_s <= isALUOp;
            is_ram_op_s <= isRAMOp;
            is_gpu_op_s <= isGPUOp;
        end if;
    end process latcher;

    operand1Out <= operand1_s;
    operand2Out <= operand2_s;
    immediateOut <= immediate_s;
    writeAddressOut <= write_address_s;
    whbOut <= whb_s;
    wlbOut <= wlb_s;
    rfWriteOut <= rf_write_s;
    writeDataSelOut <= write_data_select_s;
    ramSrcOut <= ram_src_s;
    ramReadOut <= ram_read_s;
    ramWriteOut <= ram_write_s;
    ramBankIDOut <= bank_id_s;
    jmpOut <= jmp_s;
    jmpConditionalOut <= jmp_conditional_s;
    jmpRelativeOut <= jmp_relative_s;
    jmpDestinationSelectOut <= jmp_destination_sel_s;
    jmpConditionOut <= jmp_condition_s;
    isALUOpOut <= is_alu_op_s;
    isRAMOpOut <= is_ram_op_s;
    isGPUOpOut <= is_gpu_op_s;
end architecture Behavioral;