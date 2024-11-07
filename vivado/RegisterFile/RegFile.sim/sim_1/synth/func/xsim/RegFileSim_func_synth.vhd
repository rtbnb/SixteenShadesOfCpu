-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Nov  7 09:05:43 2024
-- Host        : BOOK-69BD3QPCMV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Development/SixteenShadesOfCpu/vivado/RegisterFile/RegFile.sim/sim_1/synth/func/xsim/RegFileSim_func_synth.vhd
-- Design      : RegFile
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RegFile is
  port (
    AddrReg1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AddrReg2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AddrWriteReg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WriteData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Flags : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WE : in STD_LOGIC;
    OverwriteFl : in STD_LOGIC;
    RHOPin : in STD_LOGIC;
    clk : in STD_LOGIC;
    Reg1_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Reg2_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RegMA_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BankID : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RegFile : entity is true;
end RegFile;

architecture STRUCTURE of RegFile is
  signal AddrReg1_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal AddrReg2_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal AddrWriteReg_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BankID_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Flags_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal OverwriteFl_IBUF : STD_LOGIC;
  signal RHOPin_IBUF : STD_LOGIC;
  signal Reg0 : STD_LOGIC;
  signal \Reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \Reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \Reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \Reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \Reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \Reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \Reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \Reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \Reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \Reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \Reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \Reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \Reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \Reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \Reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \Reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal Reg1 : STD_LOGIC;
  signal Reg1_data_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Reg1_data_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[0]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[0]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[10]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[10]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[10]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[10]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[10]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[10]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[11]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[11]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[11]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[11]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[11]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[12]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[12]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[12]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[12]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[12]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[12]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[13]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[13]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[13]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[13]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[13]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[13]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[14]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[14]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[14]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[14]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[14]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[14]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[15]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[15]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[15]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[15]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[15]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[1]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[1]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[2]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[2]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[4]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[4]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[5]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[5]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[7]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[8]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[8]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[8]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[8]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[8]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[8]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[9]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[9]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[9]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[9]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[9]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg1_data_OBUF[9]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \Reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal Reg2 : STD_LOGIC;
  signal Reg2_data_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Reg2_data_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[0]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[0]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[10]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[10]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[10]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[10]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[10]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[10]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[11]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[11]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[11]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[11]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[11]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[12]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[12]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[12]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[12]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[12]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[12]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[13]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[13]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[13]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[13]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[13]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[13]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[14]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[14]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[14]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[14]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[14]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[14]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[15]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[15]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[15]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[15]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[15]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[1]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[1]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[2]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[2]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[4]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[4]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[5]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[5]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[7]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[8]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[8]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[8]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[8]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[8]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[8]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[9]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[9]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[9]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[9]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[9]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Reg2_data_OBUF[9]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[12]\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[13]\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[14]\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[15]\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \Reg2_reg_n_0_[9]\ : STD_LOGIC;
  signal Reg3 : STD_LOGIC;
  signal \Reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \Reg3_reg_n_0_[10]\ : STD_LOGIC;
  signal \Reg3_reg_n_0_[11]\ : STD_LOGIC;
  signal \Reg3_reg_n_0_[12]\ : STD_LOGIC;
  signal \Reg3_reg_n_0_[13]\ : STD_LOGIC;
  signal \Reg3_reg_n_0_[14]\ : STD_LOGIC;
  signal \Reg3_reg_n_0_[15]\ : STD_LOGIC;
  signal \Reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \Reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \Reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \Reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \Reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \Reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \Reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \Reg3_reg_n_0_[8]\ : STD_LOGIC;
  signal \Reg3_reg_n_0_[9]\ : STD_LOGIC;
  signal Reg4 : STD_LOGIC;
  signal \Reg4_reg_n_0_[0]\ : STD_LOGIC;
  signal \Reg4_reg_n_0_[10]\ : STD_LOGIC;
  signal \Reg4_reg_n_0_[11]\ : STD_LOGIC;
  signal \Reg4_reg_n_0_[12]\ : STD_LOGIC;
  signal \Reg4_reg_n_0_[13]\ : STD_LOGIC;
  signal \Reg4_reg_n_0_[14]\ : STD_LOGIC;
  signal \Reg4_reg_n_0_[15]\ : STD_LOGIC;
  signal \Reg4_reg_n_0_[1]\ : STD_LOGIC;
  signal \Reg4_reg_n_0_[2]\ : STD_LOGIC;
  signal \Reg4_reg_n_0_[3]\ : STD_LOGIC;
  signal \Reg4_reg_n_0_[4]\ : STD_LOGIC;
  signal \Reg4_reg_n_0_[5]\ : STD_LOGIC;
  signal \Reg4_reg_n_0_[6]\ : STD_LOGIC;
  signal \Reg4_reg_n_0_[7]\ : STD_LOGIC;
  signal \Reg4_reg_n_0_[8]\ : STD_LOGIC;
  signal \Reg4_reg_n_0_[9]\ : STD_LOGIC;
  signal Reg5 : STD_LOGIC;
  signal \Reg5_reg_n_0_[0]\ : STD_LOGIC;
  signal \Reg5_reg_n_0_[10]\ : STD_LOGIC;
  signal \Reg5_reg_n_0_[11]\ : STD_LOGIC;
  signal \Reg5_reg_n_0_[12]\ : STD_LOGIC;
  signal \Reg5_reg_n_0_[13]\ : STD_LOGIC;
  signal \Reg5_reg_n_0_[14]\ : STD_LOGIC;
  signal \Reg5_reg_n_0_[15]\ : STD_LOGIC;
  signal \Reg5_reg_n_0_[1]\ : STD_LOGIC;
  signal \Reg5_reg_n_0_[2]\ : STD_LOGIC;
  signal \Reg5_reg_n_0_[3]\ : STD_LOGIC;
  signal \Reg5_reg_n_0_[4]\ : STD_LOGIC;
  signal \Reg5_reg_n_0_[5]\ : STD_LOGIC;
  signal \Reg5_reg_n_0_[6]\ : STD_LOGIC;
  signal \Reg5_reg_n_0_[7]\ : STD_LOGIC;
  signal \Reg5_reg_n_0_[8]\ : STD_LOGIC;
  signal \Reg5_reg_n_0_[9]\ : STD_LOGIC;
  signal Reg6 : STD_LOGIC;
  signal \Reg6_reg_n_0_[0]\ : STD_LOGIC;
  signal \Reg6_reg_n_0_[10]\ : STD_LOGIC;
  signal \Reg6_reg_n_0_[11]\ : STD_LOGIC;
  signal \Reg6_reg_n_0_[12]\ : STD_LOGIC;
  signal \Reg6_reg_n_0_[13]\ : STD_LOGIC;
  signal \Reg6_reg_n_0_[14]\ : STD_LOGIC;
  signal \Reg6_reg_n_0_[15]\ : STD_LOGIC;
  signal \Reg6_reg_n_0_[1]\ : STD_LOGIC;
  signal \Reg6_reg_n_0_[2]\ : STD_LOGIC;
  signal \Reg6_reg_n_0_[3]\ : STD_LOGIC;
  signal \Reg6_reg_n_0_[4]\ : STD_LOGIC;
  signal \Reg6_reg_n_0_[5]\ : STD_LOGIC;
  signal \Reg6_reg_n_0_[6]\ : STD_LOGIC;
  signal \Reg6_reg_n_0_[7]\ : STD_LOGIC;
  signal \Reg6_reg_n_0_[8]\ : STD_LOGIC;
  signal \Reg6_reg_n_0_[9]\ : STD_LOGIC;
  signal Reg7 : STD_LOGIC;
  signal \Reg7_reg_n_0_[0]\ : STD_LOGIC;
  signal \Reg7_reg_n_0_[10]\ : STD_LOGIC;
  signal \Reg7_reg_n_0_[11]\ : STD_LOGIC;
  signal \Reg7_reg_n_0_[12]\ : STD_LOGIC;
  signal \Reg7_reg_n_0_[13]\ : STD_LOGIC;
  signal \Reg7_reg_n_0_[14]\ : STD_LOGIC;
  signal \Reg7_reg_n_0_[15]\ : STD_LOGIC;
  signal \Reg7_reg_n_0_[1]\ : STD_LOGIC;
  signal \Reg7_reg_n_0_[2]\ : STD_LOGIC;
  signal \Reg7_reg_n_0_[3]\ : STD_LOGIC;
  signal \Reg7_reg_n_0_[4]\ : STD_LOGIC;
  signal \Reg7_reg_n_0_[5]\ : STD_LOGIC;
  signal \Reg7_reg_n_0_[6]\ : STD_LOGIC;
  signal \Reg7_reg_n_0_[7]\ : STD_LOGIC;
  signal \Reg7_reg_n_0_[8]\ : STD_LOGIC;
  signal \Reg7_reg_n_0_[9]\ : STD_LOGIC;
  signal Reg8 : STD_LOGIC;
  signal \Reg8_reg_n_0_[0]\ : STD_LOGIC;
  signal \Reg8_reg_n_0_[10]\ : STD_LOGIC;
  signal \Reg8_reg_n_0_[11]\ : STD_LOGIC;
  signal \Reg8_reg_n_0_[12]\ : STD_LOGIC;
  signal \Reg8_reg_n_0_[13]\ : STD_LOGIC;
  signal \Reg8_reg_n_0_[14]\ : STD_LOGIC;
  signal \Reg8_reg_n_0_[15]\ : STD_LOGIC;
  signal \Reg8_reg_n_0_[1]\ : STD_LOGIC;
  signal \Reg8_reg_n_0_[2]\ : STD_LOGIC;
  signal \Reg8_reg_n_0_[3]\ : STD_LOGIC;
  signal \Reg8_reg_n_0_[4]\ : STD_LOGIC;
  signal \Reg8_reg_n_0_[5]\ : STD_LOGIC;
  signal \Reg8_reg_n_0_[6]\ : STD_LOGIC;
  signal \Reg8_reg_n_0_[7]\ : STD_LOGIC;
  signal \Reg8_reg_n_0_[8]\ : STD_LOGIC;
  signal \Reg8_reg_n_0_[9]\ : STD_LOGIC;
  signal Reg9 : STD_LOGIC;
  signal \Reg9_reg_n_0_[0]\ : STD_LOGIC;
  signal \Reg9_reg_n_0_[10]\ : STD_LOGIC;
  signal \Reg9_reg_n_0_[11]\ : STD_LOGIC;
  signal \Reg9_reg_n_0_[12]\ : STD_LOGIC;
  signal \Reg9_reg_n_0_[13]\ : STD_LOGIC;
  signal \Reg9_reg_n_0_[14]\ : STD_LOGIC;
  signal \Reg9_reg_n_0_[15]\ : STD_LOGIC;
  signal \Reg9_reg_n_0_[1]\ : STD_LOGIC;
  signal \Reg9_reg_n_0_[2]\ : STD_LOGIC;
  signal \Reg9_reg_n_0_[3]\ : STD_LOGIC;
  signal \Reg9_reg_n_0_[4]\ : STD_LOGIC;
  signal \Reg9_reg_n_0_[5]\ : STD_LOGIC;
  signal \Reg9_reg_n_0_[6]\ : STD_LOGIC;
  signal \Reg9_reg_n_0_[7]\ : STD_LOGIC;
  signal \Reg9_reg_n_0_[8]\ : STD_LOGIC;
  signal \Reg9_reg_n_0_[9]\ : STD_LOGIC;
  signal RegA : STD_LOGIC;
  signal RegB : STD_LOGIC;
  signal \RegB_reg_n_0_[10]\ : STD_LOGIC;
  signal \RegB_reg_n_0_[11]\ : STD_LOGIC;
  signal \RegB_reg_n_0_[12]\ : STD_LOGIC;
  signal \RegB_reg_n_0_[13]\ : STD_LOGIC;
  signal \RegB_reg_n_0_[14]\ : STD_LOGIC;
  signal \RegB_reg_n_0_[15]\ : STD_LOGIC;
  signal \RegB_reg_n_0_[4]\ : STD_LOGIC;
  signal \RegB_reg_n_0_[5]\ : STD_LOGIC;
  signal \RegB_reg_n_0_[6]\ : STD_LOGIC;
  signal \RegB_reg_n_0_[7]\ : STD_LOGIC;
  signal \RegB_reg_n_0_[8]\ : STD_LOGIC;
  signal \RegB_reg_n_0_[9]\ : STD_LOGIC;
  signal RegC : STD_LOGIC;
  signal \RegC_reg_n_0_[0]\ : STD_LOGIC;
  signal \RegC_reg_n_0_[10]\ : STD_LOGIC;
  signal \RegC_reg_n_0_[11]\ : STD_LOGIC;
  signal \RegC_reg_n_0_[12]\ : STD_LOGIC;
  signal \RegC_reg_n_0_[13]\ : STD_LOGIC;
  signal \RegC_reg_n_0_[14]\ : STD_LOGIC;
  signal \RegC_reg_n_0_[15]\ : STD_LOGIC;
  signal \RegC_reg_n_0_[1]\ : STD_LOGIC;
  signal \RegC_reg_n_0_[2]\ : STD_LOGIC;
  signal \RegC_reg_n_0_[3]\ : STD_LOGIC;
  signal \RegC_reg_n_0_[4]\ : STD_LOGIC;
  signal \RegC_reg_n_0_[5]\ : STD_LOGIC;
  signal \RegC_reg_n_0_[6]\ : STD_LOGIC;
  signal \RegC_reg_n_0_[7]\ : STD_LOGIC;
  signal \RegC_reg_n_0_[8]\ : STD_LOGIC;
  signal \RegC_reg_n_0_[9]\ : STD_LOGIC;
  signal RegD : STD_LOGIC;
  signal \RegD_reg_n_0_[0]\ : STD_LOGIC;
  signal \RegD_reg_n_0_[10]\ : STD_LOGIC;
  signal \RegD_reg_n_0_[11]\ : STD_LOGIC;
  signal \RegD_reg_n_0_[12]\ : STD_LOGIC;
  signal \RegD_reg_n_0_[13]\ : STD_LOGIC;
  signal \RegD_reg_n_0_[14]\ : STD_LOGIC;
  signal \RegD_reg_n_0_[15]\ : STD_LOGIC;
  signal \RegD_reg_n_0_[1]\ : STD_LOGIC;
  signal \RegD_reg_n_0_[2]\ : STD_LOGIC;
  signal \RegD_reg_n_0_[3]\ : STD_LOGIC;
  signal \RegD_reg_n_0_[4]\ : STD_LOGIC;
  signal \RegD_reg_n_0_[5]\ : STD_LOGIC;
  signal \RegD_reg_n_0_[6]\ : STD_LOGIC;
  signal \RegD_reg_n_0_[7]\ : STD_LOGIC;
  signal \RegD_reg_n_0_[8]\ : STD_LOGIC;
  signal \RegD_reg_n_0_[9]\ : STD_LOGIC;
  signal RegE : STD_LOGIC;
  signal \RegE_reg_n_0_[0]\ : STD_LOGIC;
  signal \RegE_reg_n_0_[10]\ : STD_LOGIC;
  signal \RegE_reg_n_0_[11]\ : STD_LOGIC;
  signal \RegE_reg_n_0_[12]\ : STD_LOGIC;
  signal \RegE_reg_n_0_[13]\ : STD_LOGIC;
  signal \RegE_reg_n_0_[14]\ : STD_LOGIC;
  signal \RegE_reg_n_0_[15]\ : STD_LOGIC;
  signal \RegE_reg_n_0_[1]\ : STD_LOGIC;
  signal \RegE_reg_n_0_[2]\ : STD_LOGIC;
  signal \RegE_reg_n_0_[3]\ : STD_LOGIC;
  signal \RegE_reg_n_0_[4]\ : STD_LOGIC;
  signal \RegE_reg_n_0_[5]\ : STD_LOGIC;
  signal \RegE_reg_n_0_[6]\ : STD_LOGIC;
  signal \RegE_reg_n_0_[7]\ : STD_LOGIC;
  signal \RegE_reg_n_0_[8]\ : STD_LOGIC;
  signal \RegE_reg_n_0_[9]\ : STD_LOGIC;
  signal RegF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \RegF[0]_i_1_n_0\ : STD_LOGIC;
  signal \RegF[10]_i_1_n_0\ : STD_LOGIC;
  signal \RegF[11]_i_1_n_0\ : STD_LOGIC;
  signal \RegF[12]_i_1_n_0\ : STD_LOGIC;
  signal \RegF[13]_i_1_n_0\ : STD_LOGIC;
  signal \RegF[14]_i_1_n_0\ : STD_LOGIC;
  signal \RegF[15]_i_1_n_0\ : STD_LOGIC;
  signal \RegF[15]_i_2_n_0\ : STD_LOGIC;
  signal \RegF[15]_i_3_n_0\ : STD_LOGIC;
  signal \RegF[1]_i_1_n_0\ : STD_LOGIC;
  signal \RegF[2]_i_1_n_0\ : STD_LOGIC;
  signal \RegF[3]_i_1_n_0\ : STD_LOGIC;
  signal \RegF[4]_i_1_n_0\ : STD_LOGIC;
  signal \RegF[5]_i_1_n_0\ : STD_LOGIC;
  signal \RegF[6]_i_1_n_0\ : STD_LOGIC;
  signal \RegF[7]_i_1_n_0\ : STD_LOGIC;
  signal \RegF[8]_i_1_n_0\ : STD_LOGIC;
  signal \RegF[9]_i_1_n_0\ : STD_LOGIC;
  signal RegMA_data_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal WE_IBUF : STD_LOGIC;
  signal WriteData_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RegF[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \RegF[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \RegF[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \RegF[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \RegF[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \RegF[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \RegF[15]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \RegF[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \RegF[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \RegF[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \RegF[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \RegF[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \RegF[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \RegF[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \RegF[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \RegF[9]_i_1\ : label is "soft_lutpair4";
begin
\AddrReg1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AddrReg1(0),
      O => AddrReg1_IBUF(0)
    );
\AddrReg1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AddrReg1(1),
      O => AddrReg1_IBUF(1)
    );
\AddrReg1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AddrReg1(2),
      O => AddrReg1_IBUF(2)
    );
\AddrReg1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AddrReg1(3),
      O => AddrReg1_IBUF(3)
    );
\AddrReg2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AddrReg2(0),
      O => AddrReg2_IBUF(0)
    );
\AddrReg2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AddrReg2(1),
      O => AddrReg2_IBUF(1)
    );
\AddrReg2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AddrReg2(2),
      O => AddrReg2_IBUF(2)
    );
\AddrReg2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AddrReg2(3),
      O => AddrReg2_IBUF(3)
    );
\AddrWriteReg_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AddrWriteReg(0),
      O => AddrWriteReg_IBUF(0)
    );
\AddrWriteReg_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AddrWriteReg(1),
      O => AddrWriteReg_IBUF(1)
    );
\AddrWriteReg_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AddrWriteReg(2),
      O => AddrWriteReg_IBUF(2)
    );
\AddrWriteReg_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => AddrWriteReg(3),
      O => AddrWriteReg_IBUF(3)
    );
\BankID_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => BankID_OBUF(0),
      O => BankID(0)
    );
\BankID_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => BankID_OBUF(1),
      O => BankID(1)
    );
\BankID_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => BankID_OBUF(2),
      O => BankID(2)
    );
