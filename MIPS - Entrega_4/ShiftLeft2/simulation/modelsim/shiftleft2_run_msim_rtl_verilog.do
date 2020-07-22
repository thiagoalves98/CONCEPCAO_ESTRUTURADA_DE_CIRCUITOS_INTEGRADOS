transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/shiftleft2 {C:/Users/thiag/OneDrive/¡rea de Trabalho/shiftleft2/shiftleft2.sv}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/shiftleft2/testbench {C:/Users/thiag/OneDrive/¡rea de Trabalho/shiftleft2/testbench/shiftleft2_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  shiftleft2_tb

add wave *
view structure
view signals
run -all
