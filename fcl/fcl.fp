<html>
<!--
#TITLE Free Pascal - Programming Tools
#ENTRY prog
#SUBENTRY fcl
#MAINDIR ..
#HEADER fcl
-->
<h1>FCL - Free Component Library</h1>
<h2>Introduction</h2>
The Free Component Library is meant to be an free equivalent of Delphi's
VCL - only all components in this library are non-visual. Visual components
are the domain of other projects such as
<a href="http://www.lazarus.freepascal.org/">Lazarus</a> or
<a href="http://www.kcl.freepascal.org/">Kassandra</a>.
<p>
The idea of FCL is to give a complete set of classes, so a programmer is
able to tackle most common programming tasks; wherever possible we try to
keep Delphi compatibility, so code written for one compiler can be compiled
by the other.
<h2>Helping out</h2> 
The FCL is maintained by the Free Pascal team, and is distributed along with
the compiler. Everyone is free to donate components, or to implement
improvements in the existing components. Though the components should be
more or less Delphi compatible, this should not be seen as a restriction.

If you think you have some component that can be useful, or would like to
implement some component, please contact 
<a href="mailto:michael@freepascal.org">Michael Van Canneyt</a>.

<h2>Current status</h2>
The FCL is under continuous development, as many components are being added. 
As we go along, we try to keep the following <a href="classchart.gif">class 
chart</a> up to date.

At the moment the Free Component Library contains the following units 
(in alphabetical order):
<DL>
<DT>base64
<DD>
Implements base64 encoding/decoding streams.
<DT>classes
<DD>
Implements the Delphi Classes unit, with several utility classes such as
streams, stringlists, TPersistent, TWriter and so on.
<DT>db
<DD>
Contains a <b>TDataset</b> implementation, together with TDatabase aware
descendents.
<DT>ddg_ds
<DD>
Contains a <b>TDataset</b> descendent that works on a flat file (file of
record).
<DT>dom
<DD>
Contains a Free Pascal implementation of a Document Object Model (DOM) set of
classes, as specified by the <a href="http://www.w3.org/DOM">W3
Consortium</a>.
<DT>ezcgi
<DD>
Implements easy CGI scripting. A single class methods needs to be overridden
in order to generate a complete CGI script.
<DT>gettext
<DD>
A unit to implement resource strings by means of the GNU gettext 
tools.
<DT>htmldoc
<DD>
Contains a Free Pascal implementation of a Document Object Model (DOM) set of
classes for HTML, as specified by the <a href="http://www.w3.org/DOM">W3
consortium</a>.
<DT>httpapp
<DD>
A http application class. Incomplete and not maintained at the moment.
<DT>idea
<DD>
Contains the implementation of an IDEA encrypting/decrypting stream. 
<DT>inifiles
<DD>
Contains an implementation of a TInifile class.
<DT>iostream
<DD>
Contains an implementation of a stream that can be used to access standard
input, standard output and standard error.
<DT>mysqldb
<DD>
Contains a <b>TDataset</b> descendent that can be used to access a MySQL
database.
<DT>pipes
<DD>
Contains streams that access each other through a pipe. What is written to
stream 1, can be read from stream 2. 
<DT>rtfpars
<DD>
Contains a <b>RTF</b> (Rich Text Format) parsing class. 
All that needs to be done is set some event handlers and you can display 
RTF wherever you want.
<DT>sh_pas
<DD>
A syntax highlighting object for Pascal syntax.
<DT>sh_xml
<DD>
A syntax highlighting object for XML documents.
<DT>shedit
<DD>
A text editor core with syntax highlighting capabilities.
<DT>xmlcfg
<DD>
A configuration unit that stores a configuration as a XML document.
<DT>xmlread
<DD>
A unit to read an XML document and generate a DOM structure from it.
<DT>xmlwrite
<DD>
A unit to take an XML document object and generate an XML file from it.
<DT>zstream
<DD>
A unit that contains compression streams and streams to read <b>.gz</b>
gzipped files.
</DL>
</html>
