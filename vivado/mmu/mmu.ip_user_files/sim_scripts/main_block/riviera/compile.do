transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_4_8
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap blk_mem_gen_v8_4_8 riviera/blk_mem_gen_v8_4_8
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../../mmu.gen/sources_1/bd/main_block/ipshared/3242" -l xpm -l blk_mem_gen_v8_4_8 -l xil_defaultlib \
"D:/AMD/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/AMD/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/AMD/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 "+incdir+../../../../mmu.gen/sources_1/bd/main_block/ipshared/3242" -l xpm -l blk_mem_gen_v8_4_8 -l xil_defaultlib \
"../../../../mmu.gen/sources_1/bd/main_block/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../mmu.gen/sources_1/bd/main_block/ipshared/3242" -l xpm -l blk_mem_gen_v8_4_8 -l xil_defaultlib \
"../../../bd/main_block/ip/main_block_blk_mem_gen_0_0/sim/main_block_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/main_block/ip/main_block_mmu_0_0/sim/main_block_mmu_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../mmu.gen/sources_1/bd/main_block/ipshared/3242" -l xpm -l blk_mem_gen_v8_4_8 -l xil_defaultlib \
"../../../bd/main_block/ip/main_block_blk_mem_gen_1_0/sim/main_block_blk_mem_gen_1_0.v" \
"../../../bd/main_block/ip/main_block_blk_mem_gen_2_0/sim/main_block_blk_mem_gen_2_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/main_block/ip/main_block_mmio_0_0/sim/main_block_mmio_0_0.vhd" \
"../../../bd/main_block/ip/main_block_clockcontroller_0_0/sim/main_block_clockcontroller_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../mmu.gen/sources_1/bd/main_block/ipshared/3242" -l xpm -l blk_mem_gen_v8_4_8 -l xil_defaultlib \
"../../../bd/main_block/ip/main_block_clk_wiz_0_0/main_block_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/main_block/ip/main_block_clk_wiz_0_0/main_block_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/main_block/sim/main_block.vhd" \

vlog -work xil_defaultlib \
"glbl.v"
