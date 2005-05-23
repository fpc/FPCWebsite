<HTML>
<!--
#TITLE Free Pascal - Tools
#ENTRY prog
#SUBENTRY tools
#SUBSUBENTRY ppumove
#MAINDIR ..
#HEADER ppumove
-->
<H1>PPUMOVE - Free Pascal unit mover.</H1>
What follows below is the contents of the manual page of <B>ppumove</B>. 
If you have installed the man pages then you can view them with the <B>man</B> command.
<HR>
<PRE>



ppmove(1)             Free Pascal unit mover            ppmove(1)


<B>NAME</B>
       ppdep - The FPC Pascal unit mover.


<B>SYNOPSIS</B>
       <B>ppumove  </B>[-sqbhw]  [-o  File]  [-d  path]  [-e  extension]
       files...


<B>Description</B>
       <B>ppumove </B>collects one or several Free Pascal unit files and
       archives them in a static or shared library.


<B>Usage</B>
       You  can invoke <B>ppumove </B>with as the only required argument
       the name of the unit  from  which  you  want  to  make  an
       archive.  Specifying multiple files is also possible, they
       will be put in the same archive.


<B>Options</B>
       <B>ppumove </B>has several options, which are case sensitive:


       <B>-b     </B>This option tells <B>ppumove </B>to write a  shell  script
              (a  batch  file  on  DOS)  that performs the needed
              calls to <B>ar </B>and  <B>ld</B>.  The  script  will  be  called
              <B>pmove</B>,  with an extension of <B>.sh </B>on Linux, and <B>.bat</B>
              on DOS. You can  then  call  this  script  manually
              afterwards.


       <B>-d </B><I>path</I>
              This option tells <B>ppumove </B>where to generate the new
              unit files.  By default, this is the same directory
              as  where  the  files are found.  If you specify as
              the output extension  the  same  extension  as  the
              units you want to move, not specifying the destina-
              tion directory may cause problems.


       <B>-e </B><I>ext </I>This option sets the  extension  of  the  new  unit
              files to <B>ext</B>. By default <B>.ppl </B>is used. However, you
              can specify <B>.ppu </B>as the extension. If  you  do,  be
              sure  to  use also the <I>-d </I>switch, or you will over-
              write the old units. Note however,  that  the  com-
              piler  will  only look for extensions <B>.ppu </B>and <B>.ppl</B>
              when looking for units.


       <B>-h     </B>Shows a short help screen.





FreePascal                 9 June 1999                          1





ppmove(1)             Free Pascal unit mover            ppmove(1)


       <B>-o </B><I>file</I>
              This option allows you to specify the name  of  the
              library  to be generated.  You <B>must </B>use this option
              if you specify more than one unit on  the  command-
              line.  If  you  specified only one unit on the com-
              mand-line, the generated library will have the unit
              name,  with  <B>lib  </B>prepended (on Linux).  You do not
              need  to  specify  the  <B>lib  </B>part,  this  will   be
              prepended automatically if needed.


       <B>-q     </B>Tells <B>ppumove </B>to operate quietly.


       <B>-s     </B>Tells  <B>ppumove  </B>to  generate  a  static library. By
              default, a shared library is generated  (except  on
              DOS).


       <B>-w     </B>Tells  <B>ppumove </B>it should use the windows linker and
              archiver. Do not use this option on Linux.


<B>SEE ALSO</B>
              <B>ppc386</B>(1) <B>ppudep</B>(1) <B>ppudump</B>(1)
































FreePascal                 9 June 1999                          2


</PRE></HTML>
