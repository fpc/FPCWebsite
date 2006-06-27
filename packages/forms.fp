<html>
<!--
#TITLE Free Pascal - Packages
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY Forms support
#MAINDIR ..
#HEADER X-Forms library support
-->
<h1>XForms and Free Pascal</h1>

<HR ALIGN=CENTER>
<h2>Introduction</h2>
<p>
Free Pascal for Linux has X-forms support !<br>
The X-Windows support is provided through the <a href="http://world.std.com/~xforms/" >XForms</a>
libraries. (Current version : 0.89).
<p>
The XForms libraries provide a large number of objects and functions to manipulate those objects. It is built on top of XLib and is small and efficient.
A short list of objects is
<ul>
  <li> Buttons
  <li> Checkboxes
  <li> Menus
  <li> Canvases
  <li> XYplots
  <li> File selectors
</ul>
But there are many, many more.
<p>
At this moment, the XForms header file has been translated, and several demonstration 
programs that come with XForms, have been translated from C. <p>
An installation program for Free Pascal has been designed and tested.<p>
And a filter to translate <TT>.fd</TT> files to pascal programs is provided.
This means you can design your program using fdesign, and let the design
program emit pascal source code for a unit or program.
<p>
There are about 50 demonstration programs in pascal, translated from the
original demo programs. With the exception of 3 or four, which use C
constructs not available in Free Pascal, all of them are fully functional.
<p>
All this can be compiled and installed easily with a makefile.
<p>
You can take a look at some screen shots <a href="screen.html">here</a>.
</p>

<h2>Where to get it ?</h2>
<p>
First of all, you need the following files.
<ul>
  <li> You need the XForms libraries (version 0.86 or 0.88). You can get them , or a list of sites where it's available,
       <a href="http://world.std.com/~xforms/">here</a>.<br>
       There are binary distributions available. The files you download contain instructions for installing.<br>
       Don't forget to install the shared libraries. (They have an extension .so)</li>
  <li> The Free Pascal units and demo programs are part of the Free Pascal packages.
   The sources can be found <a href="ftp://ftp.freepascal.org/pub/fpc/source/packages.zip">here</a>.</li>
</ul>
</p>


If you want more information, you need help, or, better yet, you want to help,
you can e-mail
<ul>
  <li> <a href="mailto:michael.vancanneyt@freepascal.org">Me</a>, but preferrably to
  <li> The <EM>mailing-list</EM>. Instructions for subscribing to the mailing list can be found
       <a href="../maillist.html">here</a>.
</ul>

<hr></hr>
<a href="packages.html">Back to packages page</a>. 
<hr></hr>
</html>
