transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/MIPS/21\ -\ Unidade\ de\ Controle {C:/Users/thiag/OneDrive/¡rea de Trabalho/MIPS/21 - Unidade de Controle/fsm.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/MIPS/21\ -\ Unidade\ de\ Controle {C:/Users/thiag/OneDrive/¡rea de Trabalho/MIPS/21 - Unidade de Controle/controle.sv}
vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/MIPS/21\ -\ Unidade\ de\ Controle {C:/Users/thiag/OneDrive/¡rea de Trabalho/MIPS/21 - Unidade de Controle/alu_decoder.sv}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/MIPS/21\ -\ Unidade\ de\ Controle/TestBench {C:/Users/thiag/OneDrive/¡rea de Trabalho/MIPS/21 - Unidade de Controle/TestBench/controle_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  controle_tb

add wave *
view structure
view signals
run -all
