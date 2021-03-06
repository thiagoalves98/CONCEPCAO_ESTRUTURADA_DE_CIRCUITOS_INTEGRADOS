transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/MIPS/20\ -\ ALU {C:/Users/thiag/OneDrive/�rea de Trabalho/MIPS/20 - ALU/inversor.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/MIPS/20\ -\ ALU {C:/Users/thiag/OneDrive/�rea de Trabalho/MIPS/20 - ALU/mux2.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/MIPS/20\ -\ ALU {C:/Users/thiag/OneDrive/�rea de Trabalho/MIPS/20 - ALU/mux4.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/MIPS/20\ -\ ALU {C:/Users/thiag/OneDrive/�rea de Trabalho/MIPS/20 - ALU/mux8.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/MIPS/20\ -\ ALU {C:/Users/thiag/OneDrive/�rea de Trabalho/MIPS/20 - ALU/somador.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/MIPS/20\ -\ ALU {C:/Users/thiag/OneDrive/�rea de Trabalho/MIPS/20 - ALU/tristate.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/MIPS/20\ -\ ALU {C:/Users/thiag/OneDrive/�rea de Trabalho/MIPS/20 - ALU/alu.sv}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/MIPS/20\ -\ ALU/TestBench {C:/Users/thiag/OneDrive/�rea de Trabalho/MIPS/20 - ALU/TestBench/alu_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  alu_tb

add wave *
view structure
view signals
run -all
