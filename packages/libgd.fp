<HTML>
<!--
#TITLE Free Pascal - Libgd package
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY libgd
#MAINDIR ..
#HEADER libgd
-->
<!--
(<A HREF="http://www.freepascal.org/docs-html/packages/libgd">View interface</A>)
 -->
<H1>libgd</H1>
The <b>gd</b> unit is the interface unit for the gd library.
The gd library is a library to produce graphics files (jpeg,png and wbmp),
available from <A HREF="http://www.boutell.com/gd/">this site</A>.<P>

It was converted from the header files for version 1.8.4., but other
versions may work as well.
<P>
It has some additional calls which make it more pascal like:
<PRE>
function fopen(a,b:string):pFile;
procedure gdImageChar(im:gdImagePtr; f:gdFontPtr; x:longint; y:longint; c:char; color:longint);
procedure gdImageCharUp(im:gdImagePtr; f:gdFontPtr; x:longint; y:longint; c:char; color:longint); 
procedure gdImageString(im:gdImagePtr; f:gdFontPtr; x:longint; y:longint; s:string;  color:longint); 
procedure gdImageStringUp(im:gdImagePtr; f:gdFontPtr; x:longint; y:longint; s:string; color:longint); 
procedure gdImageString16(im:gdImagePtr; f:gdFontPtr; x:longint; y:longint; s:string; color:longint); 
procedure gdImageStringUp16(im:gdImagePtr; f:gdFontPtr; x:longint; y:longint; s:string; color:longint); 
{$ifdef hasttf}
function  gdImageStringTTF(im:PgdImage; brect:Plongint; fg:longint; fontlist:string; ptsize:double; angle:double; x:longint; y:longint; astring:string): string;
function  gdImageStringFT(im:PgdImage; brect:Plongint; fg:longint; fontlist:string; ptsize:double; angle:double; x:longint; y:longint; astring:string):string;
{$endif}
</PRE>
These functions will work with both ansistrings and shortstrings; The unit
can be compiled in both the {$H+} as the {$H-} state.
<P>
The <TT>HASTTF</TT> define should be defined for libraries which have TTF2 lib 
support compiled in. By default, this is not included in the unit, so
if you need TrueType Font support, you will need to recomlpile the unit.
<P>

The <B>gdtest</b> example is adapted from the example of the gd unit by Mike Bradbery.
It shows how to use the pascal-like functions in the gd unit instead of the
raw C like functions which use pchars.
<P>
the <b>gdtestcgi</b> example shows how to output an image to standard output,
this can be used for CGI scripts.
<P>

(<A HREF="http://www.freepascal.org/docs-html/packages/gd">View interface</A>)
<HR></HR>
Back to <A HREF="packages.html">packages</A>
<HR></HR>
</HTML>
