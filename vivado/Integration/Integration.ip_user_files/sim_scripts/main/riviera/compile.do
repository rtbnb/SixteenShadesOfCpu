transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/blk_mem_gen_v8_4_8

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap blk_mem_gen_v8_4_8 riviera/blk_mem_gen_v8_4_8

vlog -work xpm  -incr "+incdir+../../../../Integration.gen/sources_1/bd/main/ipshared/3242" -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_8 \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

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
"../../../bd/main/ip/main_ALU_FLAG_PACKER_0_1/sim/main_ALU_FLAG_PACKER_0_1.vhd" \
"../../../bd/main/ip/main_clockcontroller_0_0/sim/main_clockcontroller_0_0.vhd" \
"../../../bd/main/ip/main_mmu_0_0/sim/main_mmu_0_0.vhd" \
"../../../bd/main/ip/main_mmio_0_0/sim/main_mmio_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 "+incdir+../../../../Integration.gen/sources_1/bd/main/ipshared/3242" -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_8 \
"../../../../Integration.gen/sources_1/bd/main/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Integration.gen/sources_1/bd/main/ipshared/3242" -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_8 \
"../../../bd/main/ip/main_blk_mem_gen_0_0/sim/main_blk_mem_gen_0_0.v" \
"../../../bd/main/ip/main_blk_mem_gen_1_0/sim/main_blk_mem_gen_1_0.v" \
"../../../bd/main/ip/main_blk_mem_gen_2_0/sim/main_blk_mem_gen_2_0.v" \
"../../../bd/main/ip/main_clk_wiz_0_0/main_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/main/ip/main_clk_wiz_0_0/main_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/main/sim/main.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

