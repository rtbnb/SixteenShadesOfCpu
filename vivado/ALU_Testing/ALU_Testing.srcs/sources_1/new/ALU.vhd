----------------------------------------------------------------------------------
-- Create Date: 06.11.2024 10:18:06
-- Name: Matthias Fuchs
-- Design Name: ShadeCpu
-- Module Name: ALU - Behavioral
-- Project Name: ShadeCpu-1
-- Target Devices: Arty A7-35T Development Board
-- Repository: https://github.com/rtbnb/SixteenShadesOfCpu
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
 Port (
    D1: IN std_logic_vector(15 downto 0 ):= (others => '0');
    D2: IN std_logic_vector(15 downto 0 ):= (others => '0');
    ALU_OPP: IN std_logic_vector(3 downto 0 ):= (others => '0');
    RHO_PIN: IN std_logic:= '0';
    ALU_OUT: OUT std_logic_vector(15 downto 0 ):= (others => '0');
    --ALU_FLAGS: OUT std_logic_vector(15 downto 0) := (others => '0')
    CARRY_FLAG: OUT STD_LOGIC:= '0';
    ZERO_FLAG: OUT STD_LOGIC:= '0';
    SMALLER_ZERO_FLAG: OUT STD_LOGIC:= '0';
    BIGGER_ZERO_FLAG: OUT STD_LOGIC:= '0';
    OVERFLOW_FLAG: OUT STD_LOGIC:= '0';
    RHO_FLAG: OUT STD_LOGIC:= '0';
    NOT_ZERO_FLAG: OUT STD_LOGIC:= '0'
 );
attribute use_dsp : string;
end ALU;

architecture ALUBehavioral of ALU is
    attribute use_dsp of ALUBehavioral: architecture is "yes";
--attribute use_dsp : string;
--attribute use_dsp of P_reg : signal is "no";

constant ZERO : std_logic_vector(31 downto 0) := (others => '0');
signal D1Singend: signed(16 downto 0);
signal D2Singend: signed(16 downto 0);
signal ALU_OUT_Internal: std_logic_vector(31 downto 0);
signal left_shifted_s, right_shifted_s : std_logic_vector(16 downto 0);
--signal ALU_OUT_Shifting

