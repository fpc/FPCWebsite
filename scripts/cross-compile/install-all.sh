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
  filename=`basename $file`
  if [ ! -f $HOME/bin/$filename ] ; then
    echo "Adding symlink to $file"
    ( cd bin ; ln -s $file )
  fi
}

maybe_add_symlink ~/scripts/fpc-versions.sh 
maybe_add_symlink ~/scripts/nightly-testsuite/x86_64-linux/linux-fpcallup.sh 
maybe_add_symlink ~/scripts/nightly-testsuite/x86_64-linux/linux-fpccommonup.sh 
maybe_add_symlink ~/scripts/nightly-testsuite/x86_64-linux/all-snapshots.sh 
maybe_add_symlink ~/scripts/nightly-testsuite/x86_64-linux/makesnapshot.sh 
maybe_add_symlink ~/scripts/nightly-testsuite/x86_64-linux/makesnapshotfixes.sh 
maybe_add_symlink ~/scripts/nightly-testsuite/x86_64-linux/makesnapshottrunk.sh 

# Get Free Pasca versions from the fpc-versions.sh script
. $HOME/bin/fpc-versions.sh

QEMU_VERSION=3.0.0
NASM_VERSION=2.13.03
VASM_VERSION=1_8d
VLINK_VERSION=0_16a
do_update=0

cd $HOME/pas

if [ ! -d $HOME/pas/fpc-$RELEASEVERSION ] ; then
  # Installing latest Free Pascal distribution
  FPC_RELEASE32_TAR=fpc-${RELEASEVERSION}.i386-linux.tar
  FPC_RELEASE64_TAR=fpc-${RELEASEVERSION}.x86_64-linux.tar
  if [ ! -f $FPC_RELEASE32_TAR ] ; then
    wget ftp://ftp.freepascal.org/pub/fpc/dist/$RELEASEVERSION/i386-linux/$FPC_RELEASE32_TAR
  fi
  if [ ! -f $FPC_RELEASE64_TAR ] ;then
    wget ftp://ftp.freepascal.org/pub/fpc/dist/$RELEASEVERSION/x86_64-linux/$FPC_RELEASE64_TAR
  fi
  tar -xvf $FPC_RELEASE32_TAR
  tar -xvf $FPC_RELEASE64_TAR
  cd ${FPC_RELEASE32_TAR/.tar/}
  ./install.sh 
  cd ../${FPC_RELEASE64_TAR/.tar/}
  ./install.sh 
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
    ln -s $FIXES_BRANCH trunk
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
cat /home/muller/bin/aarch64-darwin-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang$CLANG_VERSION --target=aarch64-apple-darwin-macho $*
HERE_SCRIPT
cat /home/muller/bin/aarch64-iphonesim-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang$CLANG_VERSION --target=aarch64-apple-darwin-macho $*
HERE_SCRIPT
cat /home/muller/bin/arm-darwin-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang$CLANG_VERSION --target=arm-apple-darwin-macho $*
HERE_SCRIPT
cat /home/muller/bin/arm-iphonesim-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang$CLANG_VERSION --target=arm-apple-darwin-macho $*
HERE_SCRIPT
cat /home/muller/bin/i386-darwin-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang$CLANG_VERSION --target=i386-apple-darwin-macho $*
HERE_SCRIPT
cat /home/muller/bin/i386-iphonesim-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang$CLANG_VERSION --target=i386-apple-darwin-macho $*
HERE_SCRIPT
cat /home/muller/bin/powerpc64-darwin-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang$CLANG_VERSION --target=powerpc64-apple-darwin-macho $*
HERE_SCRIPT
cat /home/muller/bin/powerpc-darwin-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang$CLANG_VERSION --target=powerpc-apple-darwin-macho $*
HERE_SCRIPT
cat /home/muller/bin/x86_64-darwin-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang$CLANG_VERSION --target=x86_64-apple-darwin-macho $*
HERE_SCRIPT
cat /home/muller/bin/x86_64-iphonesim-clang <<HERE_SCRIPT
#!/usr/bin/env bash
clang$CLANG_VERSION --target=x86_64-apple-darwin-macho $*
HERE_SCRIPT
  fi
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
  cp vasmm68k_mot vobjdump vasmm68k_std vasmx86_std vasmppc_std vasmarm_std $HOME/bin
fi

# Add vlink linker
if [ ! -f $HOME/bin/vlink ] ; then
  cd $HOME/gnu
  mkdir vlink
  cd vlink
  wget http://server.owl.de/~frank/tags/vlink${VLINK_VERSION}.tar.gz
  tar -xvzf vlink${VLINK_VERSION}.tar.gz 
  cd vlink
  make
  cp vlink $HOME/bin
fi

