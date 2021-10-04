#===========================================================================================
#
# Author:	Isaac Hancock
# Date:		8/12/2020
# Description:
# ---------------------------------------
# Makefile that is in charge of compiling HDL source code and simulation in Modelsim
# Should be loacted uner your sim folder.
#
# Valid Arguments:
# ---------------------------------------
# > make compile	// compiles rtl and tb
# > make clean	// cleans temp directory and modelsim generated files
# > make sim_g 	// Simulate modelsim with GUI
# > make sim_c 	// Simulates modelsim with command line mode
#
#===========================================================================================
current_dir := $(shell pwd)
BASE := $(shell cd ../ ; pwd )


# Environment Variables
# Assumes that you have a top module TOP_NAME
# As of right now PROJECT_NAME is irrelevant
TB_FILES  := $(BASE)/sim/src
PROJECT_NAME := tb_ece_310
TOP_NAME := proj2_tb

# Ignore this. This is the path to the generate do file.
DOFILE := $(BASE)/sim/temp/setup.do


#If you have a vector file include its path here
VECTOR_FILE := $(BASE)/rtl/memory.list

# include RTL to be compiled. This file should be located under your rtl
# folder and have a \ seperated list of absolute paths. Use $(BASE) to 
# shorten the path as this references your current directory that holds rtl, 
# syn, and sim folders
#include ../rtl/rtl_make.mk


#Source files that need to be compiled for the tb. RTL make file should reflect this
SRC_FILES_SIM += \
	$(BASE)/rtl/proj2.v 
	

compile: 
	mkdir temp ; cd temp ; vlib my_lib ;  cp $(VECTOR_FILE) .; vmap work $(current_dir)/temp/my_lib
	cd temp ; vlog -compat $(SRC_FILES_SIM); rm $(DOFILE); touch $(DOFILE);
clean:
	rm -r temp; rm transcript
	
# GUI simulation
sim_g: compile
	echo "log -r /*" >> $(DOFILE); echo "onfinish stop" >> $(DOFILE); echo "do wave.do" >> $(DOFILE); cd temp; vsim $(TOP_NAME) -do $(DOFILE) -gui

# Command Line Simulation	
sim_c: compile
	echo "run -all" >> $(DOFILE); cd temp; vsim -c $(TOP_NAME) -do $(DOFILE)	