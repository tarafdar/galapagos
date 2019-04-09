#Makefile for Galapagos

#Author: Naif Tarafdar


HLSMIDDLEWAREIP = network_bridge_tcp


# checks that environment variables are set prior to running targets
guard-%:
	@ if [ "${${*}}" = "" ]; then \
		echo "Variable $* not set"; \
		exit 1; \
	fi


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




