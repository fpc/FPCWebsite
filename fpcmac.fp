<html>
<!--
#TITLE FreePascal on the Macintosh
#ENTRY develop
#SUBENTRY fpcmac
-->

<h1>FreePascal on the Macintosh</h1>

<p>Welcome to the FreePascal on the Macintosh page. Here is information
especially for you who want to write a program for the Macintosh.
</p>

<h2>News:</h2>
<b>2005-12-18:</b>
<br>
<br>
Version 2.0.2 that was released a few weeks ago has all fixes and improvements of the 2.1.1 snapshot that was here (like Mac Pascal style objects and creation
of dynamic libraries). Additionally, it doesn't suffer from the installation
problems the 2.1.1 snapshot installer had. Get the release <a href="http://www.freepascal.org/down/powerpc/macosx.html">here</a>.
<br>
<br>
<b>2005-07-23:</b>
<br>
<br>
The 2.1.1 snapshot that was here is no longer available.
<br>
<br>
If you really need to be up to date with FPC,
please consider using Subversion, and build the compiler by your self.
<br>
<br>
Some changes:
<ul>
<li>
No more "_main" symbol in the system unit (so can link with C main programs)
</li>
<li>
Shared library creation support under Mac OS X
</li>
<li>
Several bugfixes related to overflow checking on PPC
</li>
</ul>
<b>2005-06-29:</b>
<br>
<br>
There is now a
<a href="http://www.freepascal.org/wiki/index.php/Porting_from_Mac_Pascal">
wiki page</a> covering porting issues, from traditional mac
pascals to FPC.
<br>
<br>
<b>2005-06-21:</b>
<br>
<br>
A FPC 2.1.1 snapshot is available
<a href=
"http://www.elis.ugent.be/~jmaebe/nobackup/fpc/fpc-2.1.1.powerpc-macosx.dmg"
>
here</a>
(10.8 MB, does not include the PDF documentation). It includes:
<ul>
<li>
Support for Macintosh Object Pascal in Macpas mode (includes  
support for mixing in Delphi-style OOP programming in Macpas mode,  
except that you have to use "object" instead of "class" everywhere --  
all occurrences of "class" are simply internally replaced by the  
_OBJECT compiler token)
</li>
<li>
Fixed bug which caused stack corruption in procedures receiving  
floating point parameters and parameters on the stack (only if the  
caller side was compiled by FPC)
</li>
<li>
Fixed bug in overflow checking of integer operations (some  
calculations were buggy if overflow checking is turned on, which is  
the case in the default development building style of Xcode if you  
use the integration kit)
</li>
<li>
Fixed bug in division of unsigned numbers > $7fffffff by a power of 2
</li>
</ul>
Should you desire to do so, you can switch back to 2.0 by simply  
installing the 2.0 package again.
<br>
<br>
<b>2005-05-15:</b>
<br>
<br>
<b>At last !!!!!</b> Free Pascal 2.0 is released for Mac OS X and classic Mac OS,
as well as for other targets.
<br>
<br>
This means Free Pascal for the mac is not considered beta anymore.
Get it on one of the <a href="download.html">
mirror download sites</a>.
<br>
<br>

<hr>

<h2>Targets on the Macintosh:</h2>

<p><TABLE BORDER=1 CELLPADDING=2>
   <tr>
      <TH WIDTH="22%">
         <P ALIGN=LEFT>Target / Processor
      </th><TH WIDTH="9%">
         <P ALIGN=LEFT>Status
      </th><TH WIDTH="43%">
         <P ALIGN=LEFT>Remark
      </th><TH >
         <P ALIGN=LEFT>Contact
      </th></tr>
   <tr>
      <TD WIDTH="22%">
         <p><a href="#TargetDarwin"><b>Darwin</b> on PowerPC</a>
      </td><TD WIDTH="9%">
         <p>final
      </td><TD WIDTH="43%">
         <p>For Mac OS X
      </td><TD >
         <p><a href="jonas&#x040;SPAM.freepascal.ME.org.NOT">jonas&#x040;SPAM.freepascal.ME.org.NOT</a>
      
      </td></tr>
   <tr>
      <TD WIDTH="22%">
         <p><a href="#TargetMacOS"><b>MacOS</b> on PowerPC</a>
      </td><TD WIDTH="9%">
         <p>final
      </td><TD WIDTH="43%">
         <p>Target MacOS means classic Mac OS, up to System 9.x.
         Although it of course also work in the classic
         environment in Mac OS X
      </td><TD >
         <p><a href="mailto:olle.raab&#x040;freepascal.org">olle.raab&#x040;freepascal.org</a>      
      </td></tr>
   <tr>
      <TD WIDTH="22%">
         <p>MacOS on M68K
      </td><TD WIDTH="9%">
         <p>not planned
      </td><TD WIDTH="43%">
         <p>If someone is interrested to contribute, there is a
         possiblity to implement this target. There is support for
         MC68000 in the FPC source code, although not updated for a while.
      </td><TD >
         <p>
      </td></tr>
