#Makefile for Galapagos

#Author: Naif Tarafdar


#output static shell dcp
DCP = static_routed_v3.dcp

#make userIP


USERHLSIP_DIR = ./HMPI
USERHLSIP_SRCS = ./HMPI/HLS_lib/communication_bridge_eth_mpi.cpp ./HMPI/HLS_lib/communication_bridge_tcp_mpi.cpp


#SIMPLE HMPI TEST
SIMPLE_USERHLSIP_DIR=./HMPI/mpi_app_benchmarks/simple
SIMPLE_USERHLSIPTCL=${SIMPLE_USERHLSIP_DIR}/generate_hls_ip.tcl
SIMPLE_USERHLSIP_SRCS=${SIMPLE_USERHLSIP_DIR}/hls/simple.cpp ./HMPI/HLS_lib/MPI.h

#ML DIRECTORIES
ML_USERHLSIP_DIR=telepathy/hlsSources
ML_USERHLSIPTCL=${ML_USERHLSIP_DIR}/generate_hls_ip.tcl
ML_USERIPTCL=./telepathy/ipPackage/package_top.tcl
ML_USERIPTCLDEBUG=./telepathy/ipPackage/package_top_debug.tcl

#KMEANS
KMEANS_USERHLSIP_DIR=./HMPI/mpi_app_benchmarks/HMPI_kmeans
KMEANS_USERHLSIPTCL=${KMEANS_USERHLSIP_DIR}/generate_hls_ip.tcl
KMEANS_USERHLSIP_SRCS=${KMEANS_USERHLSIP_DIR}/hls/kmeans.cpp ${KMEANS_USERHLSIP_DIR}/hls/kmeans_0.cpp ./HMPI/HLS_lib/MPI.h

##input files for middleware
CONF_DIR = ./telepathy/sw
#CONF_DIR = ./HMPI/sw_kmeans
#CONF_DIR = ./HMPI/sw_simple

#input files for middleware
LOGICALFILE=${CONF_DIR}/${CONF}/configuration_files/mpiLogical.xml
MAPFILE=${CONF_DIR}/${CONF}/configuration_files/mpiMap.xml

BOARD = adm-8k5
PART = xcku115-flva1517-2-e
FPGANUM= 1

all: userIP hlsMiddleware kmeans_userIP createCluster   




userIP: ${USERHLSIP_DIR}/generate_hls_ip.tcl ${USERHLSIP_SRCS}
	mkdir -p userIP
	vivado_hls ${USERHLSIP_DIR}/generate_hls_ip.tcl

#CUSTOM USERIP ADDED FOR ML and KMEANS, ADD ACCORDINGLY

