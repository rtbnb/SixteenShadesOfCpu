----------------------------------------------------------------------------------
-- Create Date: 12.11.2024 17:21:33
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: Pipelining_Forwarder - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use ieee.numeric_std.all;


entity Pipelining_Forwarder_SIM is
end entity Pipelining_Forwarder_SIM;

architecture Behavioral of Pipelining_Forwarder_SIM is
    component Pipelining_Forwarder is
        Port (
            reg1Addr : in std_logic_vector(3 downto 0);
            reg2Addr : in std_logic_vector(3 downto 0);
            reg1Read : in std_logic;
            reg2Read : in std_logic;
            rfIsRAMOp : in std_logic;
            execRegWriteAddr : in std_logic_vector(3 downto 0);
            execWritesReg : in std_logic;
            execIsALUOp : in std_logic;
            reg1Data : in std_logic_vector(15 downto 0);
            reg2Data : in std_logic_vector(15 downto 0);
            currentBankID : in std_logic_vector(3 downto 0);
            executionWriteData : in std_logic_vector(15 downto 0);
            executionFlags : in std_logic_vector(15 downto 0);
            forwardedOperand1 : out std_logic_vector(15 downto 0);
            forwardedOperand2 : out std_logic_vector(15 downto 0);
            forwardedBankID : out std_logic_vector(3 downto 0)
        );
    end component Pipelining_Forwarder;

    signal reg_1_addr_s, reg_2_addr_s, exec_reg_write_addr, current_bank_id_s : std_logic_vector(3 downto 0);
    signal reg_1_read_s, reg_2_read_s, rf_is_ram_op_s, exec_writes_reg_s, exec_is_alu_op : std_logic;
    signal reg_1_data_s, reg_2_data_s, execution_write_data_s, execution_flags_s : std_logic_vector(15 downto 0);
    
begin

    EUT : Pipelining_Forwarder port map(
        reg1Addr => reg_1_addr_s,
        reg2Addr => reg_2_addr_s,
        reg1Read => reg_1_read_s,
        reg2Read => reg_2_read_s,
        rfIsRAMOp => rf_is_ram_op_s,
        execRegWriteAddr => exec_reg_write_addr,
        execWritesReg => exec_writes_reg_s,
        execIsALUOp => exec_is_alu_op,
        reg1Data => reg_1_data_s,
        reg2Data => reg_2_data_s,
        currentBankID => current_bank_id_s,
        executionWriteData => execution_write_data_s,
        executionFlags => execution_flags_s
    );
    
    simulator : process is
    begin
        reg_1_addr_s <= X"0";
        reg_2_addr_s <= X"1";
        reg_1_read_s <= '0';
        reg_2_read_s <= '1';
        rf_is_ram_op_s <= '0';
        exec_reg_write_addr <= X"2";
        exec_writes_reg_s <= '1';
        exec_is_alu_op <= '0';
        reg_1_data_s <= X"abcd";
        reg_2_data_s <= X"1234";
        current_bank_id_s <= X"3";
        execution_write_data_s <= X"5678";
        execution_flags_s <= X"9abc";
        wait for 10 ns;

        reg_1_addr_s <= X"0";
        reg_2_addr_s <= X"1";
        reg_1_read_s <= '1';
        reg_2_read_s <= '1';
        rf_is_ram_op_s <= '1';
        exec_reg_write_addr <= X"1";
        exec_writes_reg_s <= '0';
        exec_is_alu_op <= '0';
        reg_1_data_s <= X"abcd";
        reg_2_data_s <= X"1234";
        current_bank_id_s <= X"3";
        execution_write_data_s <= X"5678";
        execution_flags_s <= X"9abc";
        wait for 10 ns;

        reg_1_addr_s <= X"0";
        reg_2_addr_s <= X"1";
        reg_1_read_s <= '0';
        reg_2_read_s <= '0';
        rf_is_ram_op_s <= '0';
        exec_reg_write_addr <= X"2";
        exec_writes_reg_s <= '0';
        exec_is_alu_op <= '0';
        reg_1_data_s <= X"abcd";
        reg_2_data_s <= X"1234";
        current_bank_id_s <= X"3";
        execution_write_data_s <= X"5678";
        execution_flags_s <= X"9abc";
        wait for 10 ns;

        reg_1_addr_s <= X"f";
        reg_2_addr_s <= X"0";
        reg_1_read_s <= '1';
        reg_2_read_s <= '0';
        rf_is_ram_op_s <= '0';
        exec_reg_write_addr <= X"5";
        exec_writes_reg_s <= '1';
        exec_is_alu_op <= '1';
        reg_1_data_s <= X"abcd";
        reg_2_data_s <= X"1234";
        current_bank_id_s <= X"3";
        execution_write_data_s <= X"5678";
        execution_flags_s <= X"9abc";
        wait for 10 ns;

        reg_1_addr_s <= X"f";
        reg_2_addr_s <= X"0";
        reg_1_read_s <= '1';
        reg_2_read_s <= '1';
        rf_is_ram_op_s <= '1';
        exec_reg_write_addr <= X"a";
        exec_writes_reg_s <= '1';
        exec_is_alu_op <= '0';
        reg_1_data_s <= X"abcd";
        reg_2_data_s <= X"1234";
        current_bank_id_s <= X"3";
        execution_write_data_s <= X"5678";
        execution_flags_s <= X"9abc";
        wait for 10 ns;
    end process simulator;

end architecture Behavioral;
