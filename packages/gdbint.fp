<HTML>
<!--
#TITLE Free Pascal - Packages
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY gdbint
#MAINDIR ..
#HEADER GDBINT - GNU debugger interface.
-->
<H1>GDBINT - GNU debugger interface.</H1>
The gdbint package contains a set of units to interface to the GNU debugger
(GDB) library, libgdb. It is used in the Free Pascal IDE.

The units are:
<UL>
<LI><B>gdbint</B> The actual interface unit, actually a translation of
the library header files. (<A
HREF="http://www.freepascal.org/docs-html/packages/gdbint/gdbint">View
interface</A>)
<LI><B>gdbcon</B> Implements the <TT>TGDBController</TT> object, which
controls a debugging session. It implements methods which map to GDB
commands. 
(<A HREF="http://www.freepascal.org/docs-html/packages/gdbint/gdbcon">View Interface</A>)
</UL>
There are also some example programs:
<UL>
<li><B>gdbver</B> Program which detects the version of libgdb present on the
system. The exit code is the version number of the gdb library.
<li><B>symify</b> Program which translates backtrace addresses to file and
line information. This can be used on a program which has debug information
compiled in.
<li><b>testgdb</b> small program which offers a simple command-line
interface to the GDB debugger.
</UL>
<P>


<HR></HR>
<A HREF="packages.html">Back to packages page</A>. 
<HR></HR>
</HTML>
