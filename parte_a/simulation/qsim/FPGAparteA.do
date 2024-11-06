onerror {quit -f}
vlib work
vlog -work work FPGAparteA.vo
vlog -work work FPGAparteA.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FPGAparteA_vlg_vec_tst
vcd file -direction FPGAparteA.msim.vcd
vcd add -internal FPGAparteA_vlg_vec_tst/*
vcd add -internal FPGAparteA_vlg_vec_tst/i1/*
add wave /*
run -all
