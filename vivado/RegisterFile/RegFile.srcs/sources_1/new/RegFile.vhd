----------------------------------------------------------------------------------
-- Create Date: 06.11.2024 13:50:44
-- Name: Nico
-- Design Name: ShadeCpu
-- Module Name: RegFile - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity RegFile is
    port (
        AddrReg1: in std_logic_vector(3 downto 0);
        AddrReg2: in std_logic_vector(3 downto 0);
        AddrWriteReg: in std_logic_vector(3 downto 0);
        WriteData: in std_logic_vector(15 downto 0);
        Flags: in std_logic_vector(15 downto 0);
        WE: in std_logic;
        OverwriteFl: in std_logic;
        loadClk: in std_logic;

        Reg1Data: out std_logic_vector(15 downto 0);
        Reg2Data: out std_logic_vector(15 downto 0);
        BankID: out std_logic_vector(3 downto 0)
    );
end entity RegFile;

architecture Behavioral of RegFile is
    signal reg0_s, reg1_s, reg2_s, reg3_s, reg4_s, reg5_s, reg6_s, reg7_s, reg8_s, reg9_s, reg_a_s, reg_b_s, reg_c_s, reg_d_s, reg_e_s, reg_f_s: std_logic_vector(15 downto 0) := (others => '0');
begin
    BankID <= reg_b_s(3 downto 0);
    -- Select data for addrreg1
    with Addrreg1 select Reg1Data <=
        reg0_s when "0000",
        reg1_s when "0001",
        reg2_s when "0010",
        reg3_s when "0011",
        reg4_s when "0100",
        reg5_s when "0101",
        reg6_s when "0110",
        reg7_s when "0111",
        reg8_s when "1000",
        reg9_s when "1001",
        reg_a_s when "1010",
        reg_b_s when "1011",
        reg_c_s when "1100",
        reg_d_s when "1101",
        reg_e_s when "1110",
        reg_f_s when "1111",
        "0000000000000000" when others;
    -- Select data for addrreg1
    with AddrReg2 select Reg2Data <=
        reg0_s when "0000",
        reg1_s when "0001",
        reg2_s when "0010",
        reg3_s when "0011",
        reg4_s when "0100",
        reg5_s when "0101",
        reg6_s when "0110",
        reg7_s when "0111",
        reg8_s when "1000",
        reg9_s when "1001",
        reg_a_s when "1010",
        reg_b_s when "1011",
        reg_c_s when "1100",
        reg_d_s when "1101",
        reg_e_s when "1110",
        reg_f_s when "1111",
        "0000000000000000" when others;

    writeReg: process(loadClk) is
    begin
        if falling_edge(loadClk) then
            if (OverwriteFl = '1') then
                reg_f_s <= Flags;
            end if;
            if (WE = '1') then
                case AddrWriteReg is
                    when "0000" =>
                        reg0_s <= WriteData;
                    when "0001" =>
                        reg1_s <= WriteData;
                    when "0010" =>
                        reg2_s <= WriteData;
                    when "0011" =>
                        reg3_s <= WriteData;
                    when "0100" =>
                        reg4_s <= WriteData;
                    when "0101" =>
                        reg5_s <= WriteData;
                    when "0110" =>
                        reg6_s <= WriteData;
                    when "0111" =>
                        reg7_s <= WriteData;
                    when "1000" =>
                        reg8_s <= WriteData;
                    when "1001" =>
                        reg9_s <= WriteData;
                    when "1010" =>
                        reg_a_s <= WriteData;
                    when "1011" =>
                        reg_b_s <= WriteData;
                    when "1100" =>
                        reg_c_s <= WriteData;
                    when "1101" =>
                        reg_d_s <= WriteData;
                    when "1110" =>
                        reg_e_s <= WriteData;
                    when "1111" =>
                        reg_f_s <= WriteData;
                    when others =>
                        null;
                end case;
            end if;
        end if;
    end process writeReg;

end architecture Behavioral;