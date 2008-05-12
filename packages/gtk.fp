<html>
<!--
#TITLE Free Pascal - Packages
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY gtk
#MAINDIR ..
#HEADER Under Construction
-->
<h1>Free Pascal interface to GDK/GTK</h1>
<hr>

<h2>Introduction</h2>
The <a href="http://www.gtk.org/">GTK</a> toolkit and its companion <A
HREF="http://www.gdk.org/">GDK</a> are quickly becoming (next to the Qt toolkit) a very popular
X-windows programming toolkit. This makes it suitable as a base for the Free
Component Library (FCL, the Free Pascal equivalent of the Delphi VCL). As a first
step in the development of FCL, the gtk and gdk header files have been
translated to Pascal. All header files have been translated, and are
compilable. only a few testprograms are available (volunteers to make some are
welcome to contact me), but success reports indicate that the units are translated 
correctly, and programs can be made. It even works on Win32. For this
reason, both the Lazarus and KCL projects use GTK as a GUI toolkit.

<h2>Downloading</h2>

The gtk units are part of the Free Pascal packages, and are shipped with
the official distrubution. 
<p>
The GTK libraries must be downloaded from the original 
<a href="http://www.gtk.org/">GTK</a> site.

<h2>Using the units:</h2>
There is an article on programming GTK by Florian Klaempfl and Michael
Van Canneyt, written for the German Toolbox magazine. 
The original English version (in PDF format) can be viewed 
<a href="gtk/gtk-1.pdf">here</a>. The example programs source code can also
be <a href="gtk/gtkex-1.zip">downloaded</a>.
<p>
The following is a (very) short explanation of how to use the GTK units.
Most of what can be found here is already described in the articles on GTK.
<OL>
<li> In C, you only need to input gtk.h. Here you need to put gtk, and
separately glib or gdk if you need them, in your uses clause.

<li> <b>Names :</b><br>
<ul>
<li> Pascal reserved words in types, record element names etc. have been
     prepended with the word 'the'. so 'label' has become 'thelabel'
<li> functions have been kept with the same names.
<li> for types : gdk names have been kept. Pointers to a type are defined
     as the type name, prepended with P. So 'GtkWidget *' becomes
     'PGtkWidget'.
     In gtkobject, names also have been kept.
     In all other files, types have been prepended with T, that is, the C
     type 'GtkWidget' has become 'TGtkWidget'<p>
     
     This is annoying, but C is case sensitive, and Pascal is not, so
     there you have it...<p>
     
     When translating, I've tried to stick to this scheme as closely as I
     could. One day, however, all will be done in a uniform manner...
</ul>
<li> Macros. Many C macros have not been translated. The typecasting macros 
   have been dropped, since they're useless under pascal.
   Macros to access record members have been translated, BUT they are 
   to be considered as READ-ONLY. So they can be used to retrieve a value,
   but not to store one.
   e.g.
   <PRE>
      function GTK_WIDGET_FLAGS(wid : pgtkwidget) : longint;
   </PRE>
   can be used to retrieve the widget flags, but not to set them.
   so things like 
   <PRE>
     GTK_WIDGET_FLAGS(wid):=GTK_WIDGET_FLAGS(wid) and someflag;
   </PRE>
   will not work, since this is a function, and NOT a macro as in C.
  
<li> Packed records. GCC allows you to specify members of a record in
   bit format. Since this is impossible in pascal, functions and procedures
   to get/set these elements have been made.
   e.g.
     <PRE>
     function width_set(var a : TGtkCListColumn) : gint;
     procedure set_width_set(var a : TGtkCListColumn; __width_set : gint);
     </PRE>
   can be used to get or set the width in a TGtkCListColumn...
   in general, it's the name with '_set' appended for getting a value
   (set from 'a set') , and  'set_' prepended (from 'to set') and again
   '_set' appended.
   
</OL>
<p>
There is also an article on programming GTK by Florian Klaempfl and Michael
Van Canneyt, written for the German Toolbox magazine. 
The original English version (in PDF format) can be viewed 
<a href="gtk/gtk-1.pdf">here</a>. The example programs source code can also
be <a href="gtk/gtkex-1.zip">downloaded</a>.
<p>
More information about programming GTK is available in the following
documents:
<ul>
<li> There are also some articles on programming GTK by Florian Klaempfl and
Michael Van Canneyt, written for the German Toolbox magazine.
The original English version (in PDF format) of these articles can be viewed
here:
<OL>
<li> <a href="gtk/gtk-1.pdf">Article 1</a> and the sources of the examples
can be found <a href="gtk/gtkex-1.zip">here</a>.
<li> <a href="gtk/gtk-2.pdf">Article 2</a> and the sources of the examples 
can be found <a href="gtk/gtkex-2.zip">here</a>.
<li> <a href="gtk/gtk-3.pdf">Article 3</a> and the sources of the examples 
can be found <a href="gtk/gtkex-3.zip">here</a>.
<li> <a href="gtk/gtk-4.pdf">Article 4</a> and the sources of the examples 
can be found <a href="gtk/gtkex-4.zip">here</a>.
<li> <a href="gtk/gtk-5.pdf">Article 5</a> and the sources of the examples 
can be found <a href="gtk/gtkex-5.zip">here</a>.
</OL>
<li> <EM>Mark Howe</EM> kindly donated a translation to pascal of the GTK tutorials.
The result can be viewed <a href="gtk/tutorial/pgtk-contents.html">here</a>.
The examples can be downloaded <a href="gtk/pgtk-examples.tar.gz">here</a>.
If you want you can download the whole tutorial <A
HREF="gtk/pgtk-html.tar.gz">Here</a>.
</ul>

<hr></hr>
<a href="packages.html">Back to packages page</a>. 
<hr></hr>
</html>
