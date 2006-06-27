<html>
<!--
#TITLE Free Pascal - Packages
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY gdbint
#MAINDIR ..
#HEADER GDBINT - GNU debugger interface.
-->
<h1>GDBINT - GNU debugger interface.</h1>
The gdbint package contains a set of units to interface to the GNU debugger
(GDB) library, libgdb. It is used in the Free Pascal IDE.

The units are:
<ul>
<li><b>gdbint</b> The actual interface unit, actually a translation of
the library header files. (<A
HREF="http://www.freepascal.org/docs-html/packages/gdbint/gdbint">View
interface</a>)
<li><b>gdbcon</b> Implements the <TT>TGDBController</TT> object, which
controls a debugging session. It implements methods which map to GDB
commands. 
(<a href="http://www.freepascal.org/docs-html/packages/gdbint/gdbcon">View Interface</a>)
</ul>
There are also some example programs:
<ul>
<li><b>gdbver</b> Program which detects the version of libgdb present on the
system. The exit code is the version number of the gdb library.
<li><b>symify</b> Program which translates backtrace addresses to file and
line information. This can be used on a program which has debug information
compiled in.
<li><b>testgdb</b> small program which offers a simple command-line
interface to the GDB debugger.
</ul>
<p>


<hr></hr>
<a href="packages.html">Back to packages page</a>. 
<hr></hr>
</html>
