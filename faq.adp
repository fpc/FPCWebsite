<master>
<property name="title"><trn key="website.faq.title" locale="en_US">Free Pascal - Knowledge base</trn></property>
<property name="entry">faq</property>
<property name="header"><trn key="website.FAQ_kbase" locale="en_US">FAQ / Knowledge base</trn></property>

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
    <li><a href="#HOMEWORK"><trn key="website.q_Homework" locale="en_US">I have to write a program for homework. Can you help?</trn></a>
    <li><a href="#windowsapp"><trn key="website.q_Real_windows_application" locale="en_US">How do I make a real Windows application with windows and menu bars?</trn></a>
    <li><a href="#game"><trn key="website.q_Game_in_FPC" locale="en_US">How do I make a game with Free Pascal? Can I make a game like Doom 3?</trn></a>
    <li><a href="#ErrorPos"><trn key="website.q_Crash_analysis" locale="en_US">Getting more information when an application crashes</trn></a>
    <li><a href="#general-doesntfindfiles"><trn key="website.q_Compiler_skips_files" locale="en_US">Compiler seems to skip files in directories -Fu points to</trn></a>
    <li><a href="#binariesbig"><trn key="website.q_Big_binaries" locale="en_US">Why are the generated binaries so big?</trn></a>
    <li><a href="#runerror"><trn key="website.q_Runtime_errors" locale="en_US">Runtime errors</trn></a>
    <li><a href="#stdunits"><trn key="website.q_Standard_units" locale="en_US">Standard units</trn></a>
    <li><a href="#debugsmart"><trn key="website.q_Debug_smartlinked" locale="en_US">Debugging smartlinked code does not fully work</trn></a>
<!--
    <li><a href="#debugshared"><trn key="website.q_Debugging_DLL" locale="en_US">Debugging shared library (dynamic linked library) code does not fully work</trn></a>
-->
    <li><a href="#cantfindunit"><trn key="website.q_Cannot_compile_with_bin_unit" locale="en_US">Cannot compile a program using a binary-only version of a unit</trn></a>
    <li><a href='#isoxpascal'><trn key="website.q_isoxpascal" locale="en_US">Will you support ISO Extended Pascal?</trn></a>
    <li><a href="#dotnet"><trn key="website.q_What_about_dotNET" locale="en_US">What about .NET?</trn></a>
   </OL>
   <li><trn key="website.Pascal_lang_rel_inf" locale="en_US">Pascal language related information</trn>
   <OL>
    <li><a href="#PortingCPU"><trn key="website.q_porting_CPU" locale="en_US">Considerations in porting code to other processors</trn></a>
    <li><a href="#PortingOS"><trn key="website.q_porting_OS" locale="en_US">Considerations in porting code to other operating systems</trn></a>
    <li><a href="#OOP"><trn key="website.q_OOP" locale="en_US">Compiling Delphi code using Free Pascal</trn></a>
    <li><a href="#HowcanIbuildaunit"><trn key="website.q_build_unit" locale="en_US">Building a unit</trn></a>
    <li><a href="#CompileSystemUnit"><trn key="website.q_compiling_systemunit" locale="en_US">Compiling the system unit</trn></a>
    <li><a href="#Howdoesprocedureoverloadingwork"><trn key="website.q_how_does_proc_overloading_work" locale="en_US">How does function overloading work?</trn></a>
    <li><a href="#HowToCallCFuncuntions"><trn key="website.q_calling_C_functions" locale="en_US">Calling C functions</trn></a>
    <li><a href="#IntegratedAssemblerSyntax"><trn key="website.q_integrated_assembler_syntax" locale="en_US">Integrated Assembler syntax</trn></a>
    <li><a href="#systemnotfound"><trn key="website.q_system_not_found" locale="en_US">Unit system not found errors</trn></a>
    <li><a href="#extensionselect"><trn key="website.q_extenstion" locale="en_US">There is a new language extension that would be really useful. Will you include it?</trn></a>
    </OL>
   <li><trn key="website.RTL_rel_inf" locale="en_US">Runtime library related information</trn>
   <OL>
<!--
    <li><a href="#HowToUseGraph"><trn key="website.q_using_graph" locale="en_US">Using the graph unit with Free Pascal</trn></a>
-->
    <li><a href="#WrongColors"><trn key="website.q_wrong_colours_using_graph" locale="en_US">Why do I get wrong colors when using the graph unit?</trn></a>
    <li><a href="#fileshare"><trn key="website.q_filesharing" locale="en_US">File sharing and file locks</trn></a>
    <li><a href="#filemode"><trn key="website.q_File_denied_errors" locale="en_US">File denied errors when opening files with reset</trn></a>
   </OL>
   <li><trn key="website.Windows_rel_inf" locale="en_US">Windows-related information</trn>
   <OL>
    <li><a href="#win-release"><trn key="website.q_win_release" locale="en_US">Releasing software generated by the windows compiler</trn></a>
    <li><a href="#win-debugging"><trn key="website.q_win_debugging" locale="en_US">Debugging</trn></a>
    <li><a href="#win-dll"><trn key="website.q_win_dll" locale="en_US">Dynamic libraries</trn></a>
    <li><a href="#win-profile"><trn key="website.q_win_profile" locale="en_US">Profiling</trn></a>
    <li><a href="#win-graph"><trn key="website.q_win_graph" locale="en_US">Graph and problems with keyboard, mouse and "dummy dos windows"</trn></a>
    <li><a href="#win-cygwin"><trn key="website.q_win_cygwin" locale="en_US">Cygwin binary directory in your path sometimes causes builds to fail</trn></a>
    <li><a href="#win95-fpc"><trn key="website.q_win95_fpc" locale="en_US">Using the DOS compiler under Windows 95</trn></a>
<!--
    <li><a href="#win-os2"><trn key="website.q_win_os2" locale="en_US">Using OS/2 generated applications under Windows</trn></a>
-->
    <li><a href="#win-dos"><trn key="website.q_win_dos" locale="en_US">Using DOS generated applications under windows</trn></a>
    <li><a href="#win-ide-mouse"><trn key="website.q_win_ide_mouse" locale="en_US">The mouse cursor does not respond in the Windows IDE</trn></a>
  </OL>
   <li><trn key="website.UNIX_rel_inf" locale="en_US">UNIX-related information</trn>
   <OL>
    <li><a href="#unix-release"><trn key="website.faq.unix.release" locale="en_US">Releasing software generated by the UNIX compilers</trn></a>
    <li><a href="#unix-debugging"><trn key="website.faq.unix.debugging" locale="en_US">Debugging</trn></a>
    <li><a href="#unix-dll"><trn key="website.faq.unix.dll" locale="en_US">Dynamic libraries</trn></a>
    <li><a href="#unix-profile"><trn key="website.faq.unix.profile" locale="en_US">Profiling</trn></a>
    <li><a href="#libci386"><trn key="website.faq.libci386" locale="en_US">Libc is missing on platforms other than i386</trn></a>
    <li><a href="#vgamissing"><trn key="website.faq.vgamissing" locale="en_US">Why can't the linker find "vga"?</trn></a>
    <li><a href="#unix-asldmissing"><trn key="website.faq.unix.asldmissing" locale="en_US">Compiler indicates missing as and ld</trn></a>
    <li><a href="#unix-ld219"><trn key="website.faq.unix.ld219" locale="en_US">link.res syntax error, or &quot;did you forget -T?&quot;</trn></a>
   </OL>
   <li><trn key="website.OS2_rel_inf" locale="en_US">OS/2-related information</trn>
   <OL>
    <li><a href="#os2-release"><trn key="website.faq.os2.release" locale="en_US">Releasing software generated by the OS/2 compiler</trn></a>
    <li><a href="#os2-debugging"><trn key="website.faq.os2.debugging" locale="en_US">Debugging</trn></a>
    <li><a href="#os2-dll"><trn key="website.faq.os2.dll" locale="en_US">Dynamic libraries</trn></a>
    <li><a href="#os2-profile"><trn key="website.faq.os2.profile" locale="en_US">Profiling</trn></a>
    <li><a href="#os2-dos"><trn key="website.faq.os2.dos" locale="en_US">Using DOS generated applications under OS/2</trn></a>
    <li><a href="#instal106os2"><trn key="website.faq.os2.instal106os2a" locale="en_US">INSTALL.EXE of version 1.0.6 or below returns an unknown error (-1) under OS/2</trn></a>
    <br><trn key="website.faq.os2.instal106os2or" locale="en_US">or</trn><br>
    <a href="#instal106os2"><trn key="website.faq.os2.instal106os2" locale="en_US">INSTALL.EXE of version 1.0.6 or above complains about missing TZ variable under OS/2</trn></a>
    <li><a href="#os2-fp"><trn key="website.faq.os2.fp" locale="en_US">OS/2 compiler not working after upgrading to 1.9.6 or newer</trn></a>
    <li><a href="#os2-as-failing"><trn key="website.faq.os2.failing" locale="en_US">Compilation under OS/2 fails with error "Can't call the assembler"</trn></a>
   </OL>
   <li><trn key="website.DOS_rel_inf" locale="en_US">DOS-related information</trn>
   <OL>
    <li><a href="#dos-release"><trn key="website.q_dos_release" locale="en_US">Releasing software generated by the DOS compiler</trn></a>
    <li><a href="#dos-debugging"><trn key="website.q_debugging" locale="en_US">Debugging</trn></a>
    <li><a href="#dos-dll"><trn key="website.q_dynamic_libraries" locale="en_US">Dynamic libraries</trn></a>
    <li><a href="#dos-profile"><trn key="website.q_profiling" locale="en_US">Profiling</trn></a>
    <li><a href="#FPwithoutfpu"><trn key="website.q_fpwithoutfpu" locale="en_US">Running Free Pascal without a math coprocessor</trn></a>
    <li><a href="#fp386"><trn key="website.q_app_crash_on_386" locale="en_US">Applications created with Free Pascal crash on 80386 systems</trn></a>
    <li><a href="#nomousegraph"><trn key="website.q_no_mouse_graph_mode" locale="en_US">The mouse cursor is not visible in graphics screens</trn></a>
    <li><a href="#accessioports"><trn key="website.q_accessing_io_ports" locale="en_US">Accessing I/O ports</trn></a>
    <li><a href="#HowToAccessDosMemory"><trn key="website.q_accessing_dosmem" locale="en_US">Accessing DOS memory / Doing graphics programming</trn></a>
    <li><a href="#dos-stack"><trn key="website.q_change_dos_stacksize" locale="en_US">Changing the default stack size</trn></a>
