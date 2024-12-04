----------------------------------------------------------------------------------
-- Create Date: 12.11.2024 17:21:33
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: Pipelining_ExecutionStage_SIM - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------



library ieee;
use ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pipelining_ExecutionStage_SIM is
--  Port ( );
end Pipelining_ExecutionStage_SIM;

architecture Behavioral of Pipelining_ExecutionStage_SIM is

    component Pipelining_ExecutionStage is
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
            writeDataSel : in std_logic_vector(2 downto 0);
            flagSel : in std_logic_vector(0 downto 0);
            ramSrc : in std_logic;
            ramRead : in std_logic;
            ramWrite : in std_logic;
            ramBankID : in std_logic_vector(3 downto 0);
            jmp : in std_logic;
            jmpConditional : in std_logic;
            jmpRelative : in std_logic;
            jmpDestinationSelect : in std_logic;
            jmpCondition : in std_logic_vector(4 downto 0);
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
            writeDataSelOut : out std_logic_vector(2 downto 0);
            flagSelOut : out std_logic_vector(0 downto 0);
            ramSrcOut : out std_logic;
            ramReadOut : out std_logic;
            ramWriteOut : out std_logic;
            ramBankIDOut : out std_logic_vector(3 downto 0);
            jmpOut : out std_logic;
            jmpConditionalOut : out std_logic;
            jmpRelativeOut : out std_logic;
            jmpDestinationSelectOut : out std_logic;
            jmpConditionOut : out std_logic_vector(4 downto 0);
            isALUOpOut : out std_logic;
            isRAMOpOut : out std_logic;
            isGPUOpOut : out std_logic
        );
    end component Pipelining_ExecutionStage;
    
    signal load_clk_s, reset_s : std_logic;
    signal operand_1_s, operand_2_s, iImmediate_s : std_logic_vector(15 downto 0);
    signal write_address_s, ram_bank_id_s : std_logic_vector(3 downto 0);
    signal write_data_sel_s : std_logic_vector(2 downto 0);
    signal flag_sel_s : std_logic_vector(0 downto 0);
    signal jmp_condition_s : std_logic_vector(4 downto 0);
    signal whb_s, wlb_s, rf_write_s, ram_src_s, ram_read_s, ram_write_s, Use_MA, jmp_s, jmp_conditional_s, jmp_relative_s, jmp_destination_select_s, is_alu_op_s, is_ram_op_s, is_gpu_op_s : std_logic;
begin

    EUT : Pipelining_ExecutionStage port map(
        loadClk => load_clk_s,
        reset => reset_s,
        operand1 => operand_1_s,
        operand2 => operand_2_s,
        immediate => immediate_s,
        writeAddress => write_address_s,
        whb => whb_s,
        wlb => wlb_s,
        rfWrite => rf_write_s,
        writeDataSel => write_data_sel_s,
        flagSel => flag_sel_s,
        ramSrc => ram_src_s,
        ramRead => ram_read_s,
        ramWrite => ram_write_s,
        ramBankID => ram_bank_id_s,
        jmp => jmp_s,
        jmpConditional => jmp_conditional_s,
        jmpRelative => jmp_relative_s,
        jmpDestinationSelect => jmp_destination_select_s,
        jmpCondition => jmp_condition_s,
        isALUOp => is_alu_op_s,
        isRAMOp => is_ram_op_s,
        isGPUOp => is_gpu_op_s
    );

    rf_write_s <= wl_s or whb_s;

    simulator : process is
    begin
        operand_1_s <= X"12c1";
        operand_2_s <= X"acd1";
        immediate_s <= X"c321";
        write_address_s <= X"f";
        whb_s <= '1';
        wlb_s <= '1';
        rf_write_s <= '1';
        write_data_sel_s <= "001";
        flag_sel_s <= "1";
        ram_src_s <= '1';
        ram_read_s <= '0';
        ram_write_s <= '1';
        ram_bank_id_s <= X"3";
        jmp_s <= '1';
        jmp_conditional_s <= '1';
        jmp_relative_s <= '1';
        jmp_destination_select_s <= '0';
        jmp_condition_s <= "11111";
        is_alu_op_s <= '1';
        is_ram_op_s <= '1';
        is_gpu_op_s <= '1';
        wait for 20 ns;

        operand_1_s <= X"fc21";
        operand_2_s <= X"654c";
        immediate_s <= X"9762";
        write_address_s <= X"e";
        whb_s <= '0';
        wlb_s <= '1';
        rf_write_s <= '1';
        write_data_sel_s <= "011";
        flag_sel_s <= "0";
        ram_src_s <= '1';
        ram_read_s <= '0';
        ram_write_s <= '1';
        ram_bank_id_s <= X"a";
        jmp_s <= '0';
        jmp_conditional_s <= '0';
        jmp_relative_s <= '1';
        jmp_destination_select_s <= '0';
        jmp_condition_s <= "10100";
        is_alu_op_s <= '0';
        is_ram_op_s <= '1';
        is_gpu_op_s <= '0';
        wait for 20 ns;


        operand_1_s <= X"94af";
        operand_2_s <= X"ad62";
        immediate_s <= X"4258";
        write_address_s <= X"1";
        whb_s <= '1';
        wlb_s <= '0';
        rf_write_s <= '0';
        write_data_sel_s <= "100";
        flag_sel_s <= "1";
        ram_src_s <= '0';
        ram_read_s <= '1';
        ram_write_s <= '0';
        ram_bank_id_s <= X"5";
        jmp_s <= '1';
        jmp_conditional_s <= '0';
        jmp_relative_s <= '0';
        jmp_destination_select_s <= '1';
        jmp_condition_s <= "00101";
        is_alu_op_s <= '1';
        is_ram_op_s <= '0';
        is_gpu_op_s <= '1';
        wait for 20 ns;
    end process simulator;

    clocker : process is
    begin
        load_clk_s <= '0';
        wait for 10 ns;
        load_clk_s <= '1';
        wait for 10 ns;
    end process clocker;
    
    resetter : process is
    begin
        reset_s <= '0';
        wait for 100 ns;
        reset_s <= '1';
        wait for 10 ns;
    end process resetter;


end architecture Behavioral;
