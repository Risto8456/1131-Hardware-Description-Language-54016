onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal -radixshowbase 1 /alu_tb/A
add wave -noupdate -radix decimal -radixshowbase 1 /alu_tb/B
add wave -noupdate -radix hexadecimal -radixshowbase 1 /alu_tb/op
add wave -noupdate -radix decimal -radixshowbase 1 /alu_tb/Y
add wave -noupdate -radix binary -radixshowbase 1 /alu_tb/Y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {44 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 97
configure wave -valuecolwidth 63
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
WaveRestoreZoom {169 ps} {347 ps}
