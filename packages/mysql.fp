<HTML>
<!--
#TITLE Free Pascal - The mysql unit.
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY mysql
#MAINDIR ..
#HEADER The mysql unit.
-->
<H1>Free Pascal interface to MySQL</H1>

<H2>Overview</H2>
You can use Free Pascal to access a MySQL database server from Linux. 
(for more info on MySQL, see their <A HREF="http://www.tcx.se/"> home page</A>.)<P>

Interfacing is very easy, all you need to do is compile some units, and use
these units in your program. You need to specify the place of the MySQL
client Library (<TT>libmysqlclient</TT> when compiling, and that is it.
the provided units take care of the rest.

<H2>Provided units and programs</H2>
The packages provides 3 units, of which normally only the first is needed:
<UL>
<LI><B>mysql</b> the main mysql unit.
(<A HREF="http://www.freepascal.org/docs-html/packages/mysql/mysql/">View
interface</A>.)
<LI><b>mysql_version</B> provides access to the version number of the mysql
library. 
(<A
HREF="http://www.freepascal.org/docs-html/packages/mysql/mysql_version/">View
interface</A>).
<LI><B>mysql_com</B> contains some internal routines of mysql, should
normally not be used unless you want access to some internal types.
(<A
HREF="http://www.freepascal.org/docs-html/packages/mysql/mysql_com/">View interface</A>).
</UL>
The same units exist for versions 3.22 and 4.00 of mysql as well, in
subdirecties. The default supported version is version 3.23.<p>

The test program is called <TT>testdb</TT>.

<H2>Installation</H2>
The mysql interface is distributed with the Free Pascal packages,
and come with the compiler distribution: Normally no action should
be taken to work with MySQL.<p>
In case you want to modify and compile the units yourself, the 
mysql sources are in the packages directory:
<PRE>
packages/base/mysql
</PRE> 
This directory contains the units, a test program and a makefile. 
cd to the directory and type
<PRE>
make
</PRE>
This should compile the units. If compilation was succesful,
you can install with 
<PRE>
make install
</PRE>
You can then test the program by running
<PRE>
make test
</PRE>
This will: 
<UL>
<LI> Run a script to create a table in a database, and fill it with some
data. (the <TT>mysql</TT> program should be in
your PATH for this) . By default, the used database is <TT>testdb</TT>.
<LI> Run the testprogram <TT>testdb</TT>
<LI> Run a shell script again to remove the created table.
</UL>
You will see a lot of messages on your screen, giving you feedback and
results. If something went wrong, <TT>make</TT> will inform you of this.
<H2>Future plans</H2>
The interface to mysql is a pure translation of the mysql C header files.
This means that the used functions are rather un-pascalish. It would be
great to have an OOP interface for it, A la Delphi. This interface is being
worked on.<P>
<H2>Finally</H2>
If you have found a bug, or if you have made some functions to interface
these units in a more pascal-like fashion, feel free to contact me at
<A HREF="mailto:michael.vancanneyt@freepascal.org">michael.vancanneyt@freepascal.org</A><P><P><P>

<HR></HR>
Back to <A HREF="packages.html">packages</A>
<HR></HR>
</HTML>
