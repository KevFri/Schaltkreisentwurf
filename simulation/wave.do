onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Eingänge
add wave -noupdate /test1/A
add wave -noupdate /test1/Aint
add wave -noupdate /test1/B
add wave -noupdate /test1/Bint
add wave -noupdate /test1/C
add wave -noupdate /test1/Cint
add wave -noupdate -divider Ausgänge
add wave -noupdate -itemcolor Magenta /test1/X
add wave -noupdate /test1/Y
add wave -noupdate /test1/Z
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3180 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ps} {60 ps}
