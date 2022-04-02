#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/caccolillo/Documents/vivado/Vitis/2020.2/bin:/home/caccolillo/Documents/vivado/Vivado/2020.2/ids_lite/ISE/bin/lin64:/home/caccolillo/Documents/vivado/Vivado/2020.2/bin
else
  PATH=/home/caccolillo/Documents/vivado/Vitis/2020.2/bin:/home/caccolillo/Documents/vivado/Vivado/2020.2/ids_lite/ISE/bin/lin64:/home/caccolillo/Documents/vivado/Vivado/2020.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/caccolillo/Documents/ultra96_vivado_projects/Ultra96_v2_repo/ps_prj/ultra96_basic_system/ultra96_basic_system.runs/bd_zynq_ultra_ps_e_0_0_synth_1'
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

EAStep vivado -log bd_zynq_ultra_ps_e_0_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source bd_zynq_ultra_ps_e_0_0.tcl