<!--
    <li><a href="#dos-os2"><trn key="website.q_os2_apps_under_dos" locale="en_US">Using OS/2 generated applications under DOS</trn></a>
-->
   </OL>
<!--
   <li><trn key="website.BeOS_related_information" locale="en_US">BeOS-related information</trn>
   <OL>
    <li><a href="#beos-release"><trn key="website.faq.beos.release" locale="en_US">Releasing software generated by the BeOS compiler</trn></a>
    <li><a href="#beos-debugging"><trn key="website.faq.beos.debugging" locale="en_US">Debugging</trn></a>
    <li><a href="#beos-dll"><trn key="website.faq.beos.dll" locale="en_US">Dynamic libraries</trn></a>
    <li><a href="#beos-profile"><trn key="website.faq.beos.profile" locale="en_US">Profiling</trn></a>
    <li><a href="#beos-linking"><trn key="website.faq.beos.linking" locale="en_US">BeOS linking problems</trn></a>
   </OL>
-->
<!--
   <li><trn key="website.Amiga_tel_inf" locale="en_US">Amiga-related information</trn>
   <OL>
    <li><a href="#amiga-release"><trn key="website.faq.amiga.release" locale="en_US">Releasing software generated by the Amiga compiler</trn></a>
    <li><a href="#amiga-debugging"><trn key="website.faq.amiga.debugging" locale="en_US">Debugging</trn></a>
    <li><a href="#amiga-dll"><trn key="website.faq.amiga.dll" locale="en_US">Dynamic libraries</trn></a>
    <li><a href="#amiga-profile"><trn key="website.faq.amiga.linking" locale="en_US">Profiling</trn></a>
   </OL>
   <li><trn key="website.PalmOS_rel_inf" locale="en_US">PalmOS-related information</trn>
   <OL>
    <li><a href="#palmos-release"><trn key="website.faq.palmos.release" locale="en_US">Releasing software generated by the PalmOS compiler</trn></a>
    <li><a href="#palmos-debugging"><trn key="website.faq.palmos.release" locale="en_US">Debugging</trn></a>
    <li><a href="#palmos-dll"><trn key="website.faq.palmos.release" locale="en_US">Dynamic libraries</trn></a>
   </OL>
