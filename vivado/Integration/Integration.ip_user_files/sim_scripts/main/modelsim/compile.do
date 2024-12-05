vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/blk_mem_gen_v8_4_8
vlib modelsim_lib/msim/xlconstant_v1_1_9

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap blk_mem_gen_v8_4_8 modelsim_lib/msim/blk_mem_gen_v8_4_8
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9

vlog -work xpm  -incr -mfcu  -sv \
"D:/programme/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/programme/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93  \
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
"../../../bd/main/ip/main_ALU_FLAG_PACKER_0_1/sim/main_ALU_FLAG_PACKER_0_1.vhd" \
"../../../bd/main/ip/main_clockcontroller_0_0/sim/main_clockcontroller_0_0.vhd" \
"../../../bd/main/ip/main_mmu_0_0/sim/main_mmu_0_0.vhd" \
"../../../bd/main/ip/main_mmio_0_0/sim/main_mmio_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -mfcu  \
"../../../../Integration.gen/sources_1/bd/main/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/main/ip/main_blk_mem_gen_0_0/sim/main_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/main/ip/main_Debugger_0_0/sim/main_Debugger_0_0.vhd" \
"../../../bd/main/ip/main_RX_UART_0_0/sim/main_RX_UART_0_0.vhd" \
"../../../bd/main/ip/main_TX_UART_0_0/sim/main_TX_UART_0_0.vhd" \
"../../../bd/main/ip/main_VGA_CPU_Bridge_0_0/sim/main_VGA_CPU_Bridge_0_0.vhd" \
"../../../bd/main/ip/main_GPU_0_0/sim/main_GPU_0_0.vhd" \
"../../../bd/main/ip/main_VGA_Controller_0_0/sim/main_VGA_Controller_0_0.vhd" \
"../../../bd/main/ip/main_FPU_0_0/sim/main_FPU_0_0.vhd" \
"../../../bd/main/ip/main_ALU_FLAG_PACKER_1_0/sim/main_ALU_FLAG_PACKER_1_0.vhd" \

vlog -work xlconstant_v1_1_9  -incr -mfcu  \
"../../../../Integration.gen/sources_1/bd/main/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/main/ip/main_xlconstant_0_0/sim/main_xlconstant_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/main/sim/main.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

