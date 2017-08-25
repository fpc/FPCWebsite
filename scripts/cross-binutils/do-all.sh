#!/bin/bash

## aarch64 CPU
## system_aarch64_darwin,     { 86 }
./do-one.sh aarch64-linux aarch64-unknown-linux-gnu
## system_aarch64_linux,      { 88 }
./do-one.sh aarch64-darwin aarch64-unknown-darwin
export BINUTILS_RELEASE="2.25-aros"
./do-one.sh aarch64-aros aarch64-aros
export BINUTILS_RELEASE=

## alpha CPU
## Alpha CPU is obbsolete
## ./do-one.sh alpha-linux alpha-unknown-linux-gnu

## arm CPU
## system_arm_android,        { 77 }
./do-one.sh arm-android-gnuas arm-linux-androideabi
## system_arm_aros,           { 91 }
export BINUTILS_RELEASE="2.25-aros"
./do-one.sh arm-aros arm-aros
export BINUTILS_RELEASE=
## system_arm_darwin,         { 64 }
./do-one.sh arm-darwin arm-unknown-darwin
## system_arm_embedded,       { 57 }
./do-one.sh arm-embedded arm-none-elf
## system_arm_gba,            { 42 }
./do-one.sh arm-gba arm-agb-elf
## system_arm_linux,          { 31 }
./do-one.sh arm-linux arm-unknown-linux-gnu
## system_arm_nds,            { 47 }
./do-one.sh arm-nds arm-unknown-nds
## system_arm_palmos,         { 45 }
## binutils 2.14 patched with http://prc-tools.sourceforge.net/
export BINUTILS_RELEASE="2.14"
./do-one.sh arm-palmos arm-palmos
export BINUTILS_RELEASE=

## system_arm_symbian,        { 60 }
./do-one.sh arm-symbian arm-unknown-symbian
## system_arm_wince,          { 38 }
./do-one.sh arm-wince arm-wince-pe

## avr CPU
## system_avr_embedded,       { 62 }
./do-one.sh avr-embedded avr-none-elf

## ia64 CPU
## ia64 CPU is obsolete
## ./do-one.sh ia64-linux ia64-unknown-linux-gnu

## i386 CPU
## system_i386_android,       { 78 }
./do-one.sh i386-android-gnuas i686-android-linux
## system_i386_aros,          { 83 }
export BINUTILS_RELEASE="2.25-aros"
./do-one.sh i386-aros i386-aros
export BINUTILS_RELEASE=
## system_i386_beos,          { 16 }
./do-one.sh i386-beos i386-unknown-beos
## system_i386_darwin,        { 44 }
./do-one.sh i386-darwin i386-unknown-darwin
## system_i386_embedded,      { 48 }
./do-one.sh i386-embedded i386-none-elf
## system_i386_EMX,           { 28 }
export HOST=i686-unknown-linux
export BINUTILS_RELEASE="2.9.1-emx"
./do-one.sh i386-emx i386-unknown-emx
export BINUTILS_RELEASE=
export HOST=
## system_i386_freebsd,       { 6 }
./do-one.sh i386-freebsd i386-unknown-freebsd11
## system_i386_GO32V2,        { 2 }
./do-one.sh i386-go32v2 i686-pc-msdosdjgpp
## system_i386_haiku,         { 63 }
./do-one.sh i386-haiku i386-unknown-haiku
## system_i386_iphonesim,     { 69 }
./do-one.sh i386-iphonesim i386-unknown-iphonesim
## system_i386_linux,         { 3 }
./do-one.sh i386-linux i386-unknown-linux-gnu
## system_i386_nativent,      { 68 }
./do-one.sh i386-nativent i686-w64-mingw32
## system_i386_netbsd,        { 17 }
./do-one.sh i386-netbsd i386-unknown-netbsd-gnu
## system_i386_Netware,       { 19 }
./do-one.sh i386-netare i386-unknown-netware
## system_i386_netwlibc,      { 35 }
./do-one.sh i386-newlibc i386-unknown-newlibc
## system_i386_openbsd,       { 24 }
export BINUTILS_RELEASE=2.17-openbsd
./do-one.sh i386-openbsd i386-unknown-openbsd
export BINUTILS_RELEASE=
## system_i386_OS2,           { 4 }
./do-one.sh i386-os2 i386-unknown-os2
## system_i386_qnx,           { 20 }
./do-one.sh i386-qnx i386-unknown-qnx
## system_i386_solaris,       { 15 }
./do-one.sh i386-solaris i386-unknown-solaris2.10
## system_i386_symbian,       { 59 }
./do-one.sh i386-symbian i386-unknown-symbian
## system_i386_watcom,        { 32 }
./do-one.sh i386-watcom i386-unknown-watcom
## system_i386_wdosx,         { 21 }
./do-one.sh i386-wdosx i386-unknown-wdosx
## system_i386_Win32,         { 5 }
./do-one.sh i386-win32 i686-w64-mingw32
## system_i386_wince,         { 40 }
./do-one.sh i386-wince i686-unknown-mingw32ce

