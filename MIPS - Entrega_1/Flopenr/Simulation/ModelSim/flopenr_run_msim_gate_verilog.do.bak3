transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {flopenr.vo}

vlog -sv -work work +incdir+C:/Users/thiag/Downloads/MIPS/Entrega\ 1/Flopenr/Flopenr/Testbench {C:/Users/thiag/Downloads/MIPS/Entrega 1/Flopenr/Flopenr/Testbench/flopenr_tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  flopenr_tb

add wave *
view structure
view signals
run -all
