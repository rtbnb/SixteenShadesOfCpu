----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 06.11.2024 13:50:44
-- Design Name:
-- Module Name: RegFile - Behavioral
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

entity RegFile is
    port (
        AddrReg1: in std_logic_vector(3 downto 0);
        AddrReg2: in std_logic_vector(3 downto 0);
        AddrWriteReg: in std_logic_vector(3 downto 0);
        WriteData: in std_logic_vector(15 downto 0);
        Flags: in std_logic_vector(15 downto 0);
        WE: in std_logic;
        OverwriteFl: in std_logic;
        load_clk: in std_logic;

        Reg1_data: out std_logic_vector(15 downto 0);
        Reg2_data: out std_logic_vector(15 downto 0);
        BankID: out std_logic_vector(3 downto 0)
    );
end entity RegFile;

architecture Behavioral of RegFile is
    signal Reg0, Reg1, Reg2, Reg3, Reg4, Reg5, Reg6, Reg7, Reg8, Reg9, RegA, RegB, RegC, RegD, RegE, RegF: std_logic_vector(15 downto 0) := (others => '0');
begin
    BankID <= RegB(3 downto 0);

    -- Select data for addrreg1
    with AddrReg1 select Reg1_data <=
                Reg0 when "0000",
                Reg1 when "0001",
                Reg2 when "0010",
                Reg3 when "0011",
                Reg4 when "0100",
                Reg5 when "0101",
                Reg6 when "0110",
                Reg7 when "0111",
                Reg8 when "1000",
                Reg9 when "1001",
                RegA when "1010",
                RegB when "1011",
                RegC when "1100",
                RegD when "1101",
                RegE when "1110",
                RegF when "1111",
                "0000000000000000" when others;
    -- Select data for addrreg1
    with AddrReg2 select Reg2_data <=
                Reg0 when "0000",
                Reg1 when "0001",
                Reg2 when "0010",
                Reg3 when "0011",
                Reg4 when "0100",
                Reg5 when "0101",
                Reg6 when "0110",
                Reg7 when "0111",
                Reg8 when "1000",
                Reg9 when "1001",
                RegA when "1010",
                RegB when "1011",
                RegC when "1100",
                RegD when "1101",
                RegE when "1110",
                RegF when "1111",
                "0000000000000000" when others;

    writeReg: process(load_clk) is
    begin
        if falling_edge(load_clk) then
            if (OverwriteFl = '1') then
                RegF <= Flags;
            end if;
            if (WE = '1') then
                case AddrWriteReg is
                    when "0000" =>
                        Reg0 <= WriteData;
                    when "0001" =>
                        Reg1 <= WriteData;
                    when "0010" =>
                        Reg2 <= WriteData;
                    when "0011" =>
                        Reg3 <= WriteData;
                    when "0100" =>
                        Reg4 <= WriteData;
                    when "0101" =>
                        Reg5 <= WriteData;
                    when "0110" =>
                        Reg6 <= WriteData;
                    when "0111" =>
                        Reg7 <= WriteData;
                    when "1000" =>
                        Reg8 <= WriteData;
                    when "1001" =>
                        Reg9 <= WriteData;
                    when "1010" =>
                        RegA <= WriteData;
                    when "1011" =>
                        RegB <= WriteData;
                    when "1100" =>
                        RegC <= WriteData;
                    when "1101" =>
                        RegD <= WriteData;
                    when "1110" =>
                        RegE <= WriteData;
                    when "1111" =>
                        RegF <= WriteData;
                    when others =>
                        null;
                end case;
            end if;
        end if;
    end process writeReg;

end architecture Behavioral;