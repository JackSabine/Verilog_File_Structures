#===========================================================================================
#
# Author: Isaac Hancock
# Date:   9/22/2021
# Description:
# ---------------------------------------
# Tcl script responsible for setting runtime variables for FPGA synthesis and place & route
#
#===========================================================================================

#==============================================================
# Time Information
#==============================================================

set_time_format -unit ns -decimal_places 3

#==============================================================
# Create Clock
#==============================================================

create_clock -name {clock} -period 10.000 -waveform { 0.000 5.000 } [get_ports {clock}]


#==============================================================
# Create Generated Clock
#==============================================================



#==============================================================
# Set Clock Latency
#==============================================================



#==============================================================
# Set Clock Uncertainty
#==============================================================

derive_clock_uncertainty

#==============================================================
# Set Input Delay
#==============================================================



#==============================================================
# Set Output Delay
#==============================================================



#==============================================================
# Set Clock Groups
#==============================================================



#==============================================================
# Set False Path
#==============================================================



#==============================================================
# Set Multicycle Path
#==============================================================


#==============================================================
# Set Maximum Delay
#==============================================================



#==============================================================
# Set Minimum Delay
#==============================================================



#==============================================================
# Set Input Transition
#==============================================================

