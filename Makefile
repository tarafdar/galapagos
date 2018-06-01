#Makefile for Galapagos
#Author: Naif Tarafdar

BOARD = adm-8k5
PROJNAME= dariusFlatten
FPGANUM= 0
DCP = static_routed_v3.dcp
LOGICALFILE=hwMiddleware/packetSwitch/input/mlKernels/mpiLogical.xml
MACFILE=hwMiddleware/packetSwitch/input/mlKernels/mpiMacAddresses
MAPFILE=hwMiddleware/packetSwitch/input/mlKernels/mpiMap.xml
PROJECTNAME=mlKernels
USERHLSIP_DIR=ML_Layer/hlsSources
USERHLSIPTCL=${USERHLSIP_DIR}/generate_hls_ip.tcl
USERIPTCL=./ML_Layer/ipPackage/package_top.tcl


all: userIP createCluster pr  


createCluster: tclScripts/createCluster.tcl


userIP: ${USERHLSIP_DIR}/* ${USERHLSIP_DIR}/generate_hls_ip.tcl
	mkdir -p userIP
	vivado_hls ${USERHLSIPTCL}
	vivado -mode batch -source ${USERIPTCL} 

shell: hlsShell shells/projects/${BOARD}/${DCP}

hlsShell:
	mkdir -p hlsIP_${BOARD}
	vivado_hls tclScripts/generate_hls_ip.tcl

tclScripts/createCluster.tcl: ${LOGICALFILE} ${MACFILE} ${MAPFILE} 
	mkdir -p projects
	python hwMiddleware/packetSwitch/globalFPGAParser.py --logicalFile=${LOGICALFILE} --macFile=${MACFILE} --mapFile=${MAPFILE} --projectName=${PROJECTNAME}

clean:
	rm -rf projects/${PROJECTNAME} tclScripts/createCluster.tcl

clean_shell:
	rm -rf hlsIP_${BOARD}
	rm -rf shells/projects/${BOARD}

shells/projects/${BOARD}/${DCP}:
	mkdir -p shells
	mkdir -p shells/projects
	vivado -mode gui -source tclScripts/createShell_${BOARD}.tcl -tclargs ${DCP}
	mkdir -p shells/${BOARD}/dcps
	cp shells/projects/${BOARD}/${DCP} shells/${BOARD}/dcps

flatten: hlsShell 
	vivado -mode tcl -source tclScripts/flatten_${BOARD}.tcl -tclargs ${BOARD}_flatten ${PROJNAME} ${FPGANUM} 

clean_flatten:
	rm -rf projects/${PROJNAME}/${FPGANUM}/${FPGANUM}.cache projects/${PROJNAME}/${FPGANUM}/${FPGANUM}.hw projects/${PROJNAME}/${FPGANUM}/${FPGANUM}.ip_user_files projects/${PROJNAME}/${FPGANUM}/${FPGANUM}.sim projects/${PROJNAME}/${FPGANUM}/${FPGANUM}.srcs projects/${PROJNAME}/${FPGANUM}/${FPGANUM}.runs projects/${PROJNAME}/${FPGANUM}/${FPGANUM}.xpr

pr: createCluster 
	bash ./tclScripts/createCluster.sh
	touch projects/${PROJECTNAME}/cluster	

dcp:
	mkdir -p shells/${BOARD}/dcps
	ls shells/${BOARD}/dcps/static_routed.dcp 2> /dev/null &&  echo "File exists" || (wget http://www.eecg.toronto.edu/~tarafda1/hypervisors/${BOARD}/${DCP} && mv ${DCP} shells/${BOARD}/dcps/static_routed.dcp) 
       
clean_dcp:
	rm -rf shells/${BOARD}/dcps/static_routed.dcp
