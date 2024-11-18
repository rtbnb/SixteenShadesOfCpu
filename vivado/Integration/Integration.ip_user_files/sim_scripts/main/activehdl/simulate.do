transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+main  -L xil_defaultlib -L secureip -O5 xil_defaultlib.main

do {main.udo}

run 1000ns

endsim

quit -force
