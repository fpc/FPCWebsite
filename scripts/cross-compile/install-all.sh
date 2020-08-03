#!/usr/bin/env bash

# Huge collection of things to install
# on a bare virtual machine with huge disk space

cd $HOME

if [ ! -d bin ] ; then
  mkdir bin
fi

if [ ! -d pas ] ; then
  mkdir pas
fi

if [ ! -s sys-root ] ; then
  mkdir sys-root
fi

if [ ! -d scripts ] ; then
  echo "Installing Free Pascal scripts"
  svn checkout https://svn.freepascal.org/svn/html/scripts
else
  cd scripts
  echo "Updating Free Pascal scripts"
  svn cleanup
  svn up
  cd ..
fi

function maybe_add_symlink ()
{
  file=$1
  if [ ! -f $file ] ; then
    echo "$file does not exist"
    return
  fi
  filename=`basename $file`
  if [ ! -f $HOME/bin/$filename ] ; then
    echo "Adding symlink to $file"
    ( cd bin ; ln -s $file )
  fi
}

cpu=`uname -p | tr [[:upper:]] [[:lower:]] `
os=`uname -s | tr [[:upper:]] [[:lower:]] `
echo "cpu=$cpu, os=$os"

case "$os" in
  SunOS) os=solaris;;
esac

case "$cpu" in
  sparc|sparc64) CPU32=sparc; CPU64=sparc64;;
  i*86|x86_64|amd64) CPU32=i386; CPU64=x86_64;;
  arm|aarch64|arm64) CPU32=arm; CPU64=aarch64;;
esac

script_dir=~/scripts/nightly-testsuite/$cpu-$os
if [ ! -d "$script_dir" ] ; then
  script_dir=~/scripts/nightly-testsuite/$os
fi

