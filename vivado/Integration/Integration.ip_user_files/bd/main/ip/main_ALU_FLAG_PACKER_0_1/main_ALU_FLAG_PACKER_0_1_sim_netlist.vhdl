-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Nov 14 17:58:39 2024
-- Host        : 8x8-Bit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA_CPU/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_ALU_FLAG_PACKER_0_1/main_ALU_FLAG_PACKER_0_1_sim_netlist.vhdl
-- Design      : main_ALU_FLAG_PACKER_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_ALU_FLAG_PACKER_0_1 is
  port (
    CARRY_FLAG : in STD_LOGIC;
    ZERO_FLAG : in STD_LOGIC;
    SMALLER_ZERO_FLAG : in STD_LOGIC;
    BIGGER_ZERO_FLAG : in STD_LOGIC;
    OVERFLOW_FLAG : in STD_LOGIC;
    RHO_FLAG : in STD_LOGIC;
    NOT_ZERO_FLAG : in STD_LOGIC;
    ALU_FLAGS : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_ALU_FLAG_PACKER_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_ALU_FLAG_PACKER_0_1 : entity is "main_ALU_FLAG_PACKER_0_1,ALU_FLAG_PACKER,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_ALU_FLAG_PACKER_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_ALU_FLAG_PACKER_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_ALU_FLAG_PACKER_0_1 : entity is "ALU_FLAG_PACKER,Vivado 2024.1";
end main_ALU_FLAG_PACKER_0_1;

architecture STRUCTURE of main_ALU_FLAG_PACKER_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bigger_zero_flag\ : STD_LOGIC;
  signal \^carry_flag\ : STD_LOGIC;
  signal \^not_zero_flag\ : STD_LOGIC;
  signal \^overflow_flag\ : STD_LOGIC;
  signal \^rho_flag\ : STD_LOGIC;
  signal \^smaller_zero_flag\ : STD_LOGIC;
  signal \^zero_flag\ : STD_LOGIC;
begin
  ALU_FLAGS(15) <= \<const0>\;
  ALU_FLAGS(14) <= \<const0>\;
  ALU_FLAGS(13) <= \<const0>\;
  ALU_FLAGS(12) <= \<const0>\;
  ALU_FLAGS(11) <= \<const0>\;
  ALU_FLAGS(10) <= \<const0>\;
  ALU_FLAGS(9) <= \<const0>\;
  ALU_FLAGS(8) <= \<const0>\;
  ALU_FLAGS(7) <= \<const0>\;
  ALU_FLAGS(6) <= \^not_zero_flag\;
  ALU_FLAGS(5) <= \^rho_flag\;
  ALU_FLAGS(4) <= \^overflow_flag\;
  ALU_FLAGS(3) <= \^bigger_zero_flag\;
  ALU_FLAGS(2) <= \^smaller_zero_flag\;
  ALU_FLAGS(1) <= \^zero_flag\;
  ALU_FLAGS(0) <= \^carry_flag\;
  \^bigger_zero_flag\ <= BIGGER_ZERO_FLAG;
  \^carry_flag\ <= CARRY_FLAG;
  \^not_zero_flag\ <= NOT_ZERO_FLAG;
  \^overflow_flag\ <= OVERFLOW_FLAG;
  \^rho_flag\ <= RHO_FLAG;
  \^smaller_zero_flag\ <= SMALLER_ZERO_FLAG;
  \^zero_flag\ <= ZERO_FLAG;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
