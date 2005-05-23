<HTML>
<!--
#TITLE Free Pascal - Packages
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY Forms support
#MAINDIR ..
#HEADER X-Forms library support
-->
<H1>XForms and Free Pascal</H1>

<HR ALIGN=CENTER>
<H2>Introduction</H2>
<P>
Free Pascal for Linux has X-forms support !<BR>
The X-Windows support is provided through the <A HREF="http://world.std.com/~xforms/" >XForms</A>
libraries. (Current version : 0.89).
<P>
The XForms libraries provide a large number of objects and functions to manipulate those objects. It is built on top of XLib and is small and efficient.
A short list of objects is
<UL>
  <LI> Buttons
  <LI> Checkboxes
  <LI> Menus
  <LI> Canvases
  <LI> XYplots
  <LI> File selectors
</UL>
But there are many, many more.
<P>
At this moment, the XForms header file has been translated, and several demonstration 
programs that come with XForms, have been translated from C. <P>
An installation program for Free Pascal has been designed and tested.<P>
And a filter to translate <TT>.fd</TT> files to pascal programs is provided.
This means you can design your program using fdesign, and let the design
program emit pascal source code for a unit or program.
<P>
There are about 50 demonstration programs in pascal, translated from the
original demo programs. With the exception of 3 or four, which use C
constructs not available in Free Pascal, all of them are fully functional.
<P>
All this can be compiled and installed easily with a makefile.
<P>
You can take a look at some screen shots <A HREF="screen.html">here</A>.
</P>

<H2>Where to get it ?</H2>
<P>
First of all, you need the following files.
<UL>
  <LI> You need the XForms libraries (version 0.86 or 0.88). You can get them , or a list of sites where it's available,
       <A HREF="http://world.std.com/~xforms/">here</A>.<BR>
       There are binary distributions available. The files you download contain instructions for installing.<BR>
       Don't forget to install the shared libraries. (They have an extension .so)</LI>
  <LI> The Free Pascal units and demo programs are part of the Free Pascal packages.
   The sources can be found <A HREF="ftp://ftp.freepascal.org/pub/fpc/source/packages.zip">here</A>.</LI>
</UL>
</P>


If you want more information, you need help, or, better yet, you want to help,
you can e-mail
<UL>
  <LI> <A HREF="mailto:michael.vancanneyt@freepascal.org">Me</A>, but preferrably to
  <LI> The <EM>mailing-list</EM>. Instructions for subscribing to the mailing list can be found
       <A HREF="../maillist.html">here</A>.
</UL>

<HR></HR>
<A HREF="packages.html">Back to packages page</A>. 
<HR></HR>
</HTML>
