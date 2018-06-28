# Galapagos Hardware Stack 

Welcome to the Galapagos Hardware Stack. 

The layers of the stack that we introduce are as follows:

- Programming Layer
- Middleware Layer
- Cloud Provisioning Layer (not integrated in Galapagos at the moment)
- Hypervisor Layer
- Physical Hardware /Network Setup

For more details on our automation process please refer to the Makefile. 

## Physical Hardware/Network Setup Layer

Our setup has all FPGAs connected directly to a network switch.  We have the following FPGA boards:
- Alphadata 7v3
- Alphadata 8k5
- Alphadata 8v3
- Fidus Sidewinder (also has a hardened ARM CPU)

Boards without the hardened ARM are connected with an X86 CPU via PCIe. Boards with the hardened ARM core are not connected to an X86 CPU.

## Hypervisor Layer

We plan to have hypervisors setup for various boards. Currently the hypervisor abstracts away the network and PCIe interfaces. 
You can modify the board names and version of the hypervisor by modifying the BOARD and DCP variables in the Makefile.
Currently we have a hypervisor built for the Alphadata 8k5 board. The one for the Alphadata 8v3 board is in progress and has yet to be integrated. 
By default to make new user applications pre-built hypervisors are download from the website. To pull the hypervisor from the server please run 


`make dcp`

This pulls the hypervisor in the shells/<board name>/ directory. 
To make new hypervisors you would run:

`make shell`

This makes the hypervisor and puts it in the shells/<board name>/ directory.


## Cloud Provisioning Layer
It was previously made in OpenStack as a PCIe pass-through device for a virtual machine.
This made a lightweight VM with a pcie connected FPGA. In order to passthrough the FPGA, the FPGA needs to be pre-programmed with a bitstream that has a PCIe interface (such as a Hypervisor).
There is current work in remaking this part with containers in OpenStack and will be automated in the process soon.
This has not been integrated in this flow just yet. 

## Middleware Layer

This takes three files (refer to LOGICALFILE, MAPFILE defined in the Makefile) and partitions a large cluster logically described by the user into multiple separate FPGAs.

The cluster is described in a LOGICALFILE with no notion of the mappings. This can repeat a kernel with the <rep> tag. The <num> tag refers to a unique ID for each repeated kernel in the cluster. The <num> tags of all the kernels are then used in the MAPFILE to specify which kernels are placed in which FPGA or CPU, with each node representing a separate FPGA or CPU. Here you can specify which communication protocol to use for that specific node (tcp or eth), the network addresses of the node (mac address and ip_address), any bridge IP your kernels need to communicate to the network (for example if they are MPI packets you need the IP block to translate TCP packets into MPI packets). If you do not specify a bridge then the network module (tcp or eth) is directly connected to the switch and it is up to the user kernels to format their packet to be tcp or ethernet compliant, else they can use a bridge to do so. 
  
For an example refer to ./telepathy/sw/conf0/configuration_files/*


## MPI Programming Layer (HMPI)

This builds an application that uses MPI to communcate on a heterogeneus cluster made by the layers below. HMPI is currently in the git repo https://github.com/eskandarinariman/HMPI:

We provide an example in ./HMPI/mpi_app_benchmarks/HMPI_kmeans/hls/kmeans5.cpp and ./HMPI/mpi_app_benchmarks/HMPI_kmeans/hls/kmeans5_0.cpp

This does kmeans on 5 ranks. Lastly the result is sent to a sw rank (the last rank, rank 5). 

The code for this can be seen in ./HMPI/sw_kmeans

The cluster configuration is seen in ./HMPI/sw_kmeans/configuration_files

You need to specify a bridge to transform AXI stream packets into MPI packets. This is defined in the mpiMap.xml file. 


To Build K-Means MPI Example:
1. `git clone https://github.com/eskandarinariman/HMPI` . This will clone HMPI.
1. `make kmeans_userIP' This makes the HLS kernels with MPI
2. Change the Logical and Mapfile in Makefile to point to ./HMPI/sw_kmeans/configuration_files/mpiLogical.xml and ./HMPI/sw_kmeans/configuration_files/mpiMap.xml 
3. `make createCluster`

## ML Application Layer on top of MPI 

Look at the README in ./telepathy that specifies different configurations. Modify Makefile to point to different configurations.

1. Follow instructions in MPI Programming layer and to get HMPI
2. `mkdir -p userIP`
2. Download PYNQ-DL Darius IP and place in userIP
3. `make ml_userIP`. This builds and packages the ML core into a MPI core.
4. Change the `CONF_DIR` variable to point to ./telepathy/sw. This contains the configuration files for the ML layer. 
5. `make createCluster` 


## How To Cite

The following paper may be used to cite this work:
Tarafdar, Naif, Thomas Lin, Eric Fukuda, Hadi Bannazadeh, Alberto Leon-Garcia, and Paul Chow. "Enabling flexible network FPGA clusters in a heterogeneous cloud data center." In Proceedings of the 2017 ACM/SIGDA International Symposium on Field-Programmable Gate Arrays, pp. 237-246. ACM, 2017.

Bibtex
```
@inproceedings{tarafdar2017enabling,
  title={Enabling flexible network FPGA clusters in a heterogeneous cloud data center},
  author={Tarafdar, Naif and Lin, Thomas and Fukuda, Eric and Bannazadeh, Hadi and Leon-Garcia, Alberto and Chow, Paul},
  booktitle={Proceedings of the 2017 ACM/SIGDA International Symposium on Field-Programmable Gate Arrays},
  pages={237--246},
  year={2017},
  organization={ACM}
}
```
