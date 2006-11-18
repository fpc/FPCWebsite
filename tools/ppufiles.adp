<master>
<property name="title">Free Pascal - Tools</property>
<property name="entry">prog</property>
<property name="subentry">tools</property>
<property name="subsubentry">ppufiles</property>
<property name="maindir">..</property>
<property name="header">ppufiles</property>

<h1>PPUFILES - Free Pascal object file lister.</h1>
What follows below is the contents of the manual page of <b>ppufiles</b>. 
If you have installed the man pages then you can view them with the <b>man</b> command.
<hr>
<PRE>



ppufiles(1)    Free Pascal unit object file lister    ppufiles(1)


<b>NAME</b>
       ppufiles - The FPC Pascal unit object file lister.


<b>SYNOPSIS</b>
       <b>ppufiles </b>[options] [file [file [file]]]


<b>Description</b>
       <b>ppufiles  </b>lists  all  the  binary files that are needed to
       link a unit  file.  This  includes  any  object  files  or
       libraries that must be linked in through some directive in
       the unit.


<b>Usage</b>
       You can invoke <b>ppufiles </b>with as arguments the name of  the
       units  whose  object  files you wish to list. An extension
       must be given. This can be useful for creating  a  listing
       of  all  created object files and deleting them in a Make-
       file.


<b>Options</b>
       <b>ppufiles </b>has several options, which are case insensitive:


              <b>-a     </b>This  option  tells  <b>ppufiles  </b>to  list  all
                     files.

              <b>-h     </b>Help screen.

              <b>-l     </b>This  option  tells  <b>ppufiles  </b>to  list only
                     shared libraries.

              <b>-o     </b>This option  tells  <b>ppufiles  </b>to  list  only
                     object files.

              <b>-s     </b>This  option  tells  <b>ppufiles  </b>to  list only
                     static libraries.

<b>ERRORS</b>
       In case the unit is in an older  or  unrecognised  format,
       ppufiles will complain about that.

<b>SEE ALSO</b>
              <b>ppc386</b>(1) <b>ppumove</b>(1) <b>make</b>(1)










FreePascal                 9 June 1999                          1


</PRE>
</html>
