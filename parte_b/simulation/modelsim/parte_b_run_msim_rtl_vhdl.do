transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/sebas/Desktop/faculteishon/2024 seg cuatri/T�cnicas y Dispositivos Digitales II/lab 2/labFPGA/parte_b/FF_D.vhd}
vcom -93 -work work {C:/Users/sebas/Desktop/faculteishon/2024 seg cuatri/T�cnicas y Dispositivos Digitales II/lab 2/labFPGA/parte_b/Restador_Completo.vhd}

