#===========================================================================================
#
# Author:   Isaac Hancock
# Date:     9/23/2020
# Description:
# ---------------------------------------
# Makefile that is responsible for source code hiearchy. Put the highest level
# modules at the bottom and the lowest level modules near the top because those
# near the top are compiled first.
#
#===========================================================================================
SRC_FILES_RTL += \
    $(BASE)/rtl/counter.v 
