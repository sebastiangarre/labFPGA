onerror {quit -f}
vlib work
vlog -work work parte_c.vo
vlog -work work parte_c.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Restador_Completo_4b_vlg_vec_tst
vcd file -direction parte_c.msim.vcd
vcd add -internal Restador_Completo_4b_vlg_vec_tst/*
vcd add -internal Restador_Completo_4b_vlg_vec_tst/i1/*
add wave /*
run -all
