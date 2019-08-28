<master>
<property name="title"><trn key="website.tools.fpcmake.title" locale="en_US">Free Pascal - Tools</trn></property>
<property name="entry">prog</property>
<property name="subentry">tools</property>
<property name="subsubentry">fpcmake</property>
<property name="maindir">../</property>
<property name="header"><trn key="website.tools.fpcmake.header" locale="en_US">FPCMake</trn></property>

<trn key="website.tools.fpcmake.man" locale="en_US">
<h1>FPCMAKE - Free Pascal Makefile generator</h1>
What follows below is the man page of fpcmake and the description of the
configuration file. If you have installed the man pages then you can view
them with the <b>man</b> command.
<hr>
<PRE>



fpcmake(1)       Free Pascal Makefile constructor      fpcmake(1)


<b>NAME</b>
       fpcmake - The Free Pascal makefile constuctor program.


<b>SYNOPSIS</b>
       <b>fpcmake [filename [filename [filename]]]</b>


<b>DESCRIPTION</b>
       <b>fpcmake </b>reads a <I>Makefile.fpc </I>and converts it to a <I>Makefile</I>
       suitable for reading by GNU <I>make </I>to compile your projects.
       It  is  similar  in functionality to GNU <I>autoconf </I>or <I>Imake</I>
       for making X projects.


<b>USAGE</b>
       <b>fpcmake </b>accepts filenames of makefile description files as
       it's  command-line  arguments.  For each of these files it
       will create a <I>Makefile </I>in the  same  directory  where  the
       file is located, overwriting any other existing file.

       If no options are given, it just attempts to read the file
       <I>Makefile.fpc </I>in the current directory and  tries  to  con-
       struct  a Makefile from it.  any previously existing <I>Make-</I>
       <I>file </I>will be erased. See <b>fpcmake</b>(5) for a  description  of
       the format of the <I>Makefile.fpc </I>file.


<b>SEE ALSO</b>
              <b>fpcmake</b>(5) <b>ppc386</b>(1) <b>make</b>(1)



























FreePascal                 12 Dec 1999                          1


</PRE>
<hr>
<PRE>



fpcmake(5)       Free Pascal Makefile.fpc format       fpcmake(5)


<b>NAME</b>
       Makefile.fpc - Configuration file for fpcmake.


<b>SYNOPSIS</b>
       <I>Makefile.fpc  </I>is a configuration file for the fpcmake com-
       mand. Starting from this file a  <I>Makefile  </I>is  created  to
       compile Free Pascal units and programs.


<b>DESCRIPTION</b>
       <b>Makefile.fpc  </b>is a plain ASCII file that contains a number
       of sections as in a Windows <I>ini </I>file. The  following  sec-
       tions are recognized (in alphabetical order):

       <b>clean  </b>Specifies rules for cleaning the directory of units
              and programs.  The  following  entries  are  recog-
              nized:

              <I>units  </I>names  of  all  units that should be removed
                     when cleaning. Don't specify extensions, the
                     makefile will append these by itself.

              <I>files  </I>names of files that should be removed. Spec-
                     ify full filenames.

       <b>defaults</b>
              The defaults section  contains  some  default  set-
              tings. The following keywords are recognized:



       <b>dirs</b>

       <b>info</b>

       <b>install</b>
              Contains  instructions  for  installation  of  your
              units and programs. The following keywords are  rec-
              ognized:

              <I>dirprefix</I>
                     the  directory below wchich all installs are
                     done. This corresponds to the <I>--prefix </I>argu-
                     ment  to  GNU  <I>configure  </I>It is used for the
                     installation  of  programs  and  units.   By
                     default,  this is on linux, and on all other
                     platforms.

              <I>basedir</I>
                     The directory  that  is  used  as  the  base
                     directory  for  the  installation  of units.
                     Default  this  is  <I>dirprefix  </I>appended  with
                     <I>/lib/fpc/FPC_VERSION </I>for linux or simply the



FreePascal                 12 Dec 1999                          1