\BankID_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => BankID_OBUF(3),
      O => BankID(3)
    );
\Flags_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(0),
      O => Flags_IBUF(0)
    );
\Flags_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(10),
      O => Flags_IBUF(10)
    );
\Flags_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(11),
      O => Flags_IBUF(11)
    );
\Flags_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(12),
      O => Flags_IBUF(12)
    );
\Flags_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(13),
      O => Flags_IBUF(13)
    );
\Flags_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(14),
      O => Flags_IBUF(14)
    );
\Flags_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(15),
      O => Flags_IBUF(15)
    );
\Flags_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(1),
      O => Flags_IBUF(1)
    );
\Flags_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(2),
      O => Flags_IBUF(2)
    );
\Flags_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(3),
      O => Flags_IBUF(3)
    );
\Flags_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(4),
      O => Flags_IBUF(4)
    );
\Flags_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(5),
      O => Flags_IBUF(5)
    );
\Flags_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(6),
      O => Flags_IBUF(6)
    );
\Flags_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(7),
      O => Flags_IBUF(7)
    );
\Flags_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(8),
      O => Flags_IBUF(8)
    );
\Flags_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Flags(9),
      O => Flags_IBUF(9)
    );
OverwriteFl_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => OverwriteFl,
      O => OverwriteFl_IBUF
    );
RHOPin_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RHOPin,
      O => RHOPin_IBUF
    );
\Reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => AddrWriteReg_IBUF(2),
      I1 => WE_IBUF,
      I2 => AddrWriteReg_IBUF(3),
      I3 => AddrWriteReg_IBUF(1),
      I4 => AddrWriteReg_IBUF(0),
      O => Reg0
    );
\Reg0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(0),
      Q => \Reg0_reg_n_0_[0]\,
      R => '0'
    );
\Reg0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(10),
      Q => \Reg0_reg_n_0_[10]\,
      R => '0'
    );
\Reg0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(11),
      Q => \Reg0_reg_n_0_[11]\,
      R => '0'
    );
\Reg0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(12),
      Q => \Reg0_reg_n_0_[12]\,
      R => '0'
    );
\Reg0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(13),
      Q => \Reg0_reg_n_0_[13]\,
      R => '0'
    );
