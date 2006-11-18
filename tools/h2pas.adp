<master>
<property name="title">Free Pascal - Tools</property>
<property name="entry">prog</property>
<property name="subentry">tools</property>
<property name="subsubentry">h2pas</property>
<property name="maindir">..</property>
<property name="header">h2pas</property>
<h1>H2PAS - Free Pascal C header to pascal unit translator.</h1>
What follows below is the man page of h2pas. 
If you have installed the man pages then you can view them with the <b>man</b> command.
<hr>

<PRE>



h2pas(1)     Free Pascal C header conversion utility     h2pas(1)


<b>NAME</b>
       h2pas - The C header to pascal unit conversion program.


<b>SYNOPSIS</b>
       <b>h2pas </b><I>[options] filename</I>


<b>DESCRIPTION</b>
       <b>h2pas  </b>attempts  to  convert  a  C header file to a pascal
       unit.  it can handle most C constructs that one finds in a
       C  header  file,  and  attempts to translate them to their
       pascal counterparts. see the <b>CONSTRUCTS </b>section for a full
       description of what the translator can handle.


<b>USAGE</b>
       H2pas  is  a  command-line tool that translates a C header
       file to a spascal unit. It reads the  C  header  file  and
       translates  the C declarations to equivalent pascal decla-
       rations that can be used to access code written in C.

       The output of the h2pas program is written to a file  with
       the same name as the C header file that was used as input,
       but with the extension <I>.pp</I>.  The output  file  that  h2pas
       creates  can be customized in a number of ways by means of
       many options.


<b>OPTIONS</b>
       The output of <b>h2pas </b>can be controlled with  the  following
       options:



       <b>-d     </b>use <I>external; </I>for all procedure and function decla-
              rations.

       <b>-D     </b>use <b>external </b><I>libname <b></I>name </b><I>'func_name' </I>for  function
              and procedure declarations.

       <b>-e     </b>Emit  a  series of constants instead of an enumera-
              tion type for the C <I>enum </I>construct.

       <b>-i     </b>create an include file instead of a unit (omits the
              unit header).

       <b>-l </b><I>libname</I>
              specify the library name for external function dec-
              larations.

       <b>-o </b><I>outfile</I>
              Specify the output file name. Default is the  input
              file name with the extension replaced by <I>.pp </I>"."



FreePascal                 12 Dec 1999                          1





h2pas(1)     Free Pascal C header conversion utility     h2pas(1)


       <b>-p     </b>use  the  letter <b>P </b>in front of pointer type parame-
              ters instead of "^".

       <b>-s     </b>Strip comments from the input file. By default com-
              ments  are  converted  to comments, but they may be
              displaced, since a comment is handled by the  scan-
              ner.

       <b>-t     </b>prepend  typedef type names with the letter <b>T </b>(used
              to  follow  Borland's  convention  that  all  types
              should be defined with T).

       <b>-v     </b>replace  pointer  parameters  by  call by reference
              parameters.  Use with care because some  calls  can
              expect a NIL pointer.

       <b>-w     </b>Header  file  is  a win32 header file (adds support
              for some special macros).

       <b>-x     </b>handle SYS_TRAP of the PalmOS header files.


<b>CONSTRUCTS</b>
       The following C declarations  and  statements  are  recog-
       nized:


       <b>defines</b>
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


       <b>preprocessor statements</b>
              the  conditional  preprocessing commands are recog-
              nized and translated into  equivalent  pascal  com-
              piler directives. The special <b>#ifdef __cplusplus </b>is
              also recognized and removed.



       <b>typedef</b>
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

       <b>functions and procedures</b>
              functions  and  procedures  are translated as well;
              pointer types may be changed to call  by  reference
              arguments  (using the <b>var </b>argument) by using the <b>-p</b>
              command line argument. functions that have a  vari-
              able  number of arguments are changed to a function
              with an <b>array of const </b>argument.

       <b>specifiers</b>
              the <I>extern </I>specifier is recognized; however  it  is
              ignored.  the  <I>packed  </I>specifier is also recognised
              and changed with  the  <I>PACKRECORDS  </I>directive.  The
              <I>const </I>specifier is also recognized, but is ignored.


       <b>modifiers</b>
              If the <b>-w </b>option is specified, then  the  following
              modifiers  are  recognized: <I>STDCALL </I>, <I>CDECL </I>, <I>CALL-</I>
              <I>BACK </I>, <I>PASCAL </I>, <I>WINAPI </I>, <I>APIENTRY  </I>,  <I>WINGDIAPI  </I>as
              defined  in the win32 headers.  If additionally the
              <b>-x </b>option is specified then the <I>SYS_TRAP  </I>specifier
              is also recognized.



FreePascal                 12 Dec 1999                          3





h2pas(1)     Free Pascal C header conversion utility     h2pas(1)


       <b>enums  </b>enum constructs are changed into enumeration types;
              bear in mind that in C enumeration types  can  have
              values  assigned  to  them; Free Pascal also allows
              this to a certain degree. If you know  that  values
              are  assigned  to  enums,  it is best to use the <b>-e</b>
              option to change the enus to a  series  of  integer
              constants.


       <b>unions </b>unions are changed to variant records.


       <b>structs</b>
              are changed to pascal records, with <b>C </b>packing.




<b>SEE ALSO</b>
              <b>ppc386</b>(1) <b>ppumove</b>(1)





































FreePascal                 12 Dec 1999                          4


</PRE>
</html>