fpcmake(5)       Free Pascal Makefile.fpc format       fpcmake(5)


                     dirprefix on other platforms.
       Units   will   be   installed    in    the    subdirectory
       <I>units/$(OS_TARGET) </I>of the <I>dirbase </I>entry.

       <b>libs   </b>This  section specifies what units should be merged
              into a library, and  what  external  libraries  are
              needed. It can contain the following keywords:

              <I>libname</I>
                     the  name of the library that should be cre-
                     ated.

              <I>libunits</I>
                     a comma-separated list of units that  should
                     be moved into one library.

              <I>needgcclib</I>
                     a  boolean  value that specifies whether the
                     gcc library is needed. This will  make  sure
                     that the path to the GCC library is inserted
                     in the library search path.

              <I>needotherlib</I>
                     a boolean value that tells the makefile that
                     other library directories will be needed.

       <b>packages</b>
              Which  packages must be used. This section can con-
              tain the following keywords:

              <I>packages</I>
                     A comma-separated list of packages that  are
                     needed  to  compile  the targets.  Valid for
                     all platforms.  In  order  to  differentiate
                     between  platforms, you can prepend the key-
                     word <I>packages </I>with the OS you are  compiling
                     for,  e.g.   <I>linuxpackages  </I>if  you want the
                     makefile to use the listed packages on linux
                     only.

              <I>fcl    </I>This  is a boolean value (0 or 1) that indi-
                     cates whether the FCL is used.

              <I>rtl    </I>This is a boolean value (0 or 1) that  indi-
                     cates  whether the RTL should be recompiled.

       <b>postsettings</b>
              Anything that is in this section will  be  inserted
              as-is in the makefile <I>after </I>the makefile rules that
              are generated by fpcmake, but  <I>before  </I>the  general
              configuration  rules.   can define additional rules
              and configuration variables.





FreePascal                 12 Dec 1999                          2





fpcmake(5)       Free Pascal Makefile.fpc format       fpcmake(5)


       <b>presettings</b>
              Anything that is in this section will  be  inserted
              as-is  in  the  makefile <I>before </I>the makefile target
              rules that are generated  by  fpcmake.  This  means
              that you cannot use any variables that are normally
              defined by

       <b>rules  </b>In this section you can insert dependency rules and
              any  other  targets you wish to have. Do not insert
              'default rules' here.

       <b>sections</b>
              Here you can specify which 'rule  sections'  should
              be  included in the Makefile.  The sections consist
              of a  series  of  boolean  keywords;  each  keyword
              decies whether a particular section will be written
              to the makefile. By default, all sections are writ-
              ten.

              You can have the following boolean keywords in this
              section.

              <I>none   </I>If this is set to true, then no sections are
                     written.

              <I>units  </I>If  set  to  <I>false </I>, <b>fpcmake </b>omits the rules
                     for compiling units.

              <I>exes   </I>If set to <I>false </I>, <b>fpcmake  </b>omits  the  rules
                     for compiling executables.

              <I>loaders</I>
                     If  set  to  <I>false </I>, <b>fpcmake </b>omits the rules
                     for assembling assembler files.

              <I>examples</I>
                     If set to <I>false </I>, <b>fpcmake  </b>omits  the  rules
                     for compiling examples.

              <I>package</I>
                     If  set  to  <I>false </I>, <b>fpcmake </b>omits the rules
                     for making packages.

              <I>compile</I>
                     If set to <I>false </I>, <b>fpcmake </b>omits the  generic
                     rules for compiling pascal files.

              <I>depend </I>If  set  to <I>false </I>, <b>fpcmake </b>omits the depen-
                     dency rules.

              <I>install</I>
                     If set to <I>false </I>, <b>fpcmake  </b>omits  the  rules
                     for installing everything.




FreePascal                 12 Dec 1999                          3





