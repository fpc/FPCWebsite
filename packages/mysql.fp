<html>
<!--
#TITLE Free Pascal - The mysql unit.
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY mysql
#MAINDIR ..
#HEADER The mysql unit.
-->
<h1>Free Pascal interface to MySQL</h1>

<h2>Overview</h2>
You can use Free Pascal to access a MySQL database server from Linux. 
(for more info on MySQL, see their <a href="http://www.tcx.se/"> home page</a>.)<p>

Interfacing is very easy, all you need to do is compile some units, and use
these units in your program. You need to specify the place of the MySQL
client Library (<TT>libmysqlclient</TT> when compiling, and that is it.
the provided units take care of the rest.

<h2>Provided units and programs</h2>
The packages provides 3 units, of which normally only the first is needed:
<ul>
<li><b>mysql</b> the main mysql unit.
(<a href="http://www.freepascal.org/docs-html/packages/mysql/mysql/">View
interface</a>.)
<li><b>mysql_version</b> provides access to the version number of the mysql
library. 
(<A
HREF="http://www.freepascal.org/docs-html/packages/mysql/mysql_version/">View
interface</a>).
<li><b>mysql_com</b> contains some internal routines of mysql, should
normally not be used unless you want access to some internal types.
(<A
HREF="http://www.freepascal.org/docs-html/packages/mysql/mysql_com/">View interface</a>).
</ul>
The same units exist for versions 3.22 and 4.00 of mysql as well, in
subdirecties. The default supported version is version 3.23.<p>

The test program is called <TT>testdb</TT>.

<h2>Installation</h2>
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
<ul>
<li> Run a script to create a table in a database, and fill it with some
data. (the <TT>mysql</TT> program should be in
your PATH for this) . By default, the used database is <TT>testdb</TT>.
<li> Run the testprogram <TT>testdb</TT>
<li> Run a shell script again to remove the created table.
</ul>
You will see a lot of messages on your screen, giving you feedback and
results. If something went wrong, <TT>make</TT> will inform you of this.
<h2>Future plans</h2>
The interface to mysql is a pure translation of the mysql C header files.
This means that the used functions are rather un-pascalish. It would be
great to have an OOP interface for it, A la Delphi. This interface is being
worked on.<p>
<h2>Finally</h2>
If you have found a bug, or if you have made some functions to interface
these units in a more pascal-like fashion, feel free to contact me at
<a href="mailto:michael.vancanneyt@freepascal.org">michael.vancanneyt@freepascal.org</a><p><p><p>

<hr></hr>
Back to <a href="packages.html">packages</a>
<hr></hr>
</html>
