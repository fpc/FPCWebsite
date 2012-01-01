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
    The following operating systems are supported: Linux, FreeBSD, Haiku,
    Mac OS X/Darwin, DOS, Win32, Win64, WinCE, OS/2,
    Netware (libc and classic) and MorphOS.
  </trn>
</p>

<h2><trn locale="en_US" key="website.latest_news">Latest News</trn></h2>

<p><em>January 1st, 2012</em>
  <trn locale="en_US" key="website.news_headline_20120101">
    <p>FPC 2.6.0 has been released! 2.6.0 is a major new version,
      which adds many post-Delphi 7 language features and adds or improves the support   
      for various platforms.</p><p>
    The new features include, amongst others:
     <ul>
        <li>Objective-Pascal dialect, supported on all Mac OS X and iOS targets</li>
	<li>Delphi compatibility mode improvements
           <ul>
            <li>Nested types, class variables and class local constants</li>
            <li>Advanced records syntax (no constructors yet)</li>
            <li>(for..in) Enumerators in records</li>
            <li>Class and record helpers</li>
            <li>Generic records, arrays and procedural types</li>
            <li>Delphi-compatibility of general generics syntax improved</li>
            <li>Scoped enumerations</li>
            <li>Custom messages for "deprecated" directive</li>
            <li>Ability to use "&amp;" for escaping keywords</li>
            </ul></li>
        <li>New ARM code generator features
           <ul>
            <li>ARM VFPv2 and VFPv3 floating point unit support</li>
     	    <li>Thumb-2 support (embedded targets only)</li>
           </ul></li>
        <li>The rtl and packages also got a lot of attention, see the 
	     release manifest.</li>
     </ul>

    <p>
    See the <a href="http://bugs.freepascal.org/changelog_page.php">changelog</a> for the list of reported
    bugs that have been fixed in this release. 
    </p>
    <p>
    Downloads are available from the <a href="download@x@">download page</A> (mirrors should follow soon).
    </p>
    <p>
    A list of changes that may require
    changes to existing code is also <A HREF="http://wiki.freepascal.org/User_Changes_2.6.0">available</A>.
  </trn>
</p>

<p><em>August 20th, 2011</em>
  <trn locale="en_US" key="website.news_headline_20110820">
 <p>The Free Pascal Compiler now can generate byte code for a Java Virtual Machine.</p><p> The codegenerator works and supports most Pascal language constructs.
 The FPC backend for the Java Virtual Machine (JVM) generates Java byte code that conforms to the specifications of the JDK 1.5 
 (and later). While not all FPC language features work when targeting the JVM, most do and we have done our best to introduce as 
 few differences as possible. </p><p>
 More information about the JVM backend can be found <a HREF="http://wiki.freepascal.org/FPC_JVM">on the wiki</A>.</p>
  </trn>
</p>

<p><em>May 30th, 2011</em>
  <trn locale="en_US" key="website.news_headline_20110530">
    <p>A book on programming lazarus is available: "Lazarus Complete Guide". </p><p>
    It is the translation of the earlier German edition by C&L and is published by the dutch pascal user group. 
    Several of the Lazarus/Free Pascal developers participated in the creation of this book.</p><p>
    It can be ordered on-line <a href="http://www.blaisepascal.eu/index.php?actie=./subscribers/subscription_mainpageUKPaypalPage2">here</a>.
    </p>
  </trn>
</p>

<p>
<a href="news@x@">Older news...</a>
</p>
<h2><trn locale="en_US" key="website.Current_Version">Current Version</trn></h2>
<p>
  <trn locale="en_US" key="website.Current_Version_text">
    Version <em>2.4.4</em> is the latest stable version the Free Pascal.
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
