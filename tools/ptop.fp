<HTML>
<!--
#TITLE Free Pascal - Tools
#ENTRY prog
#SUBENTRY tools
#SUBSUBENTRY ptop
#MAINDIR ..
#HEADER ptop
-->
<H1>PTOP - Free Pascal source formatter</H1>
What follows below is the man page of <B>ptop</B> and the description of the
configuration file. If you have installed the man pages then you can view
them with the <B>man</B> command.
<HR>
<PRE>



ptop(1)               ptop source beautifier              ptop(1)


<B>NAME</B>
       ptop - The FPC Pascal configurable source beautifier.

       Origin probably Pascal-TO-Pascal.


<B>SYNOPSIS</B>
       <B>ptop</B><I>[-v]  [-i  indent]  [-b  bufsize ][-c optsfile] infile</I>
       <I>outfile</I>


<B>Description</B>
       <B>ptop </B>is a more or less configurable <I>source beautifier  </I>for
       pascal  sources,  and  specially the ones supported by FPC
       (which are more or less Turbo Pascal or Delphi 2.0 compat-
       ible).

       ptop  belongs  to  the  <I>FPC utils </I>package, which currently
       also contains <B>ppdep </B>, <B>h2pas </B>, <B>ppudump </B>and <B>ppumove</B>


<B>Usage</B>
       <B>ptop </B>basically reformats "infile" and outputs  the  result
       to  "outfile".  ituses a configuration file explained fur-
       ther below, and can generate a  default  configurationfile
       for you to edit. (not needed if you use the defaults)


<B>Options</B>
       <B>-h     </B>Writes a short description of these switches.

       <B>-c     </B>read  options from configuration file. A configura-
              tion file is not needed, ptop will revert to inter-
              nal defaults then. See also -g

       <B>-i </B><I>ident</I>
              Sets  the  number  of  indent spaces used for BEGIN
              END; and other blocks.

       <B>-b </B><I>bufsize</I>
              Sets the buffersize to bufsize. Default 255,  0  is
              considered non-valid and ignored.

       <B>-v     </B>be  verbose.  Currently  only outputs the number of
              lines read/written and some error messages.

       <B>-g </B><I>ptop.cfg</I>
              Writes a default configuration file to be edited to
              the file <I>ptop.cfg</I>


       Try  to  play  with ptop and its configfile until you find
       the effect you desire. The configurability and  possibili-
       ties  of ptop are quite large compared to shareware source



FreePascal                 30 may 1999                          1





ptop(1)               ptop source beautifier              ptop(1)


       beautifier found on e.g. SIMTEL.



<B>Acknowledgements</B>
       The writer of the program, Michael van Canneyt,  who  also
       helped out explaining the format of ptop.cfg.

       Questions/corrections      can      be      mailed      to
       fpc-devel@vekoll.saturnus.vein.hu

       Also thanks to the rest of the FPC development team.

       The program is a modernized (OOP, Streams,  Delphi  exten-
       sions) version based on a program by Peter Grogono, who in
       turn based his program on a Pascal pretty-printer  written
       by Ledgard, Hueras, and Singer.  See SIGPLAN Notices, Vol.
       12, No. 7, July 1977, pages  101-105,  and  PP.DOC/HLP.
       This version of PP developed under Pascal/Z V4.0 or later.
       Very minor modifications for Turbo Pascal made by  Willett
       Kempton  March 1984 and Oct 84.  Runs under 8-bit Turbo or
       16-bit Turbo.  Toad Hall tweak, rewrite for TP 5,  28  Nov
       89



<B>SEE ALSO</B>
       ptop config file
              <B>ptop.cfg</B>(5)

       Compiler
              <B>ppc386</B>(1)

       Other FPC utils
              <B>ppdep</B>(1) <B>ppudump</B>(1) <B>ppumove</B>(1) <B>h2pas</B>(1)






















FreePascal                 30 may 1999                          2


</PRE></BODY>
<BODY><PRE>



ptop.cfg(5)     ptop source beautifier config file    ptop.cfg(5)


<B>NAME</B>
       ptop.cfg  - The ptop source-beautifier configuration file.

       ptop is the source beautifier of the FreePascal project.

       Origin probably Pascal-TO-Pascal.cfg


<B>DESCRIPTION</B>
       This is the main configuration file of the <I>ptop FPC source</I>
       <I>beautifier</I>

       The  configuration  file  for  <B>ptop</B>(1)  isn't  necessarily
       called ptop.cfg, and is also not auto-loaded, so the  name
       doesn't matter much. This man-page describes the structure
       of such a configuration file for <B>ptop</B>(1)


