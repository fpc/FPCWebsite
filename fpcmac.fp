<HTML>
<!--
#TITLE FreePascal on the Macintosh
#ENTRY develop
#SUBENTRY fpcmac
-->

<H1>FreePascal on the Macintosh</H1>

<P>Welcome to the FreePascal on the Macintosh page. Here is information
especially for you who want to write a program for the Macintosh.
</P>

<H2>News:</H2>
<b>2005-07-23:</b>
<br>
<br>
A new FPC 2.1.1 snapshot is available at
<A href=
"ftp://ftp.freepascal.org/pub/fpc/snapshot/v21/powerpc-macosx/fpc-2.1.1.powerpc-macosx.dmg"
>
here</A> (10.4 MB)
<BR>
<BR>
Some changes:
<UL>
<LI>
No more "_main" symbol in the system unit (so can link with C main programs)
</LI>
<LI>
Shared library creation support under Mac OS X
</LI>
<LI>
Several bugfixes related to overflow checking on PPC
</LI>
</UL>
<b>2005-06-29:</b>
<br>
<br>
There is now a
<A href="http://www.freepascal.org/wiki/index.php/Porting_from_Mac_Pascal">
wiki page</A> covering porting issues, from traditional mac
pascals to FPC.
<br>
<br>
<b>2005-06-21:</b>
<br>
<br>
A FPC 2.1.1 snapshot is available
<A href=
"http://www.elis.ugent.be/~jmaebe/nobackup/fpc/fpc-2.1.1.powerpc-macosx.dmg"
>
here</A>
(10.8 MB, does not include the PDF documentation). It includes:
<UL>
<LI>
Support for Macintosh Object Pascal in Macpas mode (includes  
support for mixing in Delphi-style OOP programming in Macpas mode,  
except that you have to use "object" instead of "class" everywhere --  
all occurrences of "class" are simply internally replaced by the  
_OBJECT compiler token)
</LI>
<LI>
Fixed bug which caused stack corruption in procedures receiving  
floating point parameters and parameters on the stack (only if the  
caller side was compiled by FPC)
</LI>
<LI>
Fixed bug in overflow checking of integer operations (some  
calculations were buggy if overflow checking is turned on, which is  
the case in the default development building style of Xcode if you  
use the integration kit)
</LI>
<LI>
Fixed bug in division of unsigned numbers > $7fffffff by a power of 2
</LI>
</UL>
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
Get it on one of the <A href="download.html">
mirror download sites</A>.
<br>
<br>

<HR>

<H2>Targets on the Macintosh:</H2>

<P><TABLE BORDER=1 CELLPADDING=2>
   <TR>
      <TH WIDTH="22%">
         <P ALIGN=LEFT>Target / Processor
      </TH><TH WIDTH="9%">
         <P ALIGN=LEFT>Status
      </TH><TH WIDTH="43%">
         <P ALIGN=LEFT>Remark
      </TH><TH >
         <P ALIGN=LEFT>Contact
      </TH></TR>
   <TR>
      <TD WIDTH="22%">
         <P><A HREF="#TargetDarwin"><B>Darwin</B> on PowerPC</A>
      </TD><TD WIDTH="9%">
         <P>final
      </TD><TD WIDTH="43%">
         <P>For Mac OS X
      </TD><TD >
         <P><A HREF="jonas&#x040;SPAM.freepascal.ME.org.NOT">jonas&#x040;SPAM.freepascal.ME.org.NOT</A>
      
      </TD></TR>
   <TR>
      <TD WIDTH="22%">
         <P><A HREF="#TargetMacOS"><B>MacOS</B> on PowerPC</A>
      </TD><TD WIDTH="9%">
         <P>final
      </TD><TD WIDTH="43%">
         <P>Target MacOS means classic Mac OS, up to System 9.x.
         Although it of course also work in the classic
         environment in Mac OS X
      </TD><TD >
         <P><A HREF="mailto:olle.raab&#x040;freepascal.org">olle.raab&#x040;freepascal.org</A>      
      </TD></TR>
   <TR>
      <TD WIDTH="22%">
         <P>MacOS on M68K
      </TD><TD WIDTH="9%">
         <P>not planned
      </TD><TD WIDTH="43%">
         <P>If someone is interrested to contribute, there is a
         possiblity to implement this target. There is support for
         MC68000 in the FPC source code, although not updated for a while.
      </TD><TD >
         <P>
      </TD></TR>
