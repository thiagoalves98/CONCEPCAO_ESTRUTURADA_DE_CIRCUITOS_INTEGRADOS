transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {mux4_6_1200mv_85c_slow.vo}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/MIPS/14\ -\ Mux4\ 32\ bit/Testbench {C:/Users/thiag/OneDrive/�rea de Trabalho/MIPS/14 - Mux4 32 bit/Testbench/mux4_tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  mux4_tb

add wave *
view structure
view signals
run -all
