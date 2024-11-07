onerror {quit -f}
vlib work
vlog -work work parte_e.vo
vlog -work work parte_e.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.parte_e_vlg_vec_tst
vcd file -direction parte_e.msim.vcd
vcd add -internal parte_e_vlg_vec_tst/*
vcd add -internal parte_e_vlg_vec_tst/i1/*
add wave /*
run -all
