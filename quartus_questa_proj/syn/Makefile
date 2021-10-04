#===========================================================================================
#
# Author:   Isaac Hancock
# Date:     9/23/2020
# Description:
# ---------------------------------------
# Makefile to bring HDL code base into Quartus Lite.
# Currently handles Synthesis, place and route, along with Timing Analysis.
#
# Valid Arguments:
# > make build          // starts FPGA build and loads quartus if you add GUI=1(ie make build GUI=1)
# > make clean          // cleans build files from working directory
# > make build GUI=1    // Builds FPGA and loads quartus GUI. If this is not defined it is 
#                              default command line mode
#
#===========================================================================================
current_dir := $(shell pwd)
BASE := $(shell cd ../ ; pwd )

# Export variables for TCL script use
export PROJECT_NAME := ECE564_HW4
export TOP := counter
export TOP_NAME := counter
export DATE := $(shell date)
export OUTPUT_DIR := $(BASE)/syn/results
export TEMP_MIN := 0
export TEMP_MAX := 85
export NUM_PROCESSORS := 2


include ../rtl/rtl_make.mk
export SRC_FILES_RTL
#include RTL to be compiled


#Synthesize the FPGA:
clean:
    rm -rf *.rpt *.chg smart.log *.htm *.eqn *.pin *.sof *.pof db incremental_db *.qpf *.map *.qsf *.done *.qws *.jdi *.summary *.smsg *.sld
    rm -r $(OUTPUT_DIR)

report_timing: build  
    quartus_sta counter --report_script=reports.tcl
    quartus_sta counter --model=fast
    quartus_sta counter --model=slow;

build: compile
    echo $(SRC_FILES_RTL)
    quartus_fit $(TOP) 
    quartus_asm $(TOP)

compile: setup
    quartus_map $(TOP)

setup: 
    quartus_sh -t setup.tcl

ifdef GUI
    quartus $(TOP)
endif 