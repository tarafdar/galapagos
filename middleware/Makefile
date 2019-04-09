################################################################################
# Makefile for Galapagos middleware
#	- all
#	- middleware
#	- hlsmiddleware
#	- clean
#
# Author: Naif Tarafdar
#
# Changelog:
#	1.0 - Mar. 4 2019 - Created (NT)
#	1.1 - Apr. 9 2019 - Added include.mk
################################################################################

# defines guard-%
include $(GALAPAGOS_PATH)/include.mk

HLSMIDDLEWARE_DIR = $(GALAPAGOS_PATH)/middleware/hls 

.PHONY: middleware

all: hlsmiddleware middleware


middleware: ${LOGICALFILE} ${MAPFILE} guard-LOGICALFILE guard-MAPFILE guard-PROJECTNAME guard-GALAPAGOS_PATH 
	mkdir -p ${GALAPAGOS_PATH}/projects
	mkdir -p ${GALAPAGOS_PATH}/projects/${PROJECTNAME}
	python3.5 ${GALAPAGOS_PATH}/middleware/python/globalFPGAParser.py --logicalFile=${LOGICALFILE} --mapFile=${MAPFILE} --projectName=${PROJECTNAME}
	chmod +x ${GALAPAGOS_PATH}/createCluster.sh
	

hlsmiddleware:
	 $(MAKE) -C $(HLSMIDDLEWARE_DIR)

clean: guard-PROJECTNAME
	 $(MAKE) -C $(HLSMIDDLEWARE_DIR) clean
	 rm -rf ${GALAPAGOS_PATH}/projects/${PROJECTNAME}
	 rm -rf ${GALAPAGOS_PATH}/createCluster.sh
	 rm -rf ${GALAPAGOS_PATH}/createSim.sh
