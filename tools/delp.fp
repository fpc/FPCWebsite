<html>
<!--
#TITLE Free Pascal - Tools
#ENTRY prog
#SUBENTRY tools
#SUBSUBENTRY delp
#MAINDIR ..
#HEADER delp
-->
<h1>DELP - Free Pascal file deletion tool.</h1>
What follows is the Free Pascal File deletion tool manual page. If you have
the manual pages installed, you can view them using the <b>man</b> command.
<PRE>



delp(1)           Free Pascal file deletion tool          delp(1)


<b>NAME</b>
       delp - The Free Pascal file deletion tool.


<b>SYNOPSIS</b>
       <b>delp</b>


<b>DESCRIPTION</b>
       <b>delp  </b>deletes files in the current directory that are left
       over from a Free Pascal compilation process. It knows what
       files can be produced by the compile steps and deletes any
       such files it finds. At the end it gives a summary of  the
       number  of  files  that  were  deleted,  together with the
       amount of bytes freed by this process.


<b>USAGE</b>
       <b>fpcmake </b>takes no options at this time. It just attempts to
       delete all known files.


<b>FILE TYPES:</b>
       The following file types are recognized by the program and
       are deleted:

       <I>*.exe  </I>Executable files under dos and windows.

       <I>*.so *.dll</I>
              Shared libraries under linux and Windows.

       <I>*.tpu *.tpp *.tpw *.tr</I>
              Turbo Pascal compiled units.

       <I>*.log *.bak</I>
              Backup files and log files.

       <I>*.ppu *.o *.a *.s</I>
              Compiled units, object files, archives  and  assem-
              bler  files  created by the Free Pascal compiler on
              Linux or Dos

       <I>*.ppw *.ow *.aw *.sw</I>
              Compiled units, object files, archives  and  assem-
              bler  files  created by the Free Pascal compiler on
              Windows.

       <I>*.pp1 *.o1 *.a1 *.s1</I>
              Compiled units, object files, archives  and  assem-
              bler  files  created by the Free Pascal compiler on
              the go321v1 platform.

       <I>*.ppo *.oo *.ao *.so</I>
              Compiled  units,   object   files,   archives   and



FreePascal                 12 Dec 1999                          1





delp(1)           Free Pascal file deletion tool          delp(1)


              assembler files created by the Free Pascal compiler
              on the OS/2 platform.

       <I>ppas.bat ppas.sh link.res fpcmaked</I>
              Batch  files,  link  script  and  makefile  utility
              files.

<b>SEE ALSO</b>
              <b>fpcmake</b>(1) <b>ppc386</b>(1) <b>make</b>(1)
















































FreePascal                 12 Dec 1999                          2


</PRE>
</html>
