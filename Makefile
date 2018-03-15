BOARD = adm-8k5
DCP = static_routed_v1.dcp
LOGICALFILE=hwMiddleware/packetSwitch/input/mpiLogical.xml
MACFILE=hwMiddleware/packetSwitch/input/mpiMacAddresses
MAPFILE=hwMiddleware/packetSwitch/input/mpiMap.xml
PROJECTNAME=test
USERIP_DIR=HMPI
USERIPTCL=${USERIP_DIR}/generate_hls_ip.tcl


all: userIP createCluster pr  


createCluster: tclScripts/createCluster.tcl

pr: projects/${PROJECTNAME}/cluster

userIP: ${USERIP_DIR}/* 
	mkdir -p userIP
	vivado_hls ${USERIPTCL}

shell: hlsShell shells/projects/${BOARD}/${DCP}

hlsShell:
	mkdir -p hlsIP_${BOARD}
	vivado_hls tclScripts/generate_hls_ip.tcl

tclScripts/createCluster.tcl: ${LOGICALFILE} ${MACFILE} ${MAPFILE} 
	mkdir -p projects
	python hwMiddleware/packetSwitch/globalFPGAParser.py --logicalFile=${LOGICALFILE} --macFile=${MACFILE} --mapFile=${MAPFILE} --projectName=${PROJECTNAME}
#	touch projects/${PROJECTNAME}/cluster

clean:
	rm -rf projects/${PROJECTNAME} tclScripts/createCluster.tcl

clean_shell:
	rm -rf hlsIP_${BOARD}
	rm -rf shells/projects/${BOARD}

shells/projects/${BOARD}/${DCP}:
	mkdir -p shells
	mkdir -p shells/projects
	vivado -mode batch -source tclScripts/createShell_${BOARD}.tcl -tclargs ${DCP}
	mkdir -p shells/${BOARD}/dcps
	cp shells/projects/${BOARD}/${DCP} shells/${BOARD}/dcps

projects/${PROJECTNAME}/cluster: 
	vivado -mode tcl -source tclScripts/createCluster.tcl
	touch projects/${PROJECTNAME}/cluster	

dcp:
	mkdir -p shells/${BOARD}/dcps
	ls shells/${BOARD}/dcps/static_routed.dcp 2> /dev/null &&  echo "File exists" || (wget http://www.eecg.toronto.edu/~tarafda1/hypervisors/${BOARD}/${DCP} && mv ${DCP} shells/${BOARD}/dcps/static_routed.dcp) 
       
