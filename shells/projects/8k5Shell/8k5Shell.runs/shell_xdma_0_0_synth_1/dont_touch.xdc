# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# IP: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/shell_xdma_0_0.xci
# IP: The module: 'shell_xdma_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/shell_xdma_0_0_pcie3_ip.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_xdma_0_0_pcie3_ip || ORIG_REF_NAME==shell_xdma_0_0_pcie3_ip}]

# IP: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/ip_0/shell_xdma_0_0_pcie3_ip_gt.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_xdma_0_0_pcie3_ip_gt || ORIG_REF_NAME==shell_xdma_0_0_pcie3_ip_gt}]

# IP: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_1/shell_xdma_0_0_blk_mem_64_reg_be.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_xdma_0_0_blk_mem_64_reg_be || ORIG_REF_NAME==shell_xdma_0_0_blk_mem_64_reg_be}]

# IP: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_2/shell_xdma_0_0_fifo_generator_64_parity_ult.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_xdma_0_0_fifo_generator_64_parity_ult || ORIG_REF_NAME==shell_xdma_0_0_fifo_generator_64_parity_ult}]

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/ip_0/synth/shell_xdma_0_0_pcie3_ip_gt_ooc.xdc

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/ip_0/synth/shell_xdma_0_0_pcie3_ip_gt.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==shell_xdma_0_0_pcie3_ip_gt || ORIG_REF_NAME==shell_xdma_0_0_pcie3_ip_gt}] {/inst }]/inst ]]

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/source/shell_xdma_0_0_pcie3_ip-PCIE_X0Y0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==shell_xdma_0_0_pcie3_ip || ORIG_REF_NAME==shell_xdma_0_0_pcie3_ip}] {/inst }]/inst ]]

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/synth/shell_xdma_0_0_pcie3_ip_ooc.xdc

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_1/shell_xdma_0_0_blk_mem_64_reg_be_ooc.xdc

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_2/shell_xdma_0_0_fifo_generator_64_parity_ult/shell_xdma_0_0_fifo_generator_64_parity_ult.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==shell_xdma_0_0_fifo_generator_64_parity_ult || ORIG_REF_NAME==shell_xdma_0_0_fifo_generator_64_parity_ult}] {/U0 }]/U0 ]]

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_2/shell_xdma_0_0_fifo_generator_64_parity_ult_ooc.xdc

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/shell_xdma_0_0_board.xdc
# XDC: The top module name and the constraint reference have the same name: 'shell_xdma_0_0'. Do not add the DONT_TOUCH constraint.
set_property DONT_TOUCH TRUE [get_cells inst]

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/source/shell_xdma_0_0_pcie3_us_ip.xdc
# XDC: The top module name and the constraint reference have the same name: 'shell_xdma_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property DONT_TOUCH TRUE [get_cells inst]

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/synth/shell_xdma_0_0_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'shell_xdma_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property DONT_TOUCH TRUE [get_cells inst]

# IP: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/shell_xdma_0_0.xci
# IP: The module: 'shell_xdma_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/shell_xdma_0_0_pcie3_ip.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_xdma_0_0_pcie3_ip || ORIG_REF_NAME==shell_xdma_0_0_pcie3_ip}]

# IP: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/ip_0/shell_xdma_0_0_pcie3_ip_gt.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_xdma_0_0_pcie3_ip_gt || ORIG_REF_NAME==shell_xdma_0_0_pcie3_ip_gt}]

# IP: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_1/shell_xdma_0_0_blk_mem_64_reg_be.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_xdma_0_0_blk_mem_64_reg_be || ORIG_REF_NAME==shell_xdma_0_0_blk_mem_64_reg_be}]

# IP: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_2/shell_xdma_0_0_fifo_generator_64_parity_ult.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_xdma_0_0_fifo_generator_64_parity_ult || ORIG_REF_NAME==shell_xdma_0_0_fifo_generator_64_parity_ult}]

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/ip_0/synth/shell_xdma_0_0_pcie3_ip_gt_ooc.xdc

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/ip_0/synth/shell_xdma_0_0_pcie3_ip_gt.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==shell_xdma_0_0_pcie3_ip_gt || ORIG_REF_NAME==shell_xdma_0_0_pcie3_ip_gt}] {/inst }]/inst ]]

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/source/shell_xdma_0_0_pcie3_ip-PCIE_X0Y0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==shell_xdma_0_0_pcie3_ip || ORIG_REF_NAME==shell_xdma_0_0_pcie3_ip}] {/inst }]/inst ]]

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/synth/shell_xdma_0_0_pcie3_ip_ooc.xdc

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_1/shell_xdma_0_0_blk_mem_64_reg_be_ooc.xdc

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_2/shell_xdma_0_0_fifo_generator_64_parity_ult/shell_xdma_0_0_fifo_generator_64_parity_ult.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==shell_xdma_0_0_fifo_generator_64_parity_ult || ORIG_REF_NAME==shell_xdma_0_0_fifo_generator_64_parity_ult}] {/U0 }]/U0 ]]

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_2/shell_xdma_0_0_fifo_generator_64_parity_ult_ooc.xdc

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/shell_xdma_0_0_board.xdc
# XDC: The top module name and the constraint reference have the same name: 'shell_xdma_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property DONT_TOUCH TRUE [get_cells inst]

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/source/shell_xdma_0_0_pcie3_us_ip.xdc
# XDC: The top module name and the constraint reference have the same name: 'shell_xdma_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property DONT_TOUCH TRUE [get_cells inst]

# XDC: /home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/synth/shell_xdma_0_0_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'shell_xdma_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property DONT_TOUCH TRUE [get_cells inst]