</table></p>

<h2>Mac Pascal dialect</h2>

The dialect of Pascal supported by popular Pascals on Macintosh is supported in part.
<a href="#MacDialect">Read more here. </a>

<hr>

<h1><a name="TargetDarwin"></a>Target Darwin (Mac OS X)</h1>

<!--
<p>Unfortunatelly the official beta release (Free Pascal 1.9.4) has a severe bug
which has showed up for some users.
An updated version of the compiler (Free Pascal 1.9.5 2004-09-10) can instead be  
<a href="http://www.elis.ugent.be/~jmaebe/nobackup/fpc/fpc-macosx-1.9.5.dmg">
downloaded here.</a></p>
-->

<p>Free Pascal 2.0 for Mac OS X is the current release. It should at least work 
on Mac OS X 10.1 and higher. It requires that you have installed
<a href="http://developer.apple.com/tools/macosxtools.html">
XCode from Apple</a>, to have assembler, linker and make tools available to fpc.
For older versions of Mac OS X you should install Apple Development Tools instead.
Both can be downloaded for free from Apple, but requires that you
register yourself as a member of Apple Developer Connection.
Both are also included in the Mac OS X bundle.</p>

<p>To download, go to the <a href="download.html">Download page</a>,
and choose a mirror site near you (to limit net traffic).
The documentation is included, but can also be downloaded separatelly. 
If you want the source code, it has to be downloaded separatelly.</p>

There most recent FPC 2.1.1 snapshot is available
<a href=
"ftp://ftp.freepascal.org/pub/fpc/snapshot/v21/powerpc-macosx/fpc-2.1.1.powerpc-macosx.dmg"
>
here</a> (10.4 MB)
with, among others, support for mac style object pascal. See above under NEWS. 

<p>Note that the compiler is a unix style program and is run from the
Terminal on MacOS X.</p>

<p>Please report any bugs encountered.</p>

<h2>Using FPC from XCode</h2>

It is possible to use Free Pascal from within XCode (Mac OS X 10.3 is required).
Look at the step-by-step instruction of how to download and install the
<A href = "xcode.html">XCode Integration Kit.</a>
Thanks to Rolf Jansen for this contribution.
<p>

<h1><a name="TargetMacOS"></a>Target MacOS (Classic Mac OS)</h1>

<p>Free Pascal 2.0 for Mac OS is the current release. It will work on 
latest classic Mac OS (that is 9.2.2) and below, probably down to 7.1.2 (the first
Mac OS for PowerPC), and also in the classic compatibility environment on Mac OS X.
However it has only been tested on Mac OS 9 and Mac OS X classic environment.</p>

<p>It requires that you have installed Macinstosh Programmers Workshop (MPW)
which can be <a href="http://developer.apple.com/tools/mpw-tools/">
downloaded for free from Apple</a>.</p>

<p>To download, go to the <a href="download.html">Download page</a>,
and choose a mirror site near you (to limit net traffic).
The documentation, as well as the source code (if you need it), 
has to be downloaded separatelly.</p>

<p>Note that the compiler is an MPW tool.</p>

<p>Please report any bugs encountered.</p>

<h2>Current status of classic Mac OS</h2>