\Reg0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(14),
      Q => \Reg0_reg_n_0_[14]\,
      R => '0'
    );
\Reg0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(15),
      Q => \Reg0_reg_n_0_[15]\,
      R => '0'
    );
\Reg0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(1),
      Q => \Reg0_reg_n_0_[1]\,
      R => '0'
    );
\Reg0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(2),
      Q => \Reg0_reg_n_0_[2]\,
      R => '0'
    );
\Reg0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(3),
      Q => \Reg0_reg_n_0_[3]\,
      R => '0'
    );
\Reg0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(4),
      Q => \Reg0_reg_n_0_[4]\,
      R => '0'
    );
\Reg0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(5),
      Q => \Reg0_reg_n_0_[5]\,
      R => '0'
    );
\Reg0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(6),
      Q => \Reg0_reg_n_0_[6]\,
      R => '0'
    );
\Reg0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(7),
      Q => \Reg0_reg_n_0_[7]\,
      R => '0'
    );
\Reg0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(8),
      Q => \Reg0_reg_n_0_[8]\,
      R => '0'
    );
\Reg0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg0,
      D => WriteData_IBUF(9),
      Q => \Reg0_reg_n_0_[9]\,
      R => '0'
    );
\Reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => AddrWriteReg_IBUF(2),
      I1 => AddrWriteReg_IBUF(1),
      I2 => AddrWriteReg_IBUF(0),
      I3 => WE_IBUF,
      I4 => AddrWriteReg_IBUF(3),
      O => Reg1
    );
\Reg1_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(0),
      O => Reg1_data(0)
    );
\Reg1_data_OBUF[0]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[0]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[0]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(0),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[0]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[0]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[0]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[0]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[0]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[0]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[0]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[0]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[0]\,
      I1 => \Reg2_reg_n_0_[0]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[0]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[0]\,
      O => \Reg1_data_OBUF[0]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[0]\,
      I1 => \Reg6_reg_n_0_[0]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[0]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[0]\,
      O => \Reg1_data_OBUF[0]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[0]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => BankID_OBUF(0),
      I1 => RegMA_data_OBUF(0),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[0]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[0]\,
      O => \Reg1_data_OBUF[0]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(0),
      I1 => \RegE_reg_n_0_[0]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[0]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[0]\,
      O => \Reg1_data_OBUF[0]_inst_i_7_n_0\
    );
\Reg1_data_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(10),
      O => Reg1_data(10)
    );
\Reg1_data_OBUF[10]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[10]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[10]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(10),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[10]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[10]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[10]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[10]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[10]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[10]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[10]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[10]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[10]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[10]\,
      I1 => \Reg2_reg_n_0_[10]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[10]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[10]\,
      O => \Reg1_data_OBUF[10]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[10]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[10]\,
      I1 => \Reg6_reg_n_0_[10]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[10]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[10]\,
      O => \Reg1_data_OBUF[10]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[10]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[10]\,
      I1 => RegMA_data_OBUF(10),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[10]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[10]\,
      O => \Reg1_data_OBUF[10]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[10]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(10),
      I1 => \RegE_reg_n_0_[10]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[10]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[10]\,
      O => \Reg1_data_OBUF[10]_inst_i_7_n_0\
    );
\Reg1_data_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(11),
      O => Reg1_data(11)
    );
\Reg1_data_OBUF[11]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[11]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[11]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(11),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[11]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[11]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[11]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[11]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[11]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[11]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[11]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[11]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[11]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[11]\,
      I1 => \Reg2_reg_n_0_[11]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[11]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[11]\,
      O => \Reg1_data_OBUF[11]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[11]\,
      I1 => \Reg6_reg_n_0_[11]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[11]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[11]\,
      O => \Reg1_data_OBUF[11]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[11]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[11]\,
      I1 => RegMA_data_OBUF(11),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[11]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[11]\,
      O => \Reg1_data_OBUF[11]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[11]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(11),
      I1 => \RegE_reg_n_0_[11]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[11]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[11]\,
      O => \Reg1_data_OBUF[11]_inst_i_7_n_0\
    );
\Reg1_data_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(12),
      O => Reg1_data(12)
    );
\Reg1_data_OBUF[12]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[12]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[12]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(12),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[12]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[12]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[12]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[12]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[12]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[12]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[12]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[12]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[12]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[12]\,
      I1 => \Reg2_reg_n_0_[12]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[12]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[12]\,
      O => \Reg1_data_OBUF[12]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[12]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[12]\,
      I1 => \Reg6_reg_n_0_[12]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[12]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[12]\,
      O => \Reg1_data_OBUF[12]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[12]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[12]\,
      I1 => RegMA_data_OBUF(12),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[12]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[12]\,
      O => \Reg1_data_OBUF[12]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[12]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(12),
      I1 => \RegE_reg_n_0_[12]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[12]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[12]\,
      O => \Reg1_data_OBUF[12]_inst_i_7_n_0\
    );
\Reg1_data_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(13),
      O => Reg1_data(13)
    );
\Reg1_data_OBUF[13]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[13]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[13]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(13),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[13]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[13]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[13]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[13]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[13]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[13]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[13]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[13]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[13]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[13]\,
      I1 => \Reg2_reg_n_0_[13]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[13]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[13]\,
      O => \Reg1_data_OBUF[13]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[13]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[13]\,
      I1 => \Reg6_reg_n_0_[13]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[13]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[13]\,
      O => \Reg1_data_OBUF[13]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[13]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[13]\,
      I1 => RegMA_data_OBUF(13),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[13]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[13]\,
      O => \Reg1_data_OBUF[13]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[13]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(13),
      I1 => \RegE_reg_n_0_[13]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[13]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[13]\,
      O => \Reg1_data_OBUF[13]_inst_i_7_n_0\
    );
\Reg1_data_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(14),
      O => Reg1_data(14)
    );
\Reg1_data_OBUF[14]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[14]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[14]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(14),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[14]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[14]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[14]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[14]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[14]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[14]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[14]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[14]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[14]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[14]\,
      I1 => \Reg2_reg_n_0_[14]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[14]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[14]\,
      O => \Reg1_data_OBUF[14]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[14]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[14]\,
      I1 => \Reg6_reg_n_0_[14]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[14]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[14]\,
      O => \Reg1_data_OBUF[14]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[14]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[14]\,
      I1 => RegMA_data_OBUF(14),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[14]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[14]\,
      O => \Reg1_data_OBUF[14]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(14),
      I1 => \RegE_reg_n_0_[14]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[14]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[14]\,
      O => \Reg1_data_OBUF[14]_inst_i_7_n_0\
    );
\Reg1_data_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(15),
      O => Reg1_data(15)
    );
\Reg1_data_OBUF[15]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[15]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[15]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(15),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[15]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[15]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[15]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[15]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[15]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[15]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[15]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[15]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[15]\,
      I1 => \Reg2_reg_n_0_[15]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[15]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[15]\,
      O => \Reg1_data_OBUF[15]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[15]\,
      I1 => \Reg6_reg_n_0_[15]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[15]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[15]\,
      O => \Reg1_data_OBUF[15]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[15]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[15]\,
      I1 => RegMA_data_OBUF(15),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[15]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[15]\,
      O => \Reg1_data_OBUF[15]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[15]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(15),
      I1 => \RegE_reg_n_0_[15]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[15]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[15]\,
      O => \Reg1_data_OBUF[15]_inst_i_7_n_0\
    );
\Reg1_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(1),
      O => Reg1_data(1)
    );
\Reg1_data_OBUF[1]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[1]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[1]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(1),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[1]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[1]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[1]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[1]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[1]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[1]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[1]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[1]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[1]\,
      I1 => \Reg2_reg_n_0_[1]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[1]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[1]\,
      O => \Reg1_data_OBUF[1]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[1]\,
      I1 => \Reg6_reg_n_0_[1]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[1]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[1]\,
      O => \Reg1_data_OBUF[1]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => BankID_OBUF(1),
      I1 => RegMA_data_OBUF(1),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[1]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[1]\,
      O => \Reg1_data_OBUF[1]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(1),
      I1 => \RegE_reg_n_0_[1]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[1]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[1]\,
      O => \Reg1_data_OBUF[1]_inst_i_7_n_0\
    );
\Reg1_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(2),
      O => Reg1_data(2)
    );
\Reg1_data_OBUF[2]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[2]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[2]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(2),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[2]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[2]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[2]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[2]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[2]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[2]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[2]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[2]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[2]\,
      I1 => \Reg2_reg_n_0_[2]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[2]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[2]\,
      O => \Reg1_data_OBUF[2]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[2]\,
      I1 => \Reg6_reg_n_0_[2]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[2]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[2]\,
      O => \Reg1_data_OBUF[2]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => BankID_OBUF(2),
      I1 => RegMA_data_OBUF(2),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[2]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[2]\,
      O => \Reg1_data_OBUF[2]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(2),
      I1 => \RegE_reg_n_0_[2]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[2]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[2]\,
      O => \Reg1_data_OBUF[2]_inst_i_7_n_0\
    );
\Reg1_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(3),
      O => Reg1_data(3)
    );
\Reg1_data_OBUF[3]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[3]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[3]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(3),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[3]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[3]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[3]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[3]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[3]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[3]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[3]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[3]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[3]\,
      I1 => \Reg2_reg_n_0_[3]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[3]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[3]\,
      O => \Reg1_data_OBUF[3]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[3]\,
      I1 => \Reg6_reg_n_0_[3]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[3]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[3]\,
      O => \Reg1_data_OBUF[3]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => BankID_OBUF(3),
      I1 => RegMA_data_OBUF(3),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[3]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[3]\,
      O => \Reg1_data_OBUF[3]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(3),
      I1 => \RegE_reg_n_0_[3]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[3]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[3]\,
      O => \Reg1_data_OBUF[3]_inst_i_7_n_0\
    );
\Reg1_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(4),
      O => Reg1_data(4)
    );
\Reg1_data_OBUF[4]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[4]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[4]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(4),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[4]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[4]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[4]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[4]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[4]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[4]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[4]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[4]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[4]\,
      I1 => \Reg2_reg_n_0_[4]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[4]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[4]\,
      O => \Reg1_data_OBUF[4]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[4]\,
      I1 => \Reg6_reg_n_0_[4]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[4]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[4]\,
      O => \Reg1_data_OBUF[4]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[4]\,
      I1 => RegMA_data_OBUF(4),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[4]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[4]\,
      O => \Reg1_data_OBUF[4]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[4]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(4),
      I1 => \RegE_reg_n_0_[4]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[4]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[4]\,
      O => \Reg1_data_OBUF[4]_inst_i_7_n_0\
    );
\Reg1_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(5),
      O => Reg1_data(5)
    );
