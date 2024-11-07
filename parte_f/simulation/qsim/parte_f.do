onerror {quit -f}
vlib work
vlog -work work parte_f.vo
vlog -work work parte_f.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.divisor_vlg_vec_tst
vcd file -direction parte_f.msim.vcd
vcd add -internal divisor_vlg_vec_tst/*
vcd add -internal divisor_vlg_vec_tst/i1/*
add wave /*
run -all
