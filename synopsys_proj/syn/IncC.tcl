if { $argc != 2 } {
    puts "Need two args"
} else {
    set CLK_PER = [lindex $argv 1]
    puts $CLK_PER
    create_clock -name $clkname -period $CLK_PER -waveform "0 [expr $CLK_PER / 2]" $clkname
}