-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Nov 14 17:52:17 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_RAM_Placeholder_0_0/main_RAM_Placeholder_0_0_sim_netlist.vhdl
-- Design      : main_RAM_Placeholder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_RAM_Placeholder_0_0_RAM_Placeholder is
  port (
    DataOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    DataIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WE : in STD_LOGIC;
    Address : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_RAM_Placeholder_0_0_RAM_Placeholder : entity is "RAM_Placeholder";
end main_RAM_Placeholder_0_0_RAM_Placeholder;

architecture STRUCTURE of main_RAM_Placeholder_0_0_RAM_Placeholder is
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_0_0 : label is 4096;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_0_0 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_0_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of s_memContents_reg_0_255_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of s_memContents_reg_0_255_0_0 : label is 255;
  attribute ram_offset : integer;
  attribute ram_offset of s_memContents_reg_0_255_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of s_memContents_reg_0_255_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of s_memContents_reg_0_255_0_0 : label is 0;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_10_10 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_10_10 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_10_10 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_10_10 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_10_10 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_10_10 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_10_10 : label is 10;
  attribute ram_slice_end of s_memContents_reg_0_255_10_10 : label is 10;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_11_11 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_11_11 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_11_11 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_11_11 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_11_11 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_11_11 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_11_11 : label is 11;
  attribute ram_slice_end of s_memContents_reg_0_255_11_11 : label is 11;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_12_12 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_12_12 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_12_12 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_12_12 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_12_12 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_12_12 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_12_12 : label is 12;
  attribute ram_slice_end of s_memContents_reg_0_255_12_12 : label is 12;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_13_13 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_13_13 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_13_13 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_13_13 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_13_13 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_13_13 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_13_13 : label is 13;
  attribute ram_slice_end of s_memContents_reg_0_255_13_13 : label is 13;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_14_14 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_14_14 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_14_14 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_14_14 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_14_14 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_14_14 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_14_14 : label is 14;
  attribute ram_slice_end of s_memContents_reg_0_255_14_14 : label is 14;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_15_15 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_15_15 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_15_15 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_15_15 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_15_15 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_15_15 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_15_15 : label is 15;
  attribute ram_slice_end of s_memContents_reg_0_255_15_15 : label is 15;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_1_1 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_1_1 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_1_1 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_1_1 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_1_1 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_1_1 : label is 1;
  attribute ram_slice_end of s_memContents_reg_0_255_1_1 : label is 1;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_2_2 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_2_2 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_2_2 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_2_2 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_2_2 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_2_2 : label is 2;
  attribute ram_slice_end of s_memContents_reg_0_255_2_2 : label is 2;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_3_3 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_3_3 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_3_3 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_3_3 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_3_3 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_3_3 : label is 3;
  attribute ram_slice_end of s_memContents_reg_0_255_3_3 : label is 3;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_4_4 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_4_4 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_4_4 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_4_4 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_4_4 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_4_4 : label is 4;
  attribute ram_slice_end of s_memContents_reg_0_255_4_4 : label is 4;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_5_5 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_5_5 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_5_5 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_5_5 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_5_5 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_5_5 : label is 5;
  attribute ram_slice_end of s_memContents_reg_0_255_5_5 : label is 5;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_6_6 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_6_6 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_6_6 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_6_6 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_6_6 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_6_6 : label is 6;
  attribute ram_slice_end of s_memContents_reg_0_255_6_6 : label is 6;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_7_7 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_7_7 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_7_7 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_7_7 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_7_7 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_7_7 : label is 7;
  attribute ram_slice_end of s_memContents_reg_0_255_7_7 : label is 7;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_8_8 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_8_8 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_8_8 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_8_8 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_8_8 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_8_8 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_8_8 : label is 8;
  attribute ram_slice_end of s_memContents_reg_0_255_8_8 : label is 8;
  attribute RTL_RAM_BITS of s_memContents_reg_0_255_9_9 : label is 4096;
  attribute RTL_RAM_NAME of s_memContents_reg_0_255_9_9 : label is "U0/s_memContents_reg";
  attribute RTL_RAM_TYPE of s_memContents_reg_0_255_9_9 : label is "RAM_SP";
  attribute ram_addr_begin of s_memContents_reg_0_255_9_9 : label is 0;
  attribute ram_addr_end of s_memContents_reg_0_255_9_9 : label is 255;
  attribute ram_offset of s_memContents_reg_0_255_9_9 : label is 0;
  attribute ram_slice_begin of s_memContents_reg_0_255_9_9 : label is 9;
  attribute ram_slice_end of s_memContents_reg_0_255_9_9 : label is 9;
begin
s_memContents_reg_0_255_0_0: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(0),
      O => DataOut(0),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_10_10: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(10),
      O => DataOut(10),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_11_11: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(11),
      O => DataOut(11),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_12_12: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(12),
      O => DataOut(12),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_13_13: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(13),
      O => DataOut(13),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_14_14: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(14),
      O => DataOut(14),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_15_15: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(15),
      O => DataOut(15),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_1_1: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(1),
      O => DataOut(1),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_2_2: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(2),
      O => DataOut(2),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_3_3: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(3),
      O => DataOut(3),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_4_4: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(4),
      O => DataOut(4),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_5_5: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(5),
      O => DataOut(5),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_6_6: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(6),
      O => DataOut(6),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_7_7: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(7),
      O => DataOut(7),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_8_8: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(8),
      O => DataOut(8),
      WCLK => CLK,
      WE => WE
    );
s_memContents_reg_0_255_9_9: unisim.vcomponents.RAM256X1S
     port map (
      A(7 downto 0) => Address(7 downto 0),
      D => DataIn(9),
      O => DataOut(9),
      WCLK => CLK,
      WE => WE
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_RAM_Placeholder_0_0 is
  port (
    Address : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DataIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WE : in STD_LOGIC;
    OE : in STD_LOGIC;
    CLK : in STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_RAM_Placeholder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_RAM_Placeholder_0_0 : entity is "main_RAM_Placeholder_0_0,RAM_Placeholder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_RAM_Placeholder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_RAM_Placeholder_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_RAM_Placeholder_0_0 : entity is "RAM_Placeholder,Vivado 2024.1";
end main_RAM_Placeholder_0_0;

architecture STRUCTURE of main_RAM_Placeholder_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
U0: entity work.main_RAM_Placeholder_0_0_RAM_Placeholder
     port map (
      Address(7 downto 0) => Address(7 downto 0),
      CLK => CLK,
      DataIn(15 downto 0) => DataIn(15 downto 0),
      DataOut(15 downto 0) => DataOut(15 downto 0),
      WE => WE
    );
end STRUCTURE;
