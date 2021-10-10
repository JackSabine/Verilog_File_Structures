#	This makefile assumes the file structure:
#
#	+---PARENT-FOLDER
#	|	+---rtl/
#	|	|	+---dependency_modules.v
#	|	|	+---verilog_modules.v
#	|	|	+---...
#	|	+---sim/
#	|	|	+---verilog_testbenches.v
#	|	|	+---...
#	|	+---Makefile (this file!!!)
#

BASE 	:= $(shell cd ../ ; pwd )
SIMDIR 	:= $(BASE)/sim
RTLDIR 	:= $(BASE)/rtl

DOFILE := $(SIMDIR)/temp/setup.do

# Include rtl files
include ../rtl/rtl_make.mk	

# Include all testbench files in this variable
TB_FILES 	= \
	$(SIMDIR)/*.v

# This is the name of the testbench ModelSim will run (should be found in one of the included TB_FILES)
TB_NAME := your_tb_modulename_here


# Targets for make

compile: clean
	mkdir $(SIMDIR)/temp; vlib $(SIMDIR)/temp/workingDir; vmap work $(SIMDIR)/temp/workingDir; touch $(DOFILE);
	vlog $(SRC_FILES_RTL) $(TB_FILES);
	
clean:
	@if [ -d "$(SIMDIR)/temp" ]; then \
        rm -r $(SIMDIR)/temp; \
	fi

sim: compile
	echo "run -all" >> $(DOFILE); vsim -do $(DOFILE) -c $(TB_NAME);

sim_g: compile
	echo "log -r /*" >> $(DOFILE); echo "onfinish stop" >> $(DOFILE); echo "do wave.do" >> $(DOFILE); vsim $(TB_NAME) -do $(DOFILE) -gui;

# ```write format wave wave.do``` in ModelSim to save current wave configuration