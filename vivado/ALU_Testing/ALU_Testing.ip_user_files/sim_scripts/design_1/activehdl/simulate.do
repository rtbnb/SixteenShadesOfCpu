transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+design_1  -L xil_defaultlib -L secureip -O5 xil_defaultlib.design_1

do {design_1.udo}

run 1000ns

endsim

quit -force
