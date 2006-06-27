<html>
<!--
#TITLE Free Pascal - the Postgres unit
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY postgres
#MAINDIR ..
#HEADER The postgres unit.
-->
<h1>Free Pascal interface to PostGreSQL</h1>

<h2>Overview</h2>
You can use Free Pascal to access a PostGreSQL database server from Linux. 
(for more info on PostGreSQL, see their <a href="http://www.postgresql.org/">home page</a>.)<p>

Interfacing is very easy, all you need to do is compile some units, and use
these units in your program. You need to specify the place of the PostGreSQL
client Library (<TT>libpq</TT>) when compiling, and that is it.
the provided units take care of the rest.
<p>
The main unit is called <tt>postgres</tt>, normally this is the only unit
you must include in your uses clause.
(<a href="http://www.freepascal.org/docs-html/packages/postgres/">view interface</a>)



<h2>Requirements</h2>
You need at least version 0.99.5 of Free Pascal. The headers are translated
from PostGreSQL version 6.3.1. Using an earlier version may not work.

<h2>Installation</h2>
The prostgres unit comes with the Free Pascal packages, and is distributed together
with the compiler. However, you can download the packages also here
<a href="ftp://ftp.freepascal.org/pub/fpc/source/packages.zip">here</a>.

This contains a directory <TT>postgres</TT> with the units, a test program and
a makefile. cd to the directory and edit the <TT>Makefile</TT> to set the
variables for your system. You must provide only 1 thing:
<OL>
<li> The directory where the <TT>libpq</TT> library resides, usually
<TT>/usr/local/pgsql/lib</TT>
</OL>
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
<li> Run the test program <TT>testpg</TT>. It is a straightforward pascal
translation of the example program in the PostGreSQL programmers' guide.
<li> Run a script to create a table in a database, and fill it with some
data. (the <TT>psql</TT> program should be in
your PATH for this) . By default, the used database is <TT>testdb</TT>.
<li> Run the testprogram <TT>testemail</TT>
<li> Run a shell script again to remove the created table.
</ul>
You will see a lot of messages on your screen, giving you feedback and
results. If something went wrong, <TT>make</TT> will inform you of this.
<h2>Future plans</h2>
The interface to PostGreSQL is a pure translation of the PostGreSQL C header files.
This means that the used functions are rather un-pascalish. It would be
great to have an OOP interface for it, A la Delphi. This interface is being
worked on.<p>
<h2>Finally</h2>
If you have found a bug, or if you have made some functions to interface
these units in a more pascal-like fashion, feel free to contact me at
<a href="mailto:michael.vancanneyt@freepascal.org">michael.vancanneyt@freepascal.org</a><p>


<hr></hr>
<a href="packages.html">Back to packages page</a>. 
<hr></hr>
</html>
