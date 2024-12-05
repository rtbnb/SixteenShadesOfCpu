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
        -- Bit 4: Invert Condition
        -- Bit 3: HW Flags Select
        -- Bit 0-2: Condition
        -- HW Flags Select: 0
        -- Condition: 000: Carry
        --            001: Zero
        --            010: Smaller Zero
        --            011: Bigger Zero
        --            100: Overflow
        -- HW Flags Select: 1
        -- Condition: 000: Rho
        --            001: GPU Done
        jmpCondition : in std_logic_vector(4 downto 0);
        flags : in std_logic_vector(15 downto 0);
        rhoPin : in std_logic;
        gpuDone : in std_logic;
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

    signal carry_flag_s, zero_flag_s, smaller_zero_flag_s, bigger_zero_flag_s, overflow_flag_s, rho_flag_s : std_logic;
    signal not_zero_flag_s : std_logic;
    signal alu_jump_flag_s, hw_flag_s, univerted_flag_s, jump_condition_fulfilled_s : std_logic;
    signal relative_jump_destination_s : std_logic_vector(15 downto 0);
    signal jmp_verified_s : std_logic;
    constant PC_OFFSET : signed(15 downto 0) := "1111111111111111";


begin

    FlagUnpackerInstance : FlagUnpacker port map(
        flags => flags,
        carryFlag => carry_flag_s,
        zeroFlag => zero_flag_s,
        smallerZeroFlag => smaller_zero_flag_s,
        biggerZeroFlag => bigger_zero_flag_s,
        overflowFlag => overflow_flag_s,
        rhoFlag => rho_flag_s
    );

    not_zero_flag_s <= not zero_flag_s;

    with jmpCondition(2 downto 0) select
        alu_jump_flag_s <=
            carry_flag_s         when "000",
            zero_flag_s          when "001",
            smaller_zero_flag_s  when "010",
            bigger_zero_flag_s   when "011",
            overflow_flag_s      when "100",
            '0'                  when "101",
            '0'                  when "110",
            '1'                  when "111",
            '0'                  when others;

    with jmpCondition(2 downto 0) select
        hw_flag_s <=
            rhoPin               when "000",
            gpuDone              when "001",
            '0'                  when "010",
            '0'                  when "011",
            '0'                  when "100",
            '0'                  when "101",
            '0'                  when "110",
            '1'                  when "111",
            '0'                  when others;

    with jmpCondition(3) select
        univerted_flag_s <=
            alu_jump_flag_s when '0',
            hw_flag_s       when '1',
            '0'             when others;

    jump_condition_fulfilled_s <= univerted_flag_s xor jmpCondition(4);


    jmp_verified_s <= jmp and ((not jmpConditional) or jump_condition_fulfilled_s);
    pcLoad <= jmp_verified_s;
    relative_jump_destination_s <= std_logic_vector(signed(jmpAddress) + signed(pcCurrent) + PC_OFFSET);

    with jmpRelative select
        pcNext <= jmpAddress                    when '0',
                  relative_jump_destination_s   when '1',
                  X"0000"                       when others;

end architecture Behavioral;