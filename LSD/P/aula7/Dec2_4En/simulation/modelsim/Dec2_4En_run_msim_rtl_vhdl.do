transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/ua/LSD/P/aula7/Dec2_4En/Dec2_4En.vhd}