\Reg1_data_OBUF[5]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[5]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[5]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(5),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[5]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[5]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[5]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[5]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[5]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[5]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[5]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[5]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[5]\,
      I1 => \Reg2_reg_n_0_[5]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[5]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[5]\,
      O => \Reg1_data_OBUF[5]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[5]\,
      I1 => \Reg6_reg_n_0_[5]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[5]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[5]\,
      O => \Reg1_data_OBUF[5]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[5]\,
      I1 => RegMA_data_OBUF(5),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[5]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[5]\,
      O => \Reg1_data_OBUF[5]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RHOPin_IBUF,
      I1 => \RegE_reg_n_0_[5]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[5]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[5]\,
      O => \Reg1_data_OBUF[5]_inst_i_7_n_0\
    );
\Reg1_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(6),
      O => Reg1_data(6)
    );
\Reg1_data_OBUF[6]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[6]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[6]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(6),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[6]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[6]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[6]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[6]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[6]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[6]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[6]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[6]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[6]\,
      I1 => \Reg2_reg_n_0_[6]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[6]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[6]\,
      O => \Reg1_data_OBUF[6]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[6]\,
      I1 => \Reg6_reg_n_0_[6]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[6]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[6]\,
      O => \Reg1_data_OBUF[6]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[6]\,
      I1 => RegMA_data_OBUF(6),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[6]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[6]\,
      O => \Reg1_data_OBUF[6]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(6),
      I1 => \RegE_reg_n_0_[6]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[6]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[6]\,
      O => \Reg1_data_OBUF[6]_inst_i_7_n_0\
    );
\Reg1_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(7),
      O => Reg1_data(7)
    );
\Reg1_data_OBUF[7]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[7]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[7]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(7),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[7]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[7]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[7]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[7]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[7]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[7]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[7]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[7]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[7]\,
      I1 => \Reg2_reg_n_0_[7]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[7]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[7]\,
      O => \Reg1_data_OBUF[7]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[7]\,
      I1 => \Reg6_reg_n_0_[7]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[7]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[7]\,
      O => \Reg1_data_OBUF[7]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[7]\,
      I1 => RegMA_data_OBUF(7),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[7]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[7]\,
      O => \Reg1_data_OBUF[7]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[7]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(7),
      I1 => \RegE_reg_n_0_[7]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[7]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[7]\,
      O => \Reg1_data_OBUF[7]_inst_i_7_n_0\
    );
\Reg1_data_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(8),
      O => Reg1_data(8)
    );
\Reg1_data_OBUF[8]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[8]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[8]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(8),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[8]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[8]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[8]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[8]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[8]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[8]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[8]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[8]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[8]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[8]\,
      I1 => \Reg2_reg_n_0_[8]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[8]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[8]\,
      O => \Reg1_data_OBUF[8]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[8]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[8]\,
      I1 => \Reg6_reg_n_0_[8]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[8]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[8]\,
      O => \Reg1_data_OBUF[8]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[8]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[8]\,
      I1 => RegMA_data_OBUF(8),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[8]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[8]\,
      O => \Reg1_data_OBUF[8]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[8]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(8),
      I1 => \RegE_reg_n_0_[8]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[8]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[8]\,
      O => \Reg1_data_OBUF[8]_inst_i_7_n_0\
    );
\Reg1_data_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg1_data_OBUF(9),
      O => Reg1_data(9)
    );
\Reg1_data_OBUF[9]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg1_data_OBUF[9]_inst_i_2_n_0\,
      I1 => \Reg1_data_OBUF[9]_inst_i_3_n_0\,
      O => Reg1_data_OBUF(9),
      S => AddrReg1_IBUF(3)
    );
\Reg1_data_OBUF[9]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[9]_inst_i_4_n_0\,
      I1 => \Reg1_data_OBUF[9]_inst_i_5_n_0\,
      O => \Reg1_data_OBUF[9]_inst_i_2_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[9]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg1_data_OBUF[9]_inst_i_6_n_0\,
      I1 => \Reg1_data_OBUF[9]_inst_i_7_n_0\,
      O => \Reg1_data_OBUF[9]_inst_i_3_n_0\,
      S => AddrReg1_IBUF(2)
    );
\Reg1_data_OBUF[9]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[9]\,
      I1 => \Reg2_reg_n_0_[9]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg1_reg_n_0_[9]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg0_reg_n_0_[9]\,
      O => \Reg1_data_OBUF[9]_inst_i_4_n_0\
    );
\Reg1_data_OBUF[9]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[9]\,
      I1 => \Reg6_reg_n_0_[9]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg5_reg_n_0_[9]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg4_reg_n_0_[9]\,
      O => \Reg1_data_OBUF[9]_inst_i_5_n_0\
    );
\Reg1_data_OBUF[9]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[9]\,
      I1 => RegMA_data_OBUF(9),
      I2 => AddrReg1_IBUF(1),
      I3 => \Reg9_reg_n_0_[9]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \Reg8_reg_n_0_[9]\,
      O => \Reg1_data_OBUF[9]_inst_i_6_n_0\
    );
\Reg1_data_OBUF[9]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(9),
      I1 => \RegE_reg_n_0_[9]\,
      I2 => AddrReg1_IBUF(1),
      I3 => \RegD_reg_n_0_[9]\,
      I4 => AddrReg1_IBUF(0),
      I5 => \RegC_reg_n_0_[9]\,
      O => \Reg1_data_OBUF[9]_inst_i_7_n_0\
    );
\Reg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(0),
      Q => \Reg1_reg_n_0_[0]\,
      R => '0'
    );
\Reg1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(10),
      Q => \Reg1_reg_n_0_[10]\,
      R => '0'
    );
\Reg1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(11),
      Q => \Reg1_reg_n_0_[11]\,
      R => '0'
    );
\Reg1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(12),
      Q => \Reg1_reg_n_0_[12]\,
      R => '0'
    );
\Reg1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(13),
      Q => \Reg1_reg_n_0_[13]\,
      R => '0'
    );
\Reg1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(14),
      Q => \Reg1_reg_n_0_[14]\,
      R => '0'
    );
\Reg1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(15),
      Q => \Reg1_reg_n_0_[15]\,
      R => '0'
    );
\Reg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(1),
      Q => \Reg1_reg_n_0_[1]\,
      R => '0'
    );
\Reg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(2),
      Q => \Reg1_reg_n_0_[2]\,
      R => '0'
    );
\Reg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(3),
      Q => \Reg1_reg_n_0_[3]\,
      R => '0'
    );
\Reg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(4),
      Q => \Reg1_reg_n_0_[4]\,
      R => '0'
    );
\Reg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(5),
      Q => \Reg1_reg_n_0_[5]\,
      R => '0'
    );
\Reg1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(6),
      Q => \Reg1_reg_n_0_[6]\,
      R => '0'
    );
\Reg1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(7),
      Q => \Reg1_reg_n_0_[7]\,
      R => '0'
    );
\Reg1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(8),
      Q => \Reg1_reg_n_0_[8]\,
      R => '0'
    );
\Reg1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg1,
      D => WriteData_IBUF(9),
      Q => \Reg1_reg_n_0_[9]\,
      R => '0'
    );
\Reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => AddrWriteReg_IBUF(0),
      I1 => WE_IBUF,
      I2 => AddrWriteReg_IBUF(3),
      I3 => AddrWriteReg_IBUF(2),
      I4 => AddrWriteReg_IBUF(1),
      O => Reg2
    );
\Reg2_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(0),
      O => Reg2_data(0)
    );
\Reg2_data_OBUF[0]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[0]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[0]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(0),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[0]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[0]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[0]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[0]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[0]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[0]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[0]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[0]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[0]\,
      I1 => \Reg2_reg_n_0_[0]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[0]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[0]\,
      O => \Reg2_data_OBUF[0]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[0]\,
      I1 => \Reg6_reg_n_0_[0]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[0]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[0]\,
      O => \Reg2_data_OBUF[0]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[0]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => BankID_OBUF(0),
      I1 => RegMA_data_OBUF(0),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[0]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[0]\,
      O => \Reg2_data_OBUF[0]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(0),
      I1 => \RegE_reg_n_0_[0]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[0]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[0]\,
      O => \Reg2_data_OBUF[0]_inst_i_7_n_0\
    );
\Reg2_data_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(10),
      O => Reg2_data(10)
    );
\Reg2_data_OBUF[10]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[10]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[10]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(10),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[10]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[10]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[10]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[10]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[10]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[10]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[10]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[10]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[10]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[10]\,
      I1 => \Reg2_reg_n_0_[10]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[10]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[10]\,
      O => \Reg2_data_OBUF[10]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[10]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[10]\,
      I1 => \Reg6_reg_n_0_[10]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[10]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[10]\,
      O => \Reg2_data_OBUF[10]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[10]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[10]\,
      I1 => RegMA_data_OBUF(10),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[10]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[10]\,
      O => \Reg2_data_OBUF[10]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[10]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(10),
      I1 => \RegE_reg_n_0_[10]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[10]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[10]\,
      O => \Reg2_data_OBUF[10]_inst_i_7_n_0\
    );
\Reg2_data_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(11),
      O => Reg2_data(11)
    );
\Reg2_data_OBUF[11]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[11]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[11]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(11),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[11]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[11]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[11]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[11]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[11]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[11]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[11]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[11]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[11]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[11]\,
      I1 => \Reg2_reg_n_0_[11]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[11]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[11]\,
      O => \Reg2_data_OBUF[11]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[11]\,
      I1 => \Reg6_reg_n_0_[11]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[11]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[11]\,
      O => \Reg2_data_OBUF[11]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[11]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[11]\,
      I1 => RegMA_data_OBUF(11),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[11]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[11]\,
      O => \Reg2_data_OBUF[11]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[11]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(11),
      I1 => \RegE_reg_n_0_[11]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[11]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[11]\,
      O => \Reg2_data_OBUF[11]_inst_i_7_n_0\
    );
\Reg2_data_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(12),
      O => Reg2_data(12)
    );
\Reg2_data_OBUF[12]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[12]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[12]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(12),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[12]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[12]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[12]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[12]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[12]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[12]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[12]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[12]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[12]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[12]\,
      I1 => \Reg2_reg_n_0_[12]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[12]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[12]\,
      O => \Reg2_data_OBUF[12]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[12]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[12]\,
      I1 => \Reg6_reg_n_0_[12]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[12]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[12]\,
      O => \Reg2_data_OBUF[12]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[12]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[12]\,
      I1 => RegMA_data_OBUF(12),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[12]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[12]\,
      O => \Reg2_data_OBUF[12]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[12]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(12),
      I1 => \RegE_reg_n_0_[12]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[12]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[12]\,
      O => \Reg2_data_OBUF[12]_inst_i_7_n_0\
    );
\Reg2_data_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(13),
      O => Reg2_data(13)
    );
