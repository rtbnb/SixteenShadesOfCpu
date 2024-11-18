vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/blk_mem_gen_v8_4_8
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap blk_mem_gen_v8_4_8 modelsim_lib/msim/blk_mem_gen_v8_4_8
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv \
"S:/Vivado/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"S:/Vivado/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -mfcu  \
"../../../../mmu.gen/sources_1/bd/main_block/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/main_block/ip/main_block_blk_mem_gen_0_0/sim/main_block_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/main_block/ip/main_block_mmu_0_0/sim/main_block_mmu_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/main_block/ip/main_block_blk_mem_gen_1_0/sim/main_block_blk_mem_gen_1_0.v" \
"../../../bd/main_block/ip/main_block_blk_mem_gen_2_0/sim/main_block_blk_mem_gen_2_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/main_block/ip/main_block_mmio_0_0/sim/main_block_mmio_0_0.vhd" \
"../../../bd/main_block/sim/main_block.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

