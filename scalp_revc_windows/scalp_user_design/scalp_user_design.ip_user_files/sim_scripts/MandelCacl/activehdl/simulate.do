transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+MandelCacl  -L xil_defaultlib -L xilinx_vip -L xpm -L xpm_cdc_gen_v1_0_4 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.MandelCacl xil_defaultlib.glbl

do {MandelCacl.udo}

run 1000ns

endsim

quit -force