\Reg2_data_OBUF[13]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[13]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[13]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(13),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[13]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[13]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[13]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[13]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[13]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[13]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[13]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[13]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[13]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[13]\,
      I1 => \Reg2_reg_n_0_[13]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[13]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[13]\,
      O => \Reg2_data_OBUF[13]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[13]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[13]\,
      I1 => \Reg6_reg_n_0_[13]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[13]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[13]\,
      O => \Reg2_data_OBUF[13]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[13]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[13]\,
      I1 => RegMA_data_OBUF(13),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[13]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[13]\,
      O => \Reg2_data_OBUF[13]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[13]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(13),
      I1 => \RegE_reg_n_0_[13]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[13]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[13]\,
      O => \Reg2_data_OBUF[13]_inst_i_7_n_0\
    );
\Reg2_data_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(14),
      O => Reg2_data(14)
    );
\Reg2_data_OBUF[14]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[14]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[14]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(14),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[14]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[14]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[14]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[14]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[14]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[14]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[14]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[14]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[14]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[14]\,
      I1 => \Reg2_reg_n_0_[14]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[14]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[14]\,
      O => \Reg2_data_OBUF[14]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[14]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[14]\,
      I1 => \Reg6_reg_n_0_[14]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[14]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[14]\,
      O => \Reg2_data_OBUF[14]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[14]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[14]\,
      I1 => RegMA_data_OBUF(14),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[14]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[14]\,
      O => \Reg2_data_OBUF[14]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(14),
      I1 => \RegE_reg_n_0_[14]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[14]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[14]\,
      O => \Reg2_data_OBUF[14]_inst_i_7_n_0\
    );
\Reg2_data_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(15),
      O => Reg2_data(15)
    );
\Reg2_data_OBUF[15]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[15]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[15]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(15),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[15]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[15]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[15]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[15]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[15]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[15]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[15]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[15]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[15]\,
      I1 => \Reg2_reg_n_0_[15]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[15]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[15]\,
      O => \Reg2_data_OBUF[15]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[15]\,
      I1 => \Reg6_reg_n_0_[15]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[15]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[15]\,
      O => \Reg2_data_OBUF[15]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[15]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[15]\,
      I1 => RegMA_data_OBUF(15),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[15]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[15]\,
      O => \Reg2_data_OBUF[15]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[15]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(15),
      I1 => \RegE_reg_n_0_[15]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[15]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[15]\,
      O => \Reg2_data_OBUF[15]_inst_i_7_n_0\
    );
\Reg2_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(1),
      O => Reg2_data(1)
    );
\Reg2_data_OBUF[1]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[1]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[1]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(1),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[1]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[1]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[1]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[1]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[1]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[1]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[1]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[1]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[1]\,
      I1 => \Reg2_reg_n_0_[1]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[1]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[1]\,
      O => \Reg2_data_OBUF[1]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[1]\,
      I1 => \Reg6_reg_n_0_[1]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[1]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[1]\,
      O => \Reg2_data_OBUF[1]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => BankID_OBUF(1),
      I1 => RegMA_data_OBUF(1),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[1]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[1]\,
      O => \Reg2_data_OBUF[1]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(1),
      I1 => \RegE_reg_n_0_[1]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[1]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[1]\,
      O => \Reg2_data_OBUF[1]_inst_i_7_n_0\
    );
\Reg2_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(2),
      O => Reg2_data(2)
    );
\Reg2_data_OBUF[2]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[2]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[2]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(2),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[2]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[2]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[2]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[2]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[2]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[2]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[2]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[2]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[2]\,
      I1 => \Reg2_reg_n_0_[2]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[2]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[2]\,
      O => \Reg2_data_OBUF[2]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[2]\,
      I1 => \Reg6_reg_n_0_[2]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[2]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[2]\,
      O => \Reg2_data_OBUF[2]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => BankID_OBUF(2),
      I1 => RegMA_data_OBUF(2),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[2]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[2]\,
      O => \Reg2_data_OBUF[2]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(2),
      I1 => \RegE_reg_n_0_[2]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[2]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[2]\,
      O => \Reg2_data_OBUF[2]_inst_i_7_n_0\
    );
\Reg2_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(3),
      O => Reg2_data(3)
    );
\Reg2_data_OBUF[3]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[3]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[3]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(3),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[3]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[3]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[3]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[3]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[3]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[3]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[3]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[3]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[3]\,
      I1 => \Reg2_reg_n_0_[3]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[3]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[3]\,
      O => \Reg2_data_OBUF[3]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[3]\,
      I1 => \Reg6_reg_n_0_[3]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[3]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[3]\,
      O => \Reg2_data_OBUF[3]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => BankID_OBUF(3),
      I1 => RegMA_data_OBUF(3),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[3]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[3]\,
      O => \Reg2_data_OBUF[3]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(3),
      I1 => \RegE_reg_n_0_[3]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[3]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[3]\,
      O => \Reg2_data_OBUF[3]_inst_i_7_n_0\
    );
\Reg2_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(4),
      O => Reg2_data(4)
    );
\Reg2_data_OBUF[4]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[4]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[4]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(4),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[4]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[4]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[4]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[4]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[4]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[4]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[4]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[4]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[4]\,
      I1 => \Reg2_reg_n_0_[4]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[4]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[4]\,
      O => \Reg2_data_OBUF[4]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[4]\,
      I1 => \Reg6_reg_n_0_[4]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[4]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[4]\,
      O => \Reg2_data_OBUF[4]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[4]\,
      I1 => RegMA_data_OBUF(4),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[4]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[4]\,
      O => \Reg2_data_OBUF[4]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[4]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(4),
      I1 => \RegE_reg_n_0_[4]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[4]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[4]\,
      O => \Reg2_data_OBUF[4]_inst_i_7_n_0\
    );
\Reg2_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(5),
      O => Reg2_data(5)
    );
\Reg2_data_OBUF[5]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[5]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[5]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(5),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[5]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[5]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[5]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[5]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[5]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[5]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[5]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[5]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[5]\,
      I1 => \Reg2_reg_n_0_[5]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[5]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[5]\,
      O => \Reg2_data_OBUF[5]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[5]\,
      I1 => \Reg6_reg_n_0_[5]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[5]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[5]\,
      O => \Reg2_data_OBUF[5]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[5]\,
      I1 => RegMA_data_OBUF(5),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[5]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[5]\,
      O => \Reg2_data_OBUF[5]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RHOPin_IBUF,
      I1 => \RegE_reg_n_0_[5]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[5]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[5]\,
      O => \Reg2_data_OBUF[5]_inst_i_7_n_0\
    );
\Reg2_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(6),
      O => Reg2_data(6)
    );
\Reg2_data_OBUF[6]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[6]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[6]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(6),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[6]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[6]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[6]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[6]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[6]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[6]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[6]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[6]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[6]\,
      I1 => \Reg2_reg_n_0_[6]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[6]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[6]\,
      O => \Reg2_data_OBUF[6]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[6]\,
      I1 => \Reg6_reg_n_0_[6]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[6]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[6]\,
      O => \Reg2_data_OBUF[6]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[6]\,
      I1 => RegMA_data_OBUF(6),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[6]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[6]\,
      O => \Reg2_data_OBUF[6]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(6),
      I1 => \RegE_reg_n_0_[6]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[6]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[6]\,
      O => \Reg2_data_OBUF[6]_inst_i_7_n_0\
    );
\Reg2_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(7),
      O => Reg2_data(7)
    );
\Reg2_data_OBUF[7]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[7]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[7]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(7),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[7]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[7]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[7]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[7]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[7]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[7]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[7]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[7]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[7]\,
      I1 => \Reg2_reg_n_0_[7]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[7]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[7]\,
      O => \Reg2_data_OBUF[7]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[7]\,
      I1 => \Reg6_reg_n_0_[7]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[7]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[7]\,
      O => \Reg2_data_OBUF[7]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[7]\,
      I1 => RegMA_data_OBUF(7),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[7]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[7]\,
      O => \Reg2_data_OBUF[7]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[7]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(7),
      I1 => \RegE_reg_n_0_[7]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[7]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[7]\,
      O => \Reg2_data_OBUF[7]_inst_i_7_n_0\
    );
\Reg2_data_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(8),
      O => Reg2_data(8)
    );
\Reg2_data_OBUF[8]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[8]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[8]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(8),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[8]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[8]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[8]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[8]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[8]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[8]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[8]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[8]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[8]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[8]\,
      I1 => \Reg2_reg_n_0_[8]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[8]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[8]\,
      O => \Reg2_data_OBUF[8]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[8]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[8]\,
      I1 => \Reg6_reg_n_0_[8]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[8]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[8]\,
      O => \Reg2_data_OBUF[8]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[8]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[8]\,
      I1 => RegMA_data_OBUF(8),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[8]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[8]\,
      O => \Reg2_data_OBUF[8]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[8]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(8),
      I1 => \RegE_reg_n_0_[8]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[8]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[8]\,
      O => \Reg2_data_OBUF[8]_inst_i_7_n_0\
    );
\Reg2_data_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Reg2_data_OBUF(9),
      O => Reg2_data(9)
    );
\Reg2_data_OBUF[9]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \Reg2_data_OBUF[9]_inst_i_2_n_0\,
      I1 => \Reg2_data_OBUF[9]_inst_i_3_n_0\,
      O => Reg2_data_OBUF(9),
      S => AddrReg2_IBUF(3)
    );
\Reg2_data_OBUF[9]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[9]_inst_i_4_n_0\,
      I1 => \Reg2_data_OBUF[9]_inst_i_5_n_0\,
      O => \Reg2_data_OBUF[9]_inst_i_2_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[9]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Reg2_data_OBUF[9]_inst_i_6_n_0\,
      I1 => \Reg2_data_OBUF[9]_inst_i_7_n_0\,
      O => \Reg2_data_OBUF[9]_inst_i_3_n_0\,
      S => AddrReg2_IBUF(2)
    );
\Reg2_data_OBUF[9]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg3_reg_n_0_[9]\,
      I1 => \Reg2_reg_n_0_[9]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg1_reg_n_0_[9]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg0_reg_n_0_[9]\,
      O => \Reg2_data_OBUF[9]_inst_i_4_n_0\
    );
\Reg2_data_OBUF[9]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Reg7_reg_n_0_[9]\,
      I1 => \Reg6_reg_n_0_[9]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg5_reg_n_0_[9]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg4_reg_n_0_[9]\,
      O => \Reg2_data_OBUF[9]_inst_i_5_n_0\
    );
\Reg2_data_OBUF[9]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RegB_reg_n_0_[9]\,
      I1 => RegMA_data_OBUF(9),
      I2 => AddrReg2_IBUF(1),
      I3 => \Reg9_reg_n_0_[9]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \Reg8_reg_n_0_[9]\,
      O => \Reg2_data_OBUF[9]_inst_i_6_n_0\
    );
