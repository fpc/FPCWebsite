<master>
<property name="title">Free Pascal - Advanced open source Pascal compiler for Pascal and Object Pascal - Home Page</property>
<property name="entry">fpc</property>
<property name="header"><trn locale="en_US" key="website.Introduction">Introduction</trn></property>

<h2><trn locale="en_US" key="website.overview">Overview</trn></h2>
<p>
  <trn locale="en_US" key="website.overview_text">
    Free Pascal (aka FPK Pascal) is a 32 and 64 bit professional Pascal compiler.
    It is available for different processors: Intel x86, Amd64/x86_64, PowerPC,
    Sparc. The discontinued 1.0 version also supports the Motorola 680x0.
    The following operating systems are supported: Linux, FreeBSD,
    <a href="fpcmac@x@">Mac OS X/Darwin</a>, <a href="fpcmac@x@">Mac OS classic</a>, DOS, Win32, Win64, WinCE, OS/2,
    Netware (libc and classic) and MorphOS.
  </trn>
</p>

<h2><trn locale="en_US" key="website.latest_news">Latest News</trn></h2>
<p>
  <em>September 20, 2007</em>
  <trn locale="en_US" key="website.news_headline_20070910">
    The Free Pascal Compiler team is pleased to announce the release of FPC 2.2.0!
    <p>An overview of most changes is available <a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_2_0/install/doc/whatsnew.txt">here</a>, but some highlights are:
    <ul>
      <li> Architectures: PowerPC/64 and ARM support
      <li> Platforms: Windows x64, Windows CE, Mac OS X/Intel, Game Boy Advance, and Game Boy DS support
      <li> Linker: fast and lean internal linker for Windows platforms
      <li> Debugging: Dwarf support and the ability to automatically fill variables with several values to more easily detect uninitialised uses
      <li> Language: support for interface delegation, bit packed records and arrays and support for COM/OLE variants and dispinterfaces
      <li> Infrastructure: better variants support, multiple resource files support, widestrings are COM/OLE compatible on Windows, improved database support
    </ul>
  <p> The release notes can be found <a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_2_0/install/doc/whatsnew.txt">here</a>.
  <p>
  Downloads are available at <a href="download.var">http://www.freepascal.org/download.var</a>
  </trn>
<p>
  <trn locale="en_US" key="website.news_headline_20070520">
    <em>May 20, 2007</em>
    After years of development the new fpc version 2.2.0, version <em>2.1.4</em>
    aka <em>2.2.0-beta</em> is <a href="download@x@#beta">released</a>.
    The beta will be available for about two months whereafter 2.2.0 will be released. We ask all
    our users to test this release, and report bugs on <a href="mantis/set_project.php?project_id=6">
    the bug-tracker</a>. If you want to know if your bug is already solved, you can look it up in 
    <a href="mantis/set_project.php?project_id=6">mantis</a>, or
    try one of the daily snapshots, based on the fixes_2_2 branch. So please help us make version
    2.2.0 the most stable version of freepascal, until now. List of changes can be found 
    <a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_1_4/install/doc/whatsnew.txt">here</a>.
    The <a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_1_4/install/doc/readme.txt">
    releasenotes</a> are also available. Please note that there are some intentional incompatibilities 
    with previous versions, for an overview click <a href="http://wiki.freepascal.org/User_Changes_2.2.0">
    here</a>.
  </trn>

<h2><trn locale="en_US" key="website.Current_Version">Current Version</trn></h2>
<p>
  <trn locale="en_US" key="website.Current_Version_text">
    Version <em>2.2.0</em> is the latest stable version the Free Pascal.
    Hit the <a href="download@x@">download</a> link and select a mirror close
    to you to download your copy.
    The development releases have version numbers <EM>2.3.x</EM>.
    See the <a href="develop@x@">development</a> page how to obtain the latest sources and support development.
  </trn>
</p>
<h2><trn locale="en_US" key="website.Features">Features</trn></h2>
<p>
  <trn locale="en_US" key="website.Features_text">
    The language syntax has excellent compatibility with TP 7.0 as well as
    with most versions of Delphi (classes, rtti, exceptions, ansistrings, widestrings, interfaces).
    A Mac Pascal compatibility mode is also provided to assist Apple users. Furthermore
    Free Pascal supports function overloading, operator overloading, global properties and
    other such features.
  </trn>
</p>

<h2><trn locale="en_US" key="website.Requirements">Requirements</trn></h2>
<b><trn locale="en_US" key="website.req_x86a">x86 architecture:</trn></b>
<blockquote><trn locale="en_US" key="website.req_x86b">
  For the 80x86 version at least a 386 processor is required, but a 486
  is recommended.
</trn></blockquote>
<b><trn locale="en_US" key="website.reqppca">PowerPC architecture:</trn></b>
<blockquote><trn locale="en_US" key="website.reqppcb">
  Any PowerPC processor will do. 16 MB of RAM is required. The Mac OS
  classic version is expected to work System 7.5.3 and later. The Mac OS X version
  requires Mac OS X 10.1 or later, with the developer tools installed.
  On other operating systems Free Pascal runs on any system that can run the operating
  system.
</trn></blockquote>
<b><trn locale="en_US" key="website.req_arma">ARM architecture</trn></b>
<blockquote><trn locale="en_US" key="website.req_armb">
  Only cross-compiling to ARM is supported at this time.
</trn></blockquote>
<b><trn locale="en_US" key="website.req_sparca">Sparc architecture</trn></b>
<blockquote><trn locale="en_US" key="website.req_sparcb">
  16 MB of RAM is required. Runs on any Sparc Linux installation.
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