## i8086 CPU
## GNU assmebler cannot (yet) be
## used to generate Free Pascal programs
## system_i8086_embedded,     { 90 }
## system_i8086_msdos,        { 79 }
## system_i8086_win16,        { 89 }


## JVM pseudo-CPU
## JVM backend uses java compiler
## system_jvm_android32,      { 76 }
## system_jvm_java32,         { 75 }


## m68k CPU
## system_m68k_Amiga,         { 7 }
export BINUTILS_RELEASE="2.14-amiga"
./do-one.sh m68k-amiga m68k-unknown-amigaos
export BINUTILS_RELEASE=
## system_m68k_Atari,         { 8 }
./do-one.sh m68k-atari m68k-unknown-atari
## system_m68k_aros (doesn't exist yet)
export BINUTILS_RELEASE="2.25-aros"
./do-one.sh m68k-aros m68k-aros
export BINUTILS_RELEASE=
## system_m68k_embedded,      { 49 }
./do-one.sh m68k-embedded m68k-none-elf
## system_m68k_linux,         { 10 }
# export BINUTILS_RELEASE="2.17"
./do-one.sh m68k-linux m68k-unknown-linux-gnu
#export BINUTILS_RELEASE=
## system_m68k_Mac,           { 9 }
./do-one.sh m68k-mac m68k-unknown-macos
## system_m68k_netbsd,        { 18 }
./do-one.sh m68k-netbsd m68k-unknown-netbsd-gnu
## system_m68k_openbsd,       { 25 }
export BINUTILS_RELEASE=2.17-openbsd
./do-one.sh m68k-openbsd m68k-unknown-openbsd
export BINUTILS_RELEASE=
## system_m68k_PalmOS,        { 11 }
export BINUTILS_RELEASE="2.14"
./do-one.sh m68k-palmos m68k-unknown-palmos
export BINUTILS_RELEASE=

## mips CPU
## system_mipseb_embedded,    { 81 }
./do-one.sh mips-embedded mips-none-elf
## system_mipseb_linux,       { 66 }
./do-one.sh mips-linux mips-unknown-linux-gnu
## system_mips_embedded,      { 56 }
./do-one.sh mips-embedded mips-none-elf
## Same as mips_embedded??

## mipsel CPU
## system_mipsel_android,     { 80 }
./do-one.sh mispel-android-gnuas mipsel-linux-androideabi
## system_mipsel_embedded,    { 82 }
./do-one.sh mipsel-embedded mipsel-none-elf
## system_mipsel_linux,       { 67 }
./do-one.sh mipsel-linux mipsel-unknown-linux-gnu

