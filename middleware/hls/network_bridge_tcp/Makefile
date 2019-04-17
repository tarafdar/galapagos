################################################################################
# Makefile for Galapagos middleware network_bridge_tcp
#
# Author: Naif Tarafdar, Varun Sharma
#
# Changelog:
#	1.0 - Mar. 4 2019 - Created (NT)
#	1.1 - Apr. 9 2019 - Added include.mk  (VS)
################################################################################

# defines guard-%
include $(GALAPAGOS_PATH)/include.mk


HLSMIDDLEWAREIP = network_bridge_tcp

all: guard-GALAPAGOS_PATH guard-GALAPAGOS_HLS_PATH guard-GALAPAGOS_BOARD_NAME


INCLUDE = -I $(GALAPAGOS_PATH)/middleware/hls/$(HLSMIDDLEWAREIP)/include -I $(GALAPAGOS_PATH)/middleware/include -I $(GALAPAGOS_HLS_PATH)/include
SIM_FLAGS = -DSIM
BOARD_PATH = $(GALAPAGOS_PATH)/hlsBuild/$(GALAPAGOS_BOARD_NAME)
HLS_PATH = $(GALAPAGOS_PATH)/middleware/hls/$(HLSMIDDLEWAREIP)



hls:
	mkdir -p $(BOARD_PATH)/ip/$(HLSMIDDLEWAREIP)
	vivado_hls $(GALAPAGOS_PATH)/middleware/hls/$(HLSMIDDLEWAREIP)/generate_hls.tcl

clean:
	rm -rf $(BOARD_PATH)/ip/$(HLSMIDDLEWAREIP)
