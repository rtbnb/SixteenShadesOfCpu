transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib
vlib activehdl/blk_mem_gen_v8_4_8

vmap xil_defaultlib activehdl/xil_defaultlib
vmap blk_mem_gen_v8_4_8 activehdl/blk_mem_gen_v8_4_8

vcom -work xil_defaultlib -93  \
"../../../bd/main_block/ip/main_block_main_0_0/sim/main_block_main_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../memory_tryout.gen/sources_1/bd/main_block/ipshared/3242" -l xil_defaultlib -l blk_mem_gen_v8_4_8 \
"../../../bd/main_block/ip/main_block_clk_wiz_0_0/main_block_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/main_block/ip/main_block_clk_wiz_0_0/main_block_clk_wiz_0_0.v" \

vlog -work blk_mem_gen_v8_4_8  -v2k5 "+incdir+../../../../memory_tryout.gen/sources_1/bd/main_block/ipshared/3242" -l xil_defaultlib -l blk_mem_gen_v8_4_8 \
"../../../../memory_tryout.gen/sources_1/bd/main_block/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../memory_tryout.gen/sources_1/bd/main_block/ipshared/3242" -l xil_defaultlib -l blk_mem_gen_v8_4_8 \
"../../../bd/main_block/ip/main_block_blk_mem_gen_0_0/sim/main_block_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/main_block/sim/main_block.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

