# Galapagos Hardware Stack 

Welcome to the Galapagos Hardware Stack. 

The layers of the stack that we introduce are as follows. 

The layers are as follows (ToDo: enter figure of stack)
- Programming Layer
- Middleware Layer
- Cloud Provisioning Layer (not integrated in Galapagos at the moment)
- Hypervisor Layer
- Physical Hardware /Network Setup

For more details on our automation process please refer to the Makefile. 

##Physical Hardware/Network Setup Layer

Our setup has all FPGAs connected directly to a network switch. Currently three FPGA boards (Alphadata 7v3, Alphadata 8v3 and Alphadata 8k5) do not have a hardened ARM CPU.
We also have the Fidus Sidewinder board that has a hardened ARM CPU. Boards without the hardened ARM are connected with an X86 CPU via PCIe. Boards with the hardened ARM core are directly connected without another x86 CPU.

##Hypervisor Layer

We plan to have hypervisors setup for various boards. Currently the hypervisor abstracts away the network and PCIe interfaces. 
You can modify the board names and version of the hypervisor by modifying the BOARD and DCP variables in the Makefile.
Currently we have a hypervisor built for the Alphadata 8k5 board. The one for the Alphadata 8v3 board is in progress and has yet to be integrated. 
By default to make new user applications pre-built hypervisors are download from the website. To pull the hypervisor from the server please run 


`make dcp`

This pulls the hypervisor in the shells/<board name>/ directory. 
To make new hypervisors you would run:

`make shell`

This makes the hypervisor and puts it in the shells/<board name>/ directory.


##Cloud Provisioning Layer

This has not been integrated in this flow just yet. It was previously made in OpenStack as a PCIe pass-through device for a virtual machine.
This made a lightweight VM with a pcie connected FPGA. In order to passthrough the FPGA, the FPGA needs to be pre-programmed with a bitstream that has a PCIe interface (such as a Hypervisor).
There is current work in remaking this part with containers in OpenStack and will be automated in the process soon.

##Middleware Layer

This takes three files (refer to LOGICALFILE, MACFILE, MAPFILE defined in the Makefile) and partitions a large cluster logically described by the user into multiple separate FPGAs.
This is described with XML, for now the MACFILE is a separate file but with the Cloud Provisioning Layer integrated this would be an input from the Cloud Provisioning Layer

