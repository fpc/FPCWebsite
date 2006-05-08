<HTML>
<!--
#TITLE Free Pascal - Advanced open source Pascal compiler for Pascal and Object Pascal - Home Page
#ENTRY fpc
#HEADER Introduction
#MODIFY
-->

<H2>Overview</H2>
<P>
  Free Pascal (aka FPK Pascal) is a 32 and 64 bit professional Pascal compiler.
  It is available for different processors: Intel x86, Amd64/x86_64, PowerPC,
  Sparc. The discontinued 1.0 version also supports the Motorola 680x0.
  The following operating systems are supported: Linux, FreeBSD,
  <a href="fpcmac.html">Mac OS X/Darwin</A>, <A HREF="fpcmac.html">Mac OS classic</A>, DOS, Win32, OS/2,
  Netware (libc and classic) and MorphOS.
</P>

<H2>Latest News</H2>
<em>April 2006</em> The first <a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/v21/x86_64-win64/fpc-2.1.1.x86_64-win64.zip">WIN64 Snapshot</a> has been uploaded to the FTP site</li>
</ul>

<p><em>March 2006 summary</em>
Lots of new progress in March, but too busy coding to update the website, so this entry will be a summary of progress on the main (2.1.1) branch:
<ul>
<li>Thomas Schatzl is making good progress with the linux 64-bit PowerPC port. A snapshot is 
<a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/v21/powerpc64-linux/fpc-2.1.1.powerpc64-linux.tar.gz">here</a></lI>
<li>Peter did a Titanic work, and crafted an internal linker for win32 and win64, reducing
linking times tremendously. For such a complex new subsystem, it is already quite stable.</lI>
<lI>DWARF debugging info support is slowly starting to work. Stabs will be phased out in time.</li>
<li>Florian just showed a first &quot;Hello world&quot; program for Win64. This is remarkable since
GCC and the binutils don't even support this target. (Internal linker!)</li>
<lI>Jonas reported that he has ported to Darwin/i386 with remarkably little effort. Snapshots
are expected in the coming weeks. </li>
</ul>
<p><em>February 15, 2006</em>
An FPC port for Solaris/Sparc has been created. Get it 
<a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/v21/sparc-solaris">here</a>.
<p>
<a href="news.html">Older News</a>
</p>

<h2>Current Version</h2>
<p>
  Version <em>2.0.2</EM> is the latest stable version the Free Pascal.
  Hit the <A HREF="download.html">download</A> link and select a mirror close
  to you to download your copy.
  The development releases have version numbers <EM>2.1.x</EM>.
  See the <A HREF="develop.html">development</A> page how to obtain the latest sources and support development.
</p>
<H2>Features</H2>
<P>
  The language syntax has excellent compatibility with TP 7.0 as well as
  with most versions of Delphi (classes, rtti, exceptions, ansistrings, widestrings, interfaces).
  A Mac Pascal compatibility mode is also provided to assist Apple users. Furthermore
  Free Pascal supports function overloading, operator overloading, global properties and
  other such features.
</P>

<H2>Requirements</H2>
<b>x86 architecture:</b>
<blockquote>For the 80x86 version at least a 386 processor is required, but a 486
is recommended.</blockquote>
<b>PowerPC architecture:</b>
<blockquote>Any PowerPC processor will do. 16 MB of RAM is required. The Mac OS
classic version is expected to work System 7.5.3 and later. The Mac OS X version
requires Mac OS X 10.1 or later, with the developer tools installed.
On other operating systems Free Pascal runs on any system that can run the operating
system.
</blockquote>
<b>ARM architecture</b>
<blockquote>
Only cross-compiling to ARM is supported at this time.
</blockquote>
<b>Sparc architecture</b>
<blockquote>
16 MB of RAM is required. Runs on any Sparc Linux installation.
</blockquote>


<H2>License</H2>
<P>
  The packages and runtime library come under a modified Library GNU Public
  License to allow the use of static libraries when creating applications. The
  compiler source itself comes under the GNU General Public License. The sources
  for both the compiler and runtime library are available; the complete compiler
  is written in Pascal.
</P>
</HTML>