<B>Structure</B>
       The structure of a ptop configuration  file  is  a  simple
       buildingblock  repeated  several  (20-30)  times, for each
       pascal keyword known to the ptop program. (see the default
       configuration  file  or  ptopu.pp source to find out which
       keywords are known)

       The basic building block of the  configuration  file  con-
       sists  out of one or two lines, describing how ptop should
       react on a certain keyword.  First a line  without  square
       brackets with the following format:

       keyword=option1,option2,option3,...

       If  one of the options is "dindonkey" (see further below),
       a second line (with square brackets) is needed like this:

       [keyword]=otherkeyword1,otherkeyword2,otherkeyword3,...

       As you can see the block contains  two  types  of  identi-
       fiers,  keywords(keyword  and  otherkeyword1..3  in  above
       example) and options, (option1..3 above).

       <I>Keywords </I>are the built-in valid  Pascal  structure-identi-
       fiers  like  BEGIN, END, CASE, IF, THEN, ELSE, IMPLEMENTA-
       TION. The default configuration file lists most of  these.

       Besides the real Pascal keywords, some other codewords are
       used for operators  and  comment  expressions.  These  are
       listed in the following table:

       Name of codeword         operator
       -------------            -----
       casevar                  : in a case label (&lt&gt'colon')
       becomes                  :=
       delphicomment            //



FreePascal                 31 may 1999                          1





ptop.cfg(5)     ptop source beautifier config file    ptop.cfg(5)


       opencomment              { or (*
       closecomment             } or *)
       semicolon                ;
       colon                    :
       equals                   =
       openparen                [
       closeparen               ]
       period                   .


       The  <I>Options </I>codewords define actions to be taken when the
       keyword before the equal sign is found.

       Option              does what
       -------             ---------
       crsupp              suppress CR before the keyword.
       crbefore            force      CR      before      keyword
                           (doesn't go with crsupp :) )
       blinbefore          blank line before keyword.
       dindonkey           de-indent   on   assiociated  keywords
                           (see below)
       dindent             deindent (always)
       spbef               space before
       spaft               space after
       gobsym              Print symbols which follow a
                           keyword but which do not
                           affect layout. prints until
                           terminators occur.
                           (terminators are hard-coded in pptop,
                           still needs changing)
       inbytab             indent by tab.
       crafter             force CR after keyword.
       upper               prints keyword all uppercase
       lower               prints keyword all lowercase
       capital             capitalizes keyword: 1st letter
                           uppercase, rest lowercase.


       The option "dindonkey"  requires  some  extra  parameters,
       which  are  set by a second line for that keyword (the one
       with the square brackets), which is therefore only  needed
       if   the  options  contain  "dinkdonkey"  (contraction  of
       de-indent on assiociated keyword).

       "dinkdonkey" deindents if any of the keywords specified by
       the extra options of the square-bracket line is found.


<B>Example</B>
       The line

       else=crbefore,dindonkey,inbytab,upper
       [else]=if,then,else




FreePascal                 31 may 1999                          2





ptop.cfg(5)     ptop source beautifier config file    ptop.cfg(5)


       Means:

       The  keyword this is about is <I>else </I>, it's on the LEFT side
       of both equal signs.


       When the ptop parser finds ELSE, the options tell it to do
       the following things:

       - (crbefore) Don't allow other code on the line before
          the keyword. (ELSE alone on a line)
       - (dindonkey) De-indent on the keywords
            in square brackets line (if,then,else)
       - (inbytab) indent by tab.
       - (upper) uppercase the keyword (ELSE)


       Try  to play with the configfile until you find the effect
       you desire. The configurability and possibilities of  ptop
       are  quite  large  compared to shareware source beautifier
       found on e.g. SIMTEL.



<B>Acknowledgements</B>
       The writer of the program, Michael van Canneyt,  who  also
       helped out explaining the format of ptop.cfg.

       Questions/corrections      can      be      mailed      to
       fpc-devel@vekoll.saturnus.vein.hu

       Also thanks to the rest of the FPC development team.


<B>SEE ALSO</B>
       ptop binary
              <B>ptop</B>(1)

       Compiler
              <B>ppc386</B>(1)

       Other FPC utils
              <B>ppdep</B>(1) <B>ppudump</B>(1) <B>ppumove</B>(1) <B>h2pas</B>(1)














FreePascal                 31 may 1999                          3


</PRE></HTML>
