<HTML>
<!--
#TITLE Free Pascal - Tools
#ENTRY prog
#SUBENTRY tools
#SUBSUBENTRY ppudump
#MAINDIR ..
#HEADER ppudump
-->
<H1>PPUDUMP - Free pascal unit dump program</H1>
What follows below is the contents of the manual page of <B>ppudump</B>. 
If you have installed the man pages then you can view them with the <B>man</B> command.
<HR>

<PRE>



ppudump(1)        Free Pascal Unit dump utility        ppudump(1)


<B>NAME</B>
       ppudump - The FPC Pascal unit dump program.


<B>SYNOPSIS</B>
       <I>ppudump </I>[-h] [-v[h|i|m|d|s|b|a]] ppu-file1 ppufile2 ...


<B>Description</B>
       <B>ppudump  </B>writes the contents of a Free Pascal unit file to
       standard output.  It gives a listing of all definitions in
       the unit file. The format of the listing can be controlled
       by the options.


<B>Usage</B>
       You can invoke ppudump with as arguments the names of  the
       units that you want to dump. You need not specify a exten-
       sion, by default <I>.ppu </I>is assumed. The output goes to stan-
       dard output.


<B>Options</B>
       <B>ppudump </B>has only two options:


       <B>-h     </B>shows a short help screen.

       <B>-v</B><I>xxx  </I>Controls  the level of verbosity.  <I>xxx </I>is  any com-
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


<B>SEE ALSO</B>
              <B>ppc386</B>(1) <B>ppumove</B>(1)




FreePascal                 5 June 1999                          1


</PRE></HTML>
