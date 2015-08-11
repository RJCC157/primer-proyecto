vsim -gui -L C:/Modeltech_pe_edu_10.4a/lib/unisim simproyecto1 unisim.glbl
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /simproyecto1/clk
add wave -noupdate -radix binary /simproyecto1/rst
add wave -noupdate -radix binary /simproyecto1/interruptor
add wave -noupdate -radix binary /simproyecto1/temp
add wave -noupdate -radix binary /simproyecto1/humo
add wave -noupdate -radix binary /simproyecto1/cor
add wave -noupdate -color Red -radix binary /simproyecto1/LEDalerta
add wave -noupdate -color Yellow -radix binary /simproyecto1/LEDprevencion
add wave -noupdate -color Green -radix binary /simproyecto1/LEDnormal
add wave -noupdate -color Red -radix binary /simproyecto1/alarma_alerta
add wave -noupdate -color Yellow -radix binary /simproyecto1/alarma_prevencion
add wave -noupdate -radix binary /simproyecto1/cualdisplay
add wave -noupdate -radix binary /simproyecto1/display
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
WaveRestoreZoom {0 ps} {838002900 ps}
run -all