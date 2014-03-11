<master>
<property name="title">Free Pascal - Advanced open source Pascal compiler for Pascal and Object Pascal - Home Page</property>
<property name="entry">fpc</property>
<property name="header"><trn locale="en_US" key="website.Introduction">Introduction</trn></property>

<h2><trn locale="en_US" key="website.overview">Overview</trn></h2>
<p>
  <trn locale="en_US" key="website.overview_text">
    Free Pascal is a 32,64 and 16 bit professional Pascal compiler.
    It can target multiple processor architectures: Intel x86, AMD64/x86-64,
    PowerPC, PowerPC64, SPARC, and ARM. Supported operating systems include Linux,
    FreeBSD, Haiku, Mac OS X/iOS/Darwin, DOS, Win32, Win64, WinCE, OS/2,
    MorphOS, Nintendo GBA, Nintendo DS, and Nintendo Wii. Additionally, JVM,
    MIPS (big and little endian variants), i8086 and Motorola 68k architecture targets
    are available in the development versions.
  </trn>
</p>

<h2><trn locale="en_US" key="website.latest_news">Latest News</trn></h2>

<p><em>March 11th, 2014</em>
<trn locale="en_US" key="website.news_headline_20140311">

<p>FPC 2.6.4 has been released! Free Pascal 2.6.4 is a point release from the 2.6.0 fixes branch.</p>
<p>
Some highlights are:
<ul>
<li>Packages:</li>
<ul>
  <li> Lots and lots fixes and improvements for fcl-db </li>
  <li> web and json packages synchronized. </li>
  <li> improvements to the chmcmd compiler.</li>
  <li> Several fixes for winunits (and winceunits)</li>
</ul>
</ul>
<p>
See the <a href="http://bugs.freepascal.org/changelog_page.php">changelog</a> for the list of reported
bugs which have been fixed in this release.
</p>
    <p>
    Downloads are available from the <a href="download@x@">download page</A> (mirrors should follow soon).
    </p>
    <p>Some archives are still being uploaded</p>
    <p>
    A list of changes that may require
    changes to existing code is also <A HREF="http://wiki.freepascal.org/User_Changes_2.6.4">available</A>.
    <p>
</trn>
</p>

<p><em>February 13th, 2013</em>
  <trn locale="en_US" key="website.news_headline_20130213">
    <p>The FreePascal team is pleased to announce official support for native
Android targets in the trunk SVN repository.</p>

<p>In addition to the existing Android support using the Java VM target,
you can now use the FreePascal compiler to generate native executables
and libraries. You can now speed up your performance critical code on
x86 and ARM CPUs writing in Object Pascal.</p>

<p>We hope that the Android target will attract new and old developers. It
may still be a little rough on the edges. We appreciate your feedback
and further contributions.</p>

<p>Read more about how to use native Android support at
<a href="http://wiki.freepascal.org/Android">Android Wiki page</a>
</p>
<trn>
</p>

<p><em>October 21st, 2012</em>
  <trn locale="en_US" key="website.news_headline_20121021">
    <p>Recently, considerable progress has been reached with regard to
support of new CPU architectures. This includes not only new support
for MIPS processors running in both little endian and big endian
modes (contributed mostly by Florian, Pierre and external
contributors like Fuxin Zhang), but most notably also revived
support for Motorola 68000 family. M68k was originally the second
architecture supported by FPC even before release 1.0, but this
target has been dormant since the transition to FPC 2.x and now is
resurrected mostly by Sven. The compiler can be natively compiled for
M68000 and M68020 (although not necessarily fully working there yet) and
support for modern Coldfire CPUs is now in mostly working state too. Some
functionality still needs finishing (e.g. threadvars which impacts StdIO
among others), but created binaries already run successfully in QEMU. As of
now, the goal is to support m68k-linux and maybe also m68k-embedded.
Contributors for any other operating systems like Amiga, AROS or even
classic Mac OS are - as usual - welcome.</p>
</trn></p>

<p>
<a href="news@x@">Older news...</a>
</p>
<h2><trn locale="en_US" key="website.Current_Version">Current Version</trn></h2>
<p>
  <trn locale="en_US" key="website.Current_Version_text">
    Version <em>2.6.4</em> is the latest stable version the Free Pascal.
    Hit the <a href="download@x@">download</a> link and select a mirror close
    to you to download your copy.
    The development releases have version numbers <EM>2.7.x</EM>.
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
