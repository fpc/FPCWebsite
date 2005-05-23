<HTML>
<!--
#TITLE Free Pascal - Tools
#ENTRY prog
#SUBENTRY tools
#SUBSUBENTRY ppufiles
#MAINDIR ..
#HEADER ppufiles
-->
<H1>PPUFILES - Free Pascal object file lister.</H1>
What follows below is the contents of the manual page of <B>ppufiles</B>. 
If you have installed the man pages then you can view them with the <B>man</B> command.
<HR>
<PRE>



ppufiles(1)    Free Pascal unit object file lister    ppufiles(1)


<B>NAME</B>
       ppufiles - The FPC Pascal unit object file lister.


<B>SYNOPSIS</B>
       <B>ppufiles </B>[options] [file [file [file]]]


<B>Description</B>
       <B>ppufiles  </B>lists  all  the  binary files that are needed to
       link a unit  file.  This  includes  any  object  files  or
       libraries that must be linked in through some directive in
       the unit.


<B>Usage</B>
       You can invoke <B>ppufiles </B>with as arguments the name of  the
       units  whose  object  files you wish to list. An extension
       must be given. This can be useful for creating  a  listing
       of  all  created object files and deleting them in a Make-
       file.


<B>Options</B>
       <B>ppufiles </B>has several options, which are case insensitive:


              <B>-a     </B>This  option  tells  <B>ppufiles  </B>to  list  all
                     files.

              <B>-h     </B>Help screen.

              <B>-l     </B>This  option  tells  <B>ppufiles  </B>to  list only
                     shared libraries.

              <B>-o     </B>This option  tells  <B>ppufiles  </B>to  list  only
                     object files.

              <B>-s     </B>This  option  tells  <B>ppufiles  </B>to  list only
                     static libraries.

<B>ERRORS</B>
       In case the unit is in an older  or  unrecognised  format,
       ppufiles will complain about that.

<B>SEE ALSO</B>
              <B>ppc386</B>(1) <B>ppumove</B>(1) <B>make</B>(1)










FreePascal                 9 June 1999                          1


</PRE>
</HTML>