begin
    
    D1Singend <=resize(signed(D1), 17);
    D2Singend <=resize(signed(D2), 17);
    

    with (D2) select left_shifted_s <=
        std_logic_vector(D1Singend(16 downto 0)) when "0000000000000000",
        std_logic_vector(D1Singend(15 downto 0)) & "0" when "0000000000000001",
        std_logic_vector(D1Singend(14 downto 0)) & "00" when "0000000000000010",
        std_logic_vector(D1Singend(13 downto 0)) & "000" when "0000000000000011",
        std_logic_vector(D1Singend(12 downto 0)) & "0000" when "0000000000000100",
        std_logic_vector(D1Singend(11 downto 0)) & "00000" when "0000000000000101",
        std_logic_vector(D1Singend(10 downto 0)) & "000000" when "0000000000000110",
        std_logic_vector(D1Singend( 9 downto 0)) & "0000000" when "0000000000000111",
        std_logic_vector(D1Singend( 8 downto 0)) & "00000000" when "0000000000001000",
        std_logic_vector(D1Singend( 7 downto 0)) & "000000000" when "0000000000001001",
        std_logic_vector(D1Singend( 6 downto 0)) & "0000000000" when "0000000000001010",
        std_logic_vector(D1Singend( 5 downto 0)) & "00000000000" when "0000000000001011",
        std_logic_vector(D1Singend( 4 downto 0)) & "000000000000" when "0000000000001100",
        std_logic_vector(D1Singend( 3 downto 0)) & "0000000000000" when "0000000000001101",
        std_logic_vector(D1Singend( 2 downto 0)) & "00000000000000" when "0000000000001110",
        std_logic_vector(D1Singend( 1 downto 0)) & "000000000000000" when "0000000000001111",
        std_logic_vector(D1Singend( 0 downto 0)) & "0000000000000000" when "0000000000010000",
        "00000000000000000" when others;

    with (D2) select right_shifted_s <=
        std_logic_vector(D1Singend(16 downto 0)) when "0000000000000000",
        "0" & std_logic_vector(D1Singend(16 downto 1)) when "0000000000000001",
        "00" & std_logic_vector(D1Singend(16 downto 2)) when "0000000000000010",
        "000" & std_logic_vector(D1Singend(16 downto 3)) when "0000000000000011",
        "0000" & std_logic_vector(D1Singend(16 downto 4)) when "0000000000000100",
        "00000" & std_logic_vector(D1Singend(16 downto 5)) when "0000000000000101",
        "000000" & std_logic_vector(D1Singend(16 downto 6)) when "0000000000000110",
        "0000000" & std_logic_vector(D1Singend(16 downto 7)) when "0000000000000111",
        "00000000" & std_logic_vector(D1Singend(16 downto 8)) when "0000000000001000",
        "000000000" & std_logic_vector(D1Singend(16 downto 9)) when "0000000000001001",
        "0000000000" & std_logic_vector(D1Singend(16 downto 10)) when "0000000000001010",
        "00000000000" & std_logic_vector(D1Singend(16 downto 11)) when "0000000000001011",
        "000000000000" & std_logic_vector(D1Singend(16 downto 12)) when "0000000000001100",
        "0000000000000" & std_logic_vector(D1Singend(16 downto 13)) when "0000000000001101",
        "00000000000000" & std_logic_vector(D1Singend(16 downto 14)) when "0000000000001110",
        "000000000000000" & std_logic_vector(D1Singend(16 downto 15)) when "0000000000001111",
        "0000000000000000" & std_logic_vector(D1Singend(16 downto 16)) when "0000000000010000",
        "00000000000000000" when others;

    with ((ALU_OPP)) select AlU_OUT_Internal <=
        "000000000000000" & std_logic_vector(D1Singend+D2Singend) when "0000", --addtion
        "000000000000000" & std_logic_vector(D1Singend-D2Singend) when "0001", -- subtraction
        "000000000000000" & left_shifted_s when "0010",
        "000000000000000" & right_shifted_s when "0011",
        "0000000000000000" & D1 when "1000", -- identity
        "0000000000000000" &(D1 AND D2) when "1001", -- and
        "0000000000000000" &(D1 OR D2) when "1010", -- or
        "0000000000000000" &(D1 XOR D2) when "1011", -- XOR
        "0000000000000000" & (not D1) when "1100", -- identity
        "0000000000000000" &(D1 NAND D2) when "1101", -- nand
        "0000000000000000" &(D1 NOR D2) when "1110", -- or
        "0000000000000000" &(D1 XNOR D2) when "1111", -- XOR
        std_logic_vector(signed(D1) * signed(D2)) when "0100",
        (others => 'X') when others;


    aluPostOp: process(ALU_OUT_Internal)
    begin
        CARRY_FLAG <= ALU_OUT_Internal(16);
         
         if ALU_OUT_Internal(15) = '1' then
         
            BIGGER_ZERO_FLAG <= '0';
            SMALLER_ZERO_FLAG <= '1';
            NOT_ZERO_FLAG <= '1';
            ZERO_FLAG <= '0';
            
         else
         
            BIGGER_ZERO_FLAG <= '1';
            SMALLER_ZERO_FLAG <= '0';
            NOT_ZERO_FLAG <= '1';
            ZERO_FLAG <= '0';
         end if;
         
         if ALU_OUT_Internal (16 downto 0) = "00000000000000000" then
            BIGGER_ZERO_FLAG <= '0';
            SMALLER_ZERO_FLAG <= '0';
            NOT_ZERO_FLAG <= '0';
            ZERO_FLAG <= '1';
        end if;
        
         
         -- ALU FLAG: overflow
         OVERFLOW_FLAG <= ((ALU_OPP(0) XOR D2(15)) XNOR D1(15)) AND (D1(15) XOR ALU_OUT_Internal(15));
         
         RHO_FLAG <= RHO_PIN;
         
         

        ALU_OUT <= ALU_OUT_Internal(15 downto 0);

    end process aluPostOp; 
end ALUBehavioral;
