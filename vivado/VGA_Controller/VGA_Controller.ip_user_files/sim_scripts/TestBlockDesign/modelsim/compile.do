vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/blk_mem_gen_v8_4_8

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap blk_mem_gen_v8_4_8 modelsim_lib/msim/blk_mem_gen_v8_4_8

vlog -work xpm  -incr -mfcu  -sv \
"D:/Vivado/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Vivado/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/TestBlockDesign/ip/TestBlockDesign_VGA_Controller_0_0/sim/TestBlockDesign_VGA_Controller_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -mfcu  \
"../../../../VGA_Controller.gen/sources_1/bd/TestBlockDesign/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/TestBlockDesign/ip/TestBlockDesign_blk_mem_gen_0_0/sim/TestBlockDesign_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/TestBlockDesign/sim/TestBlockDesign.vhd" \


vlog -work xil_defaultlib \
"glbl.v"

