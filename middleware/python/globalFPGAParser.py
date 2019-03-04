import getopt, sys
import os
from cluster import cluster


try:
    opts, args = getopt.getopt(sys.argv[1:],"", ["logicalFile=", "mapFile=", "projectName=", "sim="])
except:
    usage()
    sys.exit(2)

logicalFile = None
mapFile = None
projectName = None
sim = 0

for o, a in opts:
    if o in ("--logicalFile"):
        logicalFile = a
    elif o in ("--mapFile"):
        mapFile = a
    elif o in ("--projectName"):
        projectName= a
    elif o in ("--sim"):
        sim = int(a)

print("Logical File: " + logicalFile)
print("Map File: " + mapFile)
print("Project Name: " + projectName)


cluster_inst = cluster(projectName, logicalFile, mapFile)
cluster_inst.makeProjectClusterScript()
cluster_inst.writeClusterTCL(sim)
cluster_inst.writeBRAMFile('mac')
cluster_inst.writeBRAMFile('ip')