</TABLE></P>

<H2>Mac Pascal dialect</H2>

The dialect of Pascal supported by popular Pascals on Macintosh is supported in part.
<A HREF="#MacDialect">Read more here. </A>

<HR>

<H1><A NAME="TargetDarwin"></A>Target Darwin (Mac OS X)</H1>

<!--
<P>Unfortunatelly the official beta release (Free Pascal 1.9.4) has a severe bug
which has showed up for some users.
An updated version of the compiler (Free Pascal 1.9.5 2004-09-10) can instead be  
<A href="http://www.elis.ugent.be/~jmaebe/nobackup/fpc/fpc-macosx-1.9.5.dmg">
downloaded here.</A></P>
-->

<P>Free Pascal 2.0 for Mac OS X is the current release. It should at least work 
on Mac OS X 10.1 and higher. It requires that you have installed
<A href="http://developer.apple.com/tools/macosxtools.html">
XCode from Apple</A>, to have assembler, linker and make tools available to fpc.
For older versions of Mac OS X you should install Apple Development Tools instead.
Both can be downloaded for free from Apple, but requires that you
register yourself as a member of Apple Developer Connection.
Both are also included in the Mac OS X bundle.</P>

<P>To download, go to the <A href="download.html">Download page</A>,
and choose a mirror site near you (to limit net traffic).
The documentation is included, but can also be downloaded separatelly. 
If you want the source code, it has to be downloaded separatelly.</P>

There most recent FPC 2.1.1 snapshot is available
<A href=
"ftp://ftp.freepascal.org/pub/fpc/snapshot/v21/powerpc-macosx/fpc-2.1.1.powerpc-macosx.dmg"
>
here</A> (10.4 MB)
with, among others, support for mac style object pascal. See above under NEWS. 

<P>Note that the compiler is a unix style program and is run from the
Terminal on MacOS X.</P>

<P>Please report any bugs encountered.</P>

<H2>Using FPC from XCode</H2>

It is possible to use Free Pascal from within XCode (Mac OS X 10.3 is required).
Look at the step-by-step instruction of how to download and install the
<A href = "xcode.html">XCode Integration Kit.</A>
Thanks to Rolf Jansen for this contribution.
<P>

<H1><A NAME="TargetMacOS"></A>Target MacOS (Classic Mac OS)</H1>

<P>Free Pascal 2.0 for Mac OS is the current release. It will work on 
latest classic Mac OS (that is 9.2.2) and below, probably down to 7.1.2 (the first
Mac OS for PowerPC), and also in the classic compatibility environment on Mac OS X.
However it has only been tested on Mac OS 9 and Mac OS X classic environment.</P>

<P>It requires that you have installed Macinstosh Programmers Workshop (MPW)
which can be <A href="http://developer.apple.com/tools/mpw-tools/">
downloaded for free from Apple</A>.</P>

<P>To download, go to the <A href="download.html">Download page</A>,
and choose a mirror site near you (to limit net traffic).
The documentation, as well as the source code (if you need it), 
has to be downloaded separatelly.</P>

<P>Note that the compiler is an MPW tool.</P>

<P>Please report any bugs encountered.</P>

<H2>Current status of classic Mac OS</H2>

