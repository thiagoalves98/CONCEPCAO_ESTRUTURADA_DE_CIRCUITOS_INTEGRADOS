transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {mux8_7_1200mv_85c_slow.svo}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/Área\ de\ Trabalho/MIPS/15\ -\ Mux8\ 32\ bit/Testbench {C:/Users/thiag/OneDrive/�rea de Trabalho/MIPS/15 - Mux8 32 bit/Testbench/mux8_tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_mf_ver -L altera_ver -L lpm_ver -L sgate_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L gate_work -L work -voptargs="+acc"  mux8_tb

add wave *
view structure
view signals
run -all
