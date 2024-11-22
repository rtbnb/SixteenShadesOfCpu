vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../mmu.gen/sources_1/bd/clock_block/ipshared/3242" \
"S:/Vivado/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"S:/Vivado/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"S:/Vivado/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../mmu.gen/sources_1/bd/clock_block/ipshared/3242" \
"../../../bd/clock_block/ip/clock_block_clk_wiz_0_0/clock_block_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/clock_block/ip/clock_block_clk_wiz_0_0/clock_block_clk_wiz_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/clock_block/ip/clock_block_clockcontroller_0_0/sim/clock_block_clockcontroller_0_0.vhd" \
"../../../bd/clock_block/sim/clock_block.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

