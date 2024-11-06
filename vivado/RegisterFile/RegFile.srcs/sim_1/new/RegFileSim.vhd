----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.11.2024 15:14:57
-- Design Name: 
-- Module Name: RegFileSim - Behavioral
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

entity RegFileSim is
    
end RegFileSim;

architecture Behavioral of RegFileSim is
    component RegFile is
    port ( 
        AddrReg1: in std_logic_vector(3 downto 0);
        AddrReg2: in std_logic_vector(3 downto 0);
        AddrWriteReg: in std_logic_vector(3 downto 0);
        WriteData: in std_logic_vector(15 downto 0);
        Flags: in std_logic_vector(15 downto 0);
        WE: in std_logic;
        OverwriteFl: in std_logic;
        RHOPin: in std_logic;
        clk: in std_logic;
        
        Reg1_data: out std_logic_vector(15 downto 0);
        Reg2_data: out std_logic_vector(15 downto 0);
        RegMA_data: out std_logic_vector(15 downto 0);
        BankID: out std_logic_vector(3 downto 0)
    );
    end component RegFile;
    
    signal AddrReg1, AddrReg2, AddrWriteReg, BankID: std_logic_vector(3 downto 0);
    signal WriteData, Flags, Reg1_data, Reg2_data, RegMA_data: std_logic_vector(15 downto 0);
    signal WE, OverwriteFl, RHOPin, clk: std_logic;
    
begin
    EUT: RegFile
        port map ( 
        AddrReg1 => AddrReg1,
        AddrReg2 => AddrReg2,
        AddrWriteReg => AddrWriteReg,
        WriteData => WriteData,
        Flags => Flags,
        WE => WE,
        OverwriteFl => OverwriteFl,
        RHOPin => RHOPin,
        clk => clk,
        
        Reg1_data => Reg1_data,
        Reg2_data => Reg2_data,
        RegMA_data => RegMA_data,
        BankID => BankID
    );
    
    process begin
        AddrReg1 <= "0000";
        AddrReg2 <= "0001";
        AddrWriteReg <= "0000";
        WriteData <= "0000000000000000";
        Flags <= "0000000000000000";
        WE <= '0';
        OverwriteFl <= '0';
        RHOPin <= '0';
        clk <= '0';
        
        
        wait for 100ns;
        AddrWriteReg <= "0000";
        WriteData <= "1101000000000000";
        WE <= '1';
        clk <= '1';
        
        wait for 100ns;
        WE <= '0';
        clk <= '0';
        WriteData <= "0010000000000000";
        
        wait for 100ns;
        AddrWriteReg <= "0001";
        WriteData <= "1001000100100000";
        WE <= '1';
        clk <= '1';
        
        wait for 100ns;
        WE <= '0';
        clk <= '0';
        
        wait for 100ns;
        AddrWriteReg <= "0000";
        WriteData <= "1001000101110000";
        WE <= '1';
        clk <= '1';
        
        wait for 100ns;
        WE <= '0';
        clk <= '0';
        
        wait for 100ns;
        WE <= '1';
        clk <= '1';
        WriteData <= "0000000000001111";
        AddrWriteReg <= "1011";
        
        wait for 100ns;
        WE <= '0';
        clk <= '0';
        
        AddrReg1 <= "0010";
        wait for 10ns;
        AddrReg1 <= "0001";
        wait for 10ns;
        AddrReg1 <= "0000";

        
        
    end process;

end Behavioral;
