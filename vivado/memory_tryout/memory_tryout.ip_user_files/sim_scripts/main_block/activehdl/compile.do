transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/blk_mem_gen_v8_4_8

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap blk_mem_gen_v8_4_8 activehdl/blk_mem_gen_v8_4_8

vlog -work xpm  -sv2k12 -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_8 \
"D:/AMD/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/AMD/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/main_block/ip/main_block_main_0_0/sim/main_block_main_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -v2k5 -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_8 \
"../../../../memory_tryout.gen/sources_1/bd/main_block/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_8 \
"../../../bd/main_block/ip/main_block_blk_mem_gen_0_0/sim/main_block_blk_mem_gen_0_0.v" \
"../../../bd/main_block/ip/main_block_blk_mem_gen_1_0/sim/main_block_blk_mem_gen_1_0.v" \
"../../../bd/main_block/ip/main_block_blk_mem_gen_2_0/sim/main_block_blk_mem_gen_2_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/main_block/sim/main_block.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

