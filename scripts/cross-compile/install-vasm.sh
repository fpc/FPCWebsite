#!/usr/bin/env bash
if [ -z "$VASM_VERSION" ] ; then
  VASM_VERSION=1_8h
fi
if [ -z "$VLINK_VERSION" ] ; then
  VLINK_VERSION=0_16e
fi


# Add vasm assembler
z80_os_list="embedded zxspectrum msxdos amstradcpc"
m68k_os_list="embedded macos macosclassic linux netbsd amiga atari"

# Add vasm assembler
recompile=0

if [ ! -f $HOME/bin/vasmm68k_std ] ; then
  recompile=1
fi

if [ ! -f $HOME/bin/vasmz80_std ] ; then
  recompile=1
fi

function recompile_vasm ()
{
  cd $HOME/gnu
  if [ ! -d vasm ] ; then
    mkdir vasm
  fi
  cd vasm
  VASM_SRC=vasm${VASM_VERSION}.tar.gz 

  if [ ! -f "$VASM_SRC" ] ; then
    if [ -d vasm ] ; then
      rm -Rf vasm
    fi
    wget http://server.owl.de/~frank/tags/${VASM_SRC}
    wget_res=$?
    if [ $wget_res -ne 0 ] ; then
      echo "wget failed to download $VASM_SRC"
      return 1
    fi
    tar -xvzf ${VASM_SRC}
    tar_res=$?
    if [ $tar_res -ne 0 ] ; then
      echo "tar failed to untar $VASM_SRC"
      return 2
    fi
  fi
  cd vasm
  make CPU=m68k SYNTAX=mot
  make CPU=m68k SYNTAX=std
  make CPU=x86 SYNTAX=std
  make CPU=ppc SYNTAX=std
  make CPU=arm SYNTAX=std
  make CPU=z80 SYNTAX=std
  cp -p vasmm68k_mot vobjdump vasmm68k_std vasmx86_std vasmppc_std vasmarm_std vasmz80_std $HOME/bin
}

if [ $recompile -eq 1 ] ; then
  echo "Trying to recompile vasm version $VASM_VERSION"
  res=`recompile_vasm`
  if [ $res -eq 1 ] ; then
    VASM_VERSION=
    echo "Trying to recompile generic vasm version"
    recompile_vasm
  fi
fi

cd $HOME/bin

for os in $z80_os_list ; do
  z80_symlink=z80-${os}-vasmz80_std
  if [ ! -L "$z80_symlink" ] ; then
    echo "Adding $z80_symlink symbolic link to vasmz80_std"
    ln -s vasmz80_std $z80_symlink
  fi
done

for os in $m68k_os_list ; do
  m68k_symlink=m68k-${os}-vasmm68k_std
  if [ ! -L "$m68k_symlink" ] ; then
    echo "Adding $m68k_symlink symbolic link to vasmm68k_std"
    ln -s vasmm68k_std $m68k_symlink
  fi
done

function recompile_vlink ()
{
  cd $HOME/gnu
  if [ ! -d vlink ] ; then
    mkdir vlink
  fi
  cd vlink
  VLINK_SRC=vlink${VLINK_VERSION}.tar.gz
  if [ ! -f "$VLINK_SRC" ] ; then
    if [ -d vlink ] ; then
      rm -Rf vlink
    fi
    # wget http://server.owl.de/~frank/tags/vlink${VLINK_VERSION}.tar.gz
    wget http://phoenix.owl.de/tags/$VLINK_SRC
    res=$?
    if [ $res -ne 0 ] ; then
      return $res
    fi
    tar -xvzf $VLINK_SRC
    res=$?
    if [ $res -ne 0 ] ; then
      return $res
    fi
  fi
  cd vlink
  make
  res=$?
  if [ $res -ne 0 ] ; then
    return $res
  fi
  cp vlink $HOME/bin
  res=$?
  if [ $res -ne 0 ] ; then
    return $res
  fi
}

# Add vlink linker
if [ ! -f $HOME/bin/vlink ] ; then
  echo "Trying to recompile vlink version $VLINK_VERSION"
  recompile_vlink
  res=$?
  if [ $res -ne 0 ] ; then
    VLINK_VERSION=
    echo "Trying to recompile generic vlink version"
    recompile_vlink
  fi
fi

cd $HOME/bin

for os in $z80_os_list ; do
  z80_symlink=z80-${os}-vlink
  if [ ! -L "$z80_symlink" ] ; then
    echo "Adding $z80_symlink symbolic link to vlink"
    ln -s vlink $z80_symlink
  fi
done

for os in $m68k_os_list ; do
  m68k_symlink=m68k-${os}-vlink
  if [ ! -L "$m68k_symlink" ] ; then
    echo "Adding $m68k_symlink symbolic link to vlink"
    ln -s vlink $m68k_symlink
  fi
done


