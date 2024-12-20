@echo off
REM ****************************************************************************
REM Vivado (TM) v2024.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : AMD Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Thu Nov 07 09:56:18 +0100 2024
REM SW Build 5076996 on Wed May 22 18:37:14 MDT 2024
REM
REM Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
REM Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim main_block_wrapper_behav -key {Behavioral:sim_1:Functional:main_block_wrapper} -tclbatch main_block_wrapper.tcl -protoinst "protoinst_files/main_block.protoinst" -log simulate.log"
call xsim  main_block_wrapper_behav -key {Behavioral:sim_1:Functional:main_block_wrapper} -tclbatch main_block_wrapper.tcl -protoinst "protoinst_files/main_block.protoinst" -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
