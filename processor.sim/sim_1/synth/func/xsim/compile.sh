#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : compile.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for compiling the simulation design source files
#
# Generated by Vivado on Thu Dec 29 10:15:10 IST 2022
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: compile.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xvhdl --incr --relax -prj Test_p1_2_vhdl.prj"
xvhdl --incr --relax -prj Test_p1_2_vhdl.prj 2>&1 | tee -a compile.log
