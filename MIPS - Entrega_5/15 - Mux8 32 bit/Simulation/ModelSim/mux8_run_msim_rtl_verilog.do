transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/15\ -\ Mux8\ 32\ bit {C:/Users/thiag/OneDrive/¡rea de Trabalho/15 - Mux8 32 bit/tristate.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/15\ -\ Mux8\ 32\ bit {C:/Users/thiag/OneDrive/¡rea de Trabalho/15 - Mux8 32 bit/mux8.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/15\ -\ Mux8\ 32\ bit {C:/Users/thiag/OneDrive/¡rea de Trabalho/15 - Mux8 32 bit/mux4.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/15\ -\ Mux8\ 32\ bit {C:/Users/thiag/OneDrive/¡rea de Trabalho/15 - Mux8 32 bit/mux2.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/15\ -\ Mux8\ 32\ bit {C:/Users/thiag/OneDrive/¡rea de Trabalho/15 - Mux8 32 bit/inversor.sv}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/15\ -\ Mux8\ 32\ bit/Testbench {C:/Users/thiag/OneDrive/¡rea de Trabalho/15 - Mux8 32 bit/Testbench/mux8_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  mux8_tb

add wave *
view structure
view signals
run -all
