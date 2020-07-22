transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/shiftpc {C:/Users/thiag/OneDrive/¡rea de Trabalho/shiftpc/shiftpc.sv}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/shiftpc/testbench {C:/Users/thiag/OneDrive/¡rea de Trabalho/shiftpc/testbench/shiftpc_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  shiftpc_tb

add wave *
view structure
view signals
run -all
