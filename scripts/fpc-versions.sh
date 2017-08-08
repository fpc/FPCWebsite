#!/bin/bash
#######################################
## Centralize versions names
## for Free Pascal installations
#######################################

#######################################
## Last Free Pascal Release version
## Should be installed on the machine
#######################################
export RELEASEVERSION=3.0.2

#######################################
## Free Pascal trunk and fixes versions
#######################################
export TRUNKVERSION=3.1.1
export FIXESVERSION=3.0.3

#######################################
## Free Pascal trunk and fixes
## directory names 
#######################################
export TRUNKDIRNAME=trunk
export FIXESDIRNAME=fixes

#######################################
## Free Pascal trunk and fixes versions
#######################################
export PASDIR=${HOME}/pas
export TRUNKDIR=${PASDIR}/${TRUNKDIRNAME}
export FIXESDIR=${PASDIR}/${FIXESDIRNAME}

#######################################
## Free Pascal CPU compiler names
#######################################
FPC_BIN_aarch64=ppca64
FPC_BIN_alpha=ppcaxp
FPC_BIN_arm=ppcarm
FPC_BIN_avr=ppcavr
FPC_BIN_i386=ppc386
FPC_BIN_i8086=ppc8086
FPC_BIN_jvm=ppcjvm
FPC_BIN_m68k=ppc68k
FPC_BIN_mips=ppcmips
FPC_BIN_mipsel=ppcmipsel
FPC_BIN_powerpc=ppcppc
FPC_BIN_powerpc64=ppcppc64
FPC_BIN_sparc=ppcsparc
FPC_BIN_sparc64=ppcsparc64
FPC_BIN_x86_64=ppcx64