-->
</OL>

 <OL>
   <li><h2><trn key="website.General_Information" locale="en_US">General information</trn></h2>
   <OL>
        <li><a name='WhatIsFP'></a>
          <h3><trn key="website.q_What_is_FPC" locale="en_US">What is Free Pascal (FPC)?</trn></h3>
          <trn key="website.a_What_is_FPC" locale="en_US">
            <p>Originally named FPK-Pascal, the Free Pascal compiler is a 16,32
            and 64 bit Turbo Pascal and Delphi compatible Pascal compiler for
            Linux, Windows, OS/2, FreeBSD, Mac OS X, DOS and
            several other platforms (the number of supported targets grows
            all the time, although not all of them are on the same level as
            the main ones).

            <p>The Free Pascal compiler is available for several
            architectures: x86 (16,32 and 64 bit), ARM, PowerPC (32 and 64 bit),
            SPARC (v8, v9), Java Virtual Machine (under development) and MIPS (little and big endian, under development).
            An older version (the 1.0 series) and current development versions also supported m68k.

            <p>The compiler is written in Pascal and is able to compile its
            own sources. The source files are distributed under the GPLv2+ and included.

            <p>Short history:
            <ul>
              <li>06/1993: project start
              <li>10/1993: first small programs work
              <li>03/1995: the compiler compiles its own sources
              <li>03/1996: released on the Internet
              <li>07/2000: 1.0 released
              <li>12/2000: 1.0.4 released
              <li>04/2002: 1.0.6 released
              <li>07/2003: 1.0.10 released
              <li>05/2005: 2.0.0 released
              <li>12/2005: 2.0.2 released
              <li>08/2006: 2.0.4 released
              <li>09/2007: 2.2.0 released
              <li>08/2008: 2.2.2 released
              <li>04/2009: 2.2.4 released
	      <li>12/2009: 2.4.0 released
	      <li>11/2010: 2.4.2 released
	      <li>05/2011: 2.4.4 released
	      <li>01/2012: 2.6.0 released
	      <li>02/2013: 2.6.2 released
	      <li>03/2014: 2.6.4 released
	      <li>11/2015: 3.0.0 released
              <li>02/2017: 3.0.2 released
              <li>11/2017: 3.0.4 released
            </ul>
          </trn>

        <li><a name='versions'></a>
          <h3><trn key="website.q_What_versions_exist" locale="en_US">Which versions exist, and which one should I use?</trn></h3>
          <trn key="website.a_What_versions_exist" locale="en_US">
            <p>The latest official version is 3.0.4, the third release in the 3.0.x series.
            New development is performed in the 3.1.x series, which will eventually
            be released as 3.2.0 or 4.0.0, depending on milestones achieved.

            <h4>Historic versions</h4>

            <p>FPC's version numbering changed a few times over the years. Pre-1.0 versioning information has been
			moved to the <a href="http://wiki.freepascal.org/1.0_versioning">Wiki 1.0 versioning article.</a>

            <h4>Modern versioning</h4>

            <p>With the release of 1.0, the version numbering was
            slightly changed to a system resembling one used for the Linux
            kernels.

            <p>
            <ul>
             <li>Releases that only fix bugs in version 1.0 are numbered 1.0.x.
             <li>Post-1.0 development (the so called snapshots) have version number
              1.1.x.
             <li>Eventually the 1.1.x versions, when stabilized, were released
              as the 2.0.x series, preceded by betas marked as 1.9.x. Fixes to the
              2.0 release were numbered 2.0.x, fixes to the 2.2 release 2.2.x, fixes to the 2.4 release as 2.4.x etc</li>
             <li>The new development version after the 2.4.0 release was numbered 2.5.x
              and so on.
		<li>Repackagings that affect sources are indicated with a single letter as
			suffix (e.g. 2.0.4a). This is usually the case for platforms that weren't part of the original release round.
             <li>The stable branch (currently, fixes_3_0, previously fixes_2_6) always has an odd last number (2.6.1, 2.6.3 and 3.0.1).
                 Compilers with such versions are snapshots, and e.g. a snapshot with 2.6.1 can
 		 be anywhere between 2.6.0 and the moment 2.6.2 branched off (Jan 2013). Likewise,
		 after the release of 2.6.2 the fixes_2_6 branch identified itself as version 2.6.3 till 2.6.4 branched off (typically
 		 two months before its release).  After 2.6.4, the stable branch's number was updated to 2.6.5,
		 after 3.0.2 to 3.0.3 etc.
            </ul>
            <p>

            <p>Normally, you would want to use a release. Releases are considered
            stable, and easier to support (the bugs, quirks and unintended
            "features" are well known after a period of time, and workarounds
            exist).

            <p>Development snapshots (which are generated daily) reflect the current
            status of the compiler. Development versions probably have new features
            and larger bugs fixed since the last release, but might have some
            temporary stability drawbacks (which are usually fixed by the next day).

            <p>Development snapshots are often quite useful for certain categories of
            users. Ask on the mailing lists if it is worth the trouble in your case if
            you are not sure.

            <p>Snapshots of the stable branch (fixes_3_0) are meant to test release engineering. They are
		mainly interesting in the months before a release to extensively
		test the branch from which the release is created.

            <p>We advise all users to upgrade to the newest version for their
            target (preferably the new stable 3.0.x series).

            <p> A graphical timeline of the FPC project plus its near future would
            be:
            <img src="pic/timeline.png">
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
            <DD>Currently, Free Pascal is at version 3.0.4 (November 2017). GNU Pascal is stopped
            version 2.1 (from 2002, which can be built with several different GCC's as backend;
            their Mac OS X version is an exception though, as it follows the GCC version number).</DD>
            <DT><b>Tracking:</b>
            <DD>Between releases, development versions of FPC are available through daily snapshots
	        and the source via SVN. GPC issues a set of patches to the last version a few times
            a year, and there are regular snapshot for OS X and Windows, made by users.
            <DT><b>Operating systems:</b>
            <DD>Free Pascal runs on a large number of platforms,
            inlcuding DOS (16/32-bit), Win32 (no UNIX porting layer needed), Linux, FreeBSD,
            NetBSD, OS/2, BeOS, Mac OS X, on the following architectures:
            x86 (32 and 64 bit),
            SPARC, PowerPC (32 and 64 bit), ARM, Java Virtual Machine (under development), and
            MIPS (under development).

            GNU Pascal runs basically on any system that supported by GCC, and for which the build process was verified.
            <DT><b>Bootstrapping:</b>
            <DD>FPC requires a suitable set of binutils (AS, AR, LD) on some platforms, GNU make and a command line bootstrap compiler. New architectures/OSes are cross-compiled.
	        GPC bootstraps via a suitable version of GCC, and requires a full set of binutils, flex, bison, gmake, a POSIX shell and libtool
            <DT><b>Sources:</b>
            <DD>Free Pascal is entirely written in Pascal, while GNU Pascal is written in C (it's an adaptation of the GNU
            C compiler)
            <DT><b>Language:</b>
            <DD>Free Pascal supports the Borland Pascal dialect,
            implements the Delphi Object Pascal language, Objective-Pascal and has some support for ISO 7185 Pascal and Mac Pascal extensions.
            GNU Pascal supports ISO 7185, ISO 10206 and (most of) Borland Pascal 7.0
            <DT><b>Extensions:</b>
            <DD>Free Pascal implements method, function and operator overloading (later Delphi versions have also added these, so strictly they are not extensions anymore)
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
            library (RTL) come under a modified Library GNU Public License (LGPL).
            This license does not impose any kind of license on the created applications. It is therefore possible to create closed source
            or proprietary software using the Free Pascal Compiler.

            <p>The following exception has been added to the LGPL variant
               that applies to the FPC RTL:<p><I> As a special
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

            <p>Please note that you still have to comply to the LGPL as far as sources of the runtime library itself are concerned. This, for example,
            requires you to provide the source code of the runtime library if a recipient of your application asks for it. If you want
            to write proprietary closed source software, please comply with the following terms:
            <ul>
              <li>Most people can satisfy the source code requirement by mentioning
              that the RTL source code can be downloaded at the Free Pascal
              web site: if you did not modify the rtl this is considered adequate to
              satisfy the LGPL requirement of providing source code.
              <li>If you made modifications to the runtime library, you cannot keep them
              for yourself, you must make them available if requested by recipients of your application.
              <li>Distribute the modified LGPL license with your product, indicating to which parts of your application it applies (the FPC RTL).
            </ul>

            <p> The compiler source code, on the other hand, comes under
            the GNU General Public License, which means that the compiler
            source can only be used in software projects that are distributed
            under a compatible license (or that are not distributed at all).
          </trn>

        <li><a name='WhereToGetFP'></a>
          <h3><trn key="website.q_Getting_the_compiler" locale="en_US">Getting the compiler</trn></h3>
          <trn key="website.a_Getting_the_compiler" locale="en_US">
            <p>The latest official stable Free Pascal release is available for download
            from all <a href="@maindir@download@x@">official mirrors</a>
          </trn>

        <li><a name='general-install'></a>
           <h3><trn key="website.q_Installation_hints" locale="en_US">Free Pascal installation hints</trn></h3>
           <trn key="website.a_Installation_hints" locale="en_US">
             <ul>
               <li> Do not install the compiler in a directory that has spaces
                    in its name, since some of the compiler tools do not like these
             </ul>
           </trn>


        <li><a name='ftpproblems'></a>
          <h3><trn key="website.q_Why_username_password_for_download" locale="en_US">Why do i have to supply a user name and password to get Free Pascal ?</trn></h3>

          <trn key="website.a_Why_username_password_for_download" locale="en_US">
            <p> You are trying to login to an ftp site. You have to use the login name
            &quot;anonymous&quot; and your e-mail address as your password.
          </trn>


        <li><a name='general-connectftp'></a>
          <h3><trn key="website.q_Access_denies_while_download" locale="en_US">Access denied error when connecting to the Free Pascal FTP site</trn></h3>

          <trn key="website.a_Access_denies_while_download" locale="en_US">
            <p>The Free Pascal main ftp site can only accept a maximum number of
            simultaneous connections. If this error occurs, it is because
            this limit has been reached. The solution is either to wait and
            retry later, or better still use one of the Free Pascal mirror sites.
          </trn>


        <li><a name='snapshot'></a>
          <h3><trn key="website.q_Wanna_new_version_now" locale="en_US">I want a new version NOW</trn></h3>

            <trn key="website.faq.development.snapshot" locale="en_US">
            <p>In the time between the release of new official versions, you can
            have a look at and test developer versions (so-called "snapshots"). Be
            warned though: this is work in progress, so in addition to old bugs
            fixed and new features added, this may also contain new bugs.

            <p>Snapshots are generated automatically each night from the current
            source at that moment. Sometimes this may fail due to bigger changes not
            yet fully implemented. If your version does not work, try again one or
            two days later.

            <p>The latest snapshot can always be downloaded from the <A
            href="@maindir@develop@x@#snapshot">development</a>
            web page.
          </trn>


        <li><a name='installsnap'></a>
          <h3><trn key="website.q_Installing_snapshot" locale="en_US">Installing a snapshot</trn></h3>

          <trn key="website.a_Installing_snapshot" locale="en_US">
            <p>To install a snapshot, extract the zip archive into the existing
            program directory of the last official version of Free Pascal (after
            making a backup of the original, of course). You can also extract it into
            an empty directory and then move the files to the program directory,
            overwriting existing files.
          </trn>


        <li><a name='HOMEWORK'></a>
          <h3><trn key="website.q_Homework" locale="en_US">I have to write a program for homework. Can you help?</trn></h3>

          <trn key="website.a_Homework" locale="en_US">
            <p>No. Please, don't send us mail about homework, we are no teachers.
            The Free Pascal development team tries to give good support for the Free
            Pascal compiler and are trying to always reply to emails. If we get
            emails like this, this becomes harder and harder.
          </trn>

        <li><a name="windowsapp"></a>
          <h3><trn key="website.q_Real_windows_application" locale="en_US">How do I make a real Windows application with windows and menu bars?</trn></h3>

          <trn key="website.a_Real_windows_application" locale="en_US">
            The easiest way is to <a href='http://www.lazarus.freepascal.org'>download Lazarus</a>.
            It won't be just a Windows application, it will also work under Linux, FreeBSD and
            Mac OS X.
          </trn>

        <li><a name="game"></a>
          <h3><trn key="website.q_Game_in_FPC" locale="en_US">How do I make a game with Free Pascal? Can I make a game like Doom 3?</trn></h3>
          <trn key="website.a_Game_in_FPC" locale="en_US">
            Yes, you can make games with Free Pascal and if you are really good you can make
            a game like Doom 3. Making games is difficult, you need to be an experienced
            programmer to make them. The web site <a href='http://www.pascalgamedevelopment.com'>
            www.pascalgamedevelopment.com</a> is a community of people who program games in Free
            Pascal and Delphi.
            <p>
            If you want a start, please start to study <a href='http://sourceforge.net/projects/jedi-sdl/'>JEDI-SDL</a>
            or <a href='http://ptcpas.sourceforge.net'>PTCPas</a>. Also you can try to study an existing game, for example
            <a href='http://www.lugato.net/thesheepkiller/'>The Sheep Killer</a> is a very simple game and it should not be
            very hard to understand its code.
          </trn>

        <li><a name='ErrorPos'></a>
          <h3><trn key="website.q_Crash_analysis" locale="en_US">Getting more information when an application crashes</trn></h3>
          <trn key="website.a_Crash_analysis" locale="en_US">
            <OL>
                <li>The easiest possibility is to recompile your program with -gl
                debugging option. This way unit LineInfo is automatically linked in,
                and the printout after a program crash then contains source line
                numbers in addition to addresses of the crash. To see runtime library (RTL)
                functions in the backtrace with their real name, you have to recompile
                the RTL with -gl too.
                <li>For more comprehensive checking, compile the
                program with debugging information (use the -g command line option)
                <li>Load the program in the debugger <PRE>gdb --directory=&lt;src dirs&gt; myprog.exe</PRE>Notes:
                <ul>
                    <li>Under UNIX systems (Linux, the BSD's), don't add the ".exe" after myprog
                    <li>"<TT>src dirs</TT>" is a list of directories containing the
                    source code files of myprog and the units it uses seperated by
                    semi-colons (&quot;;&quot;) on Windows, or colons (&quot;:&quot;) on UNIX platforms. The current directory is automatically included.
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
                <li>If you then type "<TT>bt</TT>" (BackTrace), the addreses on the
                call stack will be shown (the addresses of the procedures which were
                called before the program got to the current address). You can see
                which source code lines these present using the command
                <PRE>info line *&lt;address&gt;</PRE>For example:<PRE>info line *0x05bd8</PRE>
            </OL>
          </trn>


        <li><a name='general-doesntfindfiles'></a>
          <h3><trn key="website.q_Compiler_skips_files" locale="en_US">Compiler seems to skip files in directories that -Fu points to</trn></h3>
          <trn key="website.a_Compiler_skips_files" locale="en_US">
            <p>This sometimes happens with installation/compilation scripts if the
            copying command doesn't preserve dates. The object files get older than
            the PPU file, and the compiler tries to recompile them. A simple <TT>touch</TT>
            will solve it.
            <p>
	        Also note that FPC, contrary to Turbo Pascal keeps track of include files. Modified
            include files or duplicate names can trigger an attempt to recompile.
          </trn>


        <li><a name='binariesbig'></a>
          <h3><trn key="website.q_Big_binaries" locale="en_US">Why are the generated binaries so big?</trn></h3>
          <trn key="website.a_Big_binaries" locale="en_US">
            There are several reasons and remedies for this:

            <OL>
                <li>
                    You can create smartlinked applications. To turn on
                    the generation of smartlinkable units, use the -CX command
                    line option when compiling your units. To turn on
                    the linking of previously generated smarlinkable units, use the -XX
                    command line option when compiling a program.
                <li>Normally, all symbol information is included in the resulting
                    program (for easier debugging). You can remove this by using the -Xs
                    command line option when compiling your program (it will not do
                    anything when compiling units)
                <li>Turn on optimisations, both for supplied packages (RTL, FV, FCL)
                    and for your own code, this will also decrease the code size.
           </OL>

            Generally Free Pascal generates smaller binaries than modern competing compilers,
            however, it does not hide code in large dynamic libraries. Free Pascal generates
            larger binaries than compilers from long ago do. Large framework libraries result
            in larger executables.

			See also the <a href="http://wiki.freepascal.org/Size_Matters">Size Matters wiki entry</a>.
          </trn>



        <li><a name='runerror'></a>
          <h3><trn key="website.q_Runtime_errors" locale="en_US">Runtime errors</trn></h3>
          <trn key="website.a_Runtime_errors" locale="en_US">
            <p> When an application generated by FPC terminates in an abnormal way,
            it is very likely that a runtime error will be
            generated. These errors have the form :

            <PRE>
            Runtime error 201 at $00010F86
              $00010F86  main,  line 7 of testr.pas
              $0000206D
            </PRE>

            <p> The 201 in this case indicates the runtime error
            number. The definition of the different runtime error numbers is
            described in the Free Pascal user's manual, Appendix D. The
            hexadecimal numbers represent the addresses on the call stack when the error occured.
          </trn>


        <li><a name='stdunits'></a>
          <h3><trn key="website.q_Standard_units" locale="en_US">Standard units</trn></h3>
          <trn key="website.a_Standard_units" locale="en_US">
            <p> To see the list of base units supplied with Free Pascal, and
            on which platform they are supported, consult the Free Pascal user's manual.
            There is also a short description of what each unit does in the same section
            of the manual.
          </trn>

<!--
        <li><a name='internaldocs'></a>
        <trn key="website.faq.internaldocs" locale="en_US">
           <h3>How does the compiler work internally?</h3>
           <p>A draft document describing the internals of the Free Pascal compiler is
           available <a href="ftp://ftp.freepascal.org/pub/fpc/docs/fpc-int10.zip">here</a>.
        </trn>

-->


        <li><a name='debugsmart'></a>
          <h3><trn key="website.q_Debug_smartlinked" locale="en_US">Debugging smartlinked code does not fully work</trn></h3>
          <trn key="website.a_Debug_smartlinked" locale="en_US">
            <p>Debugging smart linked code might not work correctly. This is
            due to the fact that no type information is emitted for
            smartlinked code. If this would not be done, the files
            would become enormous.

            <p> While debugging, it is not recommended to use the
            smartlinking option.
          </trn>


<!--
        <li><a name=debugshared></a>
          <h3><trn key="website.q_Debugging_DLL" locale="en_US">Debugging shared library (dynamic linked library) code does not fully work</trn></h3>

          <trn key="website.a_Debugging_DLL" locale="en_US">
            <p>Debugging shared libraries (or dynamic linked libraries) produced
              by the Free Pascal compiler is not officially supported.
          </trn>
-->



        <li><a name='cantfindunit'></a>
          <h3><trn key="website.q_Cannot_compile_with_bin_unit" locale="en_US">Cannot compile a program using a binary-only version of a unit</trn></h3>

          <trn key="website.a_Cannot_compile_with_bin_unit" locale="en_US">
            <p>
            Sometimes, even though there is a binary version of a module (unit file and object file)
            available, the compiler claims it cannot find the unit This can be caused either by an
            incompatibility in the PPU file format (which can change across
            compiler versions), or by a change in one of the units of the RTL
            that has changed in between releases.


            <p>
            To get more information, compile the code using the -vtu (show tried and used unit information)
            compiler switch, and the unit loading phase will be displayed. You might
            discover that the unit being loaded requires to be recompiled because one
            of the unit it uses has changed.


            <p>If you plan on distributing a module without the source code, the binaries
               should be compiled and made available for all versions of the compiler you
               wish to support, otherwise compilation errors are bound to occur.
          </trn>



        <li><a name='isoxpascal'></a>
          <h3><trn key="website.q_isoxpascal" locale="en_US">Will you support ISO Extended Pascal?</trn></h3>
          <trn key="website.a_isoxpascal" locale="en_US">
       FPC's primary goal is to be a Turbo Pascal and Delphi-compatible compiler, and it also
       supports a subset of the Mac-Pascal dialect and of Standard ISO Pascal. While in theory it would be possible
       to add a complete ISO Standard or Extended Pascal modes, until now no people interested in
       such functionality have stepped up to work on such features.
       <p>
       <a href="http://www.gnu-pascal.de/">GNU-Pascal</a> is however a modern compiler that can
       compile ISO Extended Pascal. If you have any need for the ISO Extended Pascal dialect, we
       recommend you to take a look at this compiler.
         </trn>


        <li><a name='dotnet'></a>
          <h3><trn key="website.q_What_about_dotNET" locale="en_US">What about .NET?</trn></h3>
          <trn key="website.a_What_about_dotNET" locale="en_US">
	   Occasionally, users ask about a FPC that supports .NET, or our
	   plans in that direction. <p>

	   Mainly the users are either interested because of .NET's
	   portability aspects (Mono is quoted over and over again), or
	   because it is supposed to be the next big thing in Windows
	   programming, and they think Windows programming will not be possible
	   in the future.<p>

           While the FPC core developpers are somewhat interested out of
	   academic curiousity (mainly because it could be a pilot for a
	   generalized backend creating bytecode) there are however several
	   problems with .NET in combination with FPC:

        <OL>
        <li>
           Pascal is a language that uses pointers, and existing codebases
	   can only be unmanaged. Unmanaged code is not portable under .NET,
	   so that already kills most possible benefits. This also means that
	   existing FPC and Delphi code won't run on .NET. There are more
	   such little language problems.</li>

	<li>FPC's libraries are not based on .NET classes and data models (and
 	   cannot be changed to do so without effectively rewriting them),
 	   moreover the libraries could only be unmanaged too, or they
	   would be incompatible</li>

 	<li>There is nothing <em>practical</em> known yet about how portable
	    an average .NET program will be. Little experiments with hello
	    world level code mean nothing, that kind of code works with
	    nearly any language. A good test would be to see existing non trivial
	    codebases run unmodified under mono, that were not designed with mono
            in mind. Just like we try to do for
	    Delphi</li>

        <li> The fact that on Windows 80% of the .NET code seems to be
 	    ASP.NET does not help either. This makes porting existing code
 	    less useful (since ASP.NET is tied to IIS), and new codebases of
 	    portable code can be set in nearly every language </li>

 	<li>Operating System dependant code would not work anymore, since
	     the Win32/64 interface is unmanaged.
	</OL> <p>

    So effectively this means that for FPC to benefit from .NET you
    would have to significantly adapt the language (thus compiler) and
    libraries, and be incompatible with the existing native sourcecode.
    Moreover
    that also means that existing apps would have to be rewritten for
    .NET, since it would take more than a simple recompile with a
    FPC/.NET compiler.<p>

    While unmanaged code has some uses (easier integration with managed
    code inside Windows), this still requires writing a code generator and
    defining interfaces and libraries. This means a <b>lot of work</b> and
    since .NET take-up is not really high, this might not be worth it. <p>

    However if a FPC user does the bulk of the work (e.g. a bytecode
    codegenerator, and maybe some base libraries) and if the work is
    suitable for inclusion in FPC (a very big if), we will of course
    include it.<p>

    Since support for <a href="http://wiki.freepascal.org/FPC_JVM">generating JVM bytecode</a> has been added to the
    compiler, such a project may be more realistic now than it has been
    in the past. Many of the caveats mentioned above still hold though:
    language compatibility is not 100% and most standard units will have
    to be reimplemented.<p>
          </trn>

   </OL>
   <li><h2><trn key="website.Pascal_lang_rel_inf" locale="en_US">Pascal language related information</trn></h2>
   <OL>

        <li><a name='PortingCPU'></a>
          <h3><trn key="website.q_porting_CPU" locale="en_US">Considerations in porting to other processors</trn></h3>

          <trn key="website.a_porting_CPU" locale="en_US">
            <p>Because the compiler supports multiple processor architectures, it
            is important to take a few precautions so that your code will execute
            correctly on all processors.
            <ul>
              <li>Limit your use of asm statements unless it is time critical code
              <li>Try not to rely on the endianness of the specific machines when performing operations depending on data layout. In particular, reading and writing binary data
              to/from files will probably require byte swaps across different endianness
              machines (swapendian is your friend in this case). Freepascal defines
              <CODE>FPC_LITTLE_ENDIAN</CODE> or <CODE>FPC_BIG_ENDIAN</CODE> to indicate the
              target endianness.
              <li>Try limiting your local variables in subroutines to 32K, as this
              is the limit of some processors. Use dynamic allocation instead.
              <li>Try limiting the size of parameters passed to subroutines to 32K,
              as this is the limit of some processors. Use const or var parameters
              where appropriate.
              <li><TT>CPU16</TT>,<TT>CPU32</TT> or <TT>CPU64</TT> is defined indicating
              whether the target is a 16,32-bit or 64-bit cpu. This can help with
              incorporating 16,32-bit and 64-bit specific code.

              <li>Use the <TT>ptruint</TT> type when declaring an ordinal that will store
              a pointer, since pointers can be either 32-bit or 64-bit depending on
              the processor and operating system. For 16-bit it is memory model dependent.
            </ul>
          </trn>

        <p>

        <li><a name='PortingOS'></a>
          <h3><trn key="website.q_porting_OS" locale="en_US">Considerations in porting code to other operating systems</trn></h3>

          <trn key="website.a_porting_OS" locale="en_US">
            <p>Because the compiler supports several different operating systems,
            is important to take a few precautions so that your code will execute
            correctly on all systems.
            <ul>
              <li>File sharing is implemented differently on different operating
              systems, so opening already opened files may fail on some operating
              systems (such as Windows). The only correct way to make sure to
              have the same file sharing behavior is to use the I/O routines
              provided by the <TT>sysutils</TT> unit.
              <li>Clean up at the end of your program, i.e. close all files on exit, and
              release all allocated heap memory, as some operating systems do not like it
              when some things are left allocated or opened.
              <li> Some operating systems limit the stack space that can be allocated,
              therefore it is important to limit subroutine nesting, and the number of
              local variables. Limiting total stack space usage at a given moment to
              at most 256 KBytes will make porting easier.
              <li> Do not hardcode paths to files, try to use relative paths
              instead
              <li> Use the following constants (defined in the system unit)
              to get information on files, line endings, and to build paths:
                  <ul>
                    <li> <TT>LineEnding</TT> : Indicates the characters which end a text line
                    <li> <TT>LFNSupport</TT> : Indicates if long filenames are supported (more than 8.3 characters)
                    <li> <TT>DirectorySeparator</TT> : The character or characters that separate path components
                    <li> <TT>DriveSeparator</TT> : The character that separates the drive specification from the rest
                           of the path
                    <li> <TT>PathSeparator</TT> : The character that separates directories in the path lists (such as the search path)
                    <li> <TT>FileNameCaseSensitive</TT> : Boolean indicating if the filenames for this system may be case-sensitive or not
                    <li> <TT>AllFilesMask</TT> : String containing a wildcard expression for all files
                  </ul>
               It is also possible to use the <TT>PathDelim</TT>, <TT>PathSep</TT> and <TT>DriveDelim</TT> constants
               defined in the <TT>sysutils</TT> unit.

            </ul>
          </trn>

        <p>

        <li><a name='OOP'></a>
          <h3><trn key="website.q_OOP" locale="en_US">Compiling Delphi code using Free Pascal</trn></h3>
          <trn key="website.a_OOP" locale="en_US">

            <p>The compiler supports Delphi-style classes. Make sure you use the -S2 or
            -Sd command line switches (see the manuals for the meaning of these switches), or add <tt>{$mode objfpc}</tt> or <tt>{$mode delphi}</tt> to your source code. For a
            list of Delphi incompatibilities also check the manual.
          </trn>

        <li><a name='HowcanIbuildaunit'></a>
          <h3><trn key="website.q_build_unit" locale="en_US">Building a unit</trn></h3>

          <trn key="website.a_build_unit" locale="en_US">
            <p>It works like in Turbo Pascal. The first keyword in the file must be
            UNIT (not case sensitive). The compiler will generate two files:
            <TT>XXX.PPU</TT> and <TT>XXX.O</TT>. The PPU file contains the interface
            information for the compiler and the O-file the machine code (an object
            file, whose precise structure depends on the assembler you used). To use
            this unit in another unit or program, you must include its name in the
            USES clause of your program.
          </trn>


        <li><a name='CompileSystemUnit'></a>
          <h3><trn key="website.q_compiling_systemunit" locale="en_US">Compiling the system unit</trn></h3>

          <trn key="website.a_compiling_systemunit" locale="en_US">
            <p>To recompile the system unit, it is recommended to have GNU make
            installed. typing 'make' in the rtl source directory will then recompile
            all RTL units including the system unit. You may choose to descend into
            the directory of your OS (e.g. rtl/linux) and do a 'make' there.
            <p>It is possible to do all this manually, but you need more detailed
            knowledge of the RTL tree structure for that.
          </trn>


        <li><a name='Howdoesprocedureoverloadingwork'></a>
          <h3><trn key="website.q_how_does_proc_overloading_work" locale="en_US">How does procedure overloading work?</trn></h3>

          <trn key="website.a_how_does_proc_overloading_work" locale="en_US">
            <p>Here is a procedure overloading example in FPC or ObjFPC mode:
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
            functions must differ in their parameters; it is not enough if only their
            return types are different.
          </trn>

        <li><a name='HowToCallCFuncuntions'></a>
          <h3><trn key="website.q_calling_C_functions" locale="en_US">Calling C functions</trn></h3>
          <trn key="website.a_calling_C_functions" locale="en_US">
            <p>
            It is possible to call functions written in C and compiled
            by the GNU C compiler (<TT>GCC</TT>). E.g., for calling the
            C function strcmp, declare the following (the <tt>cint</tt> type is
            declared in the <tt>ctypes</tt> unit):

            <PRE>function strcmp(s1 : pchar;s2 : pchar) : cint;cdecl;external;</PRE>
          </trn>



        <li><a name='IntegratedAssemblerSyntax'></a>
          <h3><trn key="website.q_integrated_assembler_syntax" locale="en_US">Integrated Assembler syntax</trn></h3>
          <trn key="website.a_integrated_assembler_syntax" locale="en_US">
            <p>The default assembler syntax (AT&amp;T style) is different from the
            one in Borland Pascal (Intel style). FPC however supports both styles.
            See the documentation for more info on how to use
            different assembler styles.

            <p>A description of the AT&amp;T syntax can be found in the GNU
            Assembler documentation.
          </trn>


        <li><a name='systemnotfound'></a>
          <h3><trn key="website.q_system_not_found" locale="en_US">Unit system not found errors</trn></h3>
          <trn key="website.a_system_not_found" locale="en_US">
            <p>System is Pascal's base unit and is implicitly used by all programs.
            This unit defines several standard procedures and structures, and must be found to
            be able to compile any Pascal program by FPC.

            <p>The location of the system and other unit files is passed on to the
            compiler by the -Fu switch. This switch can be specified on the command line, but is usually located in the fpc.cfg configuration file.

            <p>If the compiler cannot find this unit, there are three possible causes:
            <OL>
                <li>The fpc.cfg file is not in the same directory as the compiler
                executable (msdos,go32v2, win32 and OS/2) or cannot be found as
                "/etc/fpc.cfg" or ".fpc.cfg" in your homedirectory (UNIX platforms).
                <li>The fpc.cfg file does not contain the -Fu parameter, or a wrong one.
                See the <a href="http://www.stack.nl/~marcov/buildfaq.pdf">build faq (PDF)</a>, especially the chapters
                about the fpc.cfg and the directory structure.
                <li>The unit files ARE found, but are the wrong version or for a different platform. Correct
                fpc.cfg to point to the right versions or reinstall the right
                versions (this can e.g. happen if you try to use a <A
                href="#snapshot">snapshot</a>
                compiler while the -Fu statement in the used fpc.cfg still points to
                the RTL that came with the official release compiler).
            </OL>

            <p>A handy trick can be executing "fpc programname -vtu". This will show
            where the compiler is currently looking for the unit files. You
            might want to pipe this through more (Dos, OS/2, Windows) or less
            (UNIX), since it can generate more than one screen information:

            <p>
            <PRE>
                    Dos, OS/2, Windows: fpc programname -vt |more<br>
                    UNIX, Linux: fpc programname -vt |less<br>
            </PRE>
            <p>
          </trn>

        <li><a name='extensionselect'></a>
          <h3><trn key="website.q_extenstion" locale="en_US">There is a new language extension that would be really useful. Will you include it?</trn></h3>
          <TRN key="website.a_extenstion" locale="en_US">
            Occasionally somebody asks for a new language extension on the maillist,
	    and the discussions that follow have a recurring pattern. An
	    extension is quite a big deal for the FPC team, and there are
	    some criteria that are used to select if an extension is
	    &quot;worth&quot; the trouble. The most important pre-selection criteria are:
 	    <OL>
		<li>Compatibility must not be compromised in any way. Existing
			codebases on at least the Pascal level must keep
			running. This is often more difficult than most people
		        think.
		<li>The extension must have real value.  Anything that is only
			a shorter notation does not apply, unless it is
			out of compatibility with an existing Pascal/Delphi
			codebase. Practically it means it must make something
			possible that cannot be done otherwise or be a compatibility
			item
		<li>The change must fit in with the scope of the project:
			implementing a Pascal compiler with support for RAD
			and a generic DB system. This excludes features like
			inline SQL, and large garbage collected object frameworks.

	    </OL>
            Exceptions to the second rule are sometimes made for
            platform-specific reasons (e.g. interfacing to some other language or
	    OS). The first rule is often a problem, because issues are not
	    easily recognizable unless one has tried to make extensions
	    before. Best is to make a thoroughly written proposal that the
	    developers can review, including
	    <ul><li>an explanation of the feature
		<li> why it is needed, what does it make possible?
		<li> how you would implement it?
		<li> many examples of typical use, and tests for possible problem
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
	    that the FPC developers are volunteers with todo-lists that are
	    booked till the next decade. You cannot expect they will
	    drop everything from their hands and implement the feature
	    because you need it urgently, or think it is nice. If you are
	    not willing to implement it yourself, submit patches and maintain
	    it in the future,
	    chances are slim.  Remarks as &quot;this will attract a lot of
	    users because...&quot; are considered with a lot of scepticism, since
	    that applies to any new development.
	  </TRN>
   </OL>

   <li><h2><trn key="website.RTL_rel_inf" locale="en_US">Runtime library related information</trn></h2>
   <OL>

