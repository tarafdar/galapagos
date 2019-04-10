################################################################################
# Makefile for Galapagos middleware router
#
# Author: Naif Tarafdar, Varun Sharma
#
# Changelog:
#	1.0 - Mar. 4 2019 - Created (NT)
#	1.1 - Apr. 9 2019 - Added include.mk (VS)
################################################################################

# defines guard-%
include $(GALAPAGOS_PATH)/include.mk

HLSMIDDLEWAREIP = router

all: sim.exe hls guard-GALAPAGOS_PATH guard-GALAPAGOS_HLS_PATH guard-GALAPAGOS_BOARD_NAME


INCLUDE = -I $(GALAPAGOS_PATH)/middleware/hls/$(HLSMIDDLEWAREIP)/include -I $(GALAPAGOS_PATH)/middleware/include -I $(GALAPAGOS_HLS_PATH)/include
SIM_FLAGS = -DSIM 
BOARD_PATH = $(GALAPAGOS_PATH)/hlsBuild/$(GALAPAGOS_BOARD_NAME)
HLS_PATH = $(GALAPAGOS_PATH)/middleware/hls/$(HLSMIDDLEWAREIP)



sim.exe:
	mkdir -p $(BOARD_PATH)/csim/$(HLSMIDDLEWAREIP)
	g++ $(HLS_PATH)/tb/*.cpp $(HLS_PATH)/src/*.cpp $(SIM_FLAGS) $(INCLUDE) -o $(BOARD_PATH)/csim/$(HLSMIDDLEWAREIP)/sim.exe


hls: $(HLS_PATH)/src/*.cpp  
	mkdir -p $(BOARD_PATH)/ip/width48/$(HLSMIDDLEWAREIP)
	mkdir -p $(BOARD_PATH)/ip/width32/$(HLSMIDDLEWAREIP)
	vivado_hls $(GALAPAGOS_PATH)/middleware/hls/$(HLSMIDDLEWAREIP)/generate_hls.tcl -tclargs 48
	vivado_hls $(GALAPAGOS_PATH)/middleware/hls/$(HLSMIDDLEWAREIP)/generate_hls.tcl -tclargs 32

clean:
	rm -rf $(BOARD_PATH)/csim/$(HLSMIDDLEWAREIP)
	rm -rf $(BOARD_PATH)/ip/width48/$(HLSMIDDLEWAREIP)
	rm -rf $(BOARD_PATH)/ip/width32/$(HLSMIDDLEWAREIP)
