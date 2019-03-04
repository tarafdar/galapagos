#Makefile for Galapagos

#Author: Naif Tarafdar


# checks that environment variables are set prior to running targets
guard-%:
	@ if [ "${${*}}" = "" ]; then \
		echo "Variable $* not set"; \
		exit 1; \
	fi

HLSMIDDLEWARE_DIR = $(GALAPAGOS_PATH)/hwMiddleware/hls 

.PHONY: middleware

all: hlsmiddleware middleware


example_shell:
	vivado -mode gui -source ./tclScripts/make_shell.tcl -tclargs --project_name example


middleware: ${LOGICALFILE} ${MAPFILE} guard-LOGICALFILE guard-MAPFILE guard-PROJECTNAME guard-GALAPAGOS_PATH 
	mkdir -p ${GALAPAGOS_PATH}/projects
	mkdir -p ${GALAPAGOS_PATH}/projects/${PROJECTNAME}
	python3.5 ${GALAPAGOS_PATH}/hwMiddleware/python/globalFPGAParser.py --logicalFile=${LOGICALFILE} --mapFile=${MAPFILE} --projectName=${PROJECTNAME}
	chmod +x ${GALAPAGOS_PATH}/createCluster.sh
	

hlsmiddleware:
	 $(MAKE) -C $(HLSMIDDLEWARE_DIR)

clean:
	 $(MAKE) -C $(HLSMIDDLEWARE_DIR) clean
	 rm -rf ${GALAPAGOS_PATH}/projects/${PROJECTNAME}
	 rm -rf createCluster.sh
	 rm -rf createSim.sh