\Reg2_data_OBUF[9]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RegF(9),
      I1 => \RegE_reg_n_0_[9]\,
      I2 => AddrReg2_IBUF(1),
      I3 => \RegD_reg_n_0_[9]\,
      I4 => AddrReg2_IBUF(0),
      I5 => \RegC_reg_n_0_[9]\,
      O => \Reg2_data_OBUF[9]_inst_i_7_n_0\
    );
\Reg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(0),
      Q => \Reg2_reg_n_0_[0]\,
      R => '0'
    );
\Reg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(10),
      Q => \Reg2_reg_n_0_[10]\,
      R => '0'
    );
\Reg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(11),
      Q => \Reg2_reg_n_0_[11]\,
      R => '0'
    );
\Reg2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(12),
      Q => \Reg2_reg_n_0_[12]\,
      R => '0'
    );
\Reg2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(13),
      Q => \Reg2_reg_n_0_[13]\,
      R => '0'
    );
\Reg2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(14),
      Q => \Reg2_reg_n_0_[14]\,
      R => '0'
    );
\Reg2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(15),
      Q => \Reg2_reg_n_0_[15]\,
      R => '0'
    );
\Reg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(1),
      Q => \Reg2_reg_n_0_[1]\,
      R => '0'
    );
\Reg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(2),
      Q => \Reg2_reg_n_0_[2]\,
      R => '0'
    );
\Reg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(3),
      Q => \Reg2_reg_n_0_[3]\,
      R => '0'
    );
\Reg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(4),
      Q => \Reg2_reg_n_0_[4]\,
      R => '0'
    );
\Reg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(5),
      Q => \Reg2_reg_n_0_[5]\,
      R => '0'
    );
\Reg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(6),
      Q => \Reg2_reg_n_0_[6]\,
      R => '0'
    );
\Reg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(7),
      Q => \Reg2_reg_n_0_[7]\,
      R => '0'
    );
\Reg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(8),
      Q => \Reg2_reg_n_0_[8]\,
      R => '0'
    );
\Reg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg2,
      D => WriteData_IBUF(9),
      Q => \Reg2_reg_n_0_[9]\,
      R => '0'
    );
\Reg3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => AddrWriteReg_IBUF(0),
      I1 => WE_IBUF,
      I2 => AddrWriteReg_IBUF(3),
      I3 => AddrWriteReg_IBUF(2),
      I4 => AddrWriteReg_IBUF(1),
      O => Reg3
    );
\Reg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(0),
      Q => \Reg3_reg_n_0_[0]\,
      R => '0'
    );
\Reg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(10),
      Q => \Reg3_reg_n_0_[10]\,
      R => '0'
    );
\Reg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(11),
      Q => \Reg3_reg_n_0_[11]\,
      R => '0'
    );
\Reg3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(12),
      Q => \Reg3_reg_n_0_[12]\,
      R => '0'
    );
\Reg3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(13),
      Q => \Reg3_reg_n_0_[13]\,
      R => '0'
    );
\Reg3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(14),
      Q => \Reg3_reg_n_0_[14]\,
      R => '0'
    );
\Reg3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(15),
      Q => \Reg3_reg_n_0_[15]\,
      R => '0'
    );
\Reg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(1),
      Q => \Reg3_reg_n_0_[1]\,
      R => '0'
    );
\Reg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(2),
      Q => \Reg3_reg_n_0_[2]\,
      R => '0'
    );
\Reg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(3),
      Q => \Reg3_reg_n_0_[3]\,
      R => '0'
    );
\Reg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(4),
      Q => \Reg3_reg_n_0_[4]\,
      R => '0'
    );
\Reg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(5),
      Q => \Reg3_reg_n_0_[5]\,
      R => '0'
    );
\Reg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(6),
      Q => \Reg3_reg_n_0_[6]\,
      R => '0'
    );
\Reg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(7),
      Q => \Reg3_reg_n_0_[7]\,
      R => '0'
    );
\Reg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(8),
      Q => \Reg3_reg_n_0_[8]\,
      R => '0'
    );
\Reg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg3,
      D => WriteData_IBUF(9),
      Q => \Reg3_reg_n_0_[9]\,
      R => '0'
    );
\Reg4[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => AddrWriteReg_IBUF(2),
      I1 => WE_IBUF,
      I2 => AddrWriteReg_IBUF(3),
      I3 => AddrWriteReg_IBUF(1),
      I4 => AddrWriteReg_IBUF(0),
      O => Reg4
    );
\Reg4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(0),
      Q => \Reg4_reg_n_0_[0]\,
      R => '0'
    );
\Reg4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(10),
      Q => \Reg4_reg_n_0_[10]\,
      R => '0'
    );
\Reg4_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(11),
      Q => \Reg4_reg_n_0_[11]\,
      R => '0'
    );
\Reg4_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(12),
      Q => \Reg4_reg_n_0_[12]\,
      R => '0'
    );
\Reg4_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(13),
      Q => \Reg4_reg_n_0_[13]\,
      R => '0'
    );
\Reg4_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(14),
      Q => \Reg4_reg_n_0_[14]\,
      R => '0'
    );
\Reg4_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(15),
      Q => \Reg4_reg_n_0_[15]\,
      R => '0'
    );
\Reg4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(1),
      Q => \Reg4_reg_n_0_[1]\,
      R => '0'
    );
\Reg4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(2),
      Q => \Reg4_reg_n_0_[2]\,
      R => '0'
    );
\Reg4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(3),
      Q => \Reg4_reg_n_0_[3]\,
      R => '0'
    );
\Reg4_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(4),
      Q => \Reg4_reg_n_0_[4]\,
      R => '0'
    );
\Reg4_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(5),
      Q => \Reg4_reg_n_0_[5]\,
      R => '0'
    );
\Reg4_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(6),
      Q => \Reg4_reg_n_0_[6]\,
      R => '0'
    );
\Reg4_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(7),
      Q => \Reg4_reg_n_0_[7]\,
      R => '0'
    );
\Reg4_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(8),
      Q => \Reg4_reg_n_0_[8]\,
      R => '0'
    );
\Reg4_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg4,
      D => WriteData_IBUF(9),
      Q => \Reg4_reg_n_0_[9]\,
      R => '0'
    );
\Reg5[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => AddrWriteReg_IBUF(1),
      I1 => AddrWriteReg_IBUF(2),
      I2 => AddrWriteReg_IBUF(0),
      I3 => WE_IBUF,
      I4 => AddrWriteReg_IBUF(3),
      O => Reg5
    );
\Reg5_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(0),
      Q => \Reg5_reg_n_0_[0]\,
      R => '0'
    );
\Reg5_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(10),
      Q => \Reg5_reg_n_0_[10]\,
      R => '0'
    );
\Reg5_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(11),
      Q => \Reg5_reg_n_0_[11]\,
      R => '0'
    );
\Reg5_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(12),
      Q => \Reg5_reg_n_0_[12]\,
      R => '0'
    );
\Reg5_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(13),
      Q => \Reg5_reg_n_0_[13]\,
      R => '0'
    );
\Reg5_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(14),
      Q => \Reg5_reg_n_0_[14]\,
      R => '0'
    );
\Reg5_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(15),
      Q => \Reg5_reg_n_0_[15]\,
      R => '0'
    );
\Reg5_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(1),
      Q => \Reg5_reg_n_0_[1]\,
      R => '0'
    );
\Reg5_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(2),
      Q => \Reg5_reg_n_0_[2]\,
      R => '0'
    );
\Reg5_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(3),
      Q => \Reg5_reg_n_0_[3]\,
      R => '0'
    );
\Reg5_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(4),
      Q => \Reg5_reg_n_0_[4]\,
      R => '0'
    );
\Reg5_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(5),
      Q => \Reg5_reg_n_0_[5]\,
      R => '0'
    );
\Reg5_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(6),
      Q => \Reg5_reg_n_0_[6]\,
      R => '0'
    );
\Reg5_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(7),
      Q => \Reg5_reg_n_0_[7]\,
      R => '0'
    );
\Reg5_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(8),
      Q => \Reg5_reg_n_0_[8]\,
      R => '0'
    );
\Reg5_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg5,
      D => WriteData_IBUF(9),
      Q => \Reg5_reg_n_0_[9]\,
      R => '0'
    );
\Reg6[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => AddrWriteReg_IBUF(0),
      I1 => WE_IBUF,
      I2 => AddrWriteReg_IBUF(3),
      I3 => AddrWriteReg_IBUF(2),
      I4 => AddrWriteReg_IBUF(1),
      O => Reg6
    );
\Reg6_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(0),
      Q => \Reg6_reg_n_0_[0]\,
      R => '0'
    );
\Reg6_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(10),
      Q => \Reg6_reg_n_0_[10]\,
      R => '0'
    );
\Reg6_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(11),
      Q => \Reg6_reg_n_0_[11]\,
      R => '0'
    );
\Reg6_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(12),
      Q => \Reg6_reg_n_0_[12]\,
      R => '0'
    );
\Reg6_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(13),
      Q => \Reg6_reg_n_0_[13]\,
      R => '0'
    );
\Reg6_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(14),
      Q => \Reg6_reg_n_0_[14]\,
      R => '0'
    );
\Reg6_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(15),
      Q => \Reg6_reg_n_0_[15]\,
      R => '0'
    );
\Reg6_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(1),
      Q => \Reg6_reg_n_0_[1]\,
      R => '0'
    );
\Reg6_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(2),
      Q => \Reg6_reg_n_0_[2]\,
      R => '0'
    );
\Reg6_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(3),
      Q => \Reg6_reg_n_0_[3]\,
      R => '0'
    );
\Reg6_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(4),
      Q => \Reg6_reg_n_0_[4]\,
      R => '0'
    );
\Reg6_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(5),
      Q => \Reg6_reg_n_0_[5]\,
      R => '0'
    );
\Reg6_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(6),
      Q => \Reg6_reg_n_0_[6]\,
      R => '0'
    );
\Reg6_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(7),
      Q => \Reg6_reg_n_0_[7]\,
      R => '0'
    );
\Reg6_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(8),
      Q => \Reg6_reg_n_0_[8]\,
      R => '0'
    );
\Reg6_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg6,
      D => WriteData_IBUF(9),
      Q => \Reg6_reg_n_0_[9]\,
      R => '0'
    );
\Reg7[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => AddrWriteReg_IBUF(0),
      I1 => WE_IBUF,
      I2 => AddrWriteReg_IBUF(3),
      I3 => AddrWriteReg_IBUF(2),
      I4 => AddrWriteReg_IBUF(1),
      O => Reg7
    );
\Reg7_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(0),
      Q => \Reg7_reg_n_0_[0]\,
      R => '0'
    );
\Reg7_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(10),
      Q => \Reg7_reg_n_0_[10]\,
      R => '0'
    );
\Reg7_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(11),
      Q => \Reg7_reg_n_0_[11]\,
      R => '0'
    );
