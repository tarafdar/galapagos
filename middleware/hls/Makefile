################################################################################
# Makefile for Galapagos middleware hls
#	- all
#	- clean
#
# Author: Naif Tarafdar, Varun Sharma
#
# Changelog:
#	1.0 - Mar. 4 2019 - Created (NT)
#	1.1 - Apr. 9 2019 - Added include.mk (VS)
################################################################################

# defines guard-%
include $(GALAPAGOS_PATH)/include.mk

SUBDIRS := $(wildcard */.)

.PHONY: all clean

all clean: guard-GALAPAGOS_PATH guard-GALAPAGOS_HLS_PATH guard-GALAPAGOS_BOARD_NAME
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir -f Makefile $@; \
	done
