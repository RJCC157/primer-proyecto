vsim -gui -L C:/Modeltech_pe_edu_10.4a/lib/unisim simulacionmaquina unisim.glbl
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /simulacionmaquina/clk
add wave -noupdate -radix binary /simulacionmaquina/rst
add wave -noupdate -radix binary /simulacionmaquina/interruptor
add wave -noupdate -radix binary /simulacionmaquina/temp
add wave -noupdate -radix binary /simulacionmaquina/humo
add wave -noupdate -radix binary /simulacionmaquina/corriente
add wave -noupdate -color Red -radix binary /simulacionmaquina/LEDalerta
add wave -noupdate -color Yellow -radix binary /simulacionmaquina/LEDprevencion
add wave -noupdate -color Green -radix binary /simulacionmaquina/LEDnormal
add wave -noupdate -color Red -radix binary /simulacionmaquina/alarma_alerta
add wave -noupdate -color Yellow -radix binary /simulacionmaquina/alarma_prevencion
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
WaveRestoreZoom {0 ps} {5086 ps}
run -all