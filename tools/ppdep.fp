<HTML>
<!--
#TITLE Free Pascal - Tools
#ENTRY prog
#SUBENTRY tools
#SUBSUBENTRY ppdep
#MAINDIR ..
#HEADER ppdep
-->
<H1>PPDEP - Free Pascal unit dependency lister</H1>
What follows below is the contents of the manual page of <B>ppdep</B>. 
If you have installed the man pages then you can view them with the <B>man</B> command.
<HR>
<PRE>



ppdep(1)       Free Pascal unit dependency tracking      ppdep(1)


<B>NAME</B>
       ppdep - The FPC Pascal unit dependency tracking program.


<B>SYNOPSIS</B>
       <B>ppdep </B>[-DDefine] [-oFile] [-eext] [-V] [-h] [A[call]] file


<B>Description</B>
       <B>ppdep </B>dumps the dependencies of a unit in  a  format  that
       can  be  understood  by  GNU <B>make </B>output. It takes care of
       dependencies both in the interface and implemntation  sec-
       tion of the unit, and it can handle conditional defines.


<B>Usage</B>
       You  can  invoke  <B>ppdep </B>with as the only required argument
       the name of the file (program or unit)  whose  dependecies
       you  wish to list. You don't need to specify an extension,
       by default <B>.pp </B>is assumed.


<B>Options</B>
       <B>ppdep </B>has several options, which are case insensitive:


       <B>-a</B><I>call </I>This option tells <B>ppdep </B>to generate a compiler call
              for  the makefile. The compiler call will be gener-
              ated for each file that is  found  in  the  current
              directory.  If  you  do no specify an explicit com-
              piler call, <B>ppc386 </B>is used.

       <B>-d</B><I>keyword</I>
              This option defines <B>keyword</B>
               that can be used to  verify  conditional  defines.
              <B>ppdep  </B>understands  conditional defines, you should
              use this switch if the <I>uses </I>clause of the  programs
              or units can contain conditional defines.

       <B>-e</B><I>ext  </I>This  allows  you  to specify a different extension
              for the unit files.  By default, <B>.ppu  </B>is  assumed.
              This extension is written to the makefile.

       <B>-f</B><I>[call]</I>
              This option tells <B>ppdep </B>to generate a compiler call
              for the makefile. The compiler call will be  gener-
              ated  only  for  the file that was specified on the
              <B>ppdep </B>command line. If you want to generate a  com-
              piler  call for each file found, use the <I>-a </I>option.
              If you do no specify  an  explicit  compiler  call,
              <B>ppc386 </B>is used.

       <B>-h     </B>Shows a short help screen.




FreePascal                 9 June 1999                          1





ppdep(1)       Free Pascal unit dependency tracking      ppdep(1)


       <B>-o</B><I>file </I>This  option  allows you to specify a file to which
              the dependencies should be written. By default  the
              dependencies  are  written  to standard output.  If
              you specify this option, the dependencies are writ-
              ten to <B>file</B>

              instead.

       <B>-v     </B>Writes  some  diagnostic  messages. If you use this
              option, be sure to use <I>-o </I>as well, since the  diag-
              nostic  messages  will  also be written to standard
              output.


<B>SEE ALSO</B>
              <B>ppc386</B>(1) <B>ppumove</B>(1) <B>make</B>(1)









































FreePascal                 9 June 1999                          2


</PRE>
</HTML>
