transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/sebas/Desktop/faculteishon/2024 seg cuatri/Técnicas y Dispositivos Digitales II/lab 2/labFPGA/parte_c/Restador_Completo_4b.vhd}
vcom -93 -work work {C:/Users/sebas/Desktop/faculteishon/2024 seg cuatri/Técnicas y Dispositivos Digitales II/lab 2/labFPGA/parte_c/Restador_completo.vhd}

vcom -93 -work work {C:/Users/sebas/Desktop/faculteishon/2024 seg cuatri/Técnicas y Dispositivos Digitales II/lab 2/labFPGA/parte_c/Restador_Completo_4b_t.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  Restador_Completo_4b_t

add wave *
view structure
view signals
run -all
