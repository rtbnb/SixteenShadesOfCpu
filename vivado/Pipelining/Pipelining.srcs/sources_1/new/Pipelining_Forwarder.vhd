----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 14:50:41
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: Pipelining_Forwarder - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity Pipelining_Forwarder is
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
end entity Pipelining_Forwarder;

architecture Behavioral of Pipelining_Forwarder is
    signal operand1Sel_s, operand2Sel_s : std_logic_vector(1 downto 0);
    signal bank_id_sel_s : std_logic;

    signal reg_1_reads_flags_s, reg_2_reads_flags_s, reg_1_reads_exc_results_s, reg_2_reads_exc_results_s, exc_writes_bank_id_s : boolean;

    constant FL : std_logic_vector(3 downto 0) := X"f";
    constant BI : std_logic_vector(3 downto 0) := X"b";
begin




    reg_1_reads_flags_s <= (reg1Read = '1') and (reg1Addr = FL);
    reg_2_reads_flags_s <= (reg2Read = '1') and (reg2Addr = FL);

    reg_1_reads_exc_results_s <= (reg1Read = '1') and (reg1Addr = execRegWriteAddr);
    reg_2_reads_exc_results_s <= (reg2Read = '1') and (reg2Addr = execRegWriteAddr);

    exc_writes_bank_id_s <= (execWritesReg = '1') and (execRegWriteAddr = BI);



    operand1Sel_s <= "11" when ((execIsALUOp = '1') and reg_1_reads_flags_s) else
                     "10" when (execWritesReg = '1' and reg_1_reads_exc_results_s) else
                     "01";

    operand2Sel_s <= "11" when ((execIsALUOp = '1') and reg_2_reads_flags_s) else
                     "10" when (execWritesReg = '1' and reg_2_reads_exc_results_s) else
                     "01";

    bank_id_sel_s <= '1' when exc_writes_bank_id_s and rfIsRAMOp = '1' else
                     '0';



    with operand1Sel_s select
        forwardedOperand1 <= reg1Data when "00",
                             reg1Data when "01",
                             executionWriteData when "10",
                             executionFlags when "11",
                             X"0000" when others;

    with operand2Sel_s select
        forwardedOperand2 <= reg2Data when "00",
                             reg2Data when "01",
                             executionWriteData when "10",
                             executionFlags when "11",
                             X"0000" when others;

    with bank_id_sel_s select
        forwardedBankID <= currentBankID when '0',
                           executionWriteData(3 downto 0) when '1',
                           X"0" when others;

end architecture Behavioral;