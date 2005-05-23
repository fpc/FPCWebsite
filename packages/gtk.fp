<HTML>
<!--
#TITLE Free Pascal - Packages
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY gtk
#MAINDIR ..
#HEADER Under Construction
-->
<H1>Free Pascal interface to GDK/GTK</H1>
<HR>

<H2>Introduction</H2>
The <A HREF="http://www.gtk.org/">GTK</A> toolkit and its companion <A
HREF="http://www.gdk.org/">GDK</A> are quickly becoming (next to the Qt toolkit) a very popular
X-windows programming toolkit. This makes it suitable as a base for the Free
Component Library (FCL, the Free Pascal equivalent of the Delphi VCL). As a first
step in the development of FCL, the gtk and gdk header files have been
translated to Pascal. All header files have been translated, and are
compilable. only a few testprograms are available (volunteers to make some are
welcome to contact me), but success reports indicate that the units are translated 
correctly, and programs can be made. It even works on Win32. For this
reason, both the Lazarus and KCL projects use GTK as a GUI toolkit.

<H2>Downloading</H2>

The gtk units are part of the Free Pascal packages, and are shipped with
the official distrubution. You can download the sources separately 
<A HREF="ftp://ftp.freepascal.org/pub/fpc/source/packages.zip">here</A>. 
<P>
The GTK libraries must be downloaded from the original 
<A HREF="http://www.gtk.org/">GTK</A> site.

<H2>Using the units:</H2>
There is an article on programming GTK by Florian Klaempfl and Michael
Van Canneyt, written for the German Toolbox magazine. 
The original English version (in PDF format) can be viewed 
<A HREF="gtk/gtk-1.pdf">here</A>. The example programs source code can also
be <A HREF="gtk/gtkex-1.zip">downloaded</A>.
<P>
The following is a (very) short explanation of how to use the GTK units.
Most of what can be found here is already described in the articles on GTK.
<OL>
<LI> In C, you only need to input gtk.h. Here you need to put gtk, and
separately glib or gdk if you need them, in your uses clause.

<LI> <B>Names :</B><BR>
<UL>
<LI> Pascal reserved words in types, record element names etc. have been
     prepended with the word 'the'. so 'label' has become 'thelabel'
<LI> functions have been kept with the same names.
<LI> for types : gdk names have been kept. Pointers to a type are defined
     as the type name, prepended with P. So 'GtkWidget *' becomes
     'PGtkWidget'.
     In gtkobject, names also have been kept.
     In all other files, types have been prepended with T, that is, the C
     type 'GtkWidget' has become 'TGtkWidget'<P>
     
     This is annoying, but C is case sensitive, and Pascal is not, so
     there you have it...<P>
     
     When translating, I've tried to stick to this scheme as closely as I
     could. One day, however, all will be done in a uniform manner...
</UL>
<LI> Macros. Many C macros have not been translated. The typecasting macros 
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
  
<LI> Packed records. GCC allows you to specify members of a record in
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
<P>
There is also an article on programming GTK by Florian Klaempfl and Michael
Van Canneyt, written for the German Toolbox magazine. 
The original English version (in PDF format) can be viewed 
<A HREF="gtk/gtk-1.pdf">here</A>. The example programs source code can also
be <A HREF="gtk/gtkex-1.zip">downloaded</A>.
<P>
More information about programming GTK is available in the following
documents:
<UL>
<LI> There are also some articles on programming GTK by Florian Klaempfl and
Michael Van Canneyt, written for the German Toolbox magazine.
The original English version (in PDF format) of these articles can be viewed
here:
<OL>
<LI> <A HREF="gtk/gtk-1.pdf">Article 1</A> and the sources of the examples
can be found <A HREF="gtk/gtkex-1.zip">here</A>.
<LI> <A HREF="gtk/gtk-2.pdf">Article 2</A> and the sources of the examples 
can be found <A HREF="gtk/gtkex-2.zip">here</A>.
<LI> <A HREF="gtk/gtk-3.pdf">Article 3</A> and the sources of the examples 
can be found <A HREF="gtk/gtkex-3.zip">here</A>.
<LI> <A HREF="gtk/gtk-4.pdf">Article 4</A> and the sources of the examples 
can be found <A HREF="gtk/gtkex-4.zip">here</A>.
<LI> <A HREF="gtk/gtk-5.pdf">Article 5</A> and the sources of the examples 
can be found <A HREF="gtk/gtkex-5.zip">here</A>.
</OL>
<LI> <EM>Mark Howe</EM> kindly donated a translation to pascal of the GTK tutorials.
The result can be viewed <A HREF="gtk/tutorial/pgtk-contents.html">here</A>.
The examples can be downloaded <A HREF="gtk/pgtk-examples.tar.gz">here</A>.
If you want you can download the whole tutorial <A
HREF="gtk/pgtk-html.tar.gz">Here</A>.
</UL>

<HR></HR>
<A HREF="packages.html">Back to packages page</A>. 
<HR></HR>
</HTML>