<!--
        <li><a name='HowToUseGraph'></a>
          <h3><trn key="website.q_using_graph" locale="en_US">Using the graph unit with Free Pascal</trn></h3>
          <trn key="website.a_using_graph" locale="en_US">
            <p>Since version 1.0, we  have a completely platform independent way
            of selecting resolutions and bitdepths. You are strongly encouraged to
            use it, because other ways will probably fail on one or other platform.
            See the documentation of the graph unit for more information.
          </trn>
-->

        <li><a name=WrongColors></a>
          <h3><trn key="website.q_wrong_colours_using_graph" locale="en_US">Why do I get wrong colours when using the graph unit?</trn></h3>
          <trn key="website.a_wrong_colours_using_graph" locale="en_US">
            <p>If you use <TT>detect</TT> as graphdriver, you will end up with the
            highest supported bitdepth. Since the graph unit currently only supports
            up to 16 bits per pixel modes and since this bitdepth is supported by
            virtually all graphics cards, you will most likely get a 16 bit mode.

            <p>The main problem is that in 16 (and 15, 24, 32, ...) bit modes, the
            colors are not set anymore using an index in a palette (the palettized
            way is called &quot;indexed color&quot;). In these modes, the color number itself
            determines what color you get on screen and you can not change this color.
            The color is encoded as follows (for most graphics cards on PC's at
            least):

            <ul>
                <li>15 bit color: lower 5 bits are blue intensity, next come 5 bits of
                green and then 5 bits of red. The highest bit of the word is ignored.
                <li>16 bit color: lower 5 bits are blue intensity, next come *6* bits
                of green and then 5 bits of red.
            </ul>

            <p>This means that either you have to rewrite your program so it can
            work with this so-called &quot;direct color&quot; scheme, or that you have to use
            <TT>D8BIT</TT> as graphdriver and <TT>DetectMode</TT> as graphmode. This
            will ensure that you end up with a 256 (indexed) color mode. If there
            are no 256 color modes supported, then graphresult will contain the
            value <TT>GrNotDetected</TT> after you called InitGraph and you can
            retry with graphdriver <TT>D4BIT</TT>.
          </trn>


        <li><a name='fileshare'></a>
           <h3><trn key="website.q_filesharing" locale="en_US">File sharing and file locks</trn></h3>
           <trn key="website.a_filesharing" locale="en_US">
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
<!--                <li> Amiga : An access denied error will be reported. -->
                <li> DOS / OS/2 : If the file is opened more than once by
                     the same process, no errors will occur, otherwise an
                     access denied error will be reported.
             </ul>

             <p>There are two ways to solve this problem:
             <ul>
               <li> Use specific operating system calls (such as file locking
                    on UNIX systems) to get the correct behavior.
               <li> Use the <TT>sysutils</TT> unit or the Free Component Library
                    <TT>TFileStream</TT> File I/O routines, which try
                    to simulate, as much as possible, file sharing mechanisms.
             </ul>
           </trn>

        <li><a name='filemode'></a>
          <h3><trn key="website.q_File_denied_errors" locale="en_US">File denied errors when opening files with reset</trn></h3>
          <trn key="website.a_File_denied_errors" locale="en_US">

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
          </trn>

   </OL>

   <LI><h2><trn key="website.Windows_rel_inf" locale="en_US">Windows-related information</trn></h2>
   <OL>

        <li><a name='win-release'></a>
          <h3><trn key="website.q_win_release" locale="en_US">Releasing software generated by the windows compiler</trn></h3>
          <trn key="website.a_win_release" locale="en_US">
            <p> There is no special requirements for releasing software
            for the Windows platform, it will work directly out of the box. The following
            are default for the Windows platform:

            <ul>
                <li> Stack size is unlimited
                <li> The stack checking option is not available on this platform.
            </ul>
          </trn>

        <p>

        <li><a name='win-debugging'></a>
          <h3><trn key="website.q_win_debugging" locale="en_US">Debugging</trn></h3>
          <trn key="website.a_win_debugging" locale="en_US">
            <p>The GNU debugger v6.4 and later have been tested, and generally work as
            they should. Because the GNU debugger is C oriented, some pascal types might not be
            represented as they should. It is suggested to use the text mode IDE instead of GDB,
            which is available for windows targets.
          </trn>

        <p>


        <li><a name='win-dll'></a>
          <h3><trn key="website.q_win_dll" locale="en_US">Dynamic libraries</trn></h3>
          <trn key="website.a_win_dll" locale="en_US">
            <p>Creation and use of shared libraries (also called dynamic link libraries) is
            fully supported by the compiler. Refer to the Programmer's Reference Manual for
            more information on shared library creation and use.
          </trn>



        <li><a name='win-profile'></a>
          <h3><trn key="website.q_win_profile" locale="en_US">Profiling</trn></h3>
          <trn key="website.a_win_profile" locale="en_US">
            <p>Profiling is supported using <TT>gprof</TT>.
               It requires mingw to be installed, and that <TT>fpc.cfg</TT> points to the
               correct library paths.
           </trn>



        <li><a name='win-graph'></a>
          <h3><trn key="website.q_win_graph" locale="en_US">Graph and problems with keyboard, mouse and "dummy dos windows"</trn></h3>
          <trn key="website.a_win_graph" locale="en_US">
            <p>Problem:
            <ul>
                <li>If you use the Graph unit under Win32, you cannot use the API mouse
                unit for mouse support or use the win32 Crt unit to get keyboard data.
                The reason for this is that the created window is a GUI window, and
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
          </trn>

        <li><a name='win-cygwin'></a>
          <h3><trn key="website.q_win_cygwin" locale="en_US">Cygwin binary directory in your path sometimes causes strange problems</trn></h3>
          <trn key="website.a_win_cygwin" locale="en_US">
            <p>The mingw make tool seems to look for a &quot;sh.exe&quot;, which it
		finds when the cygwin binary directory is in the path. The
		way directories are searched changes, and the build process dies.


	    <p>Solution: do not put cygwin in your global path for now, only
               add it when needed. Efforts are made to work around this.


            <p>Possible untested workaround: add mingw sh.exe to a directory before
               the cygwin binary directory in the path
          </trn>



        <li><a name='win95-fpc'></a>
          <h3><trn key="website.q_win95_fpc" locale="en_US">Using the DOS compiler under Windows 95</trn></h3>
          <trn key="website.a_win95_fpc" locale="en_US">
            <p>There is a problem with the DOS (GO32V2) compiler and Windows 95 on
            computers with less than 16 Megabytes of RAM. First set in the
            properties of the DOS box the DPMI memory size to max value. Now try
            to start a demo program in the DOS box, e.g. HELLO (starting may take
            some time). If this works you will be able to get the compiler to work
            by recompiling it with a smaller heap size, perhaps 2 or 4 MB
            (option -Chxxxx).
          </trn>

