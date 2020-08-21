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

if [ -d scripts ] ; then
  SCRIPTDIR=$HOME/scripts
elif [ -d pas/scripts ] ; then
  SCRIPTDIR=$HOME/pas/scripts
else
  echo "Installing Free Pascal scripts"
  svn checkout https://svn.freepascal.org/svn/html/scripts
  SCRIPTDIR=$HOME/scripts
fi

cd $SCRIPTDIR
echo "Updating Free Pascal scripts"
svn cleanup
svn up
cd $HOME

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
  sparc64) CPU32=sparc; CPU64=sparc64;;
  sparc) CPU32=sparc;;
  x86_64|amd64) CPU32=i386; CPU64=x86_64;;
  i*86) CPU32=i386;;
  aarch64|arm64) CPU32=arm; CPU64=aarch64;;
  arm*) CPU32=arm;;
  ppc64le|powerpc64le) CPU64=powerpc64le;;
  ppc64|powerpc64) CPU32=powerpc; CPU64=powerpc64;;
  ppc|powerpc) CPU32=powerpc;;
esac

script_dir=$SCRIPTDIR/nightly-testsuite/$cpu-$os
if [ ! -d "$script_dir" ] ; then
  script_dir=$SCRIPTDIR/nightly-testsuite/$os
fi

maybe_add_symlink $SCRIPTDIR/fpc-versions.sh

for file in $script_dir/*.sh ; do
  maybe_add_symlink $file
done 

# Get Free Pascal versions from the fpc-versions.sh script
. $HOME/bin/fpc-versions.sh

QEMU_VERSION=5.1.0
NASM_VERSION=2.15.03
VASM_VERSION=1_8h
VLINK_VERSION=0_16e
SDCC_VERSION=4.0.0

do_update=0

cd $HOME/pas

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
  cd ${HOME}/pas/fixes/fpcsrc/compiler/
  make cycle OPT="-n -gl" FPC=~/pas/fpc-$RELEASEVERSION/bin/ppc386
  make installsymlink FPC=`pwd`/ppc386 PREFIX=~/pas/fpc-$FIXESVERSION
  make cycle OPT="-n -gl" FPC=~/pas/fpc-$RELEASEVERSION/bin/ppcx64
  make installsymlink FPC=`pwd`/ppcx64 PREFIX=~/pas/fpc-$FIXESVERSION
  cd $HOME/pas
fi

# install home mutt script 
cd $HOME

if [ ! -d mutt ] ; then
  mkdir mutt
  echo 0 > mutt/last
fi
if [ ! -d gnu ] ; then
  mkdir gnu
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
  ln -s $SCRIPTDIR/cross-binutils/do-all.sh
  ln -s $SCRIPTDIR/cross-binutils/do-one.sh
  screen  ./do-all.sh
fi

CROSS_COMPILE_DIR="$SCRIPTDIR/cross-compile"

cd $HOME/gnu
. $CROSS_COMPILE_DIR/install-qemu.sh

cd $HOME/gnu
. $CROSS_COMPILE_DIR/install-nasm.sh


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


cd $HOME/gnu
. $CROSS_COMPILE_DIR/install-vasm.sh

cd $HOME/gnu
. $CROSS_COMPILE_DIR/install-z80.sh