\Reg7_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(12),
      Q => \Reg7_reg_n_0_[12]\,
      R => '0'
    );
\Reg7_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(13),
      Q => \Reg7_reg_n_0_[13]\,
      R => '0'
    );
\Reg7_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(14),
      Q => \Reg7_reg_n_0_[14]\,
      R => '0'
    );
\Reg7_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(15),
      Q => \Reg7_reg_n_0_[15]\,
      R => '0'
    );
\Reg7_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(1),
      Q => \Reg7_reg_n_0_[1]\,
      R => '0'
    );
\Reg7_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(2),
      Q => \Reg7_reg_n_0_[2]\,
      R => '0'
    );
\Reg7_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(3),
      Q => \Reg7_reg_n_0_[3]\,
      R => '0'
    );
\Reg7_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(4),
      Q => \Reg7_reg_n_0_[4]\,
      R => '0'
    );
\Reg7_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(5),
      Q => \Reg7_reg_n_0_[5]\,
      R => '0'
    );
\Reg7_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(6),
      Q => \Reg7_reg_n_0_[6]\,
      R => '0'
    );
\Reg7_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(7),
      Q => \Reg7_reg_n_0_[7]\,
      R => '0'
    );
\Reg7_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(8),
      Q => \Reg7_reg_n_0_[8]\,
      R => '0'
    );
\Reg7_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg7,
      D => WriteData_IBUF(9),
      Q => \Reg7_reg_n_0_[9]\,
      R => '0'
    );
\Reg8[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => AddrWriteReg_IBUF(2),
      I1 => AddrWriteReg_IBUF(0),
      I2 => AddrWriteReg_IBUF(1),
      I3 => WE_IBUF,
      I4 => AddrWriteReg_IBUF(3),
      O => Reg8
    );
\Reg8_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(0),
      Q => \Reg8_reg_n_0_[0]\,
      R => '0'
    );
\Reg8_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(10),
      Q => \Reg8_reg_n_0_[10]\,
      R => '0'
    );
\Reg8_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(11),
      Q => \Reg8_reg_n_0_[11]\,
      R => '0'
    );
\Reg8_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(12),
      Q => \Reg8_reg_n_0_[12]\,
      R => '0'
    );
\Reg8_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(13),
      Q => \Reg8_reg_n_0_[13]\,
      R => '0'
    );
\Reg8_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(14),
      Q => \Reg8_reg_n_0_[14]\,
      R => '0'
    );
\Reg8_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(15),
      Q => \Reg8_reg_n_0_[15]\,
      R => '0'
    );
\Reg8_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(1),
      Q => \Reg8_reg_n_0_[1]\,
      R => '0'
    );
\Reg8_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(2),
      Q => \Reg8_reg_n_0_[2]\,
      R => '0'
    );
\Reg8_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(3),
      Q => \Reg8_reg_n_0_[3]\,
      R => '0'
    );
\Reg8_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(4),
      Q => \Reg8_reg_n_0_[4]\,
      R => '0'
    );
\Reg8_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(5),
      Q => \Reg8_reg_n_0_[5]\,
      R => '0'
    );
\Reg8_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(6),
      Q => \Reg8_reg_n_0_[6]\,
      R => '0'
    );
\Reg8_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(7),
      Q => \Reg8_reg_n_0_[7]\,
      R => '0'
    );
\Reg8_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(8),
      Q => \Reg8_reg_n_0_[8]\,
      R => '0'
    );
\Reg8_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg8,
      D => WriteData_IBUF(9),
      Q => \Reg8_reg_n_0_[9]\,
      R => '0'
    );
\Reg9[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => AddrWriteReg_IBUF(2),
      I1 => AddrWriteReg_IBUF(1),
      I2 => AddrWriteReg_IBUF(0),
      I3 => AddrWriteReg_IBUF(3),
      I4 => WE_IBUF,
      O => Reg9
    );
\Reg9_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(0),
      Q => \Reg9_reg_n_0_[0]\,
      R => '0'
    );
\Reg9_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(10),
      Q => \Reg9_reg_n_0_[10]\,
      R => '0'
    );
\Reg9_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(11),
      Q => \Reg9_reg_n_0_[11]\,
      R => '0'
    );
\Reg9_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(12),
      Q => \Reg9_reg_n_0_[12]\,
      R => '0'
    );
\Reg9_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(13),
      Q => \Reg9_reg_n_0_[13]\,
      R => '0'
    );
\Reg9_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(14),
      Q => \Reg9_reg_n_0_[14]\,
      R => '0'
    );
\Reg9_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(15),
      Q => \Reg9_reg_n_0_[15]\,
      R => '0'
    );
\Reg9_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(1),
      Q => \Reg9_reg_n_0_[1]\,
      R => '0'
    );
\Reg9_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(2),
      Q => \Reg9_reg_n_0_[2]\,
      R => '0'
    );
\Reg9_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(3),
      Q => \Reg9_reg_n_0_[3]\,
      R => '0'
    );
\Reg9_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(4),
      Q => \Reg9_reg_n_0_[4]\,
      R => '0'
    );
\Reg9_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(5),
      Q => \Reg9_reg_n_0_[5]\,
      R => '0'
    );
\Reg9_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(6),
      Q => \Reg9_reg_n_0_[6]\,
      R => '0'
    );
\Reg9_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(7),
      Q => \Reg9_reg_n_0_[7]\,
      R => '0'
    );
\Reg9_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(8),
      Q => \Reg9_reg_n_0_[8]\,
      R => '0'
    );
\Reg9_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => Reg9,
      D => WriteData_IBUF(9),
      Q => \Reg9_reg_n_0_[9]\,
      R => '0'
    );
\RegA[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => AddrWriteReg_IBUF(0),
      I1 => AddrWriteReg_IBUF(1),
      I2 => AddrWriteReg_IBUF(2),
      I3 => WE_IBUF,
      I4 => AddrWriteReg_IBUF(3),
      O => RegA
    );
\RegA_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(0),
      Q => RegMA_data_OBUF(0),
      R => '0'
    );
\RegA_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(10),
      Q => RegMA_data_OBUF(10),
      R => '0'
    );
\RegA_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(11),
      Q => RegMA_data_OBUF(11),
      R => '0'
    );
\RegA_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(12),
      Q => RegMA_data_OBUF(12),
      R => '0'
    );
\RegA_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(13),
      Q => RegMA_data_OBUF(13),
      R => '0'
    );
\RegA_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(14),
      Q => RegMA_data_OBUF(14),
      R => '0'
    );
\RegA_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(15),
      Q => RegMA_data_OBUF(15),
      R => '0'
    );
\RegA_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(1),
      Q => RegMA_data_OBUF(1),
      R => '0'
    );
\RegA_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(2),
      Q => RegMA_data_OBUF(2),
      R => '0'
    );
\RegA_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(3),
      Q => RegMA_data_OBUF(3),
      R => '0'
    );
\RegA_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(4),
      Q => RegMA_data_OBUF(4),
      R => '0'
    );
\RegA_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(5),
      Q => RegMA_data_OBUF(5),
      R => '0'
    );
\RegA_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(6),
      Q => RegMA_data_OBUF(6),
      R => '0'
    );
\RegA_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(7),
      Q => RegMA_data_OBUF(7),
      R => '0'
    );
\RegA_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(8),
      Q => RegMA_data_OBUF(8),
      R => '0'
    );
\RegA_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegA,
      D => WriteData_IBUF(9),
      Q => RegMA_data_OBUF(9),
      R => '0'
    );
\RegB[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => AddrWriteReg_IBUF(2),
      I1 => AddrWriteReg_IBUF(1),
      I2 => AddrWriteReg_IBUF(0),
      I3 => AddrWriteReg_IBUF(3),
      I4 => WE_IBUF,
      O => RegB
    );
\RegB_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(0),
      Q => BankID_OBUF(0),
      R => '0'
    );
\RegB_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(10),
      Q => \RegB_reg_n_0_[10]\,
      R => '0'
    );
\RegB_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(11),
      Q => \RegB_reg_n_0_[11]\,
      R => '0'
    );
\RegB_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(12),
      Q => \RegB_reg_n_0_[12]\,
      R => '0'
    );
\RegB_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(13),
      Q => \RegB_reg_n_0_[13]\,
      R => '0'
    );
\RegB_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(14),
      Q => \RegB_reg_n_0_[14]\,
      R => '0'
    );
\RegB_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(15),
      Q => \RegB_reg_n_0_[15]\,
      R => '0'
    );
\RegB_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(1),
      Q => BankID_OBUF(1),
      R => '0'
    );
\RegB_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(2),
      Q => BankID_OBUF(2),
      R => '0'
    );
\RegB_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(3),
      Q => BankID_OBUF(3),
      R => '0'
    );
\RegB_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(4),
      Q => \RegB_reg_n_0_[4]\,
      R => '0'
    );
\RegB_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(5),
      Q => \RegB_reg_n_0_[5]\,
      R => '0'
    );
\RegB_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(6),
      Q => \RegB_reg_n_0_[6]\,
      R => '0'
    );
\RegB_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(7),
      Q => \RegB_reg_n_0_[7]\,
      R => '0'
    );
\RegB_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(8),
      Q => \RegB_reg_n_0_[8]\,
      R => '0'
    );
\RegB_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegB,
      D => WriteData_IBUF(9),
      Q => \RegB_reg_n_0_[9]\,
      R => '0'
    );
\RegC[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => AddrWriteReg_IBUF(2),
      I1 => AddrWriteReg_IBUF(0),
      I2 => AddrWriteReg_IBUF(1),
      I3 => WE_IBUF,
      I4 => AddrWriteReg_IBUF(3),
      O => RegC
    );
\RegC_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(0),
      Q => \RegC_reg_n_0_[0]\,
      R => '0'
    );
\RegC_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(10),
      Q => \RegC_reg_n_0_[10]\,
      R => '0'
    );
\RegC_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(11),
      Q => \RegC_reg_n_0_[11]\,
      R => '0'
    );
\RegC_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(12),
      Q => \RegC_reg_n_0_[12]\,
      R => '0'
    );
\RegC_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(13),
      Q => \RegC_reg_n_0_[13]\,
      R => '0'
    );
\RegC_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(14),
      Q => \RegC_reg_n_0_[14]\,
      R => '0'
    );
\RegC_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(15),
      Q => \RegC_reg_n_0_[15]\,
      R => '0'
    );
\RegC_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(1),
      Q => \RegC_reg_n_0_[1]\,
      R => '0'
    );
\RegC_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(2),
      Q => \RegC_reg_n_0_[2]\,
      R => '0'
    );
\RegC_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(3),
      Q => \RegC_reg_n_0_[3]\,
      R => '0'
    );
\RegC_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(4),
      Q => \RegC_reg_n_0_[4]\,
      R => '0'
    );
