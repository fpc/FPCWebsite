<master>
<property name="title">Free Pascal - Download Mac OS X</property>
<property name="entry">download</property>
<property name="header">Download Mac OS X i386</property>
<property name="modify"></property>
<property name="picdir">../../pic</property>
<property name="maindir">../../</property>
<!--
*****************************************************************************
                                 Mac OS X
*****************************************************************************
-->

<p>
The latest release version is <b>@latestversion@</b></p>

<h3>&quot;Unknown developer&quot; error when installing (Mac OS X 10.7 and later)</h3>
 If you get the message that the FPC installer was created by an unknown
 developer and cannot be opened, right-click on the installation package and
 choose &quot;Open&quot; in the contextual menu. This workaround is required because we
 don't pay Apple 79 euro per year, which would prove you can trust us.

<h3>Xcode 5+ compatibility (OS X 10.9 and later; for OS X 10.8, see below)</h3>
 FPC 3.0.4 is qualified for use with Mac OS X 10.4 till OS X 10.11, and with macOS 10.12 and 10.13. Xcode 5 and later however
 no longer install the command line tools by default, which are required by FPC. To install
 them manually, open &quot;/Applications/Utilities/Terminal&quot;, execute <tt>xcode-select
 --install</tt> and choose &quot;Install&quot;. Afterwards, FPC will function correctly.

<h3>Xcode 4.3-5.x compatibility (Mac OS X 10.7/OS X 10.8)</h3>
 FPC 3.0.4 is qualified for use with Mac OS X 10.4 till OS X 10.11, and with macOS 10.12 and 10.13. Xcode 4.3 and later however
 no longer install the command line tools by default, which are required by FPC. To install
 them manually, open Xcode, go to Preferences, select &quot;Downloads;&quot; and install the
 &quot;Command Line Tools&quot;. Afterwards, FPC will install and function correctly.

<h3>Xcode 3.2.x-4.2 compatibility (Mac OS X 10.6)</h3>
 FPC 3.0.2 is qualified for use with Mac OS X 10.4 till OS X 10.11, and with macOS 10.12 and 10.13. There is
 however an issue when compiling dynamic libraries with FPC under Mac OS X
 10.6 due to a bug in the Xcode 3.2.x linker. This bug has been fixed in Xcode 4.
 You can work around the bug in Xcode 3.2.x by using the <tt>-k-no_order_inits</tt>
 command line parameter when compiling a dynamic library.

<h3><a name="macosxdmg"></a>Download the @latestversion@ release in 1 big file:</h3>
<ul>
<li> <a href="@mirror_url@dist/@latestversion@/i386-macosx/fpc-@latestversion@.intel-macosx.dmg">fpc-@latestversion@.intel-macosx.dmg</a> (71 MB)
contains an installation package for compiling Intel (32 bit and 64 bit) programs.
<br>
<li> <a href="@mirror_url@dist/@latestversion@/i386-macosx/fpc-@latestversion@.intel-macosx.cross.powerpc-macosx.dmg">fpc-@latestversion@.intel-macosx.cross.powerpc-macosx.dmg</a> (62 MB)
 contains an add-on installation package for compiling PowerPC (32 and 64 bit) programs.
<br>
<li> <a href="@mirror_url@dist/@latestversion@/i386-macosx/fpc-3.0.5.intel-macosx.cross.ios.dmg">fpc-3.0.5.intel-macosx.cross.ios.dmg</a> (66 MB)
contains an installation package for compiling iPhone/iPod Touch/iPad programs. For Xcode templates, see <a href="https://dl.dropbox.com/u/28343282/ObjP/index.html">Phil Hess' site.</a><br>
<br>
<li> <a href="@mirror_url@dist/@latestversion@/i386-macosx/fpc-@latestversion@.intel-macosx.cross.jvm.dmg">fpc-3.0.4.intel-macosx.cross.jvm.dmg</a> (11 MB)
 contains an add-on installation package for compiling JVM programs.
<br>
</ul>

<hr>
<p>
<a href="macosx@x@">Back to mirror list</a><BR/>
<a href="../../download@x@">Back to general download page</a>
<p>
