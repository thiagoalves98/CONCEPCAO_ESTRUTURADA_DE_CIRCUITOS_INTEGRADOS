transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/Mux32 {C:/Users/thiag/OneDrive/¡rea de Trabalho/Mux32/tristate.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/Mux32 {C:/Users/thiag/OneDrive/¡rea de Trabalho/Mux32/mux4.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/Mux32 {C:/Users/thiag/OneDrive/¡rea de Trabalho/Mux32/mux2.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/Mux32 {C:/Users/thiag/OneDrive/¡rea de Trabalho/Mux32/inversor.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/Mux32 {C:/Users/thiag/OneDrive/¡rea de Trabalho/Mux32/mux32.sv}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/Mux32/Testbench {C:/Users/thiag/OneDrive/¡rea de Trabalho/Mux32/Testbench/mux32_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  mux32_tb

add wave *
view structure
view signals
run -all
