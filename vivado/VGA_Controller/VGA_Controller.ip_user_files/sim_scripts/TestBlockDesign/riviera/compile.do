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

vlog -work xpm  -incr -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_8 \
"D:/Vivado/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/Vivado/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/TestBlockDesign/ip/TestBlockDesign_VGA_Controller_0_0/sim/TestBlockDesign_VGA_Controller_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_8 \
"../../../../VGA_Controller.gen/sources_1/bd/TestBlockDesign/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_8 \
"../../../bd/TestBlockDesign/ip/TestBlockDesign_blk_mem_gen_0_0/sim/TestBlockDesign_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/TestBlockDesign/sim/TestBlockDesign.vhd" \


vlog -work xil_defaultlib \
"glbl.v"

