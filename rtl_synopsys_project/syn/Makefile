#	This makefile assumes the file structure:
#
#	+---PARENT-FOLDER
#	|	+---rtl/
#	|	|	+---dependency_modules.v
#	|	|	+---verilog_modules.v
#	|	|	+---...
#	|	+---syn/
#	|	|	+---read.tcl
#	|	|	+---setup.tcl
#	|	|	+---Constraints.tcl
#	|	|	+---CompileAnalyze_Init.tcl
#	|	|	+---CompileAnalyze.tcl
#	|	|	+---.synopsys_dc.setup
#	|	+---Makefile (this file!!!)
#

BASE 				:= $(shell cd ../ ; pwd )
SYNDIR 				:= $(BASE)/syn
RTLDIR 				:= $(BASE)/rtl

export TIMING_DIR	:= $(SYNDIR)/timing
export WORK_DIR		:= $(SYNDIR)/work
export DETAILS_DIR	:= $(SYNDIR)/details

export CLK_NAME		:= clock
export CLK_PER		:= 10
export TOP_NAME		:= arbiter
export TYPE			:= tut1




# Include rtl files
include $(BASE)/rtl/rtl_make.mk	
export SRC_FILES_RTL

# Targets for make
init: clean
	[ -d $(WORK_DIR) ] || mkdir $(WORK_DIR); \
	add synopsys2019;

compile:
	design_vision -shell dc_shell -no_gui;


.PHONY: clean

clean:
	@if [ -d "$(WORK_DIR)" ]; then \
		rm -r $(WORK_DIR); \
	fi

reset: clean
	@if [ -d "$(TIMING_DIR)" ]; then \
		rm -r $(TIMING_DIR); \
	fi

	@if [ -d "$(DETAILS_DIR)" ]; then \
		rm -r $(DETAILS_DIR); \
	fi