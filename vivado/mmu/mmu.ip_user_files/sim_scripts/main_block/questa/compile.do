vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/blk_mem_gen_v8_4_8
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap blk_mem_gen_v8_4_8 questa_lib/msim/blk_mem_gen_v8_4_8
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../mmu.gen/sources_1/bd/main_block/ipshared/3242" \
"S:/Vivado/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"S:/Vivado/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"S:/Vivado/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -mfcu  "+incdir+../../../../mmu.gen/sources_1/bd/main_block/ipshared/3242" \
"../../../../mmu.gen/sources_1/bd/main_block/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../mmu.gen/sources_1/bd/main_block/ipshared/3242" \
"../../../bd/main_block/ip/main_block_blk_mem_gen_0_0/sim/main_block_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/main_block/ip/main_block_mmu_0_0/sim/main_block_mmu_0_0.vhd" \
"../../../bd/main_block/ip/main_block_mmio_0_0/sim/main_block_mmio_0_0.vhd" \
"../../../bd/main_block/ip/main_block_clockcontroller_0_0/sim/main_block_clockcontroller_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../mmu.gen/sources_1/bd/main_block/ipshared/3242" \
"../../../bd/main_block/ip/main_block_clk_wiz_0_0/main_block_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/main_block/ip/main_block_clk_wiz_0_0/main_block_clk_wiz_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/main_block/sim/main_block.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

