transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/13\ -\ Mux4\ 32bit {C:/Users/thiag/OneDrive/¡rea de Trabalho/13 - Mux4 32bit/inversor.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/13\ -\ Mux4\ 32bit {C:/Users/thiag/OneDrive/¡rea de Trabalho/13 - Mux4 32bit/mux2.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/13\ -\ Mux4\ 32bit {C:/Users/thiag/OneDrive/¡rea de Trabalho/13 - Mux4 32bit/tristate.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/13\ -\ Mux4\ 32bit {C:/Users/thiag/OneDrive/¡rea de Trabalho/13 - Mux4 32bit/mux4.sv}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/13\ -\ Mux4\ 32bit/Testbench {C:/Users/thiag/OneDrive/¡rea de Trabalho/13 - Mux4 32bit/Testbench/mux4_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  mux4_tb

add wave *
view structure
view signals
run -all
