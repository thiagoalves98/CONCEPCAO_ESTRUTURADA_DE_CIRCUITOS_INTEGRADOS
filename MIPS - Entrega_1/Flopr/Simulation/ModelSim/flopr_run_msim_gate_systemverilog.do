transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {flopr.svo}

vlog -sv -work work +incdir+C:/Users/thiag/Downloads/MIPS/Entrega\ 1/Flopr/Flopr/Testbench {C:/Users/thiag/Downloads/MIPS/Entrega 1/Flopr/Flopr/Testbench/flopr_tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  flopr_tb

add wave *
view structure
view signals
run -all
