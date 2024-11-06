vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/blk_mem_gen_v8_4_8

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap blk_mem_gen_v8_4_8 questa_lib/msim/blk_mem_gen_v8_4_8

vcom -work xil_defaultlib  -93  \
"../../../bd/main_block/ip/main_block_main_0_0/sim/main_block_main_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../memory_tryout.gen/sources_1/bd/main_block/ipshared/3242" \
"../../../bd/main_block/ip/main_block_clk_wiz_0_0/main_block_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/main_block/ip/main_block_clk_wiz_0_0/main_block_clk_wiz_0_0.v" \

vlog -work blk_mem_gen_v8_4_8  -incr -mfcu  "+incdir+../../../../memory_tryout.gen/sources_1/bd/main_block/ipshared/3242" \
"../../../../memory_tryout.gen/sources_1/bd/main_block/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../memory_tryout.gen/sources_1/bd/main_block/ipshared/3242" \
"../../../bd/main_block/ip/main_block_blk_mem_gen_0_0/sim/main_block_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/main_block/sim/main_block.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

