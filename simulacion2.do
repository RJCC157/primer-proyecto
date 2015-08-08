vsim -gui -L C:/Modeltech_pe_edu_10.4a/lib/unisim prueba unisim.glbl
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /prueba/clk
add wave -noupdate /prueba/reset
add wave -noupdate /prueba/hexa3
add wave -noupdate /prueba/hexa2
add wave -noupdate /prueba/hexa1
add wave -noupdate /prueba/hexa0
add wave -noupdate /prueba/puntos4
add wave -noupdate /prueba/cualdisplay
add wave -noupdate /prueba/sieteseg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {6550977024 ps} {6551058400 ps}
run -all