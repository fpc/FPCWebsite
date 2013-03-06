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
The latest release version is <b>2.6.2</b></p>

<h3>Xcode 4.3+ compatibility (Mac OS X 10.7/10.8)</h3>
 FPC 2.6.0 is qualified for use with Mac OS X 10.4 till 10.8. Xcode 4.3 and later however
 no longer install the command line tools by default, which are required by FPC. To install
 them manually, open Xcode, go to Preferences, select &quot;Downloads;&quot; and install the
 &quot;Command Line Tools&quot;. Afterwards, FPC will install and function correctly.


<h3>Xcode 3.2.x compatibility (Mac OS X 10.6)</h3>
 FPC 2.6.0 is qualified for use with Mac OS X 10.4 till 10.8. There is
 however an issue when compiling dynamic libraries with FPC under Mac OS X
 10.6 due to a bug in the Xcode 3.2.x linker. This bug has been fixed in Xcode 4.
 You can work around the bug in Xcode 3.2.x by using the <tt>-k-no_order_inits</tt>
 command line parameter when compiling a dynamic library.

<h3><a name="macosxdmg"></a>Download the 2.6.2 release in 1 big file:</h3>
<ul>
<li> <a href="@mirror_url@dist/2.6.2/i386-macosx/fpc-2.6.2.intel-macosx.dmg">fpc-2.6.2.intel-macosx.dmg</a> (86 MB)
contains an installation package for compiling both Intel (32 bit and 64 bit) and PowerPC (32 bit) programs, as well as the Xcode Integration Toolkit.
<br>
<li> <a href="@mirror_url@dist/2.6.2/i386-macosx/fpc-2.6.2.intel-ppc64-macosx.dmg">fpc-2.6.2.intel-ppc64-macosx.dmg</a> (22 MB)
 contains an add-on installation package for compiling PowerPC (64 bit) programs.
<br>
<li> <a href="@mirror_url@dist/2.6.2/i386-macosx/fpc-2.6.2.arm-ios.dmg">fpc-2.6.2.arm-ios.dmg</a> (26 MB)
contains an installation package for compiling iPhone/iPod Touch/iPad programs, as well as the iPhone SDK Integration Kit (the included Xcode template only works with Xcode 3.x; for Xcode 4.x templates, see <a href="http://dl.dropbox.com/u/28343282/ObjP/index.html">Phil Hess' templates</a><br>
</ul>

<hr>
<p>
<a href="macosx@x@">Back to mirror list</a><BR/>
<a href="../../download@x@">Back to general download page</a>
<p>
