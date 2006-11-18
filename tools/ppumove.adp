<master>
<property name="title">Free Pascal - Tools</property>
<property name="entry">prog</property>
<property name="subentry">tools</property>
<property name="subsubentry">ppumove</property>
<property name="maindir">../</property>
<property name="header">ppumove</property>

<h1>PPUMOVE - Free Pascal unit mover.</h1>
What follows below is the contents of the manual page of <b>ppumove</b>. 
If you have installed the man pages then you can view them with the <b>man</b> command.
<hr>
<PRE>



ppmove(1)             Free Pascal unit mover            ppmove(1)


<b>NAME</b>
       ppdep - The FPC Pascal unit mover.


<b>SYNOPSIS</b>
       <b>ppumove  </b>[-sqbhw]  [-o  File]  [-d  path]  [-e  extension]
       files...


<b>Description</b>
       <b>ppumove </b>collects one or several Free Pascal unit files and
       archives them in a static or shared library.


<b>Usage</b>
       You  can invoke <b>ppumove </b>with as the only required argument
       the name of the unit  from  which  you  want  to  make  an
       archive.  Specifying multiple files is also possible, they
       will be put in the same archive.


<b>Options</b>
       <b>ppumove </b>has several options, which are case sensitive:


       <b>-b     </b>This option tells <b>ppumove </b>to write a  shell  script
              (a  batch  file  on  DOS)  that performs the needed
              calls to <b>ar </b>and  <b>ld</b>.  The  script  will  be  called
              <b>pmove</b>,  with an extension of <b>.sh </b>on Linux, and <b>.bat</b>
              on DOS. You can  then  call  this  script  manually
              afterwards.


       <b>-d </b><I>path</I>
              This option tells <b>ppumove </b>where to generate the new
              unit files.  By default, this is the same directory
              as  where  the  files are found.  If you specify as
              the output extension  the  same  extension  as  the
              units you want to move, not specifying the destina-
              tion directory may cause problems.


       <b>-e </b><I>ext </I>This option sets the  extension  of  the  new  unit
              files to <b>ext</b>. By default <b>.ppl </b>is used. However, you
              can specify <b>.ppu </b>as the extension. If  you  do,  be
              sure  to  use also the <I>-d </I>switch, or you will over-
              write the old units. Note however,  that  the  com-
              piler  will  only look for extensions <b>.ppu </b>and <b>.ppl</b>
              when looking for units.


       <b>-h     </b>Shows a short help screen.





FreePascal                 9 June 1999                          1





ppmove(1)             Free Pascal unit mover            ppmove(1)


       <b>-o </b><I>file</I>
              This option allows you to specify the name  of  the
              library  to be generated.  You <b>must </b>use this option
              if you specify more than one unit on  the  command-
              line.  If  you  specified only one unit on the com-
              mand-line, the generated library will have the unit
              name,  with  <b>lib  </b>prepended (on Linux).  You do not
              need  to  specify  the  <b>lib  </b>part,  this  will   be
              prepended automatically if needed.


       <b>-q     </b>Tells <b>ppumove </b>to operate quietly.


       <b>-s     </b>Tells  <b>ppumove  </b>to  generate  a  static library. By
              default, a shared library is generated  (except  on
              DOS).


       <b>-w     </b>Tells  <b>ppumove </b>it should use the windows linker and
              archiver. Do not use this option on Linux.


<b>SEE ALSO</b>
              <b>ppc386</b>(1) <b>ppudep</b>(1) <b>ppudump</b>(1)
































FreePascal                 9 June 1999                          2


</PRE>