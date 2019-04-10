################################################################################
# Makefile for Galapagos middleware
#	- all
#	- middleware
#	- hlsmiddleware
#	- clean
#
# Author: Naif Tarafdar, Varun Sharma
#
# Changelog:
#	1.0 - Mar. 4 2019 - Created (NT)
#	1.1 - Apr. 9 2019 - Added include.mk and changed variables/paths (VS)
################################################################################

# defines guard-%
include $(GALAPAGOS_PATH)/include.mk

middleware_path = $(GALAPAGOS_PATH)/middleware
hls_path = $(middleware_path)/hls
python_path = $(middleware_path)/python

.PHONY: middleware

all: middleware hlsmiddleware

middleware: guard-LOGICALFILE guard-MAPFILE guard-PROJECTNAME ${LOGICALFILE} ${MAPFILE}
	python3.5 ${python_path}/globalFPGAParser.py --logicalFile=${LOGICALFILE} \
		--mapFile=${MAPFILE} --projectName=${PROJECTNAME}
	chmod +x $(GALAPAGOS_PATH)/projects/$(PROJECTNAME)/createCluster.sh

hlsmiddleware:
	 $(MAKE) -C $(hls_path)

clean: guard-PROJECTNAME
	 $(MAKE) -C $(hls_path) clean
	 rm -rf ${GALAPAGOS_PATH}/projects/${PROJECTNAME}
	 rm -rf ${GALAPAGOS_PATH}/createCluster.sh
	 rm -rf ${GALAPAGOS_PATH}/createSim.sh
