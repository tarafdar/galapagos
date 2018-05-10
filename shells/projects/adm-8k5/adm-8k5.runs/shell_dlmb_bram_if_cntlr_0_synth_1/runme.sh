#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/cad1/Xilinx/SDK/2018.1/bin:/cad1/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/lin64:/cad1/Xilinx/Vivado/2018.1/bin
else
  PATH=/cad1/Xilinx/SDK/2018.1/bin:/cad1/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/lin64:/cad1/Xilinx/Vivado/2018.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/cad1/Xilinx/Vivado/2018.1/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/cad1/Xilinx/Vivado/2018.1/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/nfs/ug/thesis/thesis0/pc/Quinn/galapagos/shells/projects/adm-8k5/adm-8k5.runs/shell_dlmb_bram_if_cntlr_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log shell_dlmb_bram_if_cntlr_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source shell_dlmb_bram_if_cntlr_0.tcl
