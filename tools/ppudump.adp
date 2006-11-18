<master>
<property name="title">Free Pascal - Tools</property>
<property name="entry">prog</property>
<property name="subentry">tools</property>
<property name="subsubentry">ppudump</property>
<property name="maindir">../</property>
<property name="header">ppudump</property>
<h1>PPUDUMP - Free pascal unit dump program</h1>
What follows below is the contents of the manual page of <b>ppudump</b>. 
If you have installed the man pages then you can view them with the <b>man</b> command.
<hr>

<PRE>



ppudump(1)        Free Pascal Unit dump utility        ppudump(1)


<b>NAME</b>
       ppudump - The FPC Pascal unit dump program.


<b>SYNOPSIS</b>
       <I>ppudump </I>[-h] [-v[h|i|m|d|s|b|a]] ppu-file1 ppufile2 ...


<b>Description</b>
       <b>ppudump  </b>writes the contents of a Free Pascal unit file to
       standard output.  It gives a listing of all definitions in
       the unit file. The format of the listing can be controlled
       by the options.


<b>Usage</b>
       You can invoke ppudump with as arguments the names of  the
       units that you want to dump. You need not specify a exten-
       sion, by default <I>.ppu </I>is assumed. The output goes to stan-
       dard output.


<b>Options</b>
       <b>ppudump </b>has only two options:


       <b>-h     </b>shows a short help screen.

       <b>-v</b><I>xxx  </I>Controls  the level of verbosity.  <I>xxx </I>is  any com-
              bination of the following letters:

              <I>a      </I>Shows all  information  stored  in  the  PPU
                     file.

              <I>b      </I>Shows  the  browser  information  in the PPU
                     file (if present).

              <I>d      </I>Shows the definitions in the PPU file.

              <I>h      </I>Shows the  header  information  in  the  PPU
                     file.

              <I>i      </I>Shows  only interface information, implemen-
                     tation information is not shown.

              <I>m      </I>Shows   only   implementation   information,
                     interface interface is not shown.

              <I>s      </I>Shows the symbols stored in the PPU file.


<b>SEE ALSO</b>
              <b>ppc386</b>(1) <b>ppumove</b>(1)




FreePascal                 5 June 1999                          1


</PRE>