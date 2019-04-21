################################################################################
# Makefile for Galapagos
#	- all
#	- example_shell
#	- middleware
#	- hlsmiddleware
#	- clean
#
# Author: Naif Tarafdar, Varun Sharma
#
# Changelog:
#	1.0 - Mar. 4 2019 - Created (NT)
#	1.1 - Apr. 9 2019 - Added include.mk (VS)
################################################################################

# defines guard-%
include include.mk

MIDDLEWARE_DIR = $(GALAPAGOS_PATH)/middleware
SHELLS_DIR = $(GALAPAGOS_PATH)/shells
HLSMIDDLEWARE_DIR = $(GALAPAGOS_PATH)/middleware/hls 

.PHONY: middleware

all: hlsmiddleware middleware

example_shell:
	mkdir -p $(GALAPAGOS_PATH)/projects
	$(MAKE) -C $(SHELLS_DIR) example 

middleware: ${LOGICALFILE} ${MAPFILE} guard-LOGICALFILE guard-MAPFILE guard-PROJECTNAME
	mkdir -p $(GALAPAGOS_PATH)/projects
	$(MAKE) -C $(MIDDLEWARE_DIR) middleware 
	
hlsmiddleware:
	mkdir -p $(GALAPAGOS_PATH)/hlsBuild
	$(MAKE) -C $(MIDDLEWARE_DIR) hlsmiddleware

clean:
	$(MAKE) -C $(MIDDLEWARE_DIR) clean
	$(MAKE) -C $(SHELLS_DIR) clean
