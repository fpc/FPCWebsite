<HTML>
<!--
#TITLE Free Pascal - Known problems
#ENTRY bugs
#SUBENTRY 
#HEADER Known Problems
-->
<HTML>
<UL>
<H1>Known Problems</H1>
<OL>

<H3><LI>Problems when the compiler is installed in a directory which
requires a long file name</H3>
The GNU Linker (which is used by FPC)
for DOS and Windows doesn't support long file names so
don't install the compiler in a directory which requires a long file name
nor try to compiler sources in a directory with a long file name.
Nevertheless the FPC run time library supports long file names so
your programs compiled by FPC will support long file names.
This problem applies only to the DOS and Windows version!!

<H3><LI>Line length of the documentation in plain text format
is &gt; 80 characters.</H3>

The tool which is used to create the plain text documentation
from the TeX sources isn't able to create files with a max. line
length of 80 chars.
</OL>
</HTML>
