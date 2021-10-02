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

BASE 		:= $(shell cd ../ ; pwd )
SYNDIR 		:= $(BASE)/syn
RTLDIR 		:= $(BASE)/rtl

TIMINGDIR	:= $(SYNDIR)/timing



# Include rtl files
include $(BASE)/rtl/rtl_make.mk	

# This is the name of the testbench ModelSim will run (should be found in one of the included TB_FILES)
TB_NAME := your_tb_modulename_here


# # Targets for make
init: clean


.PHONY: clean

clean

# compileall:	clean
# 	mkdir $(SIMDIR)/temp; vlib $(SIMDIR)/temp/workingDir; vmap work $(SIMDIR)/temp/workingDir; touch $(DOFILE);
# 	vlog $(DEPS) $(RTL_FILES) $(TB_FILES);
	
# clean:
# 	if [ -d "$(SIMDIR)/temp" ]; then \
#         rm -r $(SIMDIR)/temp; \
# 	fi

# sim:		compileall
# 	echo "run -all" >> $(DOFILE); vsim -do $(DOFILE) -c $(TB_NAME);

# sim_g: 		compileall
# 	echo "log -r /*" >> $(DOFILE); echo "onfinish stop" >> $(DOFILE); echo "do wave.do" >> $(DOFILE); vsim $(TB_NAME) -do $(DOFILE) -gui;

# ```write format wave wave.do``` in ModelSim to save current wave configuration
