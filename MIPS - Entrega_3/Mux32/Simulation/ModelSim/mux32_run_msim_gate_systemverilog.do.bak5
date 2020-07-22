transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {mux32_6_1200mv_85c_slow.svo}

vlog -sv -work work +incdir+C:/Users/thiag/OneDrive/√Årea\ de\ Trabalho/Mux32/Testbench {C:/Users/thiag/OneDrive/¡rea de Trabalho/Mux32/Testbench/mux32_tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_mf_ver -L altera_ver -L lpm_ver -L sgate_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L gate_work -L work -voptargs="+acc"  mux32_tb

add wave *
view structure
view signals
run -all
