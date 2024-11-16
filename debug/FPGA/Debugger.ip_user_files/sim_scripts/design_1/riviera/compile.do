transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_TX_UART_0_0/sim/design_1_TX_UART_0_0.vhd" \
"../../../bd/design_1/ip/design_1_Debugger_0_0/sim/design_1_Debugger_0_0.vhd" \
"../../../bd/design_1/ip/design_1_RX_UART_0_0/sim/design_1_RX_UART_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \


