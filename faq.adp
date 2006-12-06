<master>
<property name="title">Free Pascal - Knowledge base</property>
<property name="entry">faq</property>
<property name="header">FAQ / Knowledge base</property>

<trn key="website.faq_intro" locale="en_US" locale="en_US">
  <p>This document gives last minute information regarding the compiler. Furthermore,
  it answers frequently asked questions and gives solutions to common problems
  found with Free Pascal. The information presented herein always supersedes those
  found in the Free Pascal documentation. 
</trn>

<trn key="website.for_comprehensive" locale="en_US">
  <p> For more comprehensive information on the pascal language, and the runtime library
  calls, consult the Free Pascal manuals. Topics covered in this document : 
</trn>

<OL>
    <li><trn key="website.General_information" locale="en_US">General information</trn>
   <OL>
    <li><a href="#WhatIsFP"><trn key="website.q_What_is_FPC" locale="en_US">What is Free Pascal (FPC)?</trn></a>
    <li><a href="#versions"><trn key="website.q_What_versions_exist" locale="en_US">Which versions exist, and which one should I use?</trn></a>
    <li><a href="#FPandGNUPascal"><trn key="website.q_FPC_vs_GPC" locale="en_US">Free Pascal and GNU Pascal - a comparison</trn></a>
    <li><a href="#general-license"><trn key="website.q_Licence_copyright_info" locale="en_US">License and copyright information</trn></a>
    <li><a href="#WhereToGetFP"><trn key="website.q_Getting_the_compiler" locale="en_US">Getting the compiler</trn></a>
    <li><a href="#general-install"><trn key="website.q_Installation_hints" locale="en_US">Free Pascal installation hints</trn></a>
    <li><a href="#ftpproblems"><trn key="website.q_Why_username_password_for_download" locale="en_US">Why do i have to supply a user name and password to get Free Pascal ?</trn></a>
    <li><a href="#general-connectftp"><trn key="website.q_Access_denies_while_download" locale="en_US">Access denied error when connecting to the Free Pascal FTP site</trn></a>
    <li><a href="#snapshot"><trn key="website.q_Wanna_new_version_now" locale="en_US">I want a new version NOW</trn></a>
    <li><a href="#installsnap"><trn key="website.q_Installing_snapshot" locale="en_US">Installing a snapshot</trn></a>
    <li><a href="#KnownBugs"><trn key="website.q_Known_bugs" locale="en_US">Known bugs / Reporting bugs</trn></a>
    <li><a href="#HOMEWORK"><trn key="website.q_Homework" locale="en_US">I have to write a program for homework. Can you help?</trn></a>
    <li><a href="#windowsapp"><trn key="website.q_Real_windows_application" locale="en_US">How do I make a real Windows application with windows and menu bars?</trn></a>
    <li><a href="#game"><trn key="website.q_Game_in_FPC" locale="en_US">How do I make a game with Free Pascal? Can I make a game like Doom 3?</trn></a>
    <li><a href="#ErrorPos"><trn key="website.q_Crash_analysis" locale="en_US">Getting more information when an application crashes</trn></a>
    <li><a href="#general-heap"><trn key="website.q_Increase_heap" locale="en_US">Increasing the heap size</trn></a>
    <li><a href="#general-doesntfindfiles"><trn key="website.q_Compiler_skips_files" locale="en_US">Compiler seems to skip files in directories -Fu points to</trn></a>
    <li><a href="#binariesbig"><trn key="website.q_Big_binaries" locale="en_US">Why are the generated binaries so big?</trn></a>
    <li><a href="#cfgfiles"><trn key="website.q_cfg_problems" locale="en_US">Configuration file problems (fpc.cfg or ppc386.cfg)</trn></a>
    <li><a href="#runerror"><trn key="website.q_Runtime_errors" locale="en_US">Runtime errors</trn></a>
    <li><a href="#stdunits"><trn key="website.q_Standard_units" locale="en_US">Standard units</trn></a>
    <li><a href="#internaldocs">How does the compiler work internally?</a>
    <li><a href="#debugsmart"><trn key="website.q_Debug_smartlinked" locale="en_US">Debugging smartlinked code does not fully work</trn></a>
    <li><a href="#debugshared"><trn key="website.q_Debugging_DLL" locale="en_US">Debugging shared library (dynamic linked library) code does not fully work</trn></a>
    <li><a href="#cantfindunit"><trn key="website.q_PPU_bin_compatibility" locale="en_US">PPU files binary compatibility between versions</trn></a>
    <li><a href="#cantfindunit"><trn key="website.q_Cannot_compile_with_bin_unit" locale="en_US">Can't compile a program using a binary only version of a unit</trn></a>
    <li><a href='#isoxpascal'><trn key="website.q_isoxpascal" locale="en_US">Will you support ISO Extended Pascal?</trn></a>
    <li><a href="#dotnet"><trn key="website.q_What_about_dotNET" locale="en_US">What about .NET?</trn></a>
   </OL>
   <li><trn key="website.Pascal_lang_rel_inf" locale="en_US">Pascal language related information</trn>
   <OL>
    <li><a href="#PortingCPU">Considerations in porting code to other processors</a>
    <li><a href="#PortingOS">Considerations in porting code to other operating systems</a>
    <li><a href="#OOP">Compiling Delphi code using Free Pascal</a>
    <li><a href="#HowcanIbuildaunit">Building a unit</a>
    <li><a href="#CompileSystemUnit">Compiling the system unit</a>
    <li><a href="#Howdoesfunctionoverloadingwork">How does function overloading work?</a>
    <li><a href="#HowToCallCFuncuntions">Calling C functions</a>
    <li><a href="#IntegratedAssemblerSyntax">Integrated Assembler syntax</a>
    <li><a href="#systemnotfound">Unit system, syslinux, sysos2 or syswin32 not found errors</a>
    <li><a href="#extensionselect">There is a new extension that will be really useful. Will you include it?</a> 
    </OL>
   <li><trn key="website.RTL_rel_inf" locale="en_US">Runtime library related information</trn>
   <OL>
    <li><a href="#HowToUseGraph">Using the graph unit with Free Pascal</a>
    <li><a href="#WrongColors">Why do I get wrong colors when using the graph unit?</a>
    <li><a href="#fileshare"> File sharing and file locks </a>
    <li><a href="#filebig"> Accessing huge files using standard I/O routines </a>
    <li><a href="#filemode">File denied errors when opening files with reset </a>
    <li><a href="#TurboVision">Turbo Vision libraries</a>
   </OL>
   <li><trn key="website.DOS_rel_inf" locale="en_US">DOS related information</trn>
   <OL>
    <li><a href="#dos-release">Releasing software generated by the DOS compiler</a>
    <li><a href="#dos-debugging">Debugging</a>
    <li><a href="#dos-dll">Dynamic libraries</a>
    <li><a href="#dos-profile">Profiling</a>
    <li><a href="#FPwithoutfpu">Running Free Pascal without a math coprocessor</a>
    <li><a href="#fp386">Applications created with Free Pascal crash on 80386 systems</a>
    <li><a href="#nomousegraph">The mouse cursor is not visible in graphics screens</a>
    <li><a href="#accessioports">Accessing I/O ports</a>
    <li><a href="#HowToAccessDosMemory">Accessing DOS memory / Doing graphics programming</a>
    <li><a href="#dos-stack">Changing the default stack size</a>
    <li><a href="#dos-os2">Using OS/2 generated applications under DOS</a>
   </OL>
   <li><trn key="website.Windows_rel_inf" locale="en_US">Windows related information</trn>
   <OL>
    <li><a href="#win-release">Releasing software generated by the windows compiler</a>
    <li><a href="#win-debugging">Debugging</a>
    <li><a href="#win-dll">Dynamic libraries</a>
    <li><a href="#win-profile">Profiling</a>
    <li><a href="#win-graph">Graph and problems with keyboard, mouse and "dummy dos windows"</a>
    <li><a href="#win-cygwin">Cygwin binary directory in your path sometimes causes builds to fail</a>
    <li><a href="#win-makefile">Makefile problems on Win2000 (and NT)</a>
    <li><a href="#win95-fpc">Using the DOS compiler under Windows 95</a>
    <li><a href="#win-os2">Using OS/2 generated applications under Windows</a>
    <li><a href="#win-dos">Using DOS generated applications under windows</a>
    <li><a href="#win-ide-mouse">The mouse cursor does not respond in the Windows IDE</a>
    <li><a href="#instal106win32">INSTALL.EXE of version 1.0.6 returns errors under some version of Windows</a>
 </OL>
   <li><trn key="website.UNIX_rel_inf" locale="en_US">UNIX related information</trn>
   <OL>
    <li><a href="#unix-release">Releasing software generated by the unix compilers</a>
    <li><a href="#unix-debugging">Debugging</a>
    <li><a href="#unix-dll">Dynamic libraries</a>
    <li><a href="#unix-profile">Profiling</a>
    <li><a href="#vgamissing">Why can't the linker find "vga"?</a>
    <li><a href="#unix-asldmissing">Compiler indicates missing as and ld</a>
   </OL>
   <li><trn key="website.OS2_rel_inf" locale="en_US">OS/2 related information</trn>
   <OL>
    <li><a href="#os2-release">Releasing software generated by the OS/2 compiler</a>
    <li><a href="#os2-debugging">Debugging</a>
    <li><a href="#os2-dll">Dynamic libraries</a>
    <li><a href="#os2-profile">Profiling</a>
    <li><a href="#os2-dos">Using DOS generated applications under OS/2</a>
    <li><a href="#instal106os2">INSTALL.EXE of version 1.0.6 or below returns an unknown error (-1) under OS/2</a>
    <br>or<br>
    <a href="#instal106os2">INSTALL.EXE of version 1.0.6 or above complains about missing TZ variable under OS/2</a>
    <li><a href="#os2-fp">OS/2 compiler not working after upgrading to 1.9.6 or newer</a>
   </OL>
   <li><trn key="website.BeOS_related_information" locale="en_US">BeOS related information</trn>
   <OL>
    <li><a href="#beos-release">Releasing software generated by the BeOS compiler</a>
    <li><a href="#beos-debugging">Debugging</a>
    <li><a href="#beos-dll">Dynamic libraries</a>
    <li><a href="#beos-profile">Profiling</a>
    <li><a href="#beos-linking">BeOS linking problems</a>
   </OL>
   <li><trn key="website.Amiga_tel_inf" locale="en_US">Amiga related information</trn>
   <OL>
    <li><a href="#amiga-release">Releasing software generated by the Amiga compiler</a>
    <li><a href="#amiga-debugging">Debugging</a>
    <li><a href="#amiga-dll">Dynamic libraries</a>
    <li><a href="#amiga-profile">Profiling</a>
   </OL>
   <li><trn key="website.PalmOS_rel_inf" locale="en_US">PalmOS related information</trn>
   <OL>
    <li><a href="#palmos-release">Releasing software generated by the PalmOS compiler</a>
    <li><a href="#palmos-debugging">Debugging</a>
    <li><a href="#palmos-dll">Dynamic libraries</a>
   </OL>
   