<!--
        <li><a name='win-os2'></a>
          <h3><trn key="website.q_win_os2" locale="en_US">Using OS/2 generated applications under Windows</trn></h3>
          <trn key="website.a_win_os2" locale="en_US">
            <p>Normally OS/2 applications (including the compiler) created with version 1.0.x
            and before should work under Windows, since they are based on EMX - see
            <a href="#dos-os2">note about running OS/2 applications under DOS</a> for
            more detailed information. You need the RSX extender (rsx.exe) to do this.
            There have been problems reported while trying to run EMX applications under
            NT / 2000 / XP systems though. This seems to be a problem with EMX (RSX) itself.
            It is not recommended to use Free Pascal OS/2 compiled programs under NT / 2000
            and XP, as it might produce unexpected results.
          </trn>
-->
        <li><a name='win-dos'></a>
          <h3><trn key="website.q_win_dos" locale="en_US">Using DOS generated applications under windows</trn></h3>
          <trn key="website.a_win_dos" locale="en_US">
            <p>Several problems have been found running DOS software
            under certain versions of 32-bit MS Windows (NT / 2000 / XP). These
            seem to be problems with the DOS emulation layers (emulated
            DPMI services or the Go32 extender). These problems may not occur with all software
            generated by FPC. Either applications should be tested on these systems
            before being released, or Windows versions should be generated instead. Note that no
            DOS applications may be used under 64-bit versions of MS Windows - this is a general
            restriction due to DOS emulation not being provided for these MS Windows versions.
            You might be able to use these applications under DosBox emulation, but it is not
            officially supported / tested by the FPC team.
          </trn>


    <li><a name='win-ide-mouse'></a>
         <h3><trn key="website.q_win_ide_mouse" locale="en_US">The mouse cursor does not respond in the Windows IDE</trn></h3>
         <trn key="website.a_win_ide_mouse" locale="en_US">
		   <p>In windowed mode, the IDE might not respond to
		   mouse moves and clicks. Just change the properties of the console,
		   and remove the quick edit mode option. This should solve the mouse
		   response problems.
         </trn>




   </OL>
   <trn key="website.faq.unix.related" locale="en_US">
   <LI><h2>UNIX-related information </h2>

        <p>This section also applies to most UNIX variants, such as
        Linux, FreeBSD and Mac OS X.
    </trn>

    <trn key="website.faq.unix.related.information" locale="en_US">
   <OL>
        <li><a name='unix-release'></a>
            <h3>Releasing software generated by the UNIX compilers</h3>

            <ul>
                <li> There is no stack space usage limit.
                <li> Stack checking is simulated.
                <li> Minimal operating system versions :
                  <ul>
                    <li> Linux : Kernel v2.4.x or later.
                    <li> FreeBSD : version 5.x or later.   (4.x can be made to work with minor work)
                    <li> NetBSD : version 1.5 or later.
                    <li> Solaris : version 5.7 of SunOS or later
                         (should work with earlier versions, but untested).
                    <li> Mac OS X : version 10.4 or later (Intel), or 10.3.9 or later (PowerPC)
                  </ul>

            </ul>


        <p>

        <li><a name='unix-debugging'></a>
            <h3>Debugging</h3>

            <p>The GNU debugger v6.5 and later have been tested, and generally work as
            they should. Because the GNU debugger is C oriented, some pascal types might not be represented as they should.

        <p>


        <li><a name='unix-dll'></a>
            <h3> Dynamic libraries </h3>

            <p>Creating dynamic libraries under UNIX-like operating systems is supported.

            <p>
               Importing code from shared libraries does work as expected though, since
               it does not require usage of position independant code.




        <li><a name='unix-profile'></a>
            <h3>Profiling</h3>

            <p>Profiling is supported using <TT>gprof</TT> under linux,
               FreeBSD and NetBSD, the latter two only since 1.0.8. On other
               other UNIX-like operating systems, profiling is currently not
               supported.


        <li><a name='libci386'></a>
            <h3>Libc is missing on platforms other than Linux/i386</h3>
            <P>Libc is a Kylix compatibility unit. Because it contains many
            i386 specific code and features structures from legacy kernels,
			it has not been made available on other platforms.

            <P>To access UNIX functionality, please use units like baseunix
            and unix.

        <li><a name='vgamissing'></a>
            <h3>Why can't the linker find &quot;vga&quot;?</h3>

            <p>This error typically looks like this:<PRE>
                 Free Pascal Compiler version 3.0.x [xxxx/yy/zz] for i386
                 Copyright (c) 1993-2008 by Florian Klaempfl
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
            but a missing Svgalib library in your UNIX install. Please install the
            required library using your favourite package manager tool



        <li><a name='unix-asldmissing'></a>
            <h3>Compiler indicates missing as and ld</h3>

            <p> Normally UNIX systems have the assembler (<TT>as</TT>) and linker
            (<TT>ld</TT>) pre-installed and already in the search path. That is
            the reason why these tools are not supplied with the compiler.

            <p>If the compiler cannot find these tools, either they are not in
            your search path, or they are not installed. You should either add the
            path where the tools are located to your search path, and / or you
            should install these tools.

        <li><a name='unix-ld219'></a>
            <h3>link.res syntax error, or &quot;did you forget -T?&quot;</h3>

            <p>There was a bug in GNU LD 2.19 that caused it to crash
            when processing FPC-generated linker scripts. This bug has been fixed in
            GNU LD 2.19.1.</p>

            <p>At the same time, LD has been modified to emit a warning of the form
            <pre>
               /usr/bin/ld: warning: link.res contains output sections; did you forget -T?
            </pre></p>

            <p>FPC 3.1.1 and later by default generate a different kind of linker script
            that no longer triggers this warning. Unfortunately, this is only possible by
            making use of functionality that is unavailable before GNU LD 2.19. Earlier
            versions therefore now complain about a syntax error in link.res. The new
            <tt>-X9</tt> compiler command line parameter can, however, be used to
            generate linker scripts that are compatible with pre-2.19 linker versions.
            </p><p>
            Their is no way to remove the <tt>-T</tt> warning with earlier FPC versions, but it
            should not result in any problems.
            </p>

   </OL>
   </trn>
   <LI><h2><trn key="website.faq.os2.related" locale="en_US">OS/2-related information</trn> </h2>
   <trn key="website.faq.os2.related.information" locale="en_US">
   <OL>

       <li><a name='os2-release'></a>
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
                <li> Stack can grow up to 256 Kbytes by default. This can be changed by
                     the user or developper using the <TT>emxstack</TT> or <TT>emxbind</TT>
                     utilities.
            </ul>

        <p>


        <li><a name='os2-debugging'></a>
            <h3>Debugging</h3>

            <p>The GNU debugger v4.16 (EMX port) has been tested (including
            its PM add-on, pmgdb.exe) and generally works as it should.
            Because the GNU debugger is C oriented, some pascal types
            might not be represented correctly.

        <p>

        <li><a name='os2-dll'></a>
            <h3> Dynamic libraries </h3>

            <p>
            Even though this operating system permits the creation and usage of
            shared libraries (also called dynamic link libraries), the compiler
            currently only permits importing routines from dynamic libraries (creation of
            dynamic libraries is unsupported).




        <li><a name='os2-profile'></a>
            <h3>Profiling</h3>

            <p>Profiling is currently not supported for this platform.



        <li><a name='os2-dos'></a>
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
            and do not have TZ variable in your environment. The easiest solution is to add
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
            - see e.g. <a href="http://web.archive.org/web/20080103002005/http://www.warpupdates.mynetcologne.de/english/basesystem.html">WarpUpdates site</a>
            for information about OS/2 fixpaks and links for downloading them.
            This issue isn't valid for WarpServer for e-Business, MCP and eComStation - these already have
            the correct version.

        <li><a name="os2-as-failing"></a><h3>Compilation under OS/2 fails with error "Can't call the assembler"</h3>
            <p>Apart from the point mentioned <a href="#os2-fp">above</a>,
            there is at least one more potential reason for issues with
            executing the assembler and resulting in error message "Can't call
            the assembler, error 2 switching to external assembling". This
            error may be result of the OS/2 system not being able to find DLLs
            required for the assembler. Make sure that you installed FPC
            completely (these DLLs are part of file asldos2.zip) and that you
            have set LIBPATH according to instructions in README.TXT (and
            restarted afterwards). If in doubts, running the assembler directly
            from the command line (e.g. "as --version" to show the installed
            as.exe version) may be helpful to see name of the missing dynamic
            library or other details about the problem.

   </OL>
   </trn>

   <LI><h2><trn key="website.faq.beos.related" locale="en_US">BeOS-related information</trn> </h2>
   <trn key="website.faq.beos.related.information" locale="en_US">
   <OL>
          <li><a name='beos-release'></a>
               <h3>Releasing software generated by the BeOS compiler</h3>

                <p> Software generated for the BeOS target will only work
                on the Intel based version of BeOS.

                <ul>
                    <li> The target system must have at least BeOS v4.0 or later
                       (BeOS 5.1d 'Dano' is <em>not</em> supported)
                    <li> Stack size is set to 256 Kbytes. This cannot be changed
               </ul>

           <p>


        <li><a name='beos-debugging'></a>
            <h3>Debugging</h3>

            <p>
            Debugging works with the system-supplied gdb version.



        <p>

        <li><a name='beos-dll'></a>
            <h3> Dynamic libraries </h3>

            <p>
            Even though this operating system permits the creation and usage of
            shared libraries (also called dynamic link libraries), the compiler
            currently only permits importing routines from dynamic libraries (creation of
            dynamic libraries is unsupported).




        <li><a name='beos-profile'></a>
            <h3>Profiling</h3>

            <p>Profiling is currently not supported for this platform.



          <li><a name='beos-linking'></a>
               <h3>BeOS Linking problems</h3>

                <p>It has been reported that certain versions of the linker
                that shipped with some versions of BeOS are broken. If you get
                an error when linking fpc applications, try updating your version
                of ld from the following
                <a href="http://open-beos.sourceforge.net/dev.php">site.</a>



           <p>




   </OL>
   </trn>

<!--
   <LI><h2><trn key="website.faq.amiga.related" locale="en_US">Amiga-related information</trn> </h2>
   <trn key="website.faq.amiga.related.information" locale="en_US">
   <OL>
         <li><a name='amiga-release'></a>
               <h3>Releasing software generated by the Amiga compiler</h3>

                <ul>
                    <li> The target system must have AmigaOS v2.04 or higher
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

        <li><a name='amiga-debugging'></a>
            <h3>Debugging</h3>

            <p> Source level debugging is not supported for the Amiga target. Assembler
            target debugging is possible though, using the excellent <TT>Barfly</TT>
            debugger.


        <p>

        <li><a name='amiga-dll'></a>
            <h3> Dynamic libraries </h3>

            <p>
            Even though this operating system permits the creation and usage of
            shared libraries (also called dynamic link libraries), the compiler
            does not support either the importing or creation of shared libraries.
            Importing must be done manually in assembler.




        <li><a name='amiga-profile'></a>
            <h3>Profiling</h3>

            <p>Profiling is currently not supported for this platform.



   </OL>
   </trn>

   <LI><h2><trn key="website.faq.palmos.related" locale="en_US">PalmOS-related information</trn> </h2>

   <trn key="website.faq.palmos.related.information" locale="en_US">
   <OL>

          <li><a name='palmos-release'></a>
            <h3>Releasing software generated by the PalmOS compiler</h3>

            <ul>
            </ul>


          <p>

        <li><a name='palmos-debugging'></a>
            <h3>Debugging</h3>

        <li><a name='palmos-dll'></a>
            <h3> Dynamic libraries </h3>

            <p>
        <p>
   </OL>
   </trn>
