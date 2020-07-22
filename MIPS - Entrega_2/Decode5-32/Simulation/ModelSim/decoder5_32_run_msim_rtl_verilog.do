transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Documentos/Facudade/Faculdade\ -\ P6/CONCEP√á√ÉO\ ESTRUTURADA\ DE\ CIRCUITOS\ INTEGRADOS/MIPS/Entrega\ 2/Decode5-32 {C:/Users/thiag/OneDrive/Documentos/Facudade/Faculdade - P6/CONCEP«√O ESTRUTURADA DE CIRCUITOS INTEGRADOS/MIPS/Entrega 2/Decode5-32/decoder5_32.sv}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Documentos/Facudade/Faculdade\ -\ P6/CONCEP√á√ÉO\ ESTRUTURADA\ DE\ CIRCUITOS\ INTEGRADOS/MIPS/Entrega\ 2/Decode5-32/Testbench {C:/Users/thiag/OneDrive/Documentos/Facudade/Faculdade - P6/CONCEP«√O ESTRUTURADA DE CIRCUITOS INTEGRADOS/MIPS/Entrega 2/Decode5-32/Testbench/decoder5_32_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  decoder5_32_tb

add wave *
view structure
view signals
run -all
