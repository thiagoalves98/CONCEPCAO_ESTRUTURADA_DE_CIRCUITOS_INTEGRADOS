transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {decoder5_32_6_1200mv_85c_slow.vo}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Documentos/Facudade/Faculdade\ -\ P6/CONCEP√á√ÉO\ ESTRUTURADA\ DE\ CIRCUITOS\ INTEGRADOS/MIPS/Entrega\ 2/Decode5-32/Testbench {C:/Users/thiag/OneDrive/Documentos/Facudade/Faculdade - P6/CONCEP«√O ESTRUTURADA DE CIRCUITOS INTEGRADOS/MIPS/Entrega 2/Decode5-32/Testbench/decoder5_32_tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  decoder5_32_tb

add wave *
view structure
view signals
run -all
