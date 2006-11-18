<master>
<property name="title">Free Pascal - Programming Tools</property>
<property name="entry">prog</property>
<property name="subentry">tools</property>
<property name="maindir">../</property>
<property name="header">Tools that come with FPC</property>

<h1><a href="tools.html">Tools that come with Free Pascal</a></h2>
Free Pascal comes with several command-line tools that you can use to ease
your programming. The following tools are available:
<OL>
<li> <a href="h2pas.html"><b>h2pas</b></a> is a small command-line
utility that can be used to translate C header files to pascal units.
The Free Pascal team uses it to make import units for important C libraries
such as GTK or MySQL.
<li> <a href="fpcmake.html"><b>fpcmake</b></a> is a tool that allows
you to make complex makefiles to compile programs and units with FPC. The
Free Pascal team uses it to create all it's makefiles.
<li> <a href="ppdep.html"><b>ppdep</b></a> is a small utility that
scans a program or unit and creates a depend file that can be used for
inclusion by make. It understands conditional symbols and interdependency of
units.
<li> <a href="delp.html"><b>delp</b></a> is a small utility that scans
a directory for files left over by the Free Pascal compiler, and deletes
them.
<li> <a href="ppudump.html"><b>ppudump</b></a> dumps the contents of
a unit in human-readable format. It understands older versions of units and
gracefully handles unknown (future) versions.
<li> <a href="ppufiles.html"><b>ppufiles</b></a> lists the object files that
you need to link in when using a unit file. It lists all libraries and units
that are needed.
<li> <a href="ppumove.html"><b>ppumove</b></a> combines several units
into one; as such it can be used to create static and dynamic libraries.
<li> <a href="ptop.html"><b>ptop</b></a> is a configurable source
formatter. It pretty-prints your pascal code, much like <TT>indent</TT> does
for C code.
<li> <a href="rstconv.html"><b>rstconv</b></a> is a small utility that
converts <b>.rst</b> files (files that contain resource strings, as created
by the compiler to some other format. (GNU gettext at the moment)
<li> <a href="http://www.musikwissenschaft.uni-mainz.de/~ag/tply/tply.html"><b>TP Lex and Yacc</b></a>, written by <A
HREF="mailto:ag@muwiinfa.geschichte.uni-mainz.de">Albert Graef</a>. It can be used
to create pascal units from a Lex vocabulary and Yacc grammar.
</OL>