## powerpc CPU
## system_powerpc_aix,        { 73 }
./do-one.sh powerpc-aix powerpc-unknown-aix7.1
## system_powerpc_Amiga,      { 36 }
export BINUTILS_RELEASE="2.14-amiga"
./do-one.sh powerpc-amiga powerpc-unknown-amigaos
export BINUTILS_RELEASE=
## system_powerpc_aros (doesn't exist yet)
export BINUTILS_RELEASE="2.25-aros"
./do-one.sh powerpc-aros ppc-aros
export BINUTILS_RELEASE=
## system_powerpc_darwin,     { 27 }
./do-one.sh powerpc-darwin powerpc-unknown-darwin
## system_powerpc_embedded,   { 51 }
./do-one.sh powerpc-embedded powerpc-none-elf
## system_powerpc_linux,      { 13 }
./do-one.sh powerpc-linux powerpc-unknown-linux-gnu
## system_powerpc_macos,      { 14 }
./do-one.sh powerpc-macos powerpc-unknown-macos
## system_powerpc_MorphOS,    { 33 }
./do-one.sh powerpc-morphos powerpc-unknown-morphos
## system_powerpc_netbsd,     { 29 }
./do-one.sh powerpc-netbsd powerpc-unknown-netbsd-gnu
## system_powerpc_openbsd,    { 30 }
export BINUTILS_RELEASE=2.17-openbsd
./do-one.sh powerpc-openbsd powerpc-unknown-openbsd
export BINUTILS_RELEASE=
## system_powerpc_wii,        { 70 }
./do-one.sh powerpc-wii powerpc-eabi

## powerpc64 CPU
## system_powerpc64_aix,      { 74 }
./do-one.sh powerpc64-aix powerpc64-unknown-aix7.1
## system_powerpc64_darwin,   { 46 }
./do-one.sh powerpc64-darwin powerpc64-unknown-darwin
## system_powerpc64_embedded, { 58 }
./do-one.sh powerpc64-embedded powerpc64-none-elf
## system_powerpc64_linux,    { 43 }
./do-one.sh powerpc64-linux powerpc64-unknown-linux-gnu

## sparc CPU
## system_sparc_embedded,     { 52 }
./do-one.sh sparc-embedded sparc-none-elf
## system_sparc_linux,        { 23 }
./do-one.sh sparc-linux sparc-unknown-linux-gnu
## system_sparc_solaris,      { 22 }
./do-one.sh sparc-solaris sparc-unknown-solaris2.10

## sparc64 CPU
## system_sparc64_linux       { 93 }
./do-one.sh sparc64-linux sparc64-unknown-linux-gnu

## WASM CPU
## system_wasm_wasm32,        { 92 }

## x86_64 CPU
## system_x86_6432_linux,     { 41 }
## system_x86_64_aros,        { 84 }
export BINUTILS_RELEASE="2.25-aros"
./do-one.sh x86_64-aros x86_64-aros
export BINUTILS_RELEASE=
## system_x86_64_darwin,      { 61 }
./do-one.sh x86_64-darwin x86_64-unknown-darwin
## system_x86_64_dragonfly,   { 85 }
./do-one.sh x86_64-dragonfly amd64-unknown-dragonflybsd
## system_x86_64_embedded,    { 55 }
## system_x86_64_freebsd,     { 34 }
./do-one.sh x86_64-freebsd amd64-unknown-freebsd11
## system_x86_64_iphonesim,   { 87 }
## same as system_x86_64_darwin
## system_x86_64_linux,       { 26 }
./do-one.sh x86_64-linux amd64-unknown-linux-gnu
## system_x86_64_netbsd,      { 72 }
./do-one.sh x86_64-netbsd amd64-unknown-netbsd-gnu
## system_x86_64_openbsd,     { 71 }
export BINUTILS_RELEASE=2.17-openbsd
./do-one.sh x86_64-openbsd amd64-unknown-openbsd
export BINUTILS_RELEASE=
## system_x86_64_solaris,     { 65 }
./do-one.sh x86_64-solaris x86_64-unknown-solaris2.10
## system_x86_64_win64,       { 37 }
./do-one.sh x86_64-win64 x86_64-w64-mingw32


## List was generated using
## sed -n "s:^ *\(system_.*\)$:## \1:p" ~/pas/trunk/fpcsrc/compiler/systems.inc  | sort
## system_none,               { 0 }

