<master>
<property name="title">Free Pascal - Tools</property>
<property name="entry">prog</property>
<property name="subentry">tools</property>
<property name="subsubentry">ppdep</property>
<property name="maindir">../</property>
<property name="header">ppdep</property>
<h1>PPDEP - Free Pascal unit dependency lister</h1>
What follows below is the contents of the manual page of <b>ppdep</b>. 
If you have installed the man pages then you can view them with the <b>man</b> command.
<hr>
<PRE>



ppdep(1)       Free Pascal unit dependency tracking      ppdep(1)


<b>NAME</b>
       ppdep - The FPC Pascal unit dependency tracking program.


<b>SYNOPSIS</b>
       <b>ppdep </b>[-DDefine] [-oFile] [-eext] [-V] [-h] [A[call]] file


<b>Description</b>
       <b>ppdep </b>dumps the dependencies of a unit in  a  format  that
       can  be  understood  by  GNU <b>make </b>output. It takes care of
       dependencies both in the interface and implemntation  sec-
       tion of the unit, and it can handle conditional defines.


<b>Usage</b>
       You  can  invoke  <b>ppdep </b>with as the only required argument
       the name of the file (program or unit)  whose  dependecies
       you  wish to list. You don't need to specify an extension,
       by default <b>.pp </b>is assumed.


<b>Options</b>
       <b>ppdep </b>has several options, which are case insensitive:


       <b>-a</b><I>call </I>This option tells <b>ppdep </b>to generate a compiler call
              for  the makefile. The compiler call will be gener-
              ated for each file that is  found  in  the  current
              directory.  If  you  do no specify an explicit com-
              piler call, <b>ppc386 </b>is used.

       <b>-d</b><I>keyword</I>
              This option defines <b>keyword</b>
               that can be used to  verify  conditional  defines.
              <b>ppdep  </b>understands  conditional defines, you should
              use this switch if the <I>uses </I>clause of the  programs
              or units can contain conditional defines.

       <b>-e</b><I>ext  </I>This  allows  you  to specify a different extension
              for the unit files.  By default, <b>.ppu  </b>is  assumed.
              This extension is written to the makefile.

       <b>-f</b><I>[call]</I>
              This option tells <b>ppdep </b>to generate a compiler call
              for the makefile. The compiler call will be  gener-
              ated  only  for  the file that was specified on the
              <b>ppdep </b>command line. If you want to generate a  com-
              piler  call for each file found, use the <I>-a </I>option.
              If you do no specify  an  explicit  compiler  call,
              <b>ppc386 </b>is used.

       <b>-h     </b>Shows a short help screen.




FreePascal                 9 June 1999                          1





ppdep(1)       Free Pascal unit dependency tracking      ppdep(1)


       <b>-o</b><I>file </I>This  option  allows you to specify a file to which
              the dependencies should be written. By default  the
              dependencies  are  written  to standard output.  If
              you specify this option, the dependencies are writ-
              ten to <b>file</b>

              instead.

       <b>-v     </b>Writes  some  diagnostic  messages. If you use this
              option, be sure to use <I>-o </I>as well, since the  diag-
              nostic  messages  will  also be written to standard
              output.


<b>SEE ALSO</b>
              <b>ppc386</b>(1) <b>ppumove</b>(1) <b>make</b>(1)









































FreePascal                 9 June 1999                          2


</PRE>
</html>
