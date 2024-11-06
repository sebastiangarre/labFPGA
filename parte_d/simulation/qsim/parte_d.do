onerror {quit -f}
vlib work
vlog -work work parte_d.vo
vlog -work work parte_d.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ejercicio2_vlg_vec_tst
vcd file -direction parte_d.msim.vcd
vcd add -internal ejercicio2_vlg_vec_tst/*
vcd add -internal ejercicio2_vlg_vec_tst/i1/*
add wave /*
run -all
