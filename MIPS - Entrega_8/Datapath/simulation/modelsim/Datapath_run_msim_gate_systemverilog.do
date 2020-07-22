transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {Datapath_6_1200mv_85c_slow.svo}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/Datapath/testbench {C:/Users/thiag/OneDrive/¡rea de Trabalho/Datapath/testbench/Datapath_tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  Datapath_tb

add wave *
view structure
view signals
run -all
