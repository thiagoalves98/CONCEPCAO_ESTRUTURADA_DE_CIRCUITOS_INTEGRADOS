transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/Register\ File {C:/Users/thiag/OneDrive/�rea de Trabalho/Register File/decoder5_32.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/Register\ File {C:/Users/thiag/OneDrive/�rea de Trabalho/Register File/tristate.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/Register\ File {C:/Users/thiag/OneDrive/�rea de Trabalho/Register File/mux32.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/Register\ File {C:/Users/thiag/OneDrive/�rea de Trabalho/Register File/mux4.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/Register\ File {C:/Users/thiag/OneDrive/�rea de Trabalho/Register File/mux2.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/Register\ File {C:/Users/thiag/OneDrive/�rea de Trabalho/Register File/inversor.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/Register\ File {C:/Users/thiag/OneDrive/�rea de Trabalho/Register File/flopenr.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/Register\ File {C:/Users/thiag/OneDrive/�rea de Trabalho/Register File/bank.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/Register\ File {C:/Users/thiag/OneDrive/�rea de Trabalho/Register File/register.sv}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/Register\ File/Testbench {C:/Users/thiag/OneDrive/�rea de Trabalho/Register File/Testbench/register_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  register_tb

add wave *
view structure
view signals
run -all
