<HTML>
<!--
#TITLE Free Pascal - Packages
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY svgalib
#MAINDIR ..
#HEADER Under Construction
-->
<H1>The SVGAlib unit for Free Pascal</H1>

<H2>Overview</H2>
Under Linux, you can use libvga to access the graphical screen from the
console. Free Pascal has a unit which makes linking to the libvga possible.
You can find the unit, as well as a makefile and some test programs
<A HREF="svgalib.tar.gz">here</A>. You just need to compile it, put a
reference to it in your program or unit, and that is it.

There are 2 units in this package:
<UL>
<LI><b>svgalib</b> the actual libvha interface.
 (<A HREF="http://www.freepascal.org/docs-html/packages/svgalib/svgalib">view interface</A>)
<LI><b>vgamouse</b> mouse extensions to work with the mouse under svgalib.
(<A HREF="http://www.freepascal.org/docs-html/packages/svgalib/vgamouse">view interface</A>)
</UL>

<H2> Requirements:</H2>
To use this unit, you need at least:
<UL>
<LI> Free Pascal 0.99.5 or higher
<LI> libsvga 1.2.10 or higher
</UL>

<H2> Installation:</H2>
The svga lib unit comes with the packages of free pascal. You can, however, download the units
<A HREF="ftp://ftp.freepascal.org/pub/fpc/source/packages.zip">here</A>.
This contains a subdirectory <TT>svgalib</TT>.

Change to this directory.<P>

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

<H2>Testing:</H2>

Two small testprograms have been provided:
<UL>
<LI> <TT>vgatest</TT> : This is a translation of the C program that comes with
svgalib.
<LI> <TT>testvga</TT> : A Small program to demonstrate that you can draw lines on the screen in any mode.
</UL>
typing 
<PRE>
make test
</PRE>
will compile the programs.

<H2> Caveats</H2>
It is possible that you must be root to run these programs, 
The SVGAlib docs I have aren't clear about that.
If the programs should be able run as another user, you should make them setuid root.

I tested everything as root, and it ran smoothly, your mileage may vary, however.

<H2>Future Plans</H2>
It would be nice to have a borland style GRAPH unit wrapped around this;
just for beginners or people who wish to port some old DOS code. Someone
already started tha, but I couldn't get it to run on my machine.

If you have any ideas, feel free to contact me at
<A HREF="mailto:michael.vancanneyt@freepascal.org">michael.vancanneyt@freepascal.org</A>.


<HR></HR>
<A HREF="packages.html">Back to packages page</A>. 
<HR></HR>
</HTML>