</OL>

 <OL>
   <h2><li><trn key="website.General_Information">General information</trn></h2>
   <OL>
        <li><a name='WhatIsFP'></a>
          <h3><trn key="website.q_What_is_FPC" locale="en_US">What is Free Pascal (FPC)?</trn></h3>
          <trn key="website.a_What_is_FPC" locale="en_US">
            <p>Originally named FPK-Pascal, the Free Pascal compiler is a 32
            and 64 bit Turbo Pascal and Delphi compatible Pascal compiler for
            DOS, Linux, Win32, OS/2, FreeBSD, AmigaOS, MacOSX, MacOS classic and
            several other platforms (the number of supported targets grows
            all the time, although not all of them are on the same level as
            the main ones).
	
            <p>The Free Pascal compiler is available for several
            architectures, x86, Sparc (v8,v9), ARM, x86_64 (AMD64/Opteron)
            and Powerpc. An older version (the 1.0 series) also supports
            m68k.
  	  	
            <p>The compiler is written in Pascal and is able to compile its
            own sources. The source files are under GPL and included.

            <p>Short history:
            <ul>
              <li>06/1993: project start
              <li>10/1993: first little programs work
              <li>03/1995: the compiler compiles the own sources
              <li>03/1996: released to the internet
              <li>07/2000: 1.0 version
              <li>12/2000: 1.0.4 version
              <li>04/2002: 1.0.6 version
              <li>07/2003: 1.0.10 version
              <li>05/2005: 2.0.0 version
              <li>12/2005: 2.0.2 version
              <li>08/2006: 2.0.4 version
            </ul>
          </trn>  

        <li><a name='versions'></a>
          <h3><trn key="website.q_What_versions_exist" locale="en_US">Which versions exist, and which one should I use?</trn></h3>
          <trn key="website.a_What_versions_exist" locale="en_US">
            <p>The latest official version is 2.0.4, released as a bug fix release for
            2.0.x series. New development is performed in 2.1.x series, which eventually
            gets released as either 2.2.0, or 3.0.0 (depending on amount of accumulated
            changes at the time of release).

            <h4>Historic versions</h4>

            <p>FPC's version numbering changed a few times over the years. Versions
            before 0.99.5 are considered archaic. After the release of 0.99.5 a
            system in version numbering was introduced, and that system was changed
            slightly changed after the 1.0 release. 

            <p><b>Versioning for versions 0.99.5 - 1.0</b><p>

            <p>Compilers with an <b>even</b> last number are <b>release</b>
            versions (e.g. 0.99.8, 0.99.10, 0.99.12, 0.99.14 1.0.0)<br>Compilers and
            packages with an <b>odd</b> last number are <b>development</b> versions
            (e.g. 0.99.9, 0.99.11, 0.99.13, 0.99.15) 

            <p>0.99.5 is an exception to this rule, since <b>0.99.5 IS a release</b>
            (a release prior to the introduction of this odd/even system).

            <p>Letters behind the version number (0.99.12b, 0.99.5d) indicate
            release versions with some bugs and problems in the original release
            (respectively 0.99.12 and 0.99.5) fixed.

            <p><b>Versioning after 1.0</b>

            <p>Together with the release of 1.0 the version numbering was
            slightly changed, and a system in versioning resembling the Linux
            kernel's has been introduced. The main difference is that the difference
            between a release version is now in the second number (1.0.x vs 1.1.x)
            instead of the third number (0.99.14 vs 0.99.15), and the third number
            now becomes the patch level, replacing the postfixed letter in the old
            system. 

            <p>
            <ul>
             <li>Releases that only fixed bugs in version 1.0 were numbered 1.0.x.
             <li>New development (the so called snapshots) started with version number
              1.1.x.
             <li>Eventually the 1.1.x versions, when stabilized turned to 2.x. Fixes on
              2.0 release are numbered 2.0.x.
             <li>The new development after the 2.0 release is numbered 2.1.x
              and so on.
            </ul>
            <p>

            <p>Normally you would want to use a release. Releases are considered
            stable, and easier to support (the bugs, quirks and unintended
            "features" are well known after a period of time, and workarounds
            exist).

            <p>Development snapshots (which are generated daily) reflect the current
            status of the compiler. Development versions probably have new features
            and larger bugs fixed since the last release, but might have some
            temporary stability drawbacks (which are usually fixed by the next day).

            <p>Development snapshots are often quite useful for certain categories of
            users. Ask in the maillists if it is worth the trouble in your case if
            you're not sure.

            <p>We advise all users to upgrade to the newest version for their
            target (Preferably the new stable 2.0.x series).

            <p> A graphical timeline of the FPC project plus its near future would
            be:
            <img src="pic/timeline.png"></a>
          </trn>

        <li><a name='FPandGNUPascal'></a>
          <h3><trn key="website.q_FPC_vs_GPC" locale="en_US">Free Pascal and GNU Pascal - a comparison</trn></h3>
          <trn key="website.a_FPC_vs_GPC" locale="en_US">
            <DL>
            <DT><b>Aim:</b>
            <DD>Free Pascal tries to implement a Borland compatible pascal
            compiler on as many platforms as possible. GNU Pascal tries to
            implement a portable pascal compiler based on POSIX.
            <DT><b>Version:</b>
            <DD>Currently, Free Pascal is at version 2.0 (may 2005). GNU Pascal is at
            version 2.1 (from 2002, which can be built with several different GCC's as backend; 
            their Mac OS X version is an exception though, as it follows the GCC version number).
            <DT><b>Tracking:</b>
            <DD>Between releases, development versions of FPC are available through daily snapshots
	        and the source via CVS. GPC issues a set of patches to the last version a few times 
            a year, and there are regular snapshot for OS X and Windows, made by users.
            <DT><b>Operating systems:</b>
            <DD>Free Pascal runs on a large amount of platforms of OSes,
            e.g. DOS, Win32 (no Unix porting layer needed), Linux, FreeBSD,
            NetBSD, OS/2, BeOS, Classic Mac OS, Mac OS X, and AmigaOS, on,  at
            the moment the following architectures: x86,
            x86_64 (AMD64), Sparc, PowerPC, ARM and Motorola (Motorola only in version 1.0.x).

            GNU Pascal runs basically on any system that can run GNU C, and for which the buildprocess was verified.
            <DT><b>Bootstrapping:</b>
            <DD>FPC requires a suitable set of binutils (AS,AR,LD), gmake and a commandline compiler. New architectures/OSes are crosscompiled.
	        GPC bootstraps via a suitable version of GCC, and requires a full set of binutils, flex, bison, gmake, a POSIX shell and libtool 
            <DT><b>Sources:</b>
            <DD>Free Pascal is entirely written in Pascal (about 6 MB of source
            code), while GNU Pascal is written in C (it's an adaptation of the GNU
            C compiler: 2.8 MB code + 8 MB of GNU C code)
            <DT><b>Language:</b>
            <DD>Free Pascal supports the Borland Pascal dialect, 
            implements the Delphi Object Pascal language and has some Mac Pascal extensions.
            GNU Pascal supports ISO 7185, ISO 10206, (most of) Borland Pascal 7.0
            <DT><b>Extensions:</b>
            <DD>Free Pascal implements method, function and operator overloading. (later Delphi versions add these, so strictly not an extension anymore)
            GNU Pascal implements operator overloading.
            <DT><b>License:</b>
            <DD>Both compilers come under the GNU GPL.
            <DT><b>Author:</b>
            <DD>Free Pascal was started by Florian Kl&auml;mpfl, Germany
            (florian&#x040;freepascal.org), GNU Pascal was started by Jukka Virtanen,
            Finland (jtv&#x040;hut.fi). </DD></DL><br>
          </trn>


        <li><a name='general-license'></a>
          <h3><trn key="website.q_Licence_copyright_info" locale="en_US">License and copyright information</trn></h3>
          <trn key="website.a_Licence_copyright_info" locale="en_US">
            <p> Applications created by the compiler and using the runtime
            library come under a modified library gnu public license (LGPL),
            which permit no restriction on the type of license the application
            has. It is therefore possible to create closed source
            or proprietary software using Free Pascal.
            

            <p>This extra exception to the LGPL is added:<br><I> As a special
            exception, the copyright holders of this library give you
            permission to link this library with independent modules to
            produce an executable, regardless of the license terms of
            these independent modules, and to copy and distribute the
            resulting executable under terms of your choice, provided
            that you also meet, for each linked independent module, the
            terms and conditions of the license of that module. An
            independent module is a module which is not derived from or
            based on this library. If you modify this library, you may
            extend this exception to your version of the library, but
            you not obligated to do so. If you do not wish to do so,
            delete this exception statement from your version.</I>

            Please note that you still have to comply to the LGPL, which, for example,
            requires you to provide the source code of the runtime library. If you want
            to write proprietary closed source software, please do this to comply:
            <ul>
              <li>Most people can satisfy the source code requirement by mentioning
              the rtl source code can be downloaded at the Free Pascal
              web site: if you did not modify the rtl this is considered adequate to
              satisfy the LGPL requirement of providing source code.
              <li>If you made modifications to the runtime library, you cannot keep them
              for yourself, you must make them available if requested.
              <li>Distribute the LGPL license with your product.
            </ul>

            <p> The compiler source code, on the other hand, comes under
            the GNU Public license, which means that any usage of the compiler
            source can only be used in software projects which have the same
            license. 
          </trn>

        <li><a name='WhereToGetFP'></a>
          <h3><trn key="website.q_Getting_the_compiler" locale="en_US">Getting the compiler</trn></h3>
          <trn key="website.a_Getting_the_compiler" locale="en_US">
            <p>The latest official stable Free Pascal release is available for download
            from all <a href="download@x@">official mirrors</a>
          </trn>

        <li><a name='general-install'></a>
           <h3><trn key="website.q_Installation_hints" locale="en_US">Free Pascal installation hints</trn></h3>
           <trn key="website.a_Installation_hints" locale="en_US">
             <ul>
               <li> Do not install the compiler in a directory which contains spaces
                    in its name, since some of the compiler tools do not like these 
             </ul>
           </trn>


        <li><a name='ftpproblems'></a>
          <h3><trn key="website.q_Why_username_password_for_download" locale="en_US">Why do i have to supply a user name and password to get Free Pascal ?</trn></h3>

          <trn key="website.a_Why_username_password_for_download" locale="en_US">
            <p> You are trying to login in to an ftp site. You must use the login name:
            anonymous and as your password, you should put your e-mail address.
          </trn>
        

        <li><a name=general-connectftp></a>
            <h3><trn key="website.q_Access_denies_while_download" locale="en_US">Access denied error when connecting to the Free Pascal FTP site</trn></h3>

            <p>The Free Pascal main ftp site can only accept a maximum number of
            simultaneous connections. If this error occurs, it is because
            this limit has been reached. The solution is either to wait and
            retry later, or better still use one of the Free Pascal mirror sites.
        

        <li><a name=snapshot></a>
            <h3><trn key="website.q_Wanna_new_version_now" locale="en_US">I want a new version NOW</trn></h3>

            <p>In the time between the release of new official versions, you can
            have a look at and test developer versions (so-called "snapshots"). Be
            warned though: this is work under progress, so in addition to old bugs
            fixed and new features added, this may also contain new bugs. 

            <p>Snapshots are generated automatically each night from the current
            source at that moment. Sometimes this may fail due to bigger changes not
            yet fully implemented. If your version doesn't work, try again one or
            two days later. You're advised not to download the GO32v1 version for
            Dos, since it's not supported any more. 

            <p>The latest snapshot can always be downloaded from the <A
            href="develop@x@#snapshot">development</a>
            web page. 
        

        <li><a name=installsnap></a>
            <h3><trn key="website.q_Installing_snapshot" locale="en_US">Installing a snapshot</trn></h3>

            <p>To install a snapshot, extract the zip archive into the existing
            program directory of the last official version of Free Pascal (after
            making a backup of the original of course). You can also extract it into
            an empty directory and then move the files to the program directory,
            overwriting existing files. 

            <p> Make sure that you extract the ZIP archive such that the included
            directory structure remains intact. For example if you use PKUNZIP,
            use "pkunzip -d" instead of just "pkunzip". Note that snapshots also
            contain a new RTL which most likely can't be used with the previous
            release version, so backup your old RTL as well. 
        


        <li><a name=KnownBugs></a>
            <h3><trn key="website.q_Known_bugs" locale="en_US">Known bugs / Reporting bugs</trn></h3>
            <p>Go to the <a href="bugs@x@">bugs page</a>. 

            <p>If you wish to know the bugs for a specific Free Pascal version, go to the bugs
            page, display the bug database. At the end of the page you should
            see an option to view only specific bugs. Choose "With Version"
            with the version you want to get information about and
            "With Status" choose "Unfixed". This should display all bugs
            which are present in the specific version of the compiler
            you requested.
            
        


        <li><a name=HOMEWORK></a>
            <h3><trn key="website.q_Homework" locale="en_US">I have to write a program for homework. Can you help?</trn></h3>

            <p>No. Please, don't send us mail about homework, we are no teachers.
            The Free Pascal development team tries to give good support for the Free
            Pascal compiler and are trying to always reply to emails. If we get
            emails like this, this becomes harder and harder. 
        
        <li><a name="windowsapp"></a>
            <h3><trn key="website.q_Real_windows_application" locale="en_US">How do I make a real Windows application with windows and menu bars?</trn></h3>
            The easiest way is to <a href='http://www.lazarus.freepascal.org'>download Lazarus</a>.
            It won't be just a Windows application, it will also work under Linux, FreeBSD and
            MacOS X.
        
        <li><a name="game"></a>
            <h3><trn key="website.q_Game_in_FPC" locale="en_US">How do I make a game with Free Pascal? Can I make a game like Doom 3?</trn></h3>
            Yes, you can make games with Free Pascal and if you are really good you can make
            a game like Doom 3. Making games is difficult, you need to be an experienced
            programmer to make them. The web site <a href='http://www.pascalgamedevelopment.com'>
            www.pascalgamedevelopment.com</a> is a community of people who program games in Free
            Pascal and Delphi.
            <p>
            If you want a start, please start to study <a href='http://www.delphi-jedi.org/Jedi:TEAM_SDL_HOME'>JEDI-SDL</a>
            or <a href='http://ptcpas.sourceforge.net'>PTCPas</a>. Also you can try to study an existing game, for example
            <a href='http://thesheepkiller.sourceforge.net'>The Sheep Killer</a> is a very simple game and it should not be
            very hard to understand its code.
        
        <li><a name=ErrorPos></a>
            <h3><trn key="website.q_Crash_analysis" locale="en_US">Getting more information when an application crashes</trn>Getting more information when an application crashes</trn></h3>

            <OL>
                <li>The easiest possibility is to recompile your program with -gl
                debugging option. This way unit LineInfo is automatically linked in,
                and the printout after a program crash then contains source line
                numbers in addition to addresses of the crash. To see runtime library (RTL)
                functions in the backtrace with their real name, you have to recompile
                the RTL with -gl too.
                <li>For more comprehensive checking, compile the
                program with debugging information (use the -g command line option) 
                <li>Load the program in the debugger <PRE>gdb(pas)(w) --directory=&lt;src dirs&gt; myprog.exe</PRE>Notes:
                <ul>
                    <li>Under UNIX systems (Linux, the BSD's), don't add the ".exe" after myprog
                    <li>"<TT>src dirs</TT>" is a list of directories containing the
                    source code files of myprog and the units it uses seperated by
                    semi-colons (";"). The current directory is automatically included.
                </ul>
                <li>Once inside the debugger, you can (optionally) set the command
                line options that will be passed to your program using the command
                "<TT>set args &lt;option1 option2 ...&gt;</TT>"
                <li>To start the program, type "<TT>run</TT>" and press enter
                <li>After the program has crashed, the address of the instruction
                where the crash occurred will be shown. The debugger will try to
                display the source code line corresponding with this address. Note
                that this can be inside a procedure of the RTL, so the source may not
                always be available and most likely the RTL wasn't compiled with
                debugging information.
                <li>If you then type "<TT>bt</TT>" (BackTrace), the addreses in the
                call stack will be shown (the addresses of the procedures which were
                called before the program got to the current address). You can see
                which source code lines these present using the command
                <PRE>info line *&lt;address&gt;</PRE>For example:<PRE>info line *0x05bd8</PRE>
            </OL>


        <li><a name=general-heap></a>
        <h3><trn key="website.q_Increase_heap" locale="en_US">Increasing the heap size</trn></h3>

            <p>By default Free Pascal allocates a small part of RAM for your
            application as heap memory. If it just allocated all it could get,
            people running Windows would have problems as Windows would increase
            the swap file size to give the program more memory on and on, until
            the swap file drive would be full. 

            <p>You can specify the size of the heap with -Chxxxx. 

            <p>However, the heap size doesn't really matter, since the Heap
            is able to grow: if you've used all the available heap space, the
            program will try to get more memory from the Operating system (OS),
            so the heap is limited to the maximum amount of free memory provided by
            the OS. 

            <p>It is only handy if you know you will need at least a certain amount
            of memory. You can then specify this value using the -Ch parameter, so
            your program will allocate it at once on startup. This is slightly
            faster than growing the heap a number of times. 
         


        <li><a name=general-doesntfindfiles></a>
            <h3><trn key="website.q_Compiler_skips_files" locale="en_US">Compiler seems to skip files in directories that -Fu points to</trn></h3>

            <p>This sometimes happens with installation/compilation scripts if the
            copying command doesn't preserve dates. The object files get older than
            the PPU file, and the compiler tries to recompile them. A simple <TT>touch</TT>
            will solve it. 
	    <p>
	      Also note that FPC, contrary to Turbo Pascal keeps track of includefiles. Modified
		includefiles or duplicate names might trigger an attempt at recompiling
        

        <li><a name=binariesbig></a>
            <h3><trn key="website.q_Big_binaries" locale="en_US">Why are the generated binaries so big?</trn></h3>

            There are several reasons and remedies for this: 

            <OL>
                <li>
                    <p>You can create smartlinked applications. To turn on
                    the generation of smartlinkable units, use the -Cx command
                    line option when compiling your units. To turn on
                    the linking of previously generated smarlinkable units, use the -XX
                    (-XS in 0.99.12 and earlier) command line option when compiling a
                    program. 
                <li>Normally, all symbol information is included in the resulting
                    program (for easier debugging). You can remove this by using the -Xs
                    command line option when compiling your program (it won't do anything
                    when compiling units)
                <li>You can use UPX to pack the .EXEs (just like e.g. pklite) for Dos
                    (GO32v2) and Windows targets. Look <A
                        href="http://upx.sourceforge.net/">here</a> for
                    more info.
                <li>You can use LXLITE for packing EMX binaries, but you won't be able
                    to run them under DOS (with extender) any more then. This issues is
                    not relevant for native OS/2 binaries compiled for target OS2 with
                    version 1.9.x and above, because these don't run under DOS anyway.
                    In addition, it might not be possible to use compressed binaries
                    on lower OS/2 versions (like 2.x) depending on chosen type of
                    compression. LXLITE can be found e.g. on
                    <a href="http://hobbes.nmsu.edu/">Hobbes</a>, search for LXLITE.
                <li>Turn on optimalisations, both for supplied packages (RTL, FV, FCL)
                    and for your own code, this will also decrease the code size. 
                <li>Keep in mind that under NT,2000,XP, compressed binaries startup	
		            relatively slow. Test under various conditions (OS, CPU speed, memory)
                    if the behaviour is acceptable before compressing			   
           </OL>

            Generally Free Pascal generates smaller binaries than modern competing compilers,
            however, it doesn't hide code in large dynamic libraries. Free Pascal generates
            larger binaries than compilers from long ago do. Large framework libraries result
            in larger executables.
        


        <li><a name=cfgfiles></a>
            <h3><trn key="website.q_cfg_problems" locale="en_US">Configuration file problems (fpc.cfg or ppc386.cfg)</trn></h3>

            <p> Starting from version 1.0.6 of Free Pascal, the configuration
            file is now called <TT>fpc.cfg</TT> instead of <TT>ppc386.cfg</TT>.
            For backward compatibility , <TT>ppc386.cfg</TT> is still searched first
            and, if found, is used instead of <TT>fpc.cfg</TT>

            <p> Versions prior to Free Pascal 1.0.6 do not recognize <TT>fpc.cfg</TT>,
            so if you wish to use an earlier version of the compiler using the
            same configuration file used with FPC version 1.0.6 (or later),
            the configuration file should be renamed to <TT>ppc386.cfg</TT>.

        


        <li><a name=runerror></a>
            <h3><trn key="website.q_Runtime_errors" locale="en_US">Runtime errors</trn></h3>

            <p> When there is abnormal termination of an application generated
            by Free Pascal, it is very probable that a runtime error will be
            generated. These errors have the form : 

            <PRE>
            Runtime error 201 at $00010F86
              $00010F86  main,  line 7 of testr.pas
              $0000206D
            </PRE>

            <p> The 201 in this case indicates the runtime error
            number. The definition of the different runtime error numbers is
            described in the Free Pascal user's manual, Appendix D. The
            hexadecimal numbers represent the call stack when the error occured.
            

        

        <li><a name=stdunits></a>
            <h3><trn key="website.q_Standard_units" locale="en_US">Standard units</trn></h3>

            <p> To see the list of base units supplied with Free Pascal, and
            on which platform they are supported, consult the Free Pascal user's manual.
            There is also a short description of what each unit does in the same section
            of the manual.
            

        

        <li><a name=internaldocs></a>
           <h3>How does the compiler work internally?</h3>
<!--
           <p>A draft document describing the internals of the Free Pascal compiler is
           available <a href="ftp://ftp.freepascal.org/pub/fpc/docs/fpc-int10.zip">here</a>.
           
-->
        

        <li><a name=debugsmart></a>
           <h3><trn key="website.q_Debug_smartlinked" locale="en_US">Debugging smartlinked code does not fully work</trn></h3>

           <p>Debugging smart linked code might not work correctly. This is
           due to the fact that no type information is emitted for
           smartlinked code. If this would not be done, the files
           would become enormous.
           

           <p> While debugging, it is not recommended to use the
               smartlinking option.

        

        <li><a name=debugshared></a>
           <h3><trn key="website.q_Debugging_DLL" locale="en_US">Debugging shared library (dynamic linked library) code does not fully work</trn></h3>

           <p>Debugging shared libraries (or dynamic linked libraries) produced
              by the Free Pascal compiler is not officially supported.
           

        


        <li><a name=cantfindunit></a>
            <h3><trn key="website.q_PPU_bin_compatibility" locale="en_US">PPU files binary compatibility between versions</trn></h3>
            <h3><trn key="website.q_Cannot_compile_with_bin_unit" locale="en_US">Can't compile a program using a binary only version of a unit</trn></h3>

            <p>
            Sometimes, even though there is a binary version of a module (unit file and object file)
            available, the compiler still gives compilation errors. This can be caused either by an
            incompatibility in the PPU file format (which should change only between
            major versions of the compiler), or by a change in one of the units of the RTL
            which has changed in between releases.
            

            <p>
            To get more information, compile the code using the -va (show all information)
            compiler switch, and the unit loading phase will be displayed. You might
            discover that the unit being loaded requires to be recompiled because one
            of the unit it uses has changed.
            

            <p>So if you plan on distributing a module without the source code, the binaries
               should be compiled and made available for all versions of the compiler you
               wish to support, otherwise compilation errors are bound to occur.
            

            <p>In other words, the unit (PPU) file format does not change significantly
               in between minor releases of the compiler (for exemple : from 1.0.4 and 1.0.6)
               which means they are binary compatible, but because the interface of the units
               of the RTL certainly changes between versions, recompilation will be required
               for each version anyways.
            

        
        <li><a name=filemode></a>
           <h3>File denied errors when opening files with reset </h3>

           <p> Trying to open files using <CODE>reset</CODE> on non-text files
               might cause a Runtime Error 5 (Access denied). 

           <p> All files opened using the above system unit routine use the current
               <CODE>filemode</CODE> value to determine how the file is opened. By
               default, <CODE>filemode</CODE> is set to 2 (Read/Write access).
            

            <p>So, a call to <CODE>reset</CODE> on non-text files does <EM>not</EM>
               indicate that the file will be opened read-only. So, trying to open a file
               using <CODE>reset</CODE> with the defaults will fail on read-only files.
               <CODE>filemode</CODE> should be set to 0 (Real-only access) before
               calling <CODE>reset</CODE> to solve this problem. A sample solution
               is shown below.
            

            <PRE>
              const
                 { possible values for filemode }
                 READ&#95;ONLY = 0;
                 WRITE&#95;ONLY = 1;
                 READ&#95;WRITE = 2;
              var
                 oldfilemode : byte;
                 f: file;
              begin
                 assign(f,'myfile.txt');
                 oldfilemode := filemode;
                 { reset will open read-only }
                 filemode := READ&#95;ONLY;
                 reset(f,1);
                 { restore file mode value }
                 filemode := oldfilemode;
                 // ...
                 close(f);
              end.
            </PRE>

            <p> For more information, consult the Free Pascal reference manual
         
        <li><a name='isoxpascal'></a>
           <h3><trn key="website.q_isoxpascal" locale="en_US">Will you support ISO Extended Pascal?</trn></h3>
       We are not against support for ISO Extended Pascal, but the Free Pascal
       development team does not consider extended Pascal compatibility important,
       and therefore will not spend time on it. The reason is that the
       ISO Extended Pascal must be considered a failed standard.
       <p>
       To explain the reasons for this, we need to go back to the 1970's. At
       that time a specific Pascal compiler got popular, UCSD-Pascal, its
       ability to allow programs written on one architecture to run on another
       played an important factor in this. All major Pascal compilers derive their
       language from the UCSD-Pascal compiler, including the well known Borland
       and Mac-Pascal dialects.
       <p>
       UCSD-Pascal introduced the unit system and the string variables we all know
       very well. The ISO Extended Pascal language is mutually exclusive with both
       of these features; ISO Extended Pascal both has a completely different system
       for modular programming, as that its string system is totally different from
       the UCSD model. In short it is not possible to support both dialects at the
       same time.
       <p>
       Because of this, the software industry could not switch to ISO Extended Pascal
       without breaking compatibility with all source code. Because of this,
       very few compilers did implement ISO Extended Pascal. Compilers that did
       were mostly unpopular.
       <p>
       Nowadays, there exists very little code written in ISO Extended Pascal. While
       Free Pascal could support it using another compiler mode, there is little point
       spending time making a compiler for which no source exists that it can compile.
       <p>
       GNU-Pascal is a modern compiler that can compile ISO Extended Pascal. If you have
       any need for the ISO Extended Pascal dialect, we recommend to take a look at this
       compiler.


        <li><a name=dotnet></a>
           <h3><trn key="website.q_What_about_dotNET" locale="en_US">What about .NET?</trn></h3>

	   Occasionally, users ask about a FPC that supports .NET, or our
	   plans in that direction. <p>

	   Mainly the users are either interested because of .NET's
	   portability aspects (Mono is quoted over and over again), or
	   because it is supposed to be the next big thing in Windows
	   programming.<p>

           While the FPC core developpers are somewhat interested out of
	   academic curiousity (mainly because it could be a pilot for
	   creating bytecode) there are however several problems with .NET
	   in combination with FPC:
	   	
        <OL> 
        <li>FPC's language uses pointers, and so can only be
	   unmanaged. Unmanaged code is not portable under .NET, so that
	   already kills all possible benefits. This also means that
	   existing FPC and Delphi code won't run on .NET.

	<li>FPC's libraries don't base on .NET classes and datamodels (and
 	   can't be changed to do so without effectively rewriting them),
 	   moreover the libraries could only be unmanaged too, or they
	   would be incompatible

 	<li>There is nothing <emph>practical</emph> known yet about how
	    portable an average .NET code will be. Little experiments with
	    hello world level code mean nothing, that kind of code works
	    with plain C too. 
 	<li>Operating System dependant code wouldn't work anymore, since
	     the win32 interface is unmanaged. 
	</OL> <p>
        
        So effectively this means that for FPC to benefit from .NET you
	would have to significantly adapt the language (thus compiler) and
	libraries, and be incompatible with the existing native sourcecode.
	This is not adding support for .NET in FPC, but reimplementing FPC
	on .NET from near scratch without backwards compability. Moreover
	that also means that existing apps would have to be rewritten for
	.NET, since it would take more than a simple recompile with a
	FPC/.NET compiler.<p>

	While unmanaged code has some uses (allows to integrate with managed
	code inside windows easier), this still needs a codegenerator
	backend to be written, interfaces and libraries defined, for little
	practical use. This means a <b>lot of work</b> and since .NET take
	up is not really high, this might not be worth it, since an
	unmanaged FPC/.NET would only be minimally used. <p>

	However if a FPC user does the bulk of the work (e.g. a bytecode
	codegenerator, and maybe some base libraries) and if the work is
	suitable for inclusion in FPC (a very big if), we will of course
	include it.<p>

	These problems are pretty much similar for the Java (bytecode) too. 
	One has to mutilate the language, and rewrite the libraries from
	scratch on the base libraries of the target (Java/.NET). Such an
	attempt would have little synergy with the FPC project as it is
	today.<p>
       
   </OL>


   <h2><li><trn key="website.Pascal_lang_rel_inf" locale="en_US">Pascal language related information</trn></h2>
   <OL>

        <li><a name=PortingCPU></a>
            <h3>Considerations in porting to other processors</h3>

            <p>Because the compiler now supports processors other than the Intel, it
            is important to take a few precautions so that your code will execute
            correctly on all processors. 
            <ul>
              <li>Limit your use of asm statements unless it is time critical code
              <li>Try not to rely on the endian of the specific machines when doing
              arithmetic operations. Furthermore, reading and writing of binary data
              to/from files will probably require byte swaps across different endian
              machines (swap is your friend in this case). This is even more
              important if you write binary data to files. Freepascal defines 
              <CODE>ENDIAN&#x5F;LITTLE</CODE> or <CODE>ENDIAN&#x5F;BIG</CODE> to indicate the
              target endian. 
              <li>Try limiting your local variables in subroutines to 32K, as this
              is the limit of some processors, use dynamic allocation instead.
              <li>Try limiting the size of parameters passed to subroutines to 32K,
              as this is the limit of some processors, use const or var parameters
              instead. 
              <li>The <TT>integer</TT> and <TT>cardinal</TT> types might have different
	      sizes and ranges on each processor, as well as depending on the compiler
	      mode.
              
              <li>The <TT>CPU32</TT> or <TT>CPU64</TT> (defined by FPC starting 
              from version 1.9.3) are defined indicating if the target is a 32-bit or 
              64-bit cpu; This can help you separate 32-bit and 64-bit specific code. 
              
              <li>Use the <TT>ptrint</TT> type (defined by FPC starting 
              from version 1.9.3) when declaring an ordinal that will store
              a pointer, since pointers can be either 32-bit or 64-bit depending on
              the processor and operating system. 
              
            </ul>
        
        <p>

        <li><a name=PortingOS></a>
            <h3>Considerations in porting code to other operating systems</h3>

            <p>Because the compiler supports several different operating systems,
            is important to take a few precautions so that your code will execute
            correctly on all systems. 
            <ul>
              <li>File sharing is implemented differently on different operating
              systems, so opening already opened files may fail on some operating
              systems (such as Windows). The only correct way to make sure to
              have the same file sharing behavior is to use the I/O routines
              furnished in <TT>sysutils</TT>. 
              <li>Clean up at the end of your program, i.e. close all files on exit, and
              release all allocated heap memory, as some operating systems don't like it
              when some things are left allocated or opened.
              <li> Some operating systems limit the local stack space which can be allocated,
              therefore it is important to limit subroutine nesting, and the amount of
              local variables. Limiting total stack space usage at a given moment to
              at most 256 KBytes while make porting easier.
              <li> Do not hard code paths to files, try to use relative paths
              instead 
              <li> Use the following constants (defined in the system unit)
              to get information on files, line endings, and to build paths:
                  <ul>
                    <li> <TT>LineEnding</TT> : Indicates the characters which end a text line
                    <li> <TT>LFNSupport</TT> : Indicates if long filenames are supported (more then 8.3 characters)
                    <li> <TT>DirectorySeparator</TT> : The character or characters which separate path components 
                    <li> <TT>DriveSeparator</TT> : The character which separate the drive specification from the rest
                           of the path
                    <li> <TT>PathSeparator</TT> : The character which separates directories in the search path environment
                    <li> <TT>FileNameCaseSensitive</TT> : Boolean indicating if the filenames for this system are case-sensitive or not
                  </ul>
               It is also possible to use the <TT>PathDelim</TT>, <TT>PathSep</TT> and <TT>DriveDelim</TT> constants
               defined in <TT>sysutils</TT>.
              
            </ul>
        
        <p>

        <li><a name=OOP></a>
            <h3>Compiling Delphi code using Free Pascal</h3>

            <p>The compiler supports the Delphi classes. Make sure you use the -S2 or
            -Sd switches (see the manuals for the meaning of these switches). For a
            list of Delphi incompabilities also check the manual. 
        

        <li><a name=HowcanIbuildaunit></a>
            <h3>Building a unit</h3>

            <p>It works like in Turbo Pascal. The first keyword in the file must be
            UNIT (not case sensitive). The compiler will generate two files:
            <TT>XXX.PPU</TT> and <TT>XXX.O</TT>. The PPU file contains the interface
            information for the compiler and the O-file the machine code (an object
            file, whose precise structure depends on the assembler you used). To use
            this unit in another unit or program, you must include its name in the
            USES clause of your program. 
        

        <li><a name=CompileSystemUnit></a>
            <h3>Compiling the system unit</h3>

            <p>To recompile the system unit, it is recommended to have GNU make
            installed. typing 'make' in the rtl source directory will then recompile
            all RTL units including the system unit. You may choose to descend into
            the directory of your OS (e.g. rtl/go32v2) and do a 'make' there. 
            <p>It is possible to do all this manually, but you need more detailed
            knowledge of the RTL tree structure for that. 
        


        <li><a name=Howdoesfunctionoverloadingwork></a>
            <h3>How does function overloading work?</h3>

            <p>function overloading is implemented, like in C++:
            <PRE>
                    procedure a(i : integer);
                    begin
                    end;

                    procedure a(s : string);
                    begin
                    end;

                    begin
                        a('asdfdasf');
                        a(1234);
                    end.
                </PRE>

            <p>You must be careful. If one of your overloaded functions is in the
            interface part of your unit, then all overloaded functions must be in
            the interface part. If you leave one out, the compiler will complain
            with a 'This overloaded function can't be local' message. Overloaded
            functions must differ in their parameters, it's not enough if their
            return types are different. 
        

        <li><a name=HowToCallCFuncuntions></a>
            <h3>Calling C functions</h3>

            <p>
            It is possible to call functions coded in C, which were compiled
            with the GNU C compiler (<TT>GCC</TT>). Versions which have been
            tested are version 2.7.2 through 2.95.2 of GCC. For calling the
            C function strcmp declare the following:
            
            <PRE>function strcmp(s1 : pchar;s2 : pchar) : integer;cdecl;external;</PRE>

        


        <li><a name=IntegratedAssemblerSyntax></a>
            <h3>Integrated Assembler syntax</h3>

            <p>The default assembler syntax (AT&amp;T style) is different from the
            one in Borland Pascal (Intel style). 

            <p>However, as of version 0.99.0, the compiler supports Intel style
            assembly syntax. See the documentation for more info on how to use
            different assembler styles. 

            <p>A description of the AT&amp;T syntax can be found in the GNU
            Assembler documentation. 
        



        <li><a name=systemnotfound></a>
            <h3>Unit system, syslinux, sysos2 or syswin32 not found errors</h3>

            <p>System (syslinux - not the bootloader, sysos2 or syswin32, depending
            on platform) is Pascal's base unit which is implicitely used in all programs.
            This unit defines several standard procedures and structures, and must be found to
            be able to compile any pascal program by FPC. 

            <p>The location of the system.ppu and syslinux.o files are determined by
            the -Fu switch which can be specified commandline, but is usually in the
            ppc386.cfg or fpc.cfg configuration file. 

            <p>If the compiler can't find this unit there are three possible causes:
            <OL>
                <li>The ppc386.cfg or fpc.cfg isn't in the same path as the compiler
                executable (go32v2, win32 and OS/2) or can't be found as
                "/etc/fpc.cfg" or ".fpc.cfg" in your homedirectory (Linux).
                <li>The fpc.cfg or ppc386.cfg doesn't contain the -Fu line, or a wrong one.
                See the <a href="http://www.stack.nl/~marcov/buildfaq.pdf">build faq (PDF)</a>, especially the chapters
                about the fpc.cfg and the directory structure.
                <li>The files ARE found but the wrong version or platform. Correct
                ppc386.cfg or fpc.cfg to point to the right versions or reinstall the right
                versions (this can happen if you try to use a <A
                href="#snapshot">snapshot</a>
                compiler while the -Fu statement in the used fpc.cfg still points to
                the RTL that came with the official release compiler). 
            </OL>

            <p>A handy trick can be executing "ppc386 programname -vt", this shows
            where the compiler is currently looking for the system unit's files. You
            might want to pipe this through more (Dos, OS/2, Windows) or less
            (Linux), since it can generate more than one screen information: 

            <p>
            <PRE>
                    Dos, OS/2, Windows: ppc386 programname -vt |more<br>
                    unix, linux: ppc386 programname -vt |less<br>
            </PRE>
            <p>
        
        <li><a name=extensionselect></a>
            <h3>There is a new extension that will be really useful. Will you include it?</h3>
        <p>
            Occasionally somebody asks for a new extension on the maillist,
	    and the discussions that follow have a recurring pattern. An
	    extension is quite a big deal for the FPC team, and there are
	    some criteria that are used to select if an extension is
	    &quot;worth&quot; the trouble. The most important pre-selection criteria are:
 	    <OL>
		<li>Compability must not be compromised in any way. Existing
			codebases on at least the Pascal level must keep 
			running. This is often more difficult than most people
		        think.
		<li>The extension must have real value.  Anything that is only
			a shorter notation does not apply, unless it is 
			out of compatibility with an existing Pascal/Delphi
			codebase. Practically it means it must make something
			possible that can't be done otherwise or be a compability
			item 
		<li>The change must fit in with the scope of the project, 
			implementing a Pascal compiler which can have a RAD
			and generic DB system. This excludes features like
			inline SQL, and large garbage collected objectframeworks.
		
	    </OL>	

            Exceptions to the second rule are sometimes made for platform
	    specific reasons (e.g. interfacing to some other language or
	    OS). The first rule is often a problem, because issues aren't
	    easily recognizable unless one has tried to make extensions
	    before. Best is to make a thoroughly written proposal that the
	    devels can review with
	    <ul><li> Explanation of the feature
		<li> Why it is needed, what does it make possible?
		<li> How you would implement it?
		<li> Lots of examples of typical use, and tests for possible problem
			cases
	    </ul>	
	    Try to be verbose and really try to view this from the viewpoint
	    of somebody who has to implement it, and try to make examples
	    that span multiple units and procedures, and review what happens.
	    Be critical, try to punch holes in your
	    own reasoning and find possible problematic cases, and document
	    them.	
         
        <p>
  	    Besides these pre-selection rules and documentation, the other
	    important question is who is going to do the work. Keep in mind
	    that the FPC devels are volunteers with to-do lists that are
	    booked till the next decade. You can't simply expect they'll
	    drop everything from their hands and implement the feature
	    because you need it urgently, or think it is nice. If you are
	    not willing to implement it yourself, and submit patches,
	    chances are slim.  Remarks as &quot;this will attract a lot of
	    users because&quot; are considered with a lot of scepsis, since
	    that applies to any new development.
	           
   </OL>

   <li><h2><trn key="website.RTL_rel_inf" locale="en_US">Runtime library related information</trn></h2>
   <OL>


        <li><a name=HowToUseGraph></a>
            <h3>Using the graph unit with Free Pascal</h3>

            <p>Since version 1.0, we  have a completely platform independent way
            of selecting resolutions and bitdepths. You are strongly encouraged to
            use it, because other ways will probably fail on one or other platform.
            See the documentation of the graph unit for more information. 
        

        <li><a name=WrongColors></a>
            <h3>Why do I get wrong colors when using the graph unit?</h3>

            <p>If you use <TT>detect</TT> as graphdriver, you will end up with the
            highest supported bitdepth. Since the graph unit currently only supports
            up to 16 bits per pixel modes and since this bitdepth is supported by
            all graphics cards made in at least the last 5 years, you will most
            likely get a 16 bit mode. 

            <p>The main problem is that in 16 (and 15, 24, 32, ...) bit modes, the
            colors aren't set anymore using an index in a palette (the palettized
            way is called "indexed color"). In these modes, the color number itself
            determines what color you get on screen and you can't change this color.
            The color is encoded as follows (for most graphics cards on PC's at
            least): 

            <ul>
                <li>15 bit color: lower 5 bits are blue intensity, next come 5 bits of
                green and then 5 bits of red. The highest bit of the word is ignored.
                <li>16 bit color: lower 5 bits are blue intensite, next come *6* bits
                of green and then 5 bits of red. 
            </ul>

            <p>This means that either you have to rewrite your program so it can
            work with this so-called "direct color" scheme, or that you have to use
            <TT>D8BIT</TT> as graphdriver and <TT>DetectMode</TT> as graphmode. This
            will ensure that you end up with a 256 (indexed) color mode. If there
            are no 256 color modes supported, then graphresult will contain the
            value <TT>GrNotDetected</TT> after you called InitGraph and you can
            retry with graphdriver <TT>D4BIT</TT>. Make sure you use the constant
            names (D8BIT, D4BIT, ...) and not their actual numeric values, because
            those values can change with the next release! That is the very reason why
            such symbolic constants exist. 
        

        <li><a name=fileshare></a>
             <h3> File sharing and file locks </h3>

             <p> The standard runtime library file I/O routines open
             files in the default sharing mode of the operating system
             (<TT>system, objects</TT> units). Because of this, you
             might get problems if the file is opened more than once either
             by another process or the same process. 

             <p> Generally the behaviors for the different operating
                 systems are as follows : 
             <ul>
                <li> UNIX systems : There is no verification at all. 
                <li> Windows : An access denied error will be reported. 
                <li> Amiga : An access denied error will be reported. 
                <li> DOS / OS/2 : If the file is opened more than once by
                     the same process, no errors will occur, otherwise an
                     access denied error will be reported. 
             </ul>

             <p>There are two ways to solve this problem:
             <ul>
               <li> Use specific operating system calls (such as file locking
                    on UNIX and Amiga systems) to get the correct behavior. 
               <li> Use the <TT>sysutils</TT> unit or the Free Component Library
                    <TT>TFileStream</TT> File I/O routines, which try
                    to simulate, as much as possible, file sharing mechanisms. 
             </ul>
            <p>


        
        <li><a name=filebig></a>
             <h3> Accessing huge files using standard I/O routines </h3>

             <p>The runtime library currently limits access to files which have
             file sizes which fit into a 32-bit signed integer (<TT>longint</TT>).

             <p> Therefore accessing files which have file sizes greater than
                 2 Gigabytes will produce unpredictable behavior. Application
                 accessing such files will have to use direct operating systems
                 calls (if the OS supports such files) to workaround the problem.
             
        

        <li><a name=TurboVision></a>
            <h3>Turbo vision libraries</h3>

            <p>A Turbo Vision port, called Free Vision, has progressed nicely
            lately. It's already very usable, we are even writing an IDE in it.
            When it will be in a more stable state it will be included in the
            standard runtime library. 
        

   </OL>

   <h2><li><trn key="website.DOS_rel_inf" locale="en_US">DOS related information</trn></h2>
   <OL>

        <li><a name=dos-release></a>
            <h3>Releasing software generated by the DOS compiler</h3>

            <ul>
                <li> If your program uses floating point code (which is
                very probable), make sure to read "<a href="#fp386">Applications created
                with Free Pascal crash on 80386 systems</a>" regarding special issues
                which might occur. Math coprocessor emulation software is then
                required (<TT>wmemu387.dxe</TT> should be redistributed with your software) 
                <li> The target system must have a DPMI server. To avoid problems,
                     the file <TT>cwsdpmi.exe</TT> should always be redistributed with your
                     application
                <li> The target system must have DOS 3.3 or later 
                <li> The default heap size is 2 Megabytes. Automatic growing of the heap is supported 
                <li> The default stack size is 256 Kbytes. See also "<a href="#dos-stack">Changing
                      the default stack size</a>" 
                <li> The stack checking option is available on this platform. 
            </ul>

        
        <p>

        <li><a name=dos-debugging></a>
            <h3>Debugging</h3>

            <p>The GNU debugger v4.16 and later have been tested, and generally work as
            they should. Because the GNU debugger is C oriented, some pascal types might not be
            represented as they should. It is suggested to use gdbpas or the text mode
            IDE instead of GDB, which are both available for the DOS target.
        
        <p>

        <li><a name=dos-dll></a>
            <h3>Dynamic Libraries</h3>

            <p>Creation or use of shared libraries (also called dynamic link libraries) is not
               supported under this platform.
            

        
        
        <li><a name=dos-profile></a>
            <h3>Profiling</h3>
            
            <p>Profiling with <TT>gprof</TT> is supported for this platform. 
        
        


        <li><a name=FPwithoutfpu></a>
            <h3>Running Free Pascal without a math coprocessor?</h3>

            <p>On the Intel version the emulator is automatically loaded by the
            compiler if you add the following commands to your autoexec.bat: 

            <p><PRE>
                    SET 387=N
                    SET EMU387=C:\PP\BIN\GO32V2\WEMU387.DXE
            </PRE>(don't forget to replace the <TT>C:\PP</TT> with the directory
            where you installed FPC)
        <p>
        

        <li><a name=fp386></a>
            <h3>Applications created with Free Pascal crash on 80386 systems</h3>

            <ul>
                <li>
                 <p>Trying to run an application which does floating point operations
                 on a 386 system without a math co-processor will crash unless
                 the <TT>emu387</TT> unit is used, as this unit loads the math co-processor
                 emulator (called <TT>wmemu387.dxe</TT>). You can add the unit as follows:

                <p><PRE>
                        program myprog;
                        uses emu387, ...
                </PRE>
                


                <p>When the application is released, the software package should also
                include the wmemu387.dxe redistributable file to avoid problems. .


                <li>
                <p>Some 80386 systems have a hardware bug which corrupt the accumulator
                register <TT>EAX</TT> if it is used in a <TT>MOV</TT> instruction just
                after a <TT>POPAL</TT> instruction. Prior to version 1.0.5, the compiler
                and runtime library could generate such code sequences. This is now
                fixed and should no longer cause problems
                

            </ul>
        <p>
        


        <li><a name=nomousegraph></a>
            <h3>The mouse cursor is not visible in graphics screens</h3>

            <p>A lot of DOS mouse drivers don't support mouse cursors in VESA modes
            properly. Logitech is said to have a decent mouse driver, which can be
            found <A
            href="ftp://ftp.logitech.com/pub/techsupport/mouse/m643&nbsp;w31.exe">here</a>
         

        <li><a name=accessioports></a>
            <h3>Accessing I/O ports</h3>

            <p>With versions before 0.99.10: if you're under DOS you can use the
            <TT>outport*</TT> and <TT>inport*</TT> procedures of the go32 unit. 

            <p>Since version 0.99.8, the Port array is supported like in TP, as long
            as you use the ports unit in your program (not available under Win32).

            <p>I/O port access is possible under Linux, but that requires root
            privileges. Check the manuals for the IOPerm, ReadPort and WritePort
            procedures. (Unit Linux) 
        

        <li><a name=HowToAccessDosMemory></a>
            <h3>Accessing DOS memory / Doing graphics programming</h3>

            <p>You can do like in Turbo Pascal, via absolute or mem[]. For larger memory
            blocks use the dosmemput/dosmemget routines in the <TT>Go32</TT> unit. 
        

        <li><a name=dos-stack></a>
            <h3>Changing the default stack size</h3>

            <p>Under the DOS (GO32V2) target, the default stack size to 256 bKbytes. This can
            be modified with a special DJGPP utility called <TT>stubedit</TT>. It is to note
            that the stack may also be changed with some compiler switches, this stack size,
            if greater then the default stack size will be used instead, otherwise the default
            stack size is used.

        
        <p>


        <li><a name=dos-os2></a>
            <h3>Using OS/2 generated applications under DOS</h3>

            <p>OS/2 applications (including the compiler) created with version 1.0.x
            and before should work correctly under vanilla DOS, since they are based
            on EMX (versions prior to 1.0.5 had big problems with EMX under DOS, this
            is now fixed). It is important to note that the compiled applications
            require the EMX runtime files (<TT>emx.exe</TT>) to execute properly. It may be
            necessary to distribute these files with the generated application.
            <p>Binaries created for target OS2 with version 1.9.x and above cannot
            run under DOS any more, because they directly use OS/2 API functions not
            available when running under extender - you need to compile for a newly added
            EMX target which provides this capability of running on both platforms.
        


   </OL>
   <h2><li><trn key="website.Windows_rel_inf" locale="en_US">Windows related information</trn></h2>
   <OL>

        <li><a name=win-release></a>
            <h3>Releasing software generated by the windows compiler</h3>

            <p> There is no special requirements for releasing software
            for the windows platform, it will work directly out of the box. The following
            are default for the Windows platform: 

            <ul>
                <li> The default heap size is 256 Kbytes. Automatic growing
                of the heap is supported. It is to note that Windows 95,
                Windows 98 and Windows Me limit the heap to 256 Mbytes
                (this is a limitation of those Operating systems, not of Free Pascal,
                 consult MSDN article Q198959 for more information).
                
                <li> Stack size is unlimited 
                <li> The stack checking option is not available on this platform. 
            </ul>
        
        <p>

        <li><a name=win-debugging></a>
            <h3>Debugging</h3>

            <p>The GNU debugger v4.16 and later have been tested, and generally work as
            they should. Because the GNU debugger is C oriented, some pascal types might not be
            represented as they should. It is suggested to use gdbpas or the text mode
            IDE instead of GDB, which are both available for windows targets.

        
        <p>


        <li><a name=win-dll></a>
            <h3> Dynamic libraries </h3>

            <p>Creation and use of shared libraries (also called dynamic link libraries) is
            fully supported by the compiler. Refer to the Programmer's Reference Manual for
            more information on shared library creation and use.
            

        
        
        <li><a name=win-profile></a>
            <h3>Profiling</h3>
            
            <p>Profiling is supported using <TT>gprof</TT>, starting with version 1.0.7. 
               It requires mingw to be installed, and that <TT>fpc.cfg</TT> point to the 
               correct library paths. 
        
        


        <li><a name=win-graph></a>
            <h3> Graph and problems with keyboard, mouse and "dummy dos windows" </h3>

            <p>Problem:
            <ul>
                <li>If you use the Graph unit under Win32, you can't use the API mouse
                unit for mouse support or use the win32 Crt unit to get keyboard data.
                The reason for this is that the window popped up is a GUI window, and
                not a console one.
            </ul>
            Solution:
            <ul>
            <li>Use units WinMouse and WinCrt instead.
            </ul>
            <p>
            <p>Problem:
            <ul>
                <li>When you follow the above advice, and you run your purely Graph
                based win32 program from the RUN menu in windows, a dummy dos window
                is opened.
            </ul>
            Solution:
            <ul>
                <li>Set the application type to GUI: <PRE>{$apptype GUI}</PRE>
                and put this line before your programs InitGraph statement:
                <PRE>ShowWindow(GetActiveWindow,0);
                </PRE>This will hide the dos window window. 
            </ul>
            <p>

            <p>Some of the demos (like fpctris) use these techniques 

        <li><a name=win-cygwin></a>
            <h3>Cygwin binary directory in your path sometimes causes strange problems</h3>

            <p>The mingw make tool seems to look for a "sh.exe", which it
		finds when the cygwin binary directory is in the path. The
		way directories are searched changes, and the build process dies.
            

	    <p>Solution: don't put cygwin in your global path for now, only
               add it when needed. Efforts are made to work around this.
	    

            <p>Possible untested workaround: add mingw sh.exe to a directory before 
               the cygwin binary directory in the path
            

        <li><a name=win-makefile></a>
            <h3>Makefile problems on Win2000 (and NT)</h3>

            <p>After the 1.0.4 release, some problems with the mingw win32 build
            tools (make.exe and friends) were discovered. A patched version of these tools
            has been released. Automatically building large parts of the sources under
            Windows 2000 and Windows NT is now a lot easier. 
            <p>

            <OL>
                <li>Download makew32.zip from the <A
                href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/makew32.zip">ftp
                site</a> or a mirror.<br>
                <li>Unzip it to your pp directory. (the archive already contains the
                bin/win32/ directories)
                <li>Properties of "My Computer", (system properties), tab "advanced",
                "Environment Variables".
                <li>In the bottom box, select the "Path" entry, and then "Edit"
                <li>In the top field of this dialog, change "Path" to "PATH", and
                click OK.
                <li>Close and Reopen dosboxes to apply changes. 
            </OL>
            <p>
            <p>Alternatively, if changing the case of the "Path" variable leads to
            problems, you could run the following batchfile in each dosbox prior to
            working with FPC:
            <PRE>
                set a=%PATH%
                set Path=
                set PATH=%A%
                set a=
            </PRE>
            <p>
            <p>A lot, if not all, makefile trouble is now probably gone. If you still
            have problems try getting the makent.zip utilities from the <A
            href="ftp://ftp.freepascal.org/pub/fpc/contrib/utils/win32/makent.zip">ftp
            site</a> or a mirror. It should be installed just like makew32.zip.

	    	<p><b>Note:</b> The win32 version of make is case sensitive with respect to
			filenames (paths?) and environment variables

        

        <li><a name=win95-fpc></a>
            <h3>Using the DOS compiler under Windows 95</h3>

            <p>There is a problem with the DOS (GO32V2) compiler and Windows 95 on
            computers with less than 16 Megabytes of RAM. First set in the
            properties of the DOS box the DPMI memory size to max value. Now try
            to start a demo program in the DOS box, e.g. HELLO (starting may take
            some time). If this works you will be able to get the compiler to work
            by recompiling it with a smaller heap size, perhaps 2 or 4 MB
            (option -Chxxxx). 
        

        <li><a name=win-os2></a>
            <h3>Using OS/2 generated applications under Windows</h3>

            <p>Normally OS/2 applications (including the compiler) created with version 1.0.x
            and before should work under Windows, since they are based on EMX - see
            <a href="#dos-os2">note about running OS/2 applications under DOS</a> for
            more detailed information. You need the RSX extender (rsx.exe) to do this.
            There have been problems reported while trying to run EMX applications under
            NT / 2000 / XP systems though. This seems to be a problem with EMX (RSX) itself.
            It is not recommended to use Free Pascal OS/2 compiled programs under NT / 2000
            and XP, as it might produce unexpected results.
        

        <li><a name=win-dos></a>
            <h3>Using DOS generated applications under windows</h3>

            <p>Several problems have been found running DOS software
            under certain versions of Windows (NT / 2000 / XP). These
            seem to be problems with the DOS emulation layers (emulated
            DPMI services). These problems may not occur with all software
            generated by FPC. Either applications should be tested on these systems
            before being released, or Windows versions should be generated instead.
        


    <li><a name=win-ide-mouse></a>
        <h3>The mouse cursor does not respond in the Windows IDE</h3>

		   <p>In windowed mode, the mouse cursor might not respond to
		   mouse moves and clicks. Just change the properties of the console,
		   and remove the quick edit mode option. This should solve the mouse
		   response problems.
		   
       

    <li><a name=instal106win32></a>
        <h3>INSTALL.EXE of version 1.0.6 returns errors under some version
           of Windows</h3>

        <p>The original 1.0.6 installer gave errors under Win95/98/Me in some circumstances.
        A new installer (INSTALL.EXE) is included as of this date (10th July 2002)
        with version 1.0.6. If you downloaded Free Pascal for Windows before this date, you
        should upgrade to the latest version of Free Pascal.
        

    


   </OL>
   <h2><li>UNIX related information </h2>

        <p>This section also applies to most unix variants, such as
        linux, freebsd and netbsd. 

   <OL>
        <li><a name=unix-release></a>
            <h3>Releasing software generated by the unix compilers</h3>

            <ul>
                <li> The default heap size is 256 Kbytes for the intel version,
                     and 128 Kb for the m68k versions. Automatic growing of the
                     heap is supported. 
                <li> There is no stack space usage limit. 
                <li> Under Solaris and QNX, stack checking is simulated. 
                <li> Minimal operating system versions :
                  <ul>
                    <li> Linux : Kernel v1.1.x or later. 
                    <li> FreeBSD : version 4.x or later.   
                    <li> NetBSD : version 1.5 or later. 
                    <li> Solaris : version 5.7 of SunOS or later
                         (should work with earlier versions, but untested). 
                    <li> Qnx : version 6.1.0 or later
			(should work with earlier versions, but untested).                     
                  </ul>
                
            </ul>

        
        <p>

        <li><a name=unix-debugging></a>
            <h3>Debugging</h3>

            <p>The GNU debugger v4.16 and later have been tested, and generally work as
            they should. Because the GNU debugger is C oriented, some pascal types might not be
            represented as they should. For FreeBSD a recent GDB (v5) CVS snapshot is
                recommended for Pascal support and ease of building
        
        <p>


        <li><a name=unix-dll></a>
            <h3> Dynamic libraries </h3>

            <p>These operating systems do support shared libraries (also called
               dynamic link libraries), Free Pascal currently does not emit position
               independant code (PIC), as required for the creation of shared libraries.
            
            <p>
			   Therefore, even though the linux compiler target permits creating shared
			   libraries, the usage of that shared library may result in undefined
			   behavior, especially if accessing global variables in the library. Creation
			   of shared libraries is not recommended with the current version of the
			   compiler.
            

            <p>
               Importing code from shared libraries does work as expected though, since
               it does not require usage of position independant code.
            

        
        
        <li><a name=unix-profile></a>
            <h3>Profiling</h3>
            
            <p>Profiling is supported using <TT>gprof</TT> under linux,
               FreeBSD and NetBSD, the latter two only since 1.0.8. On other
               other unix-like operating systems, profiling is currently not
               supported.
            
        
        

        <li><a name=vgamissing></a>
            <h3>Why can't the linker find "vga"?</h3>

            <p>This error typically looks like this:<PRE>
                 Free Pascal Compiler version 1.0.x [xxxx/yy/zz] for i386
                 Copyright (c) 1993-2000 by Florian Klaempfl
                 Target OS: Linux for i386
                 Compiling test.pp
                 Assembling test
                 Linking test
                 /usr/bin/ld: cannot find -lvga
                 test.pp(6,4) Warning: Error while linking Closing script ppas.sh 5 Lines
                 compiled, 0.2 sec
            </PRE>
            <p>

            <p>This error is not an error in the installation of FPC or FPC itself,
            but a missing Svgalib library in your unix install. Please install the
            required library using your favourite package manager tool 
        


        <li><a name=unix-asldmissing></a>
            <h3>Compiler indicates missing as and ld</h3>

            <p> Normally unix systems have the assembler (<TT>as</TT>) and linker
            (<TT>ld</TT>) pre-installed and already in the search path. That is
            the reason why these tools are not supplied with the compiler. 

            <p>If the compiler cannot find these tools, either they are not in
            your search path, or they are not installed. You should either add the
            path where the tools are located to your search path, and / or you
            should install these tools. 

            <p> It is to note that the Solaris version of FPC contains these tools. 
        


   </OL>
   <h2><li>OS/2 related information </h2>
   <OL>

       <li><a name=os2-release></a>
            <h3>Releasing software generated by the OS/2 compiler</h3>

             <p> The OS/2 compiler version 1.0.x and before is based on EMX, therefore
             it should work both on OS/2 and on vanilla DOS systems. In version 1.9.x and
             above this functionality is preserved in newly added target EMX, whereas binaries
             for target OS2 can only run under real OS/2. The following notes apply to OS2
             target in 1.0.x and EMX in 1.9.x and above:

             <ul>
                <li> All applications generated for the OS/2 (EMX) target require
                     the EMX 0.9d (or later) runtime files to run. These files
                     should be redistributed with your software. All the files
                     which should be redistributed are included in <TT>emxrt.zip</TT>
                <li> Under OS/2, <TT>LIBPATH</TT> should be modified to add the EMX
                     DLL paths. Otherwise, programs will not run and will abort
                     with an error 'Cannot find EMX.dll'.
                <li> The default heap size is 256 Kbytes.
                     Automatic growing of the heap is supported.
                <li> Stack can grow up to 256 Kbytes by default. This can be changed by
                     the user or developper using the <TT>emxstack</TT> or <TT>emxbind</TT>
                     utilities. 
            </ul>
        
        <p>


        <li><a name=os2-debugging></a>
            <h3>Debugging</h3>

            <p>The GNU debugger v4.16 (EMX port) has been tested (including
            its PM add-on, pmgdb.exe) and generally works as it should.
            Because the GNU debugger is C oriented, some pascal types
            might not be represented correctly.
        
        <p>

        <li><a name=os2-dll></a>
            <h3> Dynamic libraries </h3>

            <p>
            Even though this operating system permits the creation and usage of
            shared libraries (also called dynamic link libraries), the compiler
            currently only permits importing routines from dynamic libraries (creation of
            dynamic libraries is unsupported).
            

        
        
        <li><a name=os2-profile></a>
            <h3>Profiling</h3>
            
            <p>Profiling is currently not supported for this platform. 
        


        <li><a name=os2-dos></a>
            <h3>Using DOS generated applications under OS/2</h3>

            <p>It has been reported that some DOS (GO32V2) applications
            (including the DOS compiler itself) generated by the compiler fail on
            some OS/2 installations. This is due to problems in the OS/2 DPMI server.
            

            <p>You should use native OS/2 applications under OS/2 (including the native OS/2
            compiler) or try installing a new OS/2 fixpack to see if it solves the
            problem. 
        

        <li><a name="instal106os2"></a><h3>INSTALL.EXE of version 1.0.6 or below fails with an unknown error (-1) under OS/2</h3>
            <p>
            or
            
            <h3>INSTALL.EXE of version 1.0.6 or above complains about missing TZ variable under OS/2</h3>

            <p>
            You are most probably using an older version of OS/2 (like OS/2 Warp 3.0)
            and don't have TZ variable in your environment. The easiest solution is to add
            "SET TZ=..." (e.g. "SET TZ=CET-1CEST,3,-1,0,7200,10,-1,0,10800,3600" for most
            of western and central Europe) line to your CONFIG.SYS, and restart OS/2.
            The proper setting for you can be found e.g. using the TZCALC tool from
            <a href="http://hobbes.nmsu.edu/pub/os2/apps/internet/time/time868f.zip">TIME868</a>
            package.
            
        
        <li><a name="os2-fp"></a><h3>OS/2 compiler not working after upgrading to 1.9.6 or newer</h3>
            <p>An updated version of GNU assembler (as.exe) is packaged with release 1.9.6 (newer version
            was necessary to get support for features of modern CPUs). This version of the GNU tool
            was created with Innotek port of GNU C and relies on its libc. This results in higher
            limitations regarding supported configurations, because this libc needs recent version
            of OS/2 Unicode support libraries (LIBUNI.DLL and UCONV.DLL) not available in base OS/2 Warp 3.0
            and OS/2 Warp 4.0. The updated versions were distributed by IBM in corrective packages (fixpaks)
            - see e.g. <a href="http://www.warpupdates.mynetcologne.de/english/basesystem.html">WarpUpdates site</a>
            for information about OS/2 fixpaks and links for downloading them.
            This issue isn't valid for WarpServer for e-Business, MCP and eComStation - these already have
            the correct version.
            
        
   </OL>

   <h2><li> BeOS related information </h2>
	<b>The BeOS port is current no longer maintained</b>
   <OL>


          <li><a name=beos-release></a>
               <h3>Releasing software generated by the BeOS compiler</h3>

                <p> Software generated for the BeOS target will only work
                on the intel based version of BeOS. 

                <ul>
                    <li> The target system must have at least BeOS v4.0 or later
                       (BeOS 5.1d 'Dano' is <em>not</em> supported) 
                    <li> The default heap size is 256 Kbytes.
                         Automatic growing of the heap is supported
                    <li> Stack size is set to 256 Kbytes. This cannot be changed 
               </ul>
           
           <p>


        <li><a name=beos-debugging></a>
            <h3>Debugging</h3>

            <p>
            This operating system uses DWARF debugging information, and Free Pascal
            does not support emitting DWARF debugging information. It is currently
            impossible to debug applications under BeOS
            

        
        <p>

        <li><a name=beos-dll></a>
            <h3> Dynamic libraries </h3>

            <p>
            Even though this operating system permits the creation and usage of
            shared libraries (also called dynamic link libraries), the compiler
            currently only permits importing routines from dynamic libraries (creation of
            dynamic libraries is unsupported).
            

        
        
        <li><a name=beos-profile></a>
            <h3>Profiling</h3>
            
            <p>Profiling is currently not supported for this platform. 
        
        
        
          <li><a name=beos-linking></a>
               <h3>BeOS Linking problems</h3>

                <p>It has been reported that certain versions of the linker
                that shipped with some versions of BeOS are broken. If you get 
                an error when linking fpc applications, try updating your version 
                of ld from the following
                <a href="http://open-beos.sourceforge.net/dev.php">site.</a>
                

           
           <p>
        
        


   </OL>

   <h2><li> Amiga related information </h2>
   <OL>
         <li><a name=amiga-release></a>
               <h3>Releasing software generated by the Amiga compiler</h3>

                <ul>
                    <li> The target system must have AmigaOS v2.04 or higher 
                    <li> The default heap size is 128 Kbytes.
                         Automatic growing of the heap is supported. 
                    <li> Stack size is not set by the compiler, but by the <TT>stack</TT>
                         command on the CLI. Because of this, and because default
                         stack sizes for this target are small, it is recommended
                         to always compile software with stack checking enabled.
                    <li> By default, the compiler generates code for the 68020+
                         processor. The code generated will not work on 68000
                         and 68010 systems unless the <TT>-O0</TT> compiler switch
                         is used, and there is no runtime checking. It is up
                         to you to implement CPU verification at program startup. The
                         standard runtime libraries have been compiled for the
                         68000 target, and should not cause any problems. 
                    <li> All floating point operations are simulated,
                         and use the <TT>single</TT> floating point type.
                         You will need to recompile all standard runtime
                         libraries and your application, with the software floating point
                         option off, if you wish to use hardware floating point.
               </ul>
         
         <p>

        <li><a name=amiga-debugging></a>
            <h3>Debugging</h3>

            <p> Source level debugging is not supported for the Amiga target. Assembler
            target debugging is possible though, using the excellent <TT>Barfly</TT>
            debugger.

        
        <p>

        <li><a name=amiga-dll></a>
            <h3> Dynamic libraries </h3>

            <p>
            Even though this operating system permits the creation and usage of
            shared libraries (also called dynamic link libraries), the compiler
            does not support either the importing or creation of shared libraries.
            Importing must be done manually in assembler.
            

        
        
        <li><a name=amiga-profile></a>
            <h3>Profiling</h3>
            
            <p>Profiling is currently not supported for this platform. 
        
        

   </OL>

   <h2><li> PalmOS related information </h2>
   <OL>

          <li><a name=palmos-release></a>
            <h3>Releasing software generated by the PalmOS compiler</h3>

            <ul>
            </ul>

          
          <p>

        <li><a name=palmos-debugging></a>
            <h3>Debugging</h3>

        <li><a name=palmos-dll></a>
            <h3> Dynamic libraries </h3>

            <p>
        <p>
   </OL>



</OL>
</html>
