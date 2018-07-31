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

Boards without the hardened ARM are connected with an X86 CPU via PCIe. 

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

This takes two files (refer to LOGICALFILE, MAPFILE defined in the Makefile) and partitions a large cluster logically described by the user into multiple separate FPGAs.

### LOGICALFILE

The cluster is described in a LOGICALFILE with no notion of the mappings. 
The following is an example kernel from the logical file:
```
 <kernel> kernelName
	<num> 1 </num>
        <rep> 1 </rep>
        <clk> nameOfClockPort </clk>
        <id_port> nameOfIDport </id_port>
        <aresetn> nameOfResetPort </aresetn>
        <interface>
            <direction> in </direction>
            <name> nameOfInputStreamInterface </name>
        </interface>
        <interface>
            <direction> out </direction>
            <name> nameOfOutputStreamInterface </name>
            <debug/>
        </interface>
        <ctrl_interface>
            <name> nameofControlInterface </name>
        </ctrl_interface>
        <mem_interface>
            <name> nameOfMemoryInterface </name>
        </mem_interface>
</kernel>
```

The `<num>` tag refers to the unique ID of a kernel. 
The `<rep>` refers to the number of times to repeat a kernel. The IDs are of repeated kernels are increased sequentially.
The `<clk>` refers to the name of the clock interface, this will be tied to the clock in the Hypervisor.
The `<aresetn>` refers to the name of the reset interface, this will be tied to the clock in the Hypervisor (negative edge triggered).
The `<id_port>` refers to the port name in the kernel that will be tied to a constant with the value of the unique kernel ID. (optional)
There is room for upto one output stream interface and one input stream interface denoted by the tag `<interface>`
The `<ctrl_interface>` refers to a port to be tied to the control port from PCIe in the Hypervisor. This is an AXI slave.
The `<mem_interface>` refers to a port to be tied to off-chip memory in the Hypervisor. This is an AXI Master.


### MAPFILE

The cluster is described in a MAPFILE with no notion of the mappings. 
The following is an example kernel from the map file:

```
<node>
        <appBridge> 
            <name> applicationBridge_name </name> 
            <to_app> portName_to_app </to_app>
            <from_app> portName_from_app </from_app>
            <to_net> portName_to_net </to_net>
            <from_net> portName_from_net </from_net>
        </appBridge>
        <board> adm-8k5-debug </board>
        <comm> eth </comm>
        <type> hw </type>
        <kernel> 1 </kernel>
        <kernel> 2 </kernel>
        <kernel> 3 </kernel>
        <mac_addr>  fa:16:3e:55:ca:02 </mac_addr>
        <ip_addr> 10.1.2.102 </ip_addr>
</node>

```

The fields in `appBridge` refer to a description of the name of the bridge between the network port (TCP or eth) to the application. If there is no bridge application will be directly connected to the network.
The `<board>` tag refers to the FPGA board you wish to use for this particular node.
The `<kernel>` refers to the unique kernel ID that you wish to put on this node. 

  
For an example refer to ./telepathy/sw/conf0/configuration_files/*


## MPI Programming Layer (HMPI)

This builds an application that uses MPI to communcate on a heterogeneus cluster made by the layers below. HMPI is currently in the git repo https://github.com/eskandarinariman/HMPI:

We provide an example in ./HMPI/mpi_app_benchmarks/HMPI_kmeans/hls/kmeans5.cpp and ./HMPI/mpi_app_benchmarks/HMPI_kmeans/hls/kmeans5_0.cpp

This implements kmeans on 5 ranks. Lastly the result is sent to a sw rank. 

The code for this can be seen in ./HMPI/sw_kmeans

The cluster configuration is seen in ./HMPI/sw_kmeans/configuration_files

You need to specify a bridge to transform AXI stream packets into MPI packets. This is defined in the mpiMap.xml file. 


To Build K-Means MPI Example:
1. `git clone https://github.com/eskandarinariman/HMPI` . This will clone HMPI.
1. `make kmeans_userIP` This makes the HLS kernels with MPI
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
