transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93  -incr \
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
"../../../bd/main/sim/main.vhd" \

