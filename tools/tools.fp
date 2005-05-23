<HTML>
<!--
#TITLE Free Pascal - Programming Tools
#ENTRY prog
#SUBENTRY tools
#MAINDIR ..
#HEADER Tools that come with FPC
-->

<H1><A HREF="tools.html">Tools that come with Free Pascal</A></H2>
Free Pascal comes with several command-line tools that you can use to ease
your programming. The following tools are available:
<OL>
<LI> <A HREF="h2pas.html"><B>h2pas</B></A> is a small command-line
utility that can be used to translate C header files to pascal units.
The Free Pascal team uses it to make import units for important C libraries
such as GTK or MySQL.
<LI> <A HREF="fpcmake.html"><B>fpcmake</B></A> is a tool that allows
you to make complex makefiles to compile programs and units with FPC. The
Free Pascal team uses it to create all it's makefiles.
<LI> <A HREF="ppdep.html"><B>ppdep</B></A> is a small utility that
scans a program or unit and creates a depend file that can be used for
inclusion by make. It understands conditional symbols and interdependency of
units.
<LI> <A HREF="delp.html"><B>delp</B></A> is a small utility that scans
a directory for files left over by the Free Pascal compiler, and deletes
them.
<LI> <A HREF="ppudump.html"><B>ppudump</B></A> dumps the contents of
a unit in human-readable format. It understands older versions of units and
gracefully handles unknown (future) versions.
<LI> <A HREF="ppufiles.html"><B>ppufiles</B></A> lists the object files that
you need to link in when using a unit file. It lists all libraries and units
that are needed.
<LI> <A HREF="ppumove.html"><B>ppumove</B></A> combines several units
into one; as such it can be used to create static and dynamic libraries.
<LI> <A HREF="ptop.html"><B>ptop</B></A> is a configurable source
formatter. It pretty-prints your pascal code, much like <TT>indent</TT> does
for C code.
<LI> <A HREF="rstconv.html"><B>rstconv</B></A> is a small utility that
converts <B>.rst</B> files (files that contain resource strings, as created
by the compiler to some other format. (GNU gettext at the moment)
<LI> <A HREF="http://www.musikwissenschaft.uni-mainz.de/~ag/tply/tply.html"><B>TP Lex and Yacc</B></A>, written by <A
HREF="mailto:ag@muwiinfa.geschichte.uni-mainz.de">Albert Graef</A>. It can be used
to create pascal units from a Lex vocabulary and Yacc grammar.
</OL>
</HTML>
