onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label opcode -radix hexadecimal /project1_tb/dut/control_unit_inst/opcode
add wave -noupdate -label loadMDR /project1_tb/dut/control_unit_inst/loadMDR
add wave -noupdate -label state -radix hexadecimal /project1_tb/dut/control_unit_inst/state
add wave -noupdate -divider RAM
add wave -noupdate -label R/W -radix hexadecimal /project1_tb/dut/ram_inst/we
add wave -noupdate -label {data in} -radix hexadecimal /project1_tb/dut/ram_inst/din
add wave -noupdate -expand -group RAM -label {[0]} -radix hexadecimal {/project1_tb/dut/ram_inst/MEM[0]}
add wave -noupdate -expand -group RAM -label {[1]} -radix hexadecimal {/project1_tb/dut/ram_inst/MEM[1]}
add wave -noupdate -expand -group RAM -label {[2]} -radix hexadecimal {/project1_tb/dut/ram_inst/MEM[2]}
add wave -noupdate -expand -group RAM -label {[3]} -radix hexadecimal {/project1_tb/dut/ram_inst/MEM[3]}
add wave -noupdate -expand -group RAM -label {[4]} -radix hexadecimal {/project1_tb/dut/ram_inst/MEM[4]}
add wave -noupdate -expand -group RAM -label {[5]} -radix hexadecimal {/project1_tb/dut/ram_inst/MEM[5]}
add wave -noupdate -expand -group RAM -label {[6]} -radix hexadecimal {/project1_tb/dut/ram_inst/MEM[6]}
add wave -noupdate -expand -group RAM -label {[7]} -radix hexadecimal {/project1_tb/dut/ram_inst/MEM[7]}
add wave -noupdate -expand -group RAM -label {[8]} -radix hexadecimal {/project1_tb/dut/ram_inst/MEM[8]}
add wave -noupdate -expand -group RAM -label {[9]} -radix hexadecimal {/project1_tb/dut/ram_inst/MEM[9]}
add wave -noupdate -expand -group RAM -label {[10]} -radix hexadecimal {/project1_tb/dut/ram_inst/MEM[10]}
add wave -noupdate -expand -group RAM -label {[11]} -radix hexadecimal {/project1_tb/dut/ram_inst/MEM[11]}
add wave -noupdate -expand -group RAM -label {[12]} -radix hexadecimal {/project1_tb/dut/ram_inst/MEM[12]}
add wave -noupdate -expand -group RAM -label {[13]} -radix hexadecimal {/project1_tb/dut/ram_inst/MEM[13]}
add wave -noupdate -expand -group RAM -label {[14]} -radix hexadecimal {/project1_tb/dut/ram_inst/MEM[14]}
add wave -noupdate -label q -radix hexadecimal -childformat {{{/project1_tb/dut/ram_inst/q[15]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/q[14]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/q[13]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/q[12]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/q[11]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/q[10]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/q[9]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/q[8]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/q[7]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/q[6]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/q[5]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/q[4]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/q[3]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/q[2]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/q[1]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/q[0]} -radix hexadecimal}} -subitemconfig {{/project1_tb/dut/ram_inst/q[15]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/q[14]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/q[13]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/q[12]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/q[11]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/q[10]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/q[9]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/q[8]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/q[7]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/q[6]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/q[5]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/q[4]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/q[3]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/q[2]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/q[1]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/q[0]} {-height 15 -radix hexadecimal}} /project1_tb/dut/ram_inst/q
add wave -noupdate -label address -radix hexadecimal /project1_tb/dut/ram_inst/addr
add wave -noupdate -label {data out} -radix hexadecimal -childformat {{{/project1_tb/dut/ram_inst/dout[15]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/dout[14]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/dout[13]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/dout[12]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/dout[11]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/dout[10]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/dout[9]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/dout[8]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/dout[7]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/dout[6]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/dout[5]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/dout[4]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/dout[3]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/dout[2]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/dout[1]} -radix hexadecimal} {{/project1_tb/dut/ram_inst/dout[0]} -radix hexadecimal}} -subitemconfig {{/project1_tb/dut/ram_inst/dout[15]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/dout[14]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/dout[13]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/dout[12]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/dout[11]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/dout[10]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/dout[9]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/dout[8]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/dout[7]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/dout[6]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/dout[5]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/dout[4]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/dout[3]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/dout[2]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/dout[1]} {-height 15 -radix hexadecimal} {/project1_tb/dut/ram_inst/dout[0]} {-height 15 -radix hexadecimal}} /project1_tb/dut/ram_inst/dout
add wave -noupdate -radix hexadecimal /project1_tb/dut/control_unit_inst/opcode
add wave -noupdate -radix hexadecimal /project1_tb/dut/datapath_inst/IR_reg
add wave -noupdate -radix hexadecimal /project1_tb/dut/datapath_inst/IR_next
add wave -noupdate /project1_tb/dut/datapath_inst/loadIR
add wave -noupdate -divider Registers
add wave -noupdate -label {ACC Reg} -radix hexadecimal /project1_tb/dut/datapath_inst/ACC_reg
add wave -noupdate -label {MDR Reg} -radix hexadecimal /project1_tb/dut/datapath_inst/MDR_reg
add wave -noupdate -label {MAR Reg} -radix hexadecimal /project1_tb/dut/datapath_inst/MAR_reg
add wave -noupdate -label {PC Reg} -radix hexadecimal /project1_tb/dut/datapath_inst/PC_reg
add wave -noupdate -label {IR Reg} -radix hexadecimal /project1_tb/dut/datapath_inst/IR_reg
add wave -noupdate -divider Misc
add wave -noupdate /project1_tb/dut/control_unit_inst/loadACC
add wave -noupdate /project1_tb/dut/control_unit_inst/muxACC
add wave -noupdate /project1_tb/dut/datapath_inst/clk
add wave -noupdate -radix hexadecimal /project1_tb/dut/datapath_inst/alu_inst/Rout
add wave -noupdate /project1_tb/dut/datapath_inst/alu_inst/opALU
add wave -noupdate /project1_tb/dut/datapath_inst/alu_inst/mult/done
add wave -noupdate -radix hexadecimal /project1_tb/dut/datapath_inst/alu_inst/mult/A
add wave -noupdate -radix hexadecimal /project1_tb/dut/datapath_inst/alu_inst/mult/B
add wave -noupdate -radix hexadecimal /project1_tb/dut/datapath_inst/alu_inst/A
add wave -noupdate -radix hexadecimal /project1_tb/dut/datapath_inst/alu_inst/B
add wave -noupdate -radix hexadecimal /project1_tb/dut/datapath_inst/ACC_next
add wave -noupdate /project1_tb/dut/datapath_inst/zflag
add wave -noupdate /project1_tb/dut/datapath_inst/muxPC
add wave -noupdate /project1_tb/dut/control_unit_inst/zflag
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9943463 ps} 0} {{Cursor 2} {125586 ps} 0}
quietly wave cursor active 2
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
configure wave -timelineunits ns
update
WaveRestoreZoom {87918 ps} {153544 ps}
