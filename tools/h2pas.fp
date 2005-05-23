<HTML>
<!--
#TITLE Free Pascal - Tools
#ENTRY prog
#SUBENTRY tools
#SUBSUBENTRY h2pas
#MAINDIR ..
#HEADER h2pas
-->
<H1>H2PAS - Free Pascal C header to pascal unit translator.</H1>
What follows below is the man page of h2pas. 
If you have installed the man pages then you can view them with the <B>man</B> command.
<HR>

<PRE>



h2pas(1)     Free Pascal C header conversion utility     h2pas(1)


<B>NAME</B>
       h2pas - The C header to pascal unit conversion program.


<B>SYNOPSIS</B>
       <B>h2pas </B><I>[options] filename</I>


<B>DESCRIPTION</B>
       <B>h2pas  </B>attempts  to  convert  a  C header file to a pascal
       unit.  it can handle most C constructs that one finds in a
       C  header  file,  and  attempts to translate them to their
       pascal counterparts. see the <B>CONSTRUCTS </B>section for a full
       description of what the translator can handle.


<B>USAGE</B>
       H2pas  is  a  command-line tool that translates a C header
       file to a spascal unit. It reads the  C  header  file  and
       translates  the C declarations to equivalent pascal decla-
       rations that can be used to access code written in C.

       The output of the h2pas program is written to a file  with
       the same name as the C header file that was used as input,
       but with the extension <I>.pp</I>.  The output  file  that  h2pas
       creates  can be customized in a number of ways by means of
       many options.


<B>OPTIONS</B>
       The output of <B>h2pas </B>can be controlled with  the  following
       options:



       <B>-d     </B>use <I>external; </I>for all procedure and function decla-
              rations.

       <B>-D     </B>use <B>external </B><I>libname <B></I>name </B><I>'func_name' </I>for  function
              and procedure declarations.

       <B>-e     </B>Emit  a  series of constants instead of an enumera-
              tion type for the C <I>enum </I>construct.

       <B>-i     </B>create an include file instead of a unit (omits the
              unit header).

       <B>-l </B><I>libname</I>
              specify the library name for external function dec-
              larations.

       <B>-o </B><I>outfile</I>
              Specify the output file name. Default is the  input
              file name with the extension replaced by <I>.pp </I>"."



FreePascal                 12 Dec 1999                          1





h2pas(1)     Free Pascal C header conversion utility     h2pas(1)


       <B>-p     </B>use  the  letter <B>P </B>in front of pointer type parame-
              ters instead of "^".

       <B>-s     </B>Strip comments from the input file. By default com-
              ments  are  converted  to comments, but they may be
              displaced, since a comment is handled by the  scan-
              ner.

       <B>-t     </B>prepend  typedef type names with the letter <B>T </B>(used
              to  follow  Borland's  convention  that  all  types
              should be defined with T).

       <B>-v     </B>replace  pointer  parameters  by  call by reference
              parameters.  Use with care because some  calls  can
              expect a NIL pointer.

       <B>-w     </B>Header  file  is  a win32 header file (adds support
              for some special macros).

       <B>-x     </B>handle SYS_TRAP of the PalmOS header files.


<B>CONSTRUCTS</B>
       The following C declarations  and  statements  are  recog-
       nized:


       <B>defines</B>
              defines  are  changed into pascal constants if they
              are simple defines.  macros are changed -  wherever
              possible  to  functions;  however the arguments are
              all integers, so these must  be  changed  manually.
              Simple  expressions  in  define staments are recog-
              nized, as are most arithmetic operators:  addition,
              substraction,   multiplication,  division,  logical
              operators, comparision operators, shift  operators.
              The C construct ( A ? B : C) is also recognized and
              translated to a pascal construct with an IF  state-
              ment (this is buggy, however).


       <B>preprocessor statements</B>
              the  conditional  preprocessing commands are recog-
              nized and translated into  equivalent  pascal  com-
              piler directives. The special <B>#ifdef __cplusplus </B>is
              also recognized and removed.



       <B>typedef</B>
              A typedef statement is changed into a  pascal  type
              statement.  The  following  basic  types are recog-
              nized:




FreePascal                 12 Dec 1999                          2





h2pas(1)     Free Pascal C header conversion utility     h2pas(1)


              <I>char   </I>changed to char.

              <I>float  </I>changed to real (=double in free pascal).

              <I>int    </I>changed to longint.

              <I>long   </I>changed to longint.

              <I>long int</I>
                     changed to longint.

              <I>short  </I>changed to integer.

              <I>unsigned</I>
                     changed to cardinal.

              <I>unsigned char</I>
                     changed to byte.

              <I>unsigned int</I>
                     changed to cardinal.

              <I>unsigned long int</I>
                     changed to cardinal.

              <I>unsigned short</I>
                     changed to word.

              <I>void   </I>ignored.
       These types are also changed if they appear in  the  argu-
       ments of a function or procedure.

       <B>functions and procedures</B>
              functions  and  procedures  are translated as well;
              pointer types may be changed to call  by  reference
              arguments  (using the <B>var </B>argument) by using the <B>-p</B>
              command line argument. functions that have a  vari-
              able  number of arguments are changed to a function
              with an <B>array of const </B>argument.

       <B>specifiers</B>
              the <I>extern </I>specifier is recognized; however  it  is
              ignored.  the  <I>packed  </I>specifier is also recognised
              and changed with  the  <I>PACKRECORDS  </I>directive.  The
              <I>const </I>specifier is also recognized, but is ignored.


       <B>modifiers</B>
              If the <B>-w </B>option is specified, then  the  following
              modifiers  are  recognized: <I>STDCALL </I>, <I>CDECL </I>, <I>CALL-</I>
              <I>BACK </I>, <I>PASCAL </I>, <I>WINAPI </I>, <I>APIENTRY  </I>,  <I>WINGDIAPI  </I>as
              defined  in the win32 headers.  If additionally the
              <B>-x </B>option is specified then the <I>SYS_TRAP  </I>specifier
              is also recognized.



FreePascal                 12 Dec 1999                          3





h2pas(1)     Free Pascal C header conversion utility     h2pas(1)


       <B>enums  </B>enum constructs are changed into enumeration types;
              bear in mind that in C enumeration types  can  have
              values  assigned  to  them; Free Pascal also allows
              this to a certain degree. If you know  that  values
              are  assigned  to  enums,  it is best to use the <B>-e</B>
              option to change the enus to a  series  of  integer
              constants.


       <B>unions </B>unions are changed to variant records.


       <B>structs</B>
              are changed to pascal records, with <B>C </B>packing.




<B>SEE ALSO</B>
              <B>ppc386</B>(1) <B>ppumove</B>(1)





































FreePascal                 12 Dec 1999                          4


</PRE>
</HTML>
