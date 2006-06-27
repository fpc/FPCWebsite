<html>
<!--
#TITLE Free Pascal - The ibase unit
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY ibase
#MAINDIR ..
#HEADER The ibase unit.
-->
<h1>Free Pascal interface to Interbase/Firebird</h1>

<h2>Overview</h2>
You can use Free Pascal to access a Interbase or Firebird database server from 
Linux and Windows. For more info on Interbase, see their 
<a href="http://www.interbase.com/"> home page</a>.)<p> For more information
on Firebird, see their <a href="http://www.firebirdsql.org/">home page</a>.
<p>

Interfacing is very easy, all you need to do is compile some units, and use
these units in your program. You need to specify the place of the Interbase
client Library (<TT>libgds</TT> when compiling, and that is it.
the provided units take care of the rest.
<h2>Requirements</h2>
You need at least version 0.99.11 of Free Pascal. The headers are translated
for Interbase versions 4 and 6, or Firebird 1.0.

<h2>Installation</h2>
The ibase unit is distributed as part of the Free Pascal packages, and is
distributed with the compiler. However, You can download the units
<a href="ftp://ftp.freepascal.org/pub/fpc/source/packages.zip">here</a>. <p>

This file contains a directory base/ibase with the units, a test program and
a make file. The following units exist:
<ul>
<li><b>ibase40</b> the Interbase version 4 or 5 interface header
translation. The interface is largely the same as for version 6.
<li><b>ibase60</b> the Interbase version 6 interface header
translation.
(<a href="http://www.freepascal.org/docs-html/packages/ibase60/">View
Interface</a>).
</ul>
There is also a test program available.
<p>
Typing
<PRE>
make
</PRE>
Should compile the units and the program. If compilation was succesfull,
you can install with 
<PRE>
make install
</PRE>
(Remember to set the directory where the units should be installed.)<p>
You can then test the program by running
<PRE>
make test
</PRE>
This will: 
<ul>
<li> Run a script to create a table in a database, and fill it with some
data. (the <TT>isql</TT> program should be in
your PATH for this) . By default, the used database is <TT>testdb</TT>.
<li> Run the testprogram <TT>testdb</TT>
<li> Run a shell script again to remove the created table.
</ul>
You will see a lot of messages on your screen, giving you feedback and
results. If something went wrong, <TT>make</TT> will inform you of this.
<h2>Future plans</h2>
The interface to Interbase is a pure translation of the Interbase C header files.
This means that the used functions are rather un-pascalish. It would be
great to have an OOP interface for it, A la Delphi. This OOP interface is
being worked on.<p>
<h2>Finally</h2>
If you have found a bug, or if you have made some functions to interface
these units in a more pascal-like fashion, feel free to contact me at
<a href="mailto:michael.vancanneyt@wisa.be">
michael.vancanneyt@wisa.be</a><p><p><p>

<hr></hr>
<a href="packages.html">Back to packages page</a>. 
<hr></hr>
</html>
