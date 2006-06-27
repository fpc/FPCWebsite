<html>
<!--
#TITLE Free Pascal - Packages
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY svgalib
#MAINDIR ..
#HEADER Under Construction
-->
<h1>The SVGAlib unit for Free Pascal</h1>

<h2>Overview</h2>
Under Linux, you can use libvga to access the graphical screen from the
console. Free Pascal has a unit which makes linking to the libvga possible.
You can find the unit, as well as a makefile and some test programs
<a href="svgalib.tar.gz">here</a>. You just need to compile it, put a
reference to it in your program or unit, and that is it.

There are 2 units in this package:
<ul>
<li><b>svgalib</b> the actual libvha interface.
 (<a href="http://www.freepascal.org/docs-html/packages/svgalib/svgalib">view interface</a>)
<li><b>vgamouse</b> mouse extensions to work with the mouse under svgalib.
(<a href="http://www.freepascal.org/docs-html/packages/svgalib/vgamouse">view interface</a>)
</ul>

<h2> Requirements:</h2>
To use this unit, you need at least:
<ul>
<li> Free Pascal 0.99.5 or higher
<li> libsvga 1.2.10 or higher
</ul>

<h2> Installation:</h2>
The svga lib unit comes with the packages of free pascal. You can, however, download the units
<a href="ftp://ftp.freepascal.org/pub/fpc/source/packages.zip">here</a>.
This contains a subdirectory <TT>svgalib</TT>.

Change to this directory.<p>

Edit the makefile to suit your setup (compiler, options, where do you want to install)

type 
<PRE>
make
</PRE>
 and all units will be compiled. Then type
<PRE>
make install
</PRE>
To install the units.

<h2>Testing:</h2>

Two small testprograms have been provided:
<ul>
<li> <TT>vgatest</TT> : This is a translation of the C program that comes with
svgalib.
<li> <TT>testvga</TT> : A Small program to demonstrate that you can draw lines on the screen in any mode.
</ul>
typing 
<PRE>
make test
</PRE>
will compile the programs.

<h2> Caveats</h2>
It is possible that you must be root to run these programs, 
The SVGAlib docs I have aren't clear about that.
If the programs should be able run as another user, you should make them setuid root.

I tested everything as root, and it ran smoothly, your mileage may vary, however.

<h2>Future Plans</h2>
It would be nice to have a borland style GRAPH unit wrapped around this;
just for beginners or people who wish to port some old DOS code. Someone
already started tha, but I couldn't get it to run on my machine.

If you have any ideas, feel free to contact me at
<a href="mailto:michael.vancanneyt@freepascal.org">michael.vancanneyt@freepascal.org</a>.


<hr></hr>
<a href="packages.html">Back to packages page</a>. 
<hr></hr>
</html>