for file in $script_dir/*.sh ; do
  maybe_add_symlink $file
done 

# Get Free Pascal versions from the fpc-versions.sh script
. $HOME/bin/fpc-versions.sh

QEMU_VERSION=5.0.0
NASM_VERSION=2.15.03
VASM_VERSION=1_8h
VLINK_VERSION=0_16e
SDCC_VERSION=4.0.0
do_update=0

cd $HOME/pas

case "$os" in
  solaris) RELEASEVERSION=3.0.2
esac

CPUOS32=$CPU32-$os
CPUOS64=$CPU64-$os

if [ ! -d $HOME/pas/fpc-$RELEASEVERSION ] ; then
  # Installing latest Free Pascal distribution
  FPC_RELEASE32_TAR=fpc-${RELEASEVERSION}.${CPUOS32}.tar
  FPC_RELEASE64_TAR=fpc-${RELEASEVERSION}.${CPUOS64}.tar
  if [ ! -f $FPC_RELEASE32_TAR ] ; then
    wget ftp://ftp.freepascal.org/pub/fpc/dist/$RELEASEVERSION/${CPUOS32}/$FPC_RELEASE32_TAR
    tar32ok=$?
  fi
  if [ ! -f $FPC_RELEASE64_TAR ] ;then
    wget ftp://ftp.freepascal.org/pub/fpc/dist/$RELEASEVERSION/${CPUOS64}/$FPC_RELEASE64_TAR
    tar64ok=$?
  fi
  if [ $tar32ok -eq 0 ] ; then
    tar -xvf $FPC_RELEASE32_TAR
    tar32ok=$?
  fi
  if [ $tar64ok -eq 0 ] ; then
    tar -xvf $FPC_RELEASE64_TAR
    tar64ok=$?
  fi
  if [ $tar32ok -eq 0 ] ; then
    cd ${FPC_RELEASE32_TAR/.tar/}
    ./install.sh
    echo "${FPC_RELEASE32_TAR} installation finished, res=$?"
    cd ..
  fi
  if [ $tar64ok -eq 0 ] ; then
    cd ${FPC_RELEASE64_TAR/.tar/}
    ./install.sh 
    echo "${FPC_RELEASE64_TAR} installation finished, res=$?"
    cd ..
  fi
  cd $HOME
  RELEASEVERSION_REGEX=${RELEASEVERSION//\./\\.}
  echo "Substituting $RELEASEVERSION_REGEX"
  sed "s:${RELEASEVERSION_REGEX}:\$fpcversion:g" -i .fpc.cfg
fi

cd $PASDIR
if [ ! -d $TRUNKDIRNAME ] ; then
  svn checkout https://svn.freepascal.org/svn/fpcbuild/$TRUNKDIRNAME
else
  if [ ! -d trunk ] ; then
    ln -s $$TRUNKDIRNAME trunk
  fi
  cd trunk
  svn cleanup
  svn up
  cd ..
fi

if [ ! -d $FIXESDIR ] ; then
  svn checkout https://svn.freepascal.org/svn/fpcbuild/branches/$FIXES_BRANCH
else
  if [ ! -d fixes ] ; then
    ln -s $FIXES_BRANCH fixes
  fi
  cd fixes
  svn cleanup
  svn up
  cd ..
fi

if [ $do_update -eq 1 ] ; then
  cd $HOME/pas/trunk/fpcsrc/compiler/
  make cycle OPT="-n -gl" FPC=~/pas/fpc-$RELEASEVERSION/bin/ppc386
  make installsymlink FPC=`pwd`/ppc386 PREFIX=~/pas/fpc-$TRUNKVERSION
  make cycle OPT="-n -gl" FPC=~/pas/fpc-$RELEASEVERSION/bin/ppcx64
  make installsymlink FPC=`pwd`/ppcx64 PREFIX=~/pas/fpc-$TRUNKVERSION
  cd ${HOME}/pas/fixesfpcsrc/compiler/
  make cycle OPT="-n -gl" FPC=~/pas/fpc-$RELEASEVERSION/bin/ppc386
  make installsymlink FPC=`pwd`/ppc386 PREFIX=~/pas/fpc-3.2.0-beta
  make cycle OPT="-n -gl" FPC=~/pas/fpc-$RELEASEVERSION/bin/ppcx64
  make installsymlink FPC=`pwd`/ppcx64 PREFIX=~/pas/fpc-3.2.0-beta
  cd $HOME/pas
  if [ ! -d fpc-3.2.0 ] ; then
    ln -s fpc-3.2.0-beta fpc-3.2.0
  fi
fi

# install home mutt script 
cd
if [ ! -d mutt ] ; then
  mkdir mutt
  echo 0 > mutt/last
fi
if [ ! -d gnu ] ; then
  mkdir gnu
fi
cd gnu

if [ ! -f $HOME/sys-root/bin/qemu-arm ] ; then
  if [ ! -d qemu ] ; then
    mkdir qemu
  fi
  cd qemu

  # Install qemu
  wget https://download.qemu.org/qemu-$QEMU_VERSION.tar.xz
  tar xvJf qemu-$QEMU_VERSION.tar.xz
  cd qemu-$QEMU_VERSION
  ./configure --prefix=$HOME/sys-root
  make all install
fi

# Install cross-binutils
if [ ! -d $HOME/gnu/binutils/build ] ; then
  cd $HOME/gnu
  if [ ! -d binutils ] ; then
    mkdir binutils
  fi
  cd binutils
  if [ ! -d build ] ; then
    mkdir build
  fi
  cd build
  ln -s ~/scripts/cross-binutils/do-all.sh
  ln -s ~/scripts/cross-binutils/do-one.sh
  screen  ./do-all.sh
fi

if [ ! -f $HOME/bin/nasm ] ; then
  cd $HOME/gnu
  if [ ! -d nasm ] ; then
    mkdir nasm
  fi

 cd nasm

  wget https://www.nasm.us/pub/nasm/releasebuilds/$NASM_VERSION/nasm-$NASM_VERSION.tar.gz
  tar -xvzf nasm-$NASM_VERSION.tar.gz
  cd nasm-$NASM_VERSION
  ./configure --prefix=$HOME/gnu
  make all install
  cd $HOME/bin
  ln -s $HOME/gnu/bin/nasm nasm
  ln -s nasm i8086-msdos-nasm
  ln -s nasm i8086-embedded-nasm
  ln -s nasm i8086-win32-nasm
  ln -s nasm i386-go32v2-nasm
  ln -s nasm i386-win32-nasm
  ln -s nasm i386-linux-nasm
  ln -s nasm i386-embedded-nasm
fi

# Add clang symlinks
if [ ! -f $HOME/bin/clang ] ; then
  cd $HOME/bin
  if [ -n "`which clang`" ] ; then
   ln -s `which clang`
cat > $HOME/bin/aarch64-darwin-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang\$CLANG_VERSION --target=aarch64-apple-darwin-macho \$*
HERE_SCRIPT
cat > $HOME/bin/aarch64-iphonesim-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang\$CLANG_VERSION --target=aarch64-apple-darwin-macho \$*
HERE_SCRIPT
cat > $HOME/bin/arm-darwin-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang\$CLANG_VERSION --target=arm-apple-darwin-macho \$*
HERE_SCRIPT
cat > $HOME/bin/arm-iphonesim-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang\$CLANG_VERSION --target=arm-apple-darwin-macho \$*
HERE_SCRIPT
cat > $HOME/bin/i386-darwin-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang\$CLANG_VERSION --target=i386-apple-darwin-macho \$*
HERE_SCRIPT
cat > $HOME/bin/i386-iphonesim-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang\$CLANG_VERSION --target=i386-apple-darwin-macho \$*
HERE_SCRIPT
cat > $HOME/bin/powerpc64-darwin-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang\$CLANG_VERSION --target=powerpc64-apple-darwin-macho \$*
HERE_SCRIPT
cat > $HOME/bin/powerpc-darwin-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang\$CLANG_VERSION --target=powerpc-apple-darwin-macho \$*
HERE_SCRIPT
cat > $HOME/bin/x86_64-darwin-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang\$CLANG_VERSION --target=x86_64-apple-darwin-macho \$*
HERE_SCRIPT
cat > $HOME/bin/x86_64-iphonesim-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang\$CLANG_VERSION --target=x86_64-apple-darwin-macho \$*
HERE_SCRIPT
  fi
  chmod u+x $HOME/bin/*-*-clang
fi

# Add vasm assembler
if [ ! -f $HOME/bin/vasmm68k_std ] ; then
  cd $HOME/gnu
  mkdir vasm
  cd vasm

  wget http://server.owl.de/~frank/tags/vasm${VASM_VERSION}.tar.gz
  tar -xvzf vasm${VASM_VERSION}.tar.gz 
  cd vasm
  make CPU=m68k SYNTAX=mot
  make CPU=m68k SYNTAX=std
  make CPU=x86 SYNTAX=std
  make CPU=ppc SYNTAX=std
  make CPU=arm SYNTAX=std
  make CPU=z80 SYNTAX=std
  cp vasmm68k_mot vobjdump vasmm68k_std vasmx86_std vasmppc_std vasmarm_std vasmz80_std $HOME/bin
fi

# Add vlink linker
if [ ! -f $HOME/bin/vlink ] ; then
  cd $HOME/gnu
  mkdir vlink
  cd vlink
  # wget http://server.owl.de/~frank/tags/vlink${VLINK_VERSION}.tar.gz
  wget http://phoenix.owl.de/tags/vlink${VLINK_VERSION}.tar.gz
  tar -xvzf vlink${VLINK_VERSION}.tar.gz 
  cd vlink
  make
  cp vlink $HOME/bin
fi

# Add z80 assembler and symbolic links
if [ ! -f $HOME/bin/sdasz80 ] ; then
  cd $HOME/gnu
  mkdir sdcc
  cd sdcc
  echo "Uploading sdcc version $SDCC_VERSION"
  wget https://sourceforge.net/projects/sdcc/files/sdcc/$SDCC_VERSION/sdcc-src-$SDCC_VERSION.tar.bz2 .
  tar -xvjf sdcc-src-$SDCC_VERSION.tar.bz2
  mkdir build-sdcc
  cd build-sdcc
  ../sdcc/configure
  make
fi
