<!--
#TITLE Free Pascal - Programming with FPC
#ENTRY prog
#HEADER Programming in FPC
-->

This page attempts to give an overview of the tools that the Free Pascal 
compiler puts at your disposal when you are programming.<p>
<h2><a href="tools/tools.html">Tools</a></h2>
Free Pascal comes with several command-line tools that you can use to ease
your programming. <p>
Among the tools are a source formatter, a makefile
generator, a C header translator, a unit dependency lister and even TP lex
and yacc.
<h2><a href="fcl/fcl.html">The FCL (Free Component Library)</a></h2>
The Free Component Library is meant as a free and portable alternative
to Delphi's VCL (Visual Component Library). It is a low-level library,
meaning that it doesn't include GUI (graphical) components. It is meant to
provide people that implement a GUI with basic routines such as stringlists,
streaming, XML routines, Database access and many more things.<p>
It tries to provide as many Delphi-compatible components as possible, to ease
porting, but it also presents alternative components that offer different
functionality, not found in the Delphi components.
<h2><a href="packages/packages.html">Packages</a></h2>
Free Pascal comes with a series of packages; mainly these are import units
for important libraries, or some tools that have been developed by the Free
Pascal team. <p>
There are many such packages, they range from GUI packages such as GTK and
OpenGL to database packages such as interbase and MySQL.
</OL>
<h2>Downloading</h2>
Most of the tools are included with the official releases of the
compiler, some of them are not, because they were developed after the compiler
release.<p>
The sources of these tools and units can always be downloaded from the <A
HREF="develop.html#sources">development pages</a> or checked out from the <A
HREF="develop.html#cvs">CVS server</a>. Compiling should be as easy as
typing 'make'.
