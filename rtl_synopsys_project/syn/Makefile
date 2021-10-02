#	This makefile assumes the file structure:
#
#	+---PARENT-FOLDER
#	|	+---rtl/
#	|	|	+---dependency_modules.v
#	|	|	+---verilog_modules.v
#	|	|	+---...
#	|	+---syn/
#	|	|	+---Constraints.tcl
#	|	|	+---CompileAnalyze.tcl
#	|	|	+---.synopsys_dc.setup
#	|	|	+---Makefile (this file!!!)
#

BASE 				:= $(shell cd ../ ; pwd )
SYNDIR 				:= $(BASE)/syn
RTLDIR 				:= $(BASE)/rtl

export OUTPUT_DIR	:= $(SYNDIR)/output
export WORK_DIR		:= $(SYNDIR)/work

export CLK_NAME		:= clock
export CLK_PER		:= 2
export TOP_NAME		:= arbiter
export TYPE		:= clock500
export report_default_significant_digits := 4

# Include rtl files
include $(BASE)/rtl/rtl_make.mk	
export SRC_FILES_RTL

# Targets for make
init: clean
	@[ -d $(WORK_DIR) ] || mkdir $(WORK_DIR); \
	[ -d $(OUTPUT_DIR) ] || mkdir $(OUTPUT_DIR); \
	add synopsys2019;

read:
	design_vision -no_gui -x "read_verilog $(SRC_FILES_RTL); exit;";

compile:
	design_vision -no_gui -x "read_verilog $(SRC_FILES_RTL); source Constraints.tcl; source CompileAnalyze.tcl; exit;";

.PHONY: clean

clean:
	@if [ -d "$(WORK_DIR)" ]; then \
		rm -r $(WORK_DIR); \
	fi

superclean: clean
	@if [ -d "$(OUTPUT_DIR)" ]; then \
		rm -r $(OUTPUT_DIR); \
	fi

	@if [ -d "$(SYNDIR)/alib-52" ]; then \
		rm -r $(SYNDIR)/alib-52; \
	fi
