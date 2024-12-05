----------------------------------------------------------------------------------
-- Create Date: 06.11.2024 15:14:57
-- Name: Nico Tunkowski
-- Design Name: ShadeCpu
-- Module Name: RegFileSim - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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
        loadClk: in std_logic;
        
        Reg1Data: out std_logic_vector(15 downto 0);
        Reg2Data: out std_logic_vector(15 downto 0);
        BankID: out std_logic_vector(3 downto 0)
    );
    end component RegFile;
    
    signal AddrReg1, AddrReg2, AddrWriteReg, BankID: std_logic_vector(3 downto 0);
    signal WriteData, Flags, Reg1Data, Reg2Data: std_logic_vector(15 downto 0);
    signal WE, OverwriteFl: std_logic; 
    signal loadClk: std_logic := '0';
    
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
        loadClk => loadClk,
        
        Reg1Data => Reg1Data,
        Reg2Data => Reg2Data,
        BankID => BankID
    );

    clock: process begin
        loadClk <= not loadClk;
        wait for 5ns;
    end process clock;
    
    test: process begin
        -- initial values
        AddrReg1 <= "0000";
        AddrReg2 <= "0000";
        AddrWriteReg <= "0000";
        WriteData <= "0000000000000000";
        Flags <= "0000000000000000";
        WE <= '0';
        OverwriteFl <= '0';
        wait for 10ns; -- wait one clock cycle
        
        -- test register read on addrreg1 (all registers values should be 0 => Reg1Data should stay 0)
        -- 16 clock cycles (begin 10ns end 170ns)
        for i in 0 to 15 loop
            AddrReg1 <= std_logic_vector(to_unsigned(i, 4));
            wait for 10ns;
        end loop;

        -- test register read on addrreg2 (all registers values should be 0 => Reg2Data should stay 0)
        -- 16 clock cycles (begin 170ns end 330ns)
        for i in 0 to 15 loop
            AddrReg2 <= std_logic_vector(to_unsigned(i, 4));
            wait for 10ns;
        end loop;

        -- test register write opperation, assigning every register the reg number as value ie. RegF will have value 0x000F
        -- 16 clock cycles (begin 330ns end 490ns)
        WE <= '1';
        for i in 0 to 15 loop
            AddrWriteReg <= std_logic_vector(to_unsigned(i, 4));
            WriteData <= std_logic_vector(to_unsigned(i, 16));
            wait for 10ns;
        end loop;
        WE <= '0';
        
        -- retest every register read for addrreg1 and addrreg2 (all registers values should match to their register number except RegF, that should stay 0 because it is only set by Flag input and OverwriteFl HIGH)
        -- 16 clock cycles (begin 490ns end 650ns)
        for i in 0 to 15 loop
            AddrReg1 <= std_logic_vector(to_unsigned(i, 4));
            AddrReg2 <= std_logic_vector(to_unsigned(i, 4));
            wait for 10ns;
        end loop;

        -- test Flag write
        -- 2 clock cycle (begin 650ns end 670ns)
        -- test no write on Overwrite disabled
        AddrReg1 <= "1111"; -- addr of flag register => data will output on Reg1Data
        Flags <= "1001011010001111"; -- random bin 16 bit value
        OverwriteFl <= '0';
        wait for 10ns;
        -- test overwrite
        OverwriteFl <= '1';
        wait for 10ns;
        -- reset OverwriteFl
        OverwriteFl <= '0';

        -- asynchronous data read test on addrReg1 at 1/10 of clock frequency (data should match last read test, except RegF should be 0x968F)
        -- 1,6 clock cycle (begin 670ns 686ns)
        for i in 0 to 15 loop
            AddrReg1 <= std_logic_vector(to_unsigned(i, 4));
            wait for 1ns;
        end loop;

        -- asynchronous data read test on addrReg2 at 1/10 of clock frequency (data should match last read test, except RegF should be 0x968F)
        -- 1,6 clock cycle (begin 686ns 702ns)
        for i in 0 to 15 loop
            AddrReg2 <= std_logic_vector(to_unsigned(i, 4));
            wait for 1ns;
        end loop;
        wait for 8ns; -- to sync to clock

        -- test bankID maximum value (value of Reg1Data should count up to 0xF over and over again, because the 12 most significant bits are ignored)
        -- 65632 clock cycles (begin 710ns end 656060ns or 656,06us or 0,65606ms)
        AddrWriteReg <= "1011"; -- addr of RegB
        AddrReg1 <= "1011"; -- read value of RegB and output to Reg1Data
        WE <= '1';
        for i in 0 to 65535 loop
            WriteData <= std_logic_vector(to_unsigned(i, 16));
            wait for 10ns;
        end loop;
        
    end process test;

end Behavioral;