<P><TABLE BORDER=1>
   <TR>
      <TD WIDTH=116>
         <P><B>Native FPC compiler (as an MPW tool)</B>
      </TD><TD WIDTH=146>
         <P>Almost complete
      </TD><TD>
      </TD></TR>
   <TR>
      <TD WIDTH=116>
         <P><B>Unit System.pp</B>
      </TD><TD WIDTH=146>
         <P>Complete
      </TD><TD>
         <P>The system unit is implicitly used by every program. Contains basic file and
         memory handling among others.
      </TD></TR>
   <TR>
      <TD WIDTH=116>
         <P><B>Unit Dos.pp</B>
      </TD><TD WIDTH=146>
         <P>Complete
      </TD><TD>
         <P>Contrary to what its name suggests, the DOS unit is cross
         plattfrom and contains utility routines for file and date
         handling, beyond that in System.pp. It is reminiscent from
         Turbo Pascal.
      </TD></TR>
   <TR>
      <TD WIDTH=116>
         <P><B>Unit Sysutils.pp</B>
      </TD><TD WIDTH=146>
         <P>Planned
      </TD><TD>
         <P>A moderner alternative to unit DOS, compatible with
         Delphi.
      </TD></TR>
   <TR>
      <TD WIDTH=116>
         <P><B>Unit MacOS</B>
      </TD><TD WIDTH=146>
         <P>Complete
      </TD><TD>
         <P>API to the Macintosh Toolbox
      </TD></TR>
   <TR>
      <TD WIDTH=116>
         <P><B>Units strings objpas heaptrc getopts etc</B>
      </TD><TD WIDTH=146>
         <P>Implemented.
      </TD><TD>
         <P>They are target independent.
      </TD></TR>
   <TR>
      <TD WIDTH=116>
         <P><B>Other units</B>
      </TD><TD WIDTH=146>
         <P>Non-existent. Some will be implemented.
      </TD><TD>
         <P>Implementation will depend on how important the unit is
         and if difficulties arise.
      </TD></TR>
</TABLE></P>

<H2>Debugging</H2>

<P>
There is some limited possibilities to debug programs in classic MacOS. See
<A href="http://www.freepascal.org/wiki/index.php/MPW_debugging">MPW debugging</A>
in the wiki.
</P>
<P>
As an alternative, you might do the main debugging in a MacOSX/Darwin
version of your program.
</P>

<H1><A NAME="MacDialect"></A>The Mac Dialect</H1>

<P>There are three major Pascal dialects: Turbo Pascal (extended to
Delphi, supported by FreePascal, and partially by Gnu Pascal),
Extended Pascal (an ISO standard, supported by Gnu Pascal, DEC
Pascal, Prospero Pascal), and the dialect originating from Apple
(commonly used in the Mac community, supported by MPW Pascal,
Metrowerks Pascal and Think Pascal). We call this dialect Mac Pascal
and there is a special language mode for it: MacPas. 
</P>

<P>Mode MacPas is a compatibility mode. It is probably not
possible to mimic the Mac Pascal dialect in detail. So the goal is to
implement often used constructs, if this doesn't require too much
effort, as well as easy-to-implement constructs.</P>

<P>To use MacPas, add <I>-Mmacpas</I> to the command line or insert the
compiler directive <I>{$MODE MACPAS}</I> in the source code.</P>

<P>Note that the mac pascal dialect and mac targets are not
interrelated. It is thus possible to write a mac program with the
turbo dialect and to write a Windows program with the mac dialect.
</P>

<P>
The following are supported:

Mac compiler directives like $SETC, $IFC, $ELSEC, $ENDC, $J, $Z.
Most of the constructs found in interface files, especially
Apples Universal Interfaces. Cycle, Leave, Otherwise. More is planned.

<P>
More updated info on the <A HREF="http://www.freepascal.org/wiki/wiki.phtml?title=Mode_MacPas">Wiki page</A>.

<HR>
<P>By Olle Raab</P>

<P>
For questions and suggestions, we suggest subscribing on our 
<A HREF="http://www.freepascal.org/maillist.html"> mailing lists </A>, 
in particular FPC-pascal for questions about using Free Pascal.
</P>

<P>Or write to
<A HREF="mailto:olle.raab&#x040;freepascal.org">olle.raab&#x040;freepascal.org</A>
</P>

<P>Latest modified 2005-07-28</P>
</HTML>
