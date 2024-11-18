transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../Integration.gen/sources_1/bd/main/ipshared/3242" -l xpm -l xil_defaultlib \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/main/ip/main_Pipelining_Controller_0_0/sim/main_Pipelining_Controller_0_0.vhd" \
"../../../bd/main/ip/main_ProgramCounter_0_0/sim/main_ProgramCounter_0_0.vhd" \
"../../../bd/main/ip/main_CU_Decoder_0_0/sim/main_CU_Decoder_0_0.vhd" \
"../../../bd/main/ip/main_Decoder_0_0/sim/main_Decoder_0_0.vhd" \
"../../../bd/main/ip/main_RegFile_0_0/sim/main_RegFile_0_0.vhd" \
"../../../bd/main/ip/main_Pipelining_Forwarder_0_0/sim/main_Pipelining_Forwarder_0_0.vhd" \
"../../../bd/main/ip/main_Pipelining_Execution_0_0/sim/main_Pipelining_Execution_0_0.vhd" \
"../../../bd/main/ip/main_CU_RAMAddressControl_0_0/sim/main_CU_RAMAddressControl_0_0.vhd" \
"../../../bd/main/ip/main_ALU_0_0/sim/main_ALU_0_0.vhd" \
"../../../bd/main/ip/main_CU_ImmediateManipula_0_0/sim/main_CU_ImmediateManipula_0_0.vhd" \
"../../../bd/main/ip/main_CU_JumpDestinationSe_0_0/sim/main_CU_JumpDestinationSe_0_0.vhd" \
"../../../bd/main/ip/main_CU_JumpController_0_0/sim/main_CU_JumpController_0_0.vhd" \
"../../../bd/main/ip/main_CU_WriteSelector_0_0/sim/main_CU_WriteSelector_0_0.vhd" \
"../../../bd/main/ip/main_Pipelining_WriteBack_0_0/sim/main_Pipelining_WriteBack_0_0.vhd" \
"../../../bd/main/ip/main_IROM_0_1/sim/main_IROM_0_1.vhd" \
"../../../bd/main/ip/main_RAM_Placeholder_0_0/sim/main_RAM_Placeholder_0_0.vhd" \
"../../../bd/main/ip/main_ALU_FLAG_PACKER_0_1/sim/main_ALU_FLAG_PACKER_0_1.vhd" \
"../../../bd/main/ip/main_RX_UART_0_0/sim/main_RX_UART_0_0.vhd" \
"../../../bd/main/ip/main_TX_UART_0_0/sim/main_TX_UART_0_0.vhd" \
"../../../bd/main/ip/main_Debugger_0_0/sim/main_Debugger_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Integration.gen/sources_1/bd/main/ipshared/3242" -l xpm -l xil_defaultlib \
"../../../bd/main/ip/main_clk_wiz_0_0/main_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/main/ip/main_clk_wiz_0_0/main_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/main/ip/main_ClockDisabler_0_0/sim/main_ClockDisabler_0_0.vhd" \
"../../../bd/main/sim/main.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

