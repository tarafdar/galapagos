#Makefile for Galapagos

#Author: Naif Tarafdar


#output static shell dcp
DCP = static_routed_v3.dcp

#make userIP
PROJECTNAME=mlKernelsTest2
USERHLSIP_DIR=telepathy/hlsSources
USERHLSIPTCL=${USERHLSIP_DIR}/generate_hls_ip.tcl
USERIPTCL=./telepathy/ipPackage/package_top.tcl
USERIPTCLDEBUG=./telepathy/ipPackage/package_top_debug.tcl

#board parameters (should take as input from middleware input files later)
BOARD = adm-8k5
PART = xcku115-flva1517-2-e
FPGANUM= 1


#input files for middleware
ML_CONF = conf0
LOGICALFILE=telepathy/middlewareInput/${ML_CONF}/mpiLogical.xml
MACFILE=telepathy/middlewareInput/${ML_CONF}/mpiMacAddresses
MAPFILE=telepathy/middlewareInput/${ML_CONF}/mpiMap.xml
IPFILE=telepathy/middlewareInput/${ML_CONF}/mpiIPAddresses


all: userIP createCluster pr  

#createCluster: hlsShell hlsMiddleware createCluster.sh
#createCluster: createCluster.sh

userIP: ${USERHLSIP_DIR}/* ${USERHLSIP_DIR}/generate_hls_ip.tcl
#	mkdir -p userIP
#	vivado_hls ./HMPI/generate_hls_ip.tcl
#	vivado_hls ${USERHLSIPTCL}
	vivado -mode batch -source ${USERIPTCLDEBUG} 

shell: hlsShell shells/projects/${BOARD}/${DCP}

hlsShell: ./tclScripts/generate_hls_ip_shell.tcl 
	mkdir -p hlsIP_${BOARD}
	vivado_hls tclScripts/generate_hls_ip_shell.tcl -tclargs ${BOARD} ${PART}

hlsMiddleware:
	mkdir -p hlsIP_${BOARD}
	vivado_hls tclScripts/generate_hls_ip_middleware.tcl -tclargs ${BOARD} ${PART}

createCluster: ${LOGICALFILE} ${MACFILE} ${MAPFILE} 
	mkdir -p projects
	mkdir -p projects/${PROJECTNAME}
	python hwMiddleware/packetSwitch/globalFPGAParser.py --logicalFile=${LOGICALFILE} --macFile=${MACFILE} --mapFile=${MAPFILE} --ipFile=${IPFILE} --projectName=${PROJECTNAME}
#	chmod +x createCluster.sh
#	./createCluster.sh

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
