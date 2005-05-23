<HTML>
<!--
#TITLE Free Pascal - The ibase unit
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY ibase
#MAINDIR ..
#HEADER The ibase unit.
-->
<H1>Free Pascal interface to Interbase/Firebird</H1>

<H2>Overview</H2>
You can use Free Pascal to access a Interbase or Firebird database server from 
Linux and Windows. For more info on Interbase, see their 
<A HREF="http://www.interbase.com/"> home page</A>.)<P> For more information
on Firebird, see their <A HREF="http://www.firebirdsql.org/">home page</A>.
<P>

Interfacing is very easy, all you need to do is compile some units, and use
these units in your program. You need to specify the place of the Interbase
client Library (<TT>libgds</TT> when compiling, and that is it.
the provided units take care of the rest.
<H2>Requirements</H2>
You need at least version 0.99.11 of Free Pascal. The headers are translated
for Interbase versions 4 and 6, or Firebird 1.0.

<H2>Installation</H2>
The ibase unit is distributed as part of the Free Pascal packages, and is
distributed with the compiler. However, You can download the units
<A HREF="ftp://ftp.freepascal.org/pub/fpc/source/packages.zip">here</A>. <P>

This file contains a directory base/ibase with the units, a test program and
a make file. The following units exist:
<UL>
<Li><b>ibase40</b> the Interbase version 4 or 5 interface header
translation. The interface is largely the same as for version 6.
<Li><b>ibase60</b> the Interbase version 6 interface header
translation.
(<A HREF="http://www.freepascal.org/docs-html/packages/ibase60/">View
Interface</A>).
</UL>
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
(Remember to set the directory where the units should be installed.)<P>
You can then test the program by running
<PRE>
make test
</PRE>
This will: 
<UL>
<LI> Run a script to create a table in a database, and fill it with some
data. (the <TT>isql</TT> program should be in
your PATH for this) . By default, the used database is <TT>testdb</TT>.
<LI> Run the testprogram <TT>testdb</TT>
<LI> Run a shell script again to remove the created table.
</UL>
You will see a lot of messages on your screen, giving you feedback and
results. If something went wrong, <TT>make</TT> will inform you of this.
<H2>Future plans</H2>
The interface to Interbase is a pure translation of the Interbase C header files.
This means that the used functions are rather un-pascalish. It would be
great to have an OOP interface for it, A la Delphi. This OOP interface is
being worked on.<P>
<H2>Finally</H2>
If you have found a bug, or if you have made some functions to interface
these units in a more pascal-like fashion, feel free to contact me at
<A HREF="mailto:michael.vancanneyt@wisa.be">
michael.vancanneyt@wisa.be</A><P><P><P>

<HR></HR>
<A HREF="packages.html">Back to packages page</A>. 
<HR></HR>
</HTML>