\RegC_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(5),
      Q => \RegC_reg_n_0_[5]\,
      R => '0'
    );
\RegC_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(6),
      Q => \RegC_reg_n_0_[6]\,
      R => '0'
    );
\RegC_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(7),
      Q => \RegC_reg_n_0_[7]\,
      R => '0'
    );
\RegC_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(8),
      Q => \RegC_reg_n_0_[8]\,
      R => '0'
    );
\RegC_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegC,
      D => WriteData_IBUF(9),
      Q => \RegC_reg_n_0_[9]\,
      R => '0'
    );
\RegD[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => AddrWriteReg_IBUF(1),
      I1 => AddrWriteReg_IBUF(2),
      I2 => AddrWriteReg_IBUF(0),
      I3 => AddrWriteReg_IBUF(3),
      I4 => WE_IBUF,
      O => RegD
    );
\RegD_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(0),
      Q => \RegD_reg_n_0_[0]\,
      R => '0'
    );
\RegD_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(10),
      Q => \RegD_reg_n_0_[10]\,
      R => '0'
    );
\RegD_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(11),
      Q => \RegD_reg_n_0_[11]\,
      R => '0'
    );
\RegD_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(12),
      Q => \RegD_reg_n_0_[12]\,
      R => '0'
    );
\RegD_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(13),
      Q => \RegD_reg_n_0_[13]\,
      R => '0'
    );
\RegD_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(14),
      Q => \RegD_reg_n_0_[14]\,
      R => '0'
    );
\RegD_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(15),
      Q => \RegD_reg_n_0_[15]\,
      R => '0'
    );
\RegD_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(1),
      Q => \RegD_reg_n_0_[1]\,
      R => '0'
    );
\RegD_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(2),
      Q => \RegD_reg_n_0_[2]\,
      R => '0'
    );
\RegD_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(3),
      Q => \RegD_reg_n_0_[3]\,
      R => '0'
    );
\RegD_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(4),
      Q => \RegD_reg_n_0_[4]\,
      R => '0'
    );
\RegD_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(5),
      Q => \RegD_reg_n_0_[5]\,
      R => '0'
    );
\RegD_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(6),
      Q => \RegD_reg_n_0_[6]\,
      R => '0'
    );
\RegD_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(7),
      Q => \RegD_reg_n_0_[7]\,
      R => '0'
    );
\RegD_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(8),
      Q => \RegD_reg_n_0_[8]\,
      R => '0'
    );
\RegD_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegD,
      D => WriteData_IBUF(9),
      Q => \RegD_reg_n_0_[9]\,
      R => '0'
    );
\RegE[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => AddrWriteReg_IBUF(0),
      I1 => AddrWriteReg_IBUF(1),
      I2 => AddrWriteReg_IBUF(2),
      I3 => WE_IBUF,
      I4 => AddrWriteReg_IBUF(3),
      O => RegE
    );
\RegE_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(0),
      Q => \RegE_reg_n_0_[0]\,
      R => '0'
    );
\RegE_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(10),
      Q => \RegE_reg_n_0_[10]\,
      R => '0'
    );
\RegE_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(11),
      Q => \RegE_reg_n_0_[11]\,
      R => '0'
    );
\RegE_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(12),
      Q => \RegE_reg_n_0_[12]\,
      R => '0'
    );
\RegE_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(13),
      Q => \RegE_reg_n_0_[13]\,
      R => '0'
    );
\RegE_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(14),
      Q => \RegE_reg_n_0_[14]\,
      R => '0'
    );
\RegE_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(15),
      Q => \RegE_reg_n_0_[15]\,
      R => '0'
    );
\RegE_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(1),
      Q => \RegE_reg_n_0_[1]\,
      R => '0'
    );
\RegE_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(2),
      Q => \RegE_reg_n_0_[2]\,
      R => '0'
    );
\RegE_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(3),
      Q => \RegE_reg_n_0_[3]\,
      R => '0'
    );
\RegE_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(4),
      Q => \RegE_reg_n_0_[4]\,
      R => '0'
    );
\RegE_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(5),
      Q => \RegE_reg_n_0_[5]\,
      R => '0'
    );
\RegE_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(6),
      Q => \RegE_reg_n_0_[6]\,
      R => '0'
    );
\RegE_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(7),
      Q => \RegE_reg_n_0_[7]\,
      R => '0'
    );
\RegE_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(8),
      Q => \RegE_reg_n_0_[8]\,
      R => '0'
    );
\RegE_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RegE,
      D => WriteData_IBUF(9),
      Q => \RegE_reg_n_0_[9]\,
      R => '0'
    );
\RegF[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(0),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(0),
      O => \RegF[0]_i_1_n_0\
    );
\RegF[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(10),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(10),
      O => \RegF[10]_i_1_n_0\
    );
\RegF[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(11),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(11),
      O => \RegF[11]_i_1_n_0\
    );
\RegF[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(12),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(12),
      O => \RegF[12]_i_1_n_0\
    );
\RegF[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(13),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(13),
      O => \RegF[13]_i_1_n_0\
    );
\RegF[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(14),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(14),
      O => \RegF[14]_i_1_n_0\
    );
\RegF[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => OverwriteFl_IBUF,
      I1 => AddrWriteReg_IBUF(1),
      I2 => AddrWriteReg_IBUF(2),
      I3 => WE_IBUF,
      I4 => AddrWriteReg_IBUF(3),
      I5 => AddrWriteReg_IBUF(0),
      O => \RegF[15]_i_1_n_0\
    );
\RegF[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(15),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(15),
      O => \RegF[15]_i_2_n_0\
    );
\RegF[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => AddrWriteReg_IBUF(0),
      I1 => AddrWriteReg_IBUF(3),
      I2 => WE_IBUF,
      I3 => AddrWriteReg_IBUF(2),
      I4 => AddrWriteReg_IBUF(1),
      O => \RegF[15]_i_3_n_0\
    );
\RegF[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(1),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(1),
      O => \RegF[1]_i_1_n_0\
    );
\RegF[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(2),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(2),
      O => \RegF[2]_i_1_n_0\
    );
\RegF[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(3),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(3),
      O => \RegF[3]_i_1_n_0\
    );
\RegF[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(4),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(4),
      O => \RegF[4]_i_1_n_0\
    );
\RegF[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(5),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(5),
      O => \RegF[5]_i_1_n_0\
    );
\RegF[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(6),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(6),
      O => \RegF[6]_i_1_n_0\
    );
\RegF[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(7),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(7),
      O => \RegF[7]_i_1_n_0\
    );
\RegF[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(8),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(8),
      O => \RegF[8]_i_1_n_0\
    );
\RegF[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Flags_IBUF(9),
      I1 => \RegF[15]_i_3_n_0\,
      I2 => WriteData_IBUF(9),
      O => \RegF[9]_i_1_n_0\
    );
\RegF_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[0]_i_1_n_0\,
      Q => RegF(0),
      R => '0'
    );
\RegF_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[10]_i_1_n_0\,
      Q => RegF(10),
      R => '0'
    );
\RegF_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[11]_i_1_n_0\,
      Q => RegF(11),
      R => '0'
    );
\RegF_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[12]_i_1_n_0\,
      Q => RegF(12),
      R => '0'
    );
\RegF_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[13]_i_1_n_0\,
      Q => RegF(13),
      R => '0'
    );
\RegF_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[14]_i_1_n_0\,
      Q => RegF(14),
      R => '0'
    );
\RegF_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[15]_i_2_n_0\,
      Q => RegF(15),
      R => '0'
    );
\RegF_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[1]_i_1_n_0\,
      Q => RegF(1),
      R => '0'
    );
\RegF_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[2]_i_1_n_0\,
      Q => RegF(2),
      R => '0'
    );
\RegF_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[3]_i_1_n_0\,
      Q => RegF(3),
      R => '0'
    );
\RegF_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[4]_i_1_n_0\,
      Q => RegF(4),
      R => '0'
    );
\RegF_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[5]_i_1_n_0\,
      Q => RHOPin_IBUF,
      R => '0'
    );
\RegF_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[6]_i_1_n_0\,
      Q => RegF(6),
      R => '0'
    );
\RegF_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[7]_i_1_n_0\,
      Q => RegF(7),
      R => '0'
    );
\RegF_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[8]_i_1_n_0\,
      Q => RegF(8),
      R => '0'
    );
\RegF_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \RegF[15]_i_1_n_0\,
      D => \RegF[9]_i_1_n_0\,
      Q => RegF(9),
      R => '0'
    );
\RegMA_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(0),
      O => RegMA_data(0)
    );
\RegMA_data_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(10),
      O => RegMA_data(10)
    );
\RegMA_data_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(11),
      O => RegMA_data(11)
    );
\RegMA_data_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(12),
      O => RegMA_data(12)
    );
\RegMA_data_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(13),
      O => RegMA_data(13)
    );
\RegMA_data_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(14),
      O => RegMA_data(14)
    );
\RegMA_data_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(15),
      O => RegMA_data(15)
    );
\RegMA_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(1),
      O => RegMA_data(1)
    );
\RegMA_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(2),
      O => RegMA_data(2)
    );
\RegMA_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(3),
      O => RegMA_data(3)
    );
\RegMA_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(4),
      O => RegMA_data(4)
    );
\RegMA_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(5),
      O => RegMA_data(5)
    );
\RegMA_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(6),
      O => RegMA_data(6)
    );
\RegMA_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(7),
      O => RegMA_data(7)
    );
\RegMA_data_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(8),
      O => RegMA_data(8)
    );
\RegMA_data_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RegMA_data_OBUF(9),
      O => RegMA_data(9)
    );
WE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => WE,
      O => WE_IBUF
    );
\WriteData_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(0),
      O => WriteData_IBUF(0)
    );
\WriteData_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(10),
      O => WriteData_IBUF(10)
    );
\WriteData_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(11),
      O => WriteData_IBUF(11)
    );
\WriteData_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(12),
      O => WriteData_IBUF(12)
    );
\WriteData_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(13),
      O => WriteData_IBUF(13)
    );
\WriteData_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(14),
      O => WriteData_IBUF(14)
    );
\WriteData_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(15),
      O => WriteData_IBUF(15)
    );
\WriteData_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(1),
      O => WriteData_IBUF(1)
    );
\WriteData_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(2),
      O => WriteData_IBUF(2)
    );
\WriteData_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(3),
      O => WriteData_IBUF(3)
    );
\WriteData_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(4),
      O => WriteData_IBUF(4)
    );
\WriteData_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(5),
      O => WriteData_IBUF(5)
    );
\WriteData_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(6),
      O => WriteData_IBUF(6)
    );
\WriteData_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(7),
      O => WriteData_IBUF(7)
    );
\WriteData_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(8),
      O => WriteData_IBUF(8)
    );
\WriteData_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WriteData(9),
      O => WriteData_IBUF(9)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
end STRUCTURE;
