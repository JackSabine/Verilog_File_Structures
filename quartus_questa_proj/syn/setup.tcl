#===========================================================================================
#
# Author: Isaac Hancock
# Date:   9/22/2021
# Description:
# ---------------------------------------
# Tcl script responsible for setting up project details for Quartus
#
#===========================================================================================
# Pull in environment variables
set Top $env(TOP)
set date $env(DATE)
set src_files $env(SRC_FILES_RTL)
set temp_min $env(TEMP_MIN)
set temp_max $env(TEMP_MAX)
set output_dir $env(OUTPUT_DIR)
set num_processors $env(NUM_PROCESSORS)
# Create New Project
project_new  $Top -overwrite

# Assign family, dvice, and top-level file
set_global_assignment -name FAMILY "MAX 10"
set_global_assignment -name DEVICE 10M08DAF484C8G
set_global_assignment -name ORIGINAL_QUARTUS_VERSION 20.1.1
set_global_assignment -name PROJECT_CREATION_TIME_DATE string($date)
set_global_assignment -name LAST_QUARTUS_VERSION "20.1.1 Lite Edition"
set_global_assignment -name PROJECT_OUTPUT_DIRECTORY $output_dir
set_global_assignment -name MIN_CORE_JUNCTION_TEMP $temp_min
set_global_assignment -name MAX_CORE_JUNCTION_TEMP $temp_max
set_global_assignment -name SDC_FILE constraints.sdc
set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 256
set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (Verilog)"
set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_simulation
set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
# Add all files that are listed in the Makefile
foreach x  $src_files {	;# Now loop and print...
    set_global_assignment -name VERILOG_FILE $x
}

set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

set_global_assignment -name NUM_PARALLEL_PROCESSORS $num_processors
project_close
