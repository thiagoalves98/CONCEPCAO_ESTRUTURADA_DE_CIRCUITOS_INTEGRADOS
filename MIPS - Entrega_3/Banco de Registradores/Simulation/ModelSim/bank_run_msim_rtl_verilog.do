transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/Banco\ de\ Registradores {C:/Users/thiag/OneDrive/¡rea de Trabalho/Banco de Registradores/flopenr.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/Banco\ de\ Registradores {C:/Users/thiag/OneDrive/¡rea de Trabalho/Banco de Registradores/bank.sv}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/Banco\ de\ Registradores/Testbench {C:/Users/thiag/OneDrive/¡rea de Trabalho/Banco de Registradores/Testbench/bank_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  bank_tb

add wave *
view structure
view signals
run -all
