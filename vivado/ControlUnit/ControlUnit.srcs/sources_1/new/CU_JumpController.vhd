----------------------------------------------------------------------------------
-- Create Date: 07.11.2024 12:03:04
-- Name: Lukas Reil
-- Design Name: ShadeCpu
-- Module Name: CU_JumpController - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CU_JumpController is
    Port (
        jmp : in std_logic;
        jmpConditional : in std_logic;
        jmpRelative : in std_logic;
        jmpCondition : in std_logic_vector(2 downto 0);
        flags : in std_logic_vector(15 downto 0);
        rhoPin : in std_logic;
        jmpAddress : in std_logic_vector(15 downto 0);
        pcCurrent : in std_logic_vector(15 downto 0);
        pcLoad : out std_logic;
        pcNext : out std_logic_vector(15 downto 0)
    );
end entity CU_JumpController;

architecture Behavioral of CU_JumpController is

    component FlagUnpacker is
        Port (
            flags : in std_logic_vector(15 downto 0);
            carryFlag : out std_logic;
            zeroFlag : out std_logic;
            smallerZeroFlag : out std_logic;
            biggerZeroFlag : out std_logic;
            overflowFlag : out std_logic;
            rhoFlag : out std_logic
        );
    end component;

    signal carryFlag, zeroFlag, smallerZeroFlag, biggerZeroFlag, overflowFlag, rhoFlag : std_logic;
    signal notZeroFlag : std_logic;
    signal jumpConditionFulfilled : std_logic;
    signal relativeJumpDestination : std_logic_vector(15 downto 0);
    signal jmpVerified : std_logic;
    constant pcOffset : signed(15 downto 0) := "1111111111111111";

begin

    FlagUnpackerInstance : FlagUnpacker port map(
        flags => flags,
        carryFlag => carryFlag,
        zeroFlag => zeroFlag,
        smallerZeroFlag => smallerZeroFlag,
        biggerZeroFlag => biggerZeroFlag,
        overflowFlag => overflowFlag,
        rhoFlag => rhoFlag
    );

    notZeroFlag <= not zeroFlag;

    with jmpCondition select
        jumpConditionFulfilled <= carryFlag         when "000",
                                  zeroFlag          when "001",
                                  smallerZeroFlag   when "010",
                                  biggerZeroFlag    when "011",
                                  overflowFlag      when "100",
                                  rhoPin            when "101",
                                  notZeroFlag       when "110",
                                  '1'               when "111",
                                  '0'               when others;

    jmpVerified <= jmp and ((not jmpConditional) or jumpConditionFulfilled);
    pcLoad <= jmpVerified;
    relativeJumpDestination <= std_logic_vector(signed(jmpAddress) + signed(pcCurrent) + pcOffset);

    with jmpRelative select
        pcNext <= jmpAddress                when '0',
                  relativeJumpDestination   when '1',
                  X"0000"                   when others;

end architecture Behavioral;