ml_userIP: userIP $(wildcard ${ML_USERHLSIP_DIR}/*) ${ML_USERHLSIPTCL}
	mkdir -p userIP
	vivado_hls ${ML_USERHLSIPTCL}
	vivado -mode batch -source ${ML_USERIPTCLDEBUG} 

kmeans_userIP:  ${KMEANS_USERHLSIPTCL} ${KMEANS_USERHLSIP_SRCS}
	mkdir -p userIP
	vivado_hls ${KMEANS_USERHLSIPTCL}

simple_userIP:  ${SIMPLE_USERHLSIPTCL} ${SIMPLE_USERHLSIP_SRCS}
	mkdir -p userIP
	vivado_hls ${SIMPLE_USERHLSIPTCL}

shell: hlsShell shells/projects/${BOARD}/${DCP}

hlsShell: ./tclScripts/generate_hls_ip_shell.tcl 
	mkdir -p hlsIP_${BOARD}
	vivado_hls tclScripts/generate_hls_ip_shell.tcl -tclargs ${BOARD} ${PART}

hlsMiddleware: $(wildcard hlsSources/srcs/*)
	mkdir -p hlsIP_${BOARD}
	vivado_hls tclScripts/generate_hls_ip_middleware.tcl -tclargs ${BOARD} ${PART}

createCluster: ${LOGICALFILE} ${MAPFILE} 
	LOGICALFILE=${CONF_DIR}/${CONF}/configuration_files/mpiLogical.xml
	mkdir -p projects
	mkdir -p projects/${PROJECTNAME}
	python hwMiddleware/packetSwitch/globalFPGAParser.py --logicalFile=${LOGICALFILE} --macFile=${MACFILE} --mapFile=${MAPFILE} --ipFile=${IPFILE} --projectName=${PROJECTNAME}
	chmod +x createCluster.sh
	./createCluster.sh

simCluster: ${LOGICALFILE} ${MAPFILE} 
	mkdir -p projects
	mkdir -p projects/${PROJECTNAME}
	python hwMiddleware/packetSwitch/globalFPGAParser.py --logicalFile=${LOGICALFILE} --macFile=${MACFILE} --mapFile=${MAPFILE} --ipFile=${IPFILE} --projectName=${PROJECTNAME}
	chmod +x simCluster.sh
	./simCluster.sh

simFPGA: ${LOGICALFILE} ${MAPFILE} 
	mkdir -p projects
	mkdir -p projects/${PROJECTNAME}
	python hwMiddleware/packetSwitch/globalFPGAParser.py --logicalFile=${LOGICALFILE} --macFile=${MACFILE} --mapFile=${MAPFILE} --ipFile=${IPFILE} --projectName=${PROJECTNAME}
	chmod +x simCluster.sh
	vivado -mode gui -source tclScripts/createSim.tcl -tclargs adm-8k5-debug ${PROJECTNAME} ${ARGS}


createFPGA: ${LOGICALFILE} ${MAPFILE} 
	mkdir -p projects
	mkdir -p projects/${PROJECTNAME}
	python hwMiddleware/packetSwitch/globalFPGAParser.py --logicalFile=${LOGICALFILE} --macFile=${MACFILE} --mapFile=${MAPFILE} --ipFile=${IPFILE} --projectName=${PROJECTNAME}
	chmod +x simCluster.sh
	vivado -mode batch -source tclScripts/createFlatten.tcl -tclargs adm-8k5-debug ${PROJECTNAME} ${ARGS}




clean:
	rm -rf projects/${PROJECTNAME} createCluster.sh

clean_shell:
	rm -rf hlsIP_${BOARD}
	rm -rf shells/projects/${BOARD}

shells/projects/${BOARD}/${DCP}:
	mkdir -p shells
	mkdir -p shells/projects
	vivado -mode gui -source tclScripts/createShell_${BOARD}.tcl -tclargs ${DCP}
	mkdir -p shells/${BOARD}/dcps
	cp shells/projects/${BOARD}/${DCP} shells/${BOARD}/dcps

flatten: hlsShell hlsMiddleware 
	vivado -mode batch -source tclScripts/createFlatten_${BOARD}.tcl -tclargs ${BOARD} ${PROJECTNAME} ${FPGANUM} 

clean_flatten:
	rm -rf projects/${PROJECTNAME}/${FPGANUM}/${FPGANUM}.cache projects/${PROJECTNAME}/${FPGANUM}/${FPGANUM}.hw projects/${PROJECTNAME}/${FPGANUM}/${FPGANUM}.ip_user_files projects/${PROJECTNAME}/${FPGANUM}/${FPGANUM}.sim projects/${PROJECTNAME}/${FPGANUM}/${FPGANUM}.srcs projects/${PROJECTNAME}/${FPGANUM}/${FPGANUM}.runs projects/${PROJECTNAME}/${FPGANUM}/${FPGANUM}.xpr

pr: createCluster 
	./createCluster.sh
	touch projects/${PROJECTNAME}/cluster	

dcp:
	mkdir -p shells/${BOARD}/dcps
	ls shells/${BOARD}/dcps/static_routed.dcp 2> /dev/null &&  echo "File exists" || (wget http://www.eecg.toronto.edu/~tarafda1/hypervisors/${BOARD}/${DCP} && mv ${DCP} shells/${BOARD}/dcps/static_routed.dcp) 
       
clean_dcp:
	rm -rf shells/${BOARD}/dcps/static_routed.dcp
