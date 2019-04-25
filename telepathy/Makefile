#Makefile for Galapagos

#Author: Naif Tarafdar


# checks that environment variables are set prior to running targets
guard-%:
	@ if [ "${${*}}" = "" ]; then \
		echo "Variable $* not set"; \
		exit 1; \
	fi


.PHONY: hls ipPackage middleware

all: hls ipPackage middleware


hls:
	vivado_hls ${GALAPAGOS_PATH}/telepathy/hlsSources/generate_hls_ip.tcl

ipPackage:
	vivado -mode batch -source  ${GALAPAGOS_PATH}/telepathy/ipPackage/package_top.tcl

middleware: ${LOGICALFILE} ${MAPFILE} guard-LOGICALFILE guard-MAPFILE guard-PROJECTNAME guard-GALAPAGOS_PATH 
	mkdir -p ${GALAPAGOS_PATH}/projects
	mkdir -p ${GALAPAGOS_PATH}/projects/${PROJECTNAME}
	python3.5 ${GALAPAGOS_PATH}/middleware/python/globalFPGAParser.py --logicalFile=${LOGICALFILE} --mapFile=${MAPFILE} --projectName=${PROJECTNAME}
	chmod +x $(GALAPAGOS_PATH)/projects/$(PROJECTNAME)/createCluster.sh
	


clean:
	 rm -rf ${GALAPAGOS_PATH}/projects/${PROJECTNAME}


