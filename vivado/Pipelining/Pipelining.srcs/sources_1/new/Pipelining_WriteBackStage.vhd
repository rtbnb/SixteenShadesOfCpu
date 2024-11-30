----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 14:50:40
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: Pipelining_WriteBackStage - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity Pipelining_WriteBackStage is
    Port (
        instrLoadClk : in std_logic;
        reset : in std_logic;
        writeAddress : in std_logic_vector(3 downto 0);
        writeData : in std_logic_vector(15 downto 0);
        flags : in std_logic_vector(15 downto 0);
        whb : in std_logic;
        wlb : in std_logic;
        ramRead: in std_logic;
        isALUOp : in std_logic;
        jmp : in std_logic;
        writeAddressOut : out std_logic_vector(3 downto 0);
        writeDataOut : out std_logic_vector(15 downto 0);
        flagsOut : out std_logic_vector(15 downto 0);
        rfWEOut : out std_logic;
        ramReadOut : out std_logic;
        isALUOpOut : out std_logic;
        jmpOut : out std_logic
    );
end entity Pipelining_WriteBackStage;

architecture Behavioral of Pipelining_WriteBackStage is
    signal rf_we_s, ram_read_s, is_alu_op_s, jmp_s : std_logic := '0';
    signal write_address_s : std_logic_vector(3 downto 0) := (others => '0');
    signal write_data_s, flags_s : std_logic_vector(15 downto 0) := (others => '0');
begin

    latcher : process(instrLoadClk, reset) is
    begin
        if (reset = '1') then
            rf_we_s <= '0';
            ram_read_s <= '0';
            is_alu_op_s <= '0';
            jmp_s <= '0';
            write_address_s <= X"0";
            write_data_s <= X"0000";
            flags_s <= X"0000";
        elsif (rising_edge(instrLoadClk)) then
            rf_we_s <= whb or wlb;
            ram_read_s <= ramRead;
            is_alu_op_s <= isALUOp;
            jmp_s <= jmp;
            write_address_s <= writeAddress;
            write_data_s <= writeData;
            flags_s <= flags;
        end if;
    end process latcher;

    writeAddressOut <= write_address_s;
    writeDataOut <= write_data_s;
    flagsOut <= flags_s;
    rfWEOut <= rf_we_s;
    ramReadOut <= ram_read_s;
    isALUOpOut <= is_alu_op_s;
    jmpOut <= jmp_s;

end architecture Behavioral;