fpcmake(5)       Free Pascal Makefile.fpc format       fpcmake(5)


              <I>sourceinstall</I>
                     If  set  to  <I>false </I>, <b>fpcmake </b>omits the rules
                     for installing the sources.

              <I>zipinstall</I>
                     If set to <I>false </I>, <b>fpcmake  </b>omits  the  rules
                     for installing archives.

              <I>clean  </I>If  set  to  <I>false </I>, <b>fpcmake </b>omits the rules
                     for cleaning the directories.

              <I>libs   </I>If set to <I>false </I>, <b>fpcmake  </b>omits  the  rules
                     for making libraries.

              <I>command</I>
                     If  set  to  <I>false </I>, <b>fpcmake </b>omits the rules
                     for composing the command-line based on  the
                     various variables.

              <I>exts   </I>If  set  to  <I>false </I>, <b>fpcmake </b>omits the rules
                     for making libraries.

              <I>dirs   </I>If set to <I>false </I>, <b>fpcmake  </b>omits  the  rules
                     for running make in subdirectories..

              <I>tools  </I>If  set  to  <I>false </I>, <b>fpcmake </b>omits the rules
                     for running some tools as the erchiver,  UPX
                     and zip.

              <I>info   </I>If  set  to  <I>false </I>, <b>fpcmake </b>omits the rules
                     for generating information.

       <b>targets</b>
              In this section you can define the various targets.
              The following keywords can be used there:

              <I>dirs   </I>A  space separated list of directories where
                     make should also be run.

              <I>examples</I>
                     A space separated list of  example  programs
                     that  need to be compiled when the user asks
                     to compile the examples. Do not  specify  an
                     extension, the extension will be appended.

              <I>loaders</I>
                     A space separated list of names of assembler
                     files that must be assembled.  Don't specify
                     the   extension,   the   extension  will  be
                     appended.

              <I>programs</I>
                     A space separated list of program names that
                     need  to  be  compiled.  Do  not  specify an



FreePascal                 12 Dec 1999                          4





fpcmake(5)       Free Pascal Makefile.fpc format       fpcmake(5)


                     extension, the extension will be appended.

              <I>rst    </I>a list of <I>rst </I>files that needs  to  be  con-
                     verted to <I>.po </I>files for use with GNU <b>gettext</b>
                     and internationalization routines.

              <I>units  </I>A space separated list of  unit  names  that
                     need  to  be  compiled.  Do  not  specify an
                     extension, just the name of the unit  as  it
                     would appear un a <I>uses </I>clause is sufficient.

       <b>tools  </b>In this section you can  specify  which  tools  are
              needed. Definitions to use each of the listed tools
              will be inserted in the makefile, depending on  the
              setting in this section.

              Each  keyword  is a boolean keyword; you can switch
              the use of a tool on or off with it.

              The following keywords are recognised:

              <I>toolppdep</I>
                     Use <b>ppdep  </b>the  dependency  tool.   <I>True  </I>by
                     default.

              <I>toolppumove</I>
                     Use  <b>ppumove  </b>the  Free  Pascal  unit mover.
                     <I>True </I>by default.

              <I>toolppufiles</I>
                     Use the <b>ppufile </b>tool to determine  dependen-
                     cies of unit files.  <I>True </I>by default.

              <I>toolsed</I>
                     Use  <b>sed  </b>the  stream line editor.  <I>False </I>by
                     default.

              <I>tooldata2inc</I>
                     use the  <b>data2inc  </b>tool  to  create  include
                     files from data files.  <I>False </I>by default.

              <I>tooldiff</I>
                     Use the GNU <b>diff </b>tool.  <I>False </I>by default.

              <I>toolcmp</I>
                     Use  the  <b>cmp  </b>file  comparer  tool <I>False </I>by
                     default.

              <I>toolupx</I>
                     Use  the  <b>upx  </b>executable  packer  <I>True   </I>by
                     default.

              <I>tooldate</I>
                     use  the <b>date </b>date displaying tool.  <I>True </I>by



FreePascal                 12 Dec 1999                          5





fpcmake(5)       Free Pascal Makefile.fpc format       fpcmake(5)


                     default.

              <I>toolzip</I>
                     Use the <b>zip </b>file archiver. This is  used  by
                     the zip targets.  <I>True </I>by default.

       <b>zip    </b>This section can be used to make zip files from the
              compiled units and programs. By  default  all  com-
              piled  units  are  zipped. The zip behaviour can be
              influencd with  the  presettings  and  postsettings
              sections.

              The following keywords can be used in this unit:

              <I>zipname</I>
                     this  file  is the name of the zip file that
                     will be produced.

              <I>ziptarget</I>
                     is the name of a makefile target  that  will
                     be  executed  before  the  zip  is  made. By
                     default this is the <I>install </I>target.

<b>SEE ALSO</b>
              <b>fpcmake</b>(1) <b>ppc386</b>(1) <b>make</b>(1)
































FreePascal                 12 Dec 1999                          6


</PRE>
</trn>