<p><TABLE BORDER=1>
   <tr>
      <TD WIDTH=116>
         <p><b>Native FPC compiler (as an MPW tool)</b>
      </td><TD WIDTH=146>
         <p>Almost complete
      </td><td>
      </td></tr>
   <tr>
      <TD WIDTH=116>
         <p><b>Unit System.pp</b>
      </td><TD WIDTH=146>
         <p>Complete
      </td><td>
         <p>The system unit is implicitly used by every program. Contains basic file and
         memory handling among others.
      </td></tr>
   <tr>
      <TD WIDTH=116>
         <p><b>Unit Dos.pp</b>
      </td><TD WIDTH=146>
         <p>Complete
      </td><td>
         <p>Contrary to what its name suggests, the DOS unit is cross
         plattfrom and contains utility routines for file and date
         handling, beyond that in System.pp. It is reminiscent from
         Turbo Pascal.
      </td></tr>
   <tr>
      <TD WIDTH=116>
         <p><b>Unit Sysutils.pp</b>
      </td><TD WIDTH=146>
         <p>Planned
      </td><td>
         <p>A moderner alternative to unit DOS, compatible with
         Delphi.
      </td></tr>
   <tr>
      <TD WIDTH=116>
         <p><b>Unit MacOS</b>
      </td><TD WIDTH=146>
         <p>Complete
      </td><td>
         <p>API to the Macintosh Toolbox
      </td></tr>
   <tr>
      <TD WIDTH=116>
         <p><b>Units strings objpas heaptrc getopts etc</b>
      </td><TD WIDTH=146>
         <p>Implemented.
      </td><td>
         <p>They are target independent.
      </td></tr>
   <tr>
      <TD WIDTH=116>
         <p><b>Other units</b>
      </td><TD WIDTH=146>
         <p>Non-existent. Some will be implemented.
      </td><td>
         <p>Implementation will depend on how important the unit is
         and if difficulties arise.
      </td></tr>
</table></p>

<h2>Debugging</h2>

<p>
There is some limited possibilities to debug programs in classic MacOS. See
<a href="http://www.freepascal.org/wiki/index.php/MPW_debugging">MPW debugging</a>
in the wiki.
</p>
<p>
As an alternative, you might do the main debugging in a MacOSX/Darwin
version of your program.
</p>

<h1><a name="MacDialect"></a>The Mac Dialect</h1>

<p>There are three major Pascal dialects: Turbo Pascal (extended to
Delphi, supported by FreePascal, and partially by Gnu Pascal),
Extended Pascal (an ISO standard, supported by Gnu Pascal, DEC
Pascal, Prospero Pascal), and the dialect originating from Apple
(commonly used in the Mac community, supported by MPW Pascal,
Metrowerks Pascal and Think Pascal). We call this dialect Mac Pascal
and there is a special language mode for it: MacPas. 
</p>

<p>Mode MacPas is a compatibility mode. It is probably not
possible to mimic the Mac Pascal dialect in detail. So the goal is to
implement often used constructs, if this doesn't require too much
effort, as well as easy-to-implement constructs.</p>

<p>To use MacPas, add <I>-Mmacpas</I> to the command line or insert the
compiler directive <I>{$MODE MACPAS}</I> in the source code.</p>

<p>Note that the mac pascal dialect and mac targets are not
interrelated. It is thus possible to write a mac program with the
turbo dialect and to write a Windows program with the mac dialect.
</p>

<p>
The following are supported:

Mac compiler directives like $SETC, $IFC, $ELSEC, $ENDC, $J, $Z.
Most of the constructs found in interface files, especially
Apples Universal Interfaces. Cycle, Leave, Otherwise. More is planned.

<p>
More updated info on the <a href="http://www.freepascal.org/wiki/wiki.phtml?title=Mode_MacPas">Wiki page</a>.

<hr>
<p>By Olle Raab</p>

<p>
For questions and suggestions, we suggest subscribing on our 
<a href="http://www.freepascal.org/maillist.html"> mailing lists </a>, 
in particular FPC-pascal for questions about using Free Pascal.
</p>

<p>Or write to
<a href="mailto:olle.raab&#x040;freepascal.org">olle.raab&#x040;freepascal.org</a>
</p>

<p>Latest modified 2005-07-28</p>
</html>
