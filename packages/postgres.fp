<HTML>
<!--
#TITLE Free Pascal - the Postgres unit
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY postgres
#MAINDIR ..
#HEADER The postgres unit.
-->
<H1>Free Pascal interface to PostGreSQL</H1>

<H2>Overview</H2>
You can use Free Pascal to access a PostGreSQL database server from Linux. 
(for more info on PostGreSQL, see their <A HREF="http://www.postgresql.org/">home page</A>.)<P>

Interfacing is very easy, all you need to do is compile some units, and use
these units in your program. You need to specify the place of the PostGreSQL
client Library (<TT>libpq</TT>) when compiling, and that is it.
the provided units take care of the rest.
<P>
The main unit is called <tt>postgres</tt>, normally this is the only unit
you must include in your uses clause.
(<A HREF="http://www.freepascal.org/docs-html/packages/postgres/">view interface</A>)



<H2>Requirements</H2>
You need at least version 0.99.5 of Free Pascal. The headers are translated
from PostGreSQL version 6.3.1. Using an earlier version may not work.

<H2>Installation</H2>
The prostgres unit comes with the Free Pascal packages, and is distributed together
with the compiler. However, you can download the packages also here
<A HREF="ftp://ftp.freepascal.org/pub/fpc/source/packages.zip">here</A>.

This contains a directory <TT>postgres</TT> with the units, a test program and
a makefile. cd to the directory and edit the <TT>Makefile</TT> to set the
variables for your system. You must provide only 1 thing:
<OL>
<LI> The directory where the <TT>libpq</TT> library resides, usually
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
(Remember to set the directory where the units should be installed.)<P>
You can then test the program by running
<PRE>
make test
</PRE>
This will: 
<UL>
<LI> Run the test program <TT>testpg</TT>. It is a straightforward pascal
translation of the example program in the PostGreSQL programmers' guide.
<LI> Run a script to create a table in a database, and fill it with some
data. (the <TT>psql</TT> program should be in
your PATH for this) . By default, the used database is <TT>testdb</TT>.
<LI> Run the testprogram <TT>testemail</TT>
<LI> Run a shell script again to remove the created table.
</UL>
You will see a lot of messages on your screen, giving you feedback and
results. If something went wrong, <TT>make</TT> will inform you of this.
<H2>Future plans</H2>
The interface to PostGreSQL is a pure translation of the PostGreSQL C header files.
This means that the used functions are rather un-pascalish. It would be
great to have an OOP interface for it, A la Delphi. This interface is being
worked on.<P>
<H2>Finally</H2>
If you have found a bug, or if you have made some functions to interface
these units in a more pascal-like fashion, feel free to contact me at
<A HREF="mailto:michael.vancanneyt@freepascal.org">michael.vancanneyt@freepascal.org</A><P>


<HR></HR>
<A HREF="packages.html">Back to packages page</A>. 
<HR></HR>
</HTML>