-->
   <LI><h2><trn key="website.DOS_rel_inf" locale="en_US">DOS-related information</trn></h2>
   <OL>

        <li><a name='dos-release'></a>
          <h3><trn key="website.q_dos_release" locale="en_US">Releasing software generated by the DOS compiler</trn></h3>
          <trn key="website.a_dos_release" locale="en_US">
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
                <li> The default stack size is 256 Kbytes. See also "<a href="#dos-stack">Changing
                      the default stack size</a>"
                <li> The stack checking option is available on this platform.
            </ul>
          </trn>


        <p>

        <li><a name='dos-debugging'></a>
          <h3><trn key="website.q_debugging" locale="en_US">Debugging</trn></h3>
          <trn key="website.a_debugging" locale="en_US">
            <p>The GNU debugger v4.16 and later have been tested, and generally work as
            they should. Because the GNU debugger is C oriented, some pascal types might not be
            represented as they should. It is suggested to use the text mode IDE instead of GDB,
            which is available for the DOS target.
          </trn>

        <p>

        <li><a name='dos-dll'></a>
          <h3><trn key="website.q_dynamic_libraries" locale="en_US">Dynamic Libraries</trn></h3>
          <trn key="website.a_dynamic_libraries" locale="en_US">
            <p>Creation or use of shared libraries (also called dynamic link libraries) is not
               supported under this platform.
          </trn>



        <li><a name='dos-profile'></a>
          <h3><trn key="website.q_profiling" locale="en_US">Profiling</trn></h3>
          <trn key="website.a_profiling" locale="en_US">
            <p>Profiling with <TT>gprof</TT> is supported for this platform.
          </trn>



        <li><a name='FPwithoutfpu'></a>
          <h3><trn key="website.q_fpwithoutfpu" locale="en_US">Running Free Pascal without a math coprocessor?</trn></h3>
          <trn key="website.a_fpwithoutfpu" locale="en_US">
            <p>On the Intel version the emulator is automatically loaded by the
            compiler if you add the following commands to your autoexec.bat:

            <p><PRE>
                    SET 387=N
                    SET EMU387=C:\PP\BIN\GO32V2\WEMU387.DXE
            </PRE>(do not forget to replace the <TT>C:\PP</TT> with the directory
            where you installed FPC)
          </trn>


        <li><a name='fp386'></a>
          <h3><trn key="website.q_app_crash_on_386" locale="en_US">Applications created with Free Pascal crash on 80386 systems</trn></h3>
          <trn key="website.a_app_crash_on_386" locale="en_US">
            <ul>
                <li>
                 <p>Trying to run an application which performs floating point operations
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
          </trn>
        <p>



        <li><a name='nomousegraph'></a>
          <h3><trn key="website.q_no_mouse_graph_mode" locale="en_US">The mouse cursor is not visible in graphics screens</trn></h3>
          <trn key="website.a_no_mouse_graph_mode" locale="en_US">

            <p>Many DOS mouse drivers do not properly support mouse cursors in VESA modes. Logitech is said to have a decent mouse driver, which can be
            found <A
            href="ftp://ftp.logitech.com/pub/techsupport/mouse/m643&nbsp;w31.exe">here</a>
         </trn>

        <li><a name='accessioports'></a>
          <h3><trn key="website.q_accessing_io_ports" locale="en_US">Accessing I/O ports</trn></h3>
          <trn key="website.a_accessing_io_ports" locale="en_US">
            <p>The Port array is supported like in TP, as long
            as you use the ports unit in your program (not available under Win32).

            <p>I/O port access is possible under Linux, but that requires root
            privileges. Check the manuals for the IOPerm, ReadPort and WritePort
            procedures. (Unit Linux)
          </trn>


        <li><a name='HowToAccessDosMemory'></a>
          <h3><trn key="website.q_accessing_dosmem" locale="en_US">Accessing DOS memory / Doing graphics programming</trn></h3>
          <trn key="website.a_accessing_dosmem" locale="en_US">
            <p>You can do like in Turbo Pascal, via absolute or mem[]. For larger memory
            blocks use the dosmemput/dosmemget routines in the <TT>Go32</TT> unit.
          </trn>

        <li><a name='dos-stack'></a>
          <h3><trn key="website.q_change_dos_stacksize" locale="en_US">Changing the default stack size</trn></h3>
          <trn key="website.a_change_dos_stacksize" locale="en_US">
            <p>Under the DOS (GO32V2) target, the default stack size to 256 bKbytes. This can
            be modified with a special DJGPP utility called <TT>stubedit</TT>. It is to note
            that the stack may also be changed with some compiler switches, this stack size,
            if greater then the default stack size will be used instead, otherwise the default
            stack size is used.
          </trn>
        <p>

<!--
        <li><a name='dos-os2'></a>
          <h3><trn key="website.q_os2_apps_under_dos" locale="en_US">Using OS/2 generated applications under DOS</trn></h3>
          <trn key="website.a_os2_apps_under_dos" locale="en_US">
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
          </trn>
-->

   </OL>


</OL>
