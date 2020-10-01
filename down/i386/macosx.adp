<master>
<property name="title"><trn key="website.down.i386.macosx.title" locale="en_US">Free Pascal - Download Mac OS X</trn></property>
<property name="entry">download</property>
<property name="header"><trn key="website.down.i386.macosx.header" locale="en_US">Download Mac OS X for Intel</trn></property>
<property name="modify"></property>
<property name="picdir">../../pic</property>
<property name="maindir">../../</property>
<!--
*****************************************************************************
                                 Mac OS X
*****************************************************************************
-->

<p>
<trn key="website.down.i386.macosx.latest" locale="en_US">This version The latest release version is </trn><b>@latestversion@</b></p>

<trn key="website.down.i386.macosx.unknown" locale="en_US">
<h3>&quot;Unknown developer&quot; error when installing (Mac OS X 10.7 and later)</h3>
 If you get the message that the FPC installer was created by an unknown
 developer and cannot be opened, right-click on the installation package and
 choose &quot;Open&quot; in the contextual menu. This workaround is required because we
 don't pay Apple 99 euro per year, which would prove you can trust us.
</trn>

<trn key="website.down.i386.macosx.xcode11" locale="en_US">
<h3>Xcode 11+ compatibility (macOS 10.15 Catalina and later)</h3>
 FPC 3.2.0 is qualified for use with Mac OS X 10.4 till macOS 10.15. Xcode 11+ no longer includes support for compiling Intel 32 bit programs.
 If you wish to compile such programs, you will have to copy an older Mac OS X SDK from a previous Xcode installation and point the compiler
 to it with the -XR command line parameter.
</trn>

<trn key="website.down.i386.macosx.xcode10" locale="en_US">
<h3>Xcode 10+ compatibility (macOS 10.14 Mojave and later)</h3>
 FPC 3.2.0 is qualified for use with Mac OS X 10.4 till macOS 10.15. Xcode 10+ installs some command line file in different
 locations compared to previous releases. If you already installed FPC under a previous Mac OS X/OS X/macOS version, you
 will have to reinstall FPC 3.2.0 under macOS 10.14 to get a configuration file that enables the compiler to find the necessary
 files). See also the section below on how to install the command line tools.</trn>

<trn key="website.down.i386.macosx.xcode5" locale="en_US">
<h3>Xcode 5+ compatibility (OS X 10.9 and later; for OS X 10.8, see below)</h3>
 FPC 3.2.0 is qualified for use with Mac OS X 10.4 till macOS 10.15. Xcode 5 and later however
 no longer install the command line tools by default, which are required by FPC. To install
 them manually, open &quot;/Applications/Utilities/Terminal&quot;, execute <tt>xcode-select
 --install</tt> and choose &quot;Install&quot;. Afterwards, FPC will function correctly.
</trn>

<trn key="website.down.i386.macosx.xcode435" locale="en_US">
<h3>Xcode 4.3-5.x compatibility (Mac OS X 10.7/OS X 10.8)</h3>
 FPC 3.2.0 is qualified for use with Mac OS X 10.4 till macOS 10.15. Xcode 4.3 and later however
 no longer install the command line tools by default, which are required by FPC. To install
 them manually, open Xcode, go to Preferences, select &quot;Downloads;&quot; and install the
 &quot;Command Line Tools&quot;. Afterwards, FPC will install and function correctly.
</trn>

<trn key="website.down.i386.macosx.xcode324" locale="en_US">
<h3>Xcode 3.2.x-4.2 compatibility (Mac OS X 10.6)</h3>
 FPC 3.2.0 is qualified for use with Mac OS X 10.4 till macOS 10.15. There is
 however an issue when compiling dynamic libraries with FPC under Mac OS X
 10.6 due to a bug in the Xcode 3.2.x linker. This bug has been fixed in Xcode 4.
 You can work around the bug in Xcode 3.2.x by using the <tt>-k-no_order_inits</tt>
 command line parameter when compiling a dynamic library.
</trn>

<trn key="website.down.i386.macosx.download" locale="en_US"><h3><a name="macosxdmg"></a>Download the @latestversion@ release in 1 big file:</h3></trn>

<ul>
<li> <a href="@mirror_url@dist/@latestversion@/i386-macosx/fpc-@latestversion@.intel-macosx.dmg">fpc-@latestversion@.intel-macosx.dmg</a> (162 MB)
<trn key="website.down.i386.macosx.intel" locale="en_US">contains an installation package for compiling Intel (32 bit and 64 bit) programs (updated to install successfully on macOS 10.14 "Mojave").</trn>
<br>
<li> <a href="@mirror_url@dist/@latestversion@/i386-macosx/fpc-@latestversion@.intel-macosx.cross.powerpc-macosx.dmg">fpc-@latestversion@.intel-macosx.cross.powerpc-macosx.dmg</a> (125 MB)
<trn key="website.down.i386.macosx.powerpc" locale="en_US">contains an add-on installation package for compiling PowerPC (32 and 64 bit) programs.</trn>
<br>
<li> <a href="@mirror_url@dist/@latestversion@/i386-macosx/fpc-@latestversion@.intel-macosx.cross.ios.dmg">fpc-@latestversion@.intel-macosx.cross.ios.dmg</a> (178 MB)
<trn key="website.down.i386.macosx.fpc320intel" locale="en_US">contains an installation package for compiling iPhone/iPod Touch/iPad programs. For Xcode templates, see <a href="https://dl.dropbox.com/u/28343282/ObjP/index.html">Phil Hess' site.</a><br></trn>
<br>
<li> <a href="@mirror_url@dist/@latestversion@/i386-macosx/fpc-3.0.5.intel-macosx.cross.ios.dmg">fpc-3.0.5.intel-macosx.cross.ios.dmg</a> (66 MB)
<trn key="website.down.i386.macosx.fpc305intel" locale="en_US">contains an installation package for compiling iPhone/iPod Touch/iPad programs. For Xcode templates, see <a href="https://dl.dropbox.com/u/28343282/ObjP/index.html">Phil Hess' site.</a><br></trn>
<br>
<li> <a href="@mirror_url@dist/@latestversion@/i386-macosx/fpc-@latestversion@.intel-macosx.cross.jvm.dmg">fpc-@latestversion@.intel-macosx.cross.jvm.dmg</a> (12 MB)
<trn key="website.down.i386.macosx.jvm" locale="en_US">contains an add-on installation package for compiling JVM programs.</trn>
<br>
</ul>

<hr>
<p>
<a href="macosx@x@"><trn key="website.Back_to_mirrorlist" locale="en_US">Back to mirror list</trn></a><BR/>
<a href="../../download@x@"><trn key="website.Back_to_general_download_page" locale="en_US">Back to general download page</trn></a>
<p>
