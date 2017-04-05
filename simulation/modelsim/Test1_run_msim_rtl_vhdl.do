transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Kevin/Dropbox/Studium/ET6/Schaltkreisentwurf/FPGA/Test1.vhd}
vcom -93 -work work {C:/Users/Kevin/Dropbox/Studium/ET6/Schaltkreisentwurf/FPGA/Test1_tester.vhd}
vcom -93 -work work {C:/Users/Kevin/Dropbox/Studium/ET6/Schaltkreisentwurf/FPGA/Test1_tb.vhd}

vcom -93 -work work {C:/Users/Kevin/Dropbox/Studium/ET6/Schaltkreisentwurf/FPGA/Test1_tester.vhd}
vcom -93 -work work {C:/Users/Kevin/Dropbox/Studium/ET6/Schaltkreisentwurf/FPGA/Test1_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  Test1_tb

add wave *
view structure
view signals
run -all
