transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../mmu.gen/sources_1/bd/clock_block/ipshared/3242" -l xpm -l xil_defaultlib \
"S:/Vivado/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"S:/Vivado/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"S:/Vivado/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mmu.gen/sources_1/bd/clock_block/ipshared/3242" -l xpm -l xil_defaultlib \
"../../../bd/clock_block/ip/clock_block_clk_wiz_0_0/clock_block_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/clock_block/ip/clock_block_clk_wiz_0_0/clock_block_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/clock_block/ip/clock_block_clockcontroller_0_0/sim/clock_block_clockcontroller_0_0.vhd" \
"../../../bd/clock_block/sim/clock_block.vhd" \

vlog -work xil_defaultlib \
"glbl.v"
