<master>
<property name="title">Free Pascal - Advanced open source Pascal compiler for Pascal and Object Pascal - Home Page</property>
<property name="entry">fpc</property>
<property name="header"><trn locale="en_US" key="website.Introduction">Introduction</trn></property>

<h2><trn locale="en_US" key="website.overview">Overview</trn></h2>
<p>
  <trn locale="en_US" key="website.overview_text">
    Free Pascal (aka FPK Pascal) is a 32 and 64 bit professional Pascal compiler.
    It is available for different processors: Intel x86, Amd64/x86_64, PowerPC, PowerPC64,
    Sparc, ARM. The discontinued 1.0 version also supports the Motorola 680x0.
    The following operating systems are supported: Linux, FreeBSD, Haiku
    Mac OS X/Darwin, DOS, Win32, Win64, WinCE, OS/2,
    Netware (libc and classic) and MorphOS.
  </trn>
</p>

<h2><trn locale="en_US" key="website.latest_news">Latest News</trn></h2>

<em>January 1st, 2010</em>
  <trn locale="en_US" key="website.news_headline_20100101">
    Happy New Year!, a new major version 2.4.0 has been released. The 2.4.x series adds, among others, <br>
     <ul>
      <li>Delphi like resources for all platforms,</li>
      <li>Dwarf debug information improvements, </li>
      <li>Several new targets
           <ul>
              <li>  64-bit Mac OS X (x86_64/ppc64)</li>
              <li>  iPhone (Mac OS X/Arm)</li>
              <li>  Haiku (from the BeOS family)</li>
              <li>  Improved ARM EABI support</li>
          </ul>
      <li>Whole program optimization</li>
      <li>Many compiler bugfixes and half an year of library updates (since 2.2.4)</li>
     </ul>

    Downloads are available from the <a href="download.var">download page</A> (mirrors should follow soon). <br>
    A list of changes that may require
    changes to existing code is available <A HREF="http://wiki.freepascal.org/User_Changes_2.4.0">here</A>.
  </trn>
</p>

<p>
  <em>September 17, 2009</em>
  <trn locale="en_US" key="website.news_headline_20090917">
    <i>(The previously posted information about Mac OS X 10.6 compatibility was unfortunately
    incorrect, which is why it was removed).</i>
    FPC 2.2.4 has been tested with Mac OS X 10.6 (Snow Leopard) and generally works fine.
    There is however an issue when compiling dynamic libraries with FPC under Mac OS X
    10.6 due to a bug in the Xcode 3.2 linker. Unforuntately, there is no easy fix when using
    FPC 2.2.4. The full discussion can be found in <a href="http://bugs.freepascal.org/view.php?id=14471">
    this bug report</a>, with a summary in the last comment.
   </trn>
</p>

<p>
<a href="news@x@">Older news...</a>
</p>
<h2><trn locale="en_US" key="website.Current_Version">Current Version</trn></h2>
<p>
  <trn locale="en_US" key="website.Current_Version_text">
    Version <em>2.4.0</em> is the latest stable version the Free Pascal.
    Hit the <a href="download@x@">download</a> link and select a mirror close
    to you to download your copy.
    The development releases have version numbers <EM>2.5.x</EM>.
    See the <a href="develop@x@">development</a> page how to obtain the latest sources and support development.
  </trn>
</p>
<h2><trn locale="en_US" key="website.Features">Features</trn></h2>
<p>
  <trn locale="en_US" key="website.Features_text">
    The language syntax has excellent compatibility with TP 7.0 as well as
    with most versions of Delphi (classes, rtti, exceptions, ansistrings, widestrings, interfaces).
    A Mac Pascal mode, largely compatible with Think Pascal and MetroWerks Pascal, is also available.
    Furthermore Free Pascal supports function overloading, operator overloading, global properties and
    several other extra features.
  </trn>
</p>

<h2><trn locale="en_US" key="website.Requirements">Requirements</trn></h2>
<b><trn locale="en_US" key="website.req_x86a">x86 architecture:</trn></b>
<blockquote><trn locale="en_US" key="website.req_x86b">
  For the 80x86 version at least a 386 processor is required, but a 486
  is recommended. The Mac OS X version requires Mac OS X 10.4 or later,
  with the developer tools installed.
</trn></blockquote>
<b><trn locale="en_US" key="website.reqppca">PowerPC architecture:</trn></b>
<blockquote><trn locale="en_US" key="website.reqppcb">
  Any PowerPC processor will do. 16 MB of RAM is required. The Mac OS
  classic version is expected to work System 7.5.3 and later. The Mac OS X version
  requires Mac OS X 10.3 or later (can compile for 10.2.8 or later), with the developer tools installed.
  On other operating systems Free Pascal runs on any system that can run the operating
  system.
</trn></blockquote>
<b><trn locale="en_US" key="website.req_arma">ARM architecture</trn></b>
<blockquote><trn locale="en_US" key="website.req_armb">
  16 MB of RAM is required. Runs on any ARM Linux installation.
</trn></blockquote>
<b><trn locale="en_US" key="website.req_sparca">Sparc architecture</trn></b>
<blockquote><trn locale="en_US" key="website.req_sparcb">
  16 MB of RAM is required. Runs on any Sparc Linux installation (solaris is experimental).
</trn></blockquote>

<h2><trn locale="en_US" key="website.License">License</trn></h2>
<p>
<trn locale="en_US" key="website.License_text">
  The packages and runtime library come under a modified Library GNU Public
  License to allow the use of static libraries when creating applications. The
  compiler source itself comes under the GNU General Public License. The sources
  for both the compiler and runtime library are available; the complete compiler
  is written in Pascal.
</trn>
</p>
