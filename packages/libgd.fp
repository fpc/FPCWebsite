<html>
<!--
#TITLE Free Pascal - Libgd package
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY libgd
#MAINDIR ..
#HEADER libgd
-->
<!--
(<a href="http://www.freepascal.org/docs-html/packages/libgd">View interface</a>)
 -->
<h1>libgd</h1>
The <b>gd</b> unit is the interface unit for the gd library.
The gd library is a library to produce graphics files (jpeg,png and wbmp),
available from <a href="http://www.boutell.com/gd/">this site</a>.<p>

It was converted from the header files for version 1.8.4., but other
versions may work as well.
<p>
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
<p>
The <TT>HASTTF</TT> define should be defined for libraries which have TTF2 lib 
support compiled in. By default, this is not included in the unit, so
if you need TrueType Font support, you will need to recomlpile the unit.
<p>

The <b>gdtest</b> example is adapted from the example of the gd unit by Mike Bradbery.
It shows how to use the pascal-like functions in the gd unit instead of the
raw C like functions which use pchars.
<p>
the <b>gdtestcgi</b> example shows how to output an image to standard output,
this can be used for CGI scripts.
<p>

(<a href="http://www.freepascal.org/docs-html/packages/gd">View interface</a>)
<hr></hr>
Back to <a href="packages.html">packages</a>
<hr></hr>
</html>
