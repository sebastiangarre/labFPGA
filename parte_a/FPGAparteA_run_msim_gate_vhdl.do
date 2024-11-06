transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {FPGAparteA_7_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/sebas/Desktop/faculteishon/2024 seg cuatri/Técnicas y Dispositivos Digitales II/lab 2/FPGArre/FPGArre/FPGAparteA_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=FPGAparteA_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  FPGAparteA_tb

add wave *
view structure
view signals
run -all
