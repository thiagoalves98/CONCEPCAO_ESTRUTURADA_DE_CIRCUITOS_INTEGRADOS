transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/13\ -\ Mux2\ 32\ bit {C:/Users/thiag/OneDrive/¡rea de Trabalho/13 - Mux2 32 bit/inversor.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/13\ -\ Mux2\ 32\ bit {C:/Users/thiag/OneDrive/¡rea de Trabalho/13 - Mux2 32 bit/tristate.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/13\ -\ Mux2\ 32\ bit {C:/Users/thiag/OneDrive/¡rea de Trabalho/13 - Mux2 32 bit/mux2.sv}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/13\ -\ Mux2\ 32\ bit/Testbench {C:/Users/thiag/OneDrive/¡rea de Trabalho/13 - Mux2 32 bit/Testbench/mux2_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  mux2_tb

add wave *
view structure
view signals
run -all
