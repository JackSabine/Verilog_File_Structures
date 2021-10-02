#===========================================================================================
#
# Author: Isaac Hancock
# Date:   9/22/2021
# Description:
# ---------------------------------------
# Tcl script responsible for setting runtime variables for FPGA synthesis and place & route
#
#===========================================================================================
set result_dir $env(OUTPUT_DIR)
#Specify initial operating conditions
set_operating_conditions -model slow -grade c -temperature 85 -voltage 1200
#Update the timing netlist with the initial conditions
update_timing_netlist
report_timing -file "${result_dir}/timing/85C_slow_1200mv.rpt"
#Perform reporting
#Change initial operating conditions. Use a temperature of 0C
set_operating_conditions -model slow -grade c -temperature 0 -voltage 1200
#Update the timing netlist with the new operating condition
update_timing_netlist
report_timing -file "${result_dir}/timing/0C_slow_1200mv.rpt"
#Perform reporting
#Change initial operating conditions. Use a temperature of 0C and a model of fast
set_operating_conditions -model fast -grade c -temperature 0 -voltage 1200
#Update the timing netlist with the new operating condition
update_timing_netlist
report_timing -file "${result_dir}/timing/0C_fast_1200mv.rpt"
#Perform reporting
report_min_pulse_width -file "${result_dir}/timing/min_pulse_width.rpt"