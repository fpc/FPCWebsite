<master>
<property name="title">Free Pascal - News</property>
<property name="entry">news</property>
<property name="header">What's new</property>
<p>
  If you aren't subscribed to the mailing list, you can read all the important
  news here.
</p>

<h3>Latest changes:</h3>

<li>November 9, 2009</em>
<ul>
  <li>
  <trn locale="en_US" key="website.news_headline_20091109">
    The <a href="http://lists.freepascal.org/lists/fpc-devel/2009-November/018272.html">first FPC 2.4.0 release candidate</a> has been posted, please give your feedback! While FPC 2.4.0 will
    primarily offer under-the-hood changes and bug fixes, the current svn trunk has seen
    quite some work recently on the new features front:
    <ul>
      <li><a href="http://wiki.freepascal.org/for-in_loop">For..in-loops</a>
        are now supported (including some FPC-specific extensions).</li>
      <li>The compiler now understands sealed and abstract classes, and final methods.</li>
      <li>Together with the Mac Pascal community, we have designed and implemented a basic
        <a href="http://wiki.freepascal.org/FPC_PasCocoa#Objective-C_FPC_Compiler">Objective-Pascal</a>
        dialect for directly interfacing with Objective-C on Mac OS X (including header
        translations of several Cocoa frameworks).</li>
      <li>The Mac OS X interfaces have been updated to their Mac OS X 10.6 state
        (including 64 bit and iPhoneOS support).</li>
    </ul>
  </trn>
</ul>

<li>September 17, 2009
<ul>
  <li>
  <trn locale="en_US" key="website.news_headline_20090917">
    <i>(The previously posted information about Mac OS X 10.6 compatibility was unfortunately
    incorrect, which is why it was removed).</i>
    FPC 2.2.4 has been tested with Mac OS X 10.6 (Snow Leopard) and generally works fine.
    There is however an issue when compiling dynamic libraries with FPC under Mac OS X
    10.6 due to a bug in the Xcode 3.2 linker. Unforuntately, there is no easy fix when using
    FPC 2.2.4. The full discussion can be found in <a href="http://bugs.freepascal.org/view.php?id=14471">
    this bug report</a>, with a summary in the last comment.
  </trn>
</ul>

<li>August 20, 2009
<ul>
  <li>
  <trn locale="en_US" key="website.news_headline_20090820">
    The <a href="http://www.ioi2009.org/">2009 International Olympiad in Informatics</a>
    has been won by the 14 years old Henadzi Karatkevich using Free Pascal. For this 
    contest only the gcc and Free Pascal compilers were allowed. Lazarus was
    available as editor.
  </trn>
</ul>


<li>June 25, 2009
<ul>
  <li>
  <trn locale="en_US" key="website.news_headline_20090625">
    During the last months a lot of work on the embedded support of Free Pascal has been done. 
    FPC can be used now to program microcontrollers without any operating system.
    The current status, an explanation how to use it and the supported controllers (only a few so far)
   can be found at the <a href="http://wiki.freepascal.org/Embedded">FPC Wiki</a>.
  </trn>
</ul>

<li>April 12, 2009
<ul>
  <li>
  <trn locale="en_US" key="website.news_headline_20090322">
    The new stable version 2.2.4 has been released. Downloads are available from the <a href="download.var">download page</A> (mirrors should follow soon). This is mostly a bugfix version, although some new features have been backported as well. A list of changes that may require changes to existing code is available <A HREF="http://wiki.freepascal.org/User_Changes_2.2.4">here</A>. With this release we also want to test our new package system. More information about this test can be found <A HREF="http://wiki.freepascal.org/fppkg_field_test">here</A>
  </trn>
</ul>

<li>February 14, 2009
<ul>
  <li>
  <trn locale="en_US" key="website.news_headline_20090114">
    Computer &amp; Literatur Verlag has translated the Free Pascal manuals to German and bound them
    in a <a href="http://www.cul.de/prog.html">book</a>. The book also contains the reference guide 
    for the 17 most important units distributed with Free Pascal. It should be available in 
    book shops in the German-speaking countries in Europe.
  </trn>
</ul>

<li>January 17, 2009
<ul>
  <li>
  <trn locale="en_US" key="website.news_headline_20080117">
    The FPC team is happy to announce the first widely distributed beta of the <em>FPC iPhone SDK Integration Kit</em>, which allows you to compile Pascal code for the iPhone and iPod Touch. It supports both the Simulator and the real devices, and includes an Xcode template with an OpenGL ES demo. It requires an Intel Mac with FPC 2.2.2 (or a later FPC 2.2.x) and the iPhone SDK 2.x installed. Please visit the <a href="http://wiki.freepascal.org/iPhone/iPod_development">wiki page</a> for more information and the download link.
  </trn>
</ul>

<li>August 11, 2008
<ul>
  <li>
  <trn locale="en_US" key="website.news_headline_20080811">
    The new stable version 2.2.2 is released. Downloads are available from the <A HREF="download.var">download page</A> (mirrors should follow soon). This is mostly a bugfix version, although some new features have been backported as well. Some code suspected of Borland copyright infringement was replaced with a cleanroom implementation. A list of changes that may require changes to existing code is available <A HREF="http://wiki.freepascal.org/User_Changes_2.2.2">here</A>.
</trn>
</ul>

<li>September 10, 2007
<ul>
  <li>
  <trn locale="en_US" key="website.news_headline_20070910b">
    <a href="http://www.osnews.com/story.php/18592/Cross-Platform-Development-with-Free-Pascal-2.2.0">OS-News</a> has published an article about the new FPC compiler and cross-platform development. A Dutch version is available on our <a href="http://wiki.freepascal.org/Article_OSNews_fpc_2.2.0">Wiki</a>.
  </trn>
  <li>
  <trn locale="en_US" key="website.news_headline_20070910">
    The Free Pascal Compiler team is pleased to announce the release of FPC 2.2.0!
    <p>An overview of most changes is available <a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_2_0/install/doc/whatsnew.txt">here</a>, but some highlights are:
    <ul>
      <li> Architectures: PowerPC/64 and ARM support
      <li> Platforms: Windows x64, Windows CE, Mac OS X/Intel, Game Boy Advance, and Nintendo DS support
      <li> Linker: fast and lean internal linker for Windows platforms
      <li> Debugging: Dwarf support and the ability to automatically fill variables with several values to more easily detect uninitialised uses
      <li> Language: support for interface delegation, bit packed records and arrays and support for COM/OLE variants and dispinterfaces
      <li> Infrastructure: better variants support, multiple resource files support, widestrings are COM/OLE compatible on Windows, improved database support
    </ul>
  <p> The release notes can be found <a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_2_0/install/doc/whatsnew.txt">here</a>.
  <p>
  Downloads are available at <a href="download.var">http://www.freepascal.org/download.var</a>
  </trn>
</ul>

<li>May 20, 2007
<ul><li>
  <trn locale="en_US" key="website.news_headline_20070520">
    After years of development the new fpc version 2.2.0, version <em>2.1.4</em>
    aka <em>2.2.0-beta</em> is <a href="download@x@#beta">released</a>.
    The beta will be available for about two months whereafter 2.2.0 will be released. We ask all
    our users to test this release, and report bugs on <a href="http://bugs.freepascal.org/set_project.php?project_id=6">
    the bug-tracker</a>. If you want to know if your bug is already solved, you can look it up in 
    <a href="http://bugs.freepascal.org/set_project.php?project_id=6">mantis</a>, or
    try one of the daily snapshots, based on the fixes_2_2 branch. So please help us make version
    2.2.0 the most stable version of Free Pascal to date. List of changes can be found 
    <a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_1_4/install/doc/whatsnew.txt">here</a>.
    The <a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_1_4/install/doc/readme.txt">
    releasenotes</a> are also available. Please note that there are some intentional incompatibilities 
    with previous versions, for an overview click <a href="http://wiki.freepascal.org/User_Changes_2.2.0">
    here</a>.
  </trn>
</ul>

<li>March 28, 2007
<ul><li><a href='http://www.morfik.com'>MORFIK</A> has released
    version 1.0.0.7 of its WebOS AppsBuilder. It is the first version of AppsBuilder that uses FPC
    to create the backend.</ul>

<li>February 1, 2007
<ul><li>The Pascal Game Development annual contest is starting. This years theme is "Multiplexity":
write a game that combines multiple game genres. Can you write a game in Free Pascal? Then
<a href='http://www.pascalgamedevelopment.com/competitions.php?p=details&c=3'>sign up now</a>!</ul>

<li>January 27, 2007
<ul><li><A href='http://mypage.bluewin.ch/msegui'>MSEGUI and MSEIDE</A>
    version 1.0 has been released. MSEIDE is a Rapid Application Development tool to build
    graphical Windows and Linux applications using the MSEGUI user interface framework.
    The Free Pascal team wishes the MSEGUI/MSEIDE developers their congratulations and best wishes
    for this milestone.</ul>

<li>January 15, 2007
<ul><li>The Pascal Game Development annual contest
    <A href='http://www.pascalgamedevelopment.com/viewtopic.php?p=29788'>will start on 1 February</A>.
    Can you write a game with Free Pascal? You might win several prizes. More information will follow.</ul>

<li>December 24, 2006
<ul><li>A <A href='http://www.computerbooks.hu/FreePascal'>book about Free Pascal</a> has been published in Hungary.
    The 270 pages book teaches the Pascal language from the start and also covers the advanced language features.</ul>

<li>December 14, 2006
<ul><li>Ido Kanner will be giving an FPC lecture at <a href="http://haifux.org/future.html">HAIFUX</a>, which is a Linux club at the Technion University in Haifa, on Monday, January 15, 2007. This lecture will be repeated at <a href="http://www.cs.tau.ac.il/lin-club/">Telux</a>, a [University] Linux club in Tel Aviv.</ul>

<li>November 25-26, 2006
<ul><li>Lazarus and FPC will be on the HCC in Utrecht, Netherlands in the HCC Pascal booth</ul>

<li>September 27, 2006
<ul><li>Lazarus and FPC will be on the Systems 2006 in Munich in October in hall A3 booth 542.
We will try to be there on all 5 days. You can find more information about the Systems 2006 
<a href="http://www.systems-world.de/id/7672/">here</a>.</ul>

<li>September 25, 2006
<ul><li>Francesco Lombardi is writing <a href='http://itaprogaming.free.fr/tutorial.html'> an
extensive guide how to develop games on the Game Boy Advance</a> using Free Pascal.</ul>

<li>September 20, 2006
<ul><li>In addition to the originally published builds
for release 2.0.4, powerpc-macos and x86_64-linux .deb packages have been made
available (thanks to Olle Raab and Stefan Kisdaroczi). As usually, go to the
<a href="download.html">download page</a> to select your nearest mirror.</ul>

<li>August 28, 2006
 <ul><li>Long awaited release 2.0.4 is finally out (go
<a href="download@x@">here</a> to select the nearest mirror), bringing
you lots of fixes and some enhancements (remember this is primarily a bug-fix
release for 2.0.x series, whereas new development is happening in 2.1.x branch)
over the previous released version 2.0.2 (or even 2.0.0, because builds for
more platforms than in version 2.0.2 are available this time). List of changes
can be found
<a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_0_4/install/doc/whatsnew.txt">here</a>.
 </ul>

<li>August 10, 2006
 <ul><li>The Free Pascal compiler (version 2.1.1) first compiled itself on <a href="http://os4.hyperion-entertainment.biz">AmigaOS 4.0</a> (PowerPC).</ul>

<li>July 19 2006
 <ul><li>We are approaching new release (2.0.4) in our
bug-fixing branch. Release candidate 2 cycle is running at the moment, final
release is expected during August.
 </ul>

<li>June 1 2006
 <ul><li>Francesco Lombardi has a released snapshot of his
  <a href="http://itaprogaming.free.fr">Gameboy Advance Free Pascal port</a>,
  download it <a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/v21/arm-gba/fpc4gba.zip">here</a>.
 </ul>

<li>April 2006 summary
 <ul><li>The first <a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/v21/x86_64-win64/fpc-2.1.1.x86_64-win64.zip">WIN64 Snapshot</a> has been uploaded to the FTP site.
 </ul>

<li>March 2006 summary
<p>Lots of new progress in March, but too busy coding to update the website, so this entry will be a summary of progress on the main (2.1.1) branch:</p>
<ul>
 <li>Thomas Schatzl is making good progress with the linux 64-bit PowerPC port. A snapshot is 
  <a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/v21/powerpc64-linux/fpc-2.1.1.powerpc64-linux.tar.gz">here</a>
 <li>Peter did a Titanic work, and crafted an internal linker for win32 and win64, reducing
  linking times tremendously. For such a complex new subsystem, it is already quite stable.
 <li>DWARF debugging info support is slowly starting to work. Stabs will be phased out in time.
 <li>Florian just showed a first &quot;Hello world&quot; program for Win64. This is remarkable since
  GCC and the binutils don't even support this target. (Internal linker!)
 <li>Jonas reported that he has ported to Darwin/i386 with remarkable little effort. Snapshots
  are expected in the coming weeks.
</ul>
<li>February 15, 2006
<ul><li>An FPC port for Solaris/Sparc has been created. Get a snapshot 
<a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/v21/sparc-solaris">here</a>.
</ul>
<li>February 7, 2006
<ul><li>Francesco Lombardi is making great progres <a href='http://fpc4gba.pascalgamedevelopment.com'>porting
Free Pascal to the Game Boy Advance</a>. Checkout <a href='http://www.pascalgamedevelopment.com/viewtopic.php?p=19224'>
this forum thread on Pascal Game Development</a> to see some screenshots.
</ul>
<li>February 6, 2006
<ul><li>Free Pascal has been ported to <a href='http://www.skyos.org'>SkyOS</a>! A proof of concept can be downloaded
<a href='http://www.skyos.org/software/fpc.zip'>here</a>.
</ul>
<li>January 10, 2006
<ul><li>The Pascal Game Development Annual Competition is about to start. Can you code a game in Free Pascal?
<a href='http://www.pascalgamedevelopment.com/competitions.php?p=details&amp;c=1'>Then join the competition!</a>
</ul>
<li>December 8, 2005
<ul><li>FPC 2.0.2 is ready for download. 2.0.2 is mainly a bug fix release for 2.0.0. The whatsnew.txt can be found
<a href="ftp://ftp.freepascal.org/pub/fpc/dist/whatsnew.txt">here</a>.
</ul>
<li>September 22, 2005
<ul><li>The <a href="http://www.kanzelsberger.com">Pixel image editor</a> is one
of the projects which show the power of FPC: Pavel Kanzelsberger made an image editing program using FPC
which works on <a href="http://www.kanzelsberger.com/pixel/?page_id=5">8 platforms</a> and which beat
even programs like GIMP, PaintShop Pro and PhotoImpact according to a <a href="http://www.kanzelsberger.com/pixel/?p=33">
recent test</a> of a Czech Computer magazin. Today, version 1.0 beta 5 was released.
</ul>
<li>August 22, 2005
<ul><li>ARM port of Free Pascal can now be used to
develop games for the Gameboy Advance. See the
<a href="http://fpc4gba.pascalgamedevelopment.com/">Pascal Game Development</a> site for more information.
</ul>
<li>August 18, 2005
<ul><li>Free Pascal can be installed on Fedora from the Fedora Extras. To do so, 
   add Extras to your Yum-repository (see <a href="http://www.fedoraproject.org/wiki/Extras">here</a> for instructions)
   and then install using
<pre>
yum install fpc
</pre>
Documentation and src-package for Lazarus are available with
<pre>
yum install fpc-doc
yum install fpc-src
</pre>
</ul>
   <li>16 May 2005
   <ul>
     <li>
     <a href='http://www.osnews.com'>OSNews</a> features
<a href='http://www.osnews.com/story.php?news_id=10607'>an article</a> written by Free Pascal
     developer Dani&euml;l Mantione today.
     
   </ul>
   <li>15 May 2005
   <ul>
     <li>
      Free Pascal <b>2.0</b> is released! Go get it at <a href='download@x@'>one of the mirrors</a>! This is the
      first stable release of the development branch we started five years ago. The 2.0 release is technically
      vastly superior to version 1.0 and has everything in it to belong to the select group of big compilers.
     
   </ul>
   <li>30 Mar 2005
   <ul>
     <li>
       The task of porting the Free Pascal Compiler to Linux/PowerPC64
       has been added to IBM's <a href="http://www.linuxonpower.com">Linux On Power</a> contest,
       which means you can earn a PowerMac dual G5/2GHz by completing this port!
       More information <a href="http://www.nl.freepascal.org/lists/fpc-devel/2005-March/004871.html">in this post</a>
       to the <a href="http://www.freepascal.org/maillist.html">fpc-devel mailing list</a>.
     
   </ul>
   <li>24 Feb 2005
   <ul>
     <li>
        A second release candidate for 2.0 has been released. It
        has been released as version 1.9.8. <a href="ftp://ftp.freepascal.org/pub/fpc/beta/whatsnew.txt">Read more</a>. <a href="download@x@">Get it</a>.
     
   </ul>
   <li>10 Feb 2005
   <ul>
     <li>
        Because of an IP address change the freepascal.org domain was not reachable for a day. The DNS changes
	will take a couple of days until things settle down again.
     
   </ul>
   <li>01 Jan 2005
   <ul>
     <li>
        The FPC development team wishes you a happy new year and announces the first 2.0 release candidate. It
        has been released as version 1.9.6. <a href="ftp://ftp.freepascal.org/pub/fpc/beta/whatsnew.txt">Read more</a>.
     
   </ul>
   <li>01 Jan 2005
   <ul>
     <li>
        For the first time there is a Free Pascal beta release for classic Mac OS.
        <a href="fpcmac@x@">Read more</a>.
     
   </ul>
   <li>05 Nov 2004
   <ul>
     <li>
        There is now also arm/linux cross compiler available.
        You can download the i386/linux to arm/linux cross compiler snapshot from
        <a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/v19/arm-linux/arm-linux-fpc.i386-linux.tar.gz">here</a>.
     
   </ul>
   <li>03 Nov 2004
   <ul>
     <li>
      The x86_64 (aka. AMD64) compiler is progressing nicely so we created a snapshot.
      You can download the x86-64/Linux snapshot
      <a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/v19/linux-x86_64/fpc-1.9.5.x86_64.tar.gz">here</a>.
     
   </ul>
   <li>22 Sep 2004
   <ul>
     <li>
      Today the Sparc compiler compiled itself on a Sparcstation 5 and a UltraSparc, both running
      Linux.<br>
      <b>Update:</b>You can download a Sparc/Linux snapshot
      <a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/v19/sparc-linux/fpc.sparc-linux.tar.gz">here</a>.
     
   </ul>
   <li>6 June 2004
   <ul>
     <li>
      Today the PowerPC compiler first compiled itself on a <a href="http://www.pegasosppc.com">Pegasos II/G4 computer</a>
      running <a href="http://www.morphos-team.net">MorphOS</a>.
     
   </ul>
   <li>31 May 2004
   <ul>
     <li>
     A third public beta for 2.0 has released as version 1.9.4.
     PowerPC is stable and has now also support for Mac OS X.
     
   </ul>
   <li>02 May 2004
   <ul>
     <li>
     The first <b>64-bit</b> port has arrived. Tonight, FPC compiled
     itself for the first time on a 64-bit system. The system was of the
     AMD64 type.
     
   </ul>
   <li>16 March 2004
   <ul>
     <li>
     The missing compiler versions for 1.0.10 are now uploaded; these consists
     of the AmigaOS, Solaris, QNX and BeOS compilers. Sorry for the late delay (Carl).
     
   </ul>
   <li>30 January 2003
   <ul>
     <li>
     The quest continues: The 1.9.3 compiler runs on the ARM processor. The Zaurus is now capable of
     running FPC and FPC compiled programs !
     
   </ul>
   <li>11 January 2004
   <ul>
     <li> A second public beta for 2.0 has released as version 1.9.2,
	improvements all around, but powerpc is coming along more than nicely, so there is a linux/powerpc
	release. This release is also the first where the x86 codegenerator has register parameters.
     
   </ul>
   <li>5 November 2003
   <ul>
     <li> A first public beta, taken from the
        development branch, has been released. To celebrate that, the version
        has been upped to 1.9.  For now only full archives for the Go32V2,
        win32, FreeBSD and Linux platforms on the intel (x86) architecture are
        available We hope the number of platforms and architectures will
        steadily expand during the 1.9.x beta series, which will culminate
        ultimately in the 2.0 release.
     
   </ul>
   <li>21 October 2003
   <ul><li><p>The work on the first 2.0 beta is progressing nicely and a first release is scheduled for 1st
    November. However, this first beta will be available only for linux-i386, win32-i386 and freebsd-i386.
    Preparing beta releases for more OSes would take too much time of the core developers. Of course, any
    volounteer is welcome to help us to prepare beta releases for other OSes. Beta releases of
    linux-powerpc and linux-sparc will be released a few weeks later.</p>
    <p>To avoid confusion: this will be the first release of the 1.1 development branch
    compiler. The packages, compiler etc. will get the version number 1.9.x. As soon as the final
    release is released, the version will be changed to 2.0.0.</p>
    
   </ul>
   <li>25 September 2003
   <ul><li> Merging of the new register allocator has
	largely finished, and focus is shifting to get a first 2.0 beta for
	testing purposes out later this year. The <a href="future@x@"> Future Plans (Roadmap)</a>
	page has been updated with some details
	about what to expect for the 2.0 series of compilers
	
   </ul>
   <li>1 September 2003
   <ul><li> www.freepascal.org took part in an <a href="http://swpat.ffii.org/group/demo/index.en.html">
     online demonstration</a> against the introduction of software patents in Europe. The protest page can still be
     seen <a href="fpc_noswpat.html">here</a>. Note that while the situation is not as bad as it looks there,
     it is a realistic possibility. The mentioned patent is real, and the currently proposed directive
     would make it (and many other already - illegally - granted trivial software patents) enforceable in Europe.
     However, thanks to the massive protest, the vote has been <a href="http://swpat.ffii.org/news/03/demo0827/">
     delayed</a> till 22nd September and several politicians are opening their eyes. Thanks for your understanding!
    
   </ul>
   <li>11 July 2003
   <ul>
     <li>
        Finally, the long awaited successor to 1.0.6 is out. It is called 1.0.10, and is a (mostly) fixes release.
        The reason for skipping 1.0.8 is that the release process took too long, and temporary files have been
        exposed too long on the FTP site, so the FPC team decided to make the final release 1.0.10.<p>
        This release is expected to be the absolute last release in the 1.0 fixbranch.
        Development will now be completely focused on the main branch (1.1) where significant
        progress has been made lately (SPARC and PPC ports).<p>
     
   </ul>
   <li>7 July 2003
   <ul>
     <li>
        Today, &quot;Hello world!&quot; worked for the first time under
        Linux/SPARC. This means the SPARC code generator is now minimally working!
     
   </ul>
   <li>25 May 2003
   <ul>
     <li>
        Yesterday, &quot;make cycle&quot; worked for the first time under
        Linux/PPC. This means the PowerPC code generator is now fairly stable.
        Someone (Olle Raab) is working on a classic Mac OS Run Time Library
        and the Darwin RTL is being worked on as well. Hopefully we'll have
        something distributable in the next few weeks!
     
   </ul>
   <li>24 January 2003
   <ul>
     <li>
         The mailing lists are now working again.
     
   </ul>
   <li>22 January 2003
   <ul>
     <li>
         The mailing lists are currently out of order because the server which runs the
         mailing lists has a problem. We'll take this opportunity to update this
         server on Friday, so the mailing lists will be back at weekend.
     
   </ul>
   <li>19 January 2003
   <ul>
     <li>
         A 1.0.7 compiler snapshot for classic Amiga is now
         available from the freepascal ftp site.
     
   </ul>
   <li>12 January 2003
   <ul>
     <li> Debugging of the 1.0.7 compiler is coming along nicely. Normally,
          a release candidate for 1.0.8 should be done very soon. Also,
          with the 1.0.8 release, linux-m68k and Amiga-m68k versions of the
          compiler will also be released.
     
     <li>
         The 1.1 compiler is also coming along nicely, currently a new register
         allocator scheme is being designed to help optimize register usage.
     
   </ul>
   <li>17 October 2002
   <ul>
    <li> A linux-m68k snapshot (version 1.0.7) of the compiler is now available
        <a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/v10/m68k-linux/">here</a>.
        An amiga-m68k snapshot (version 1.0.7) should follow soon.
	
   </ul>
   <li>24 September 2002
   <ul>
        <li>
	    During the last days, the 1.0.x compiler compiled itself for the
	    first time. The job was done on a 50 MHz Mac IIci (68030), under
	    NetBSD, and the compilation took over 3 hours.<br><b> It seems
	    that the multiplatform FPC compiler is finally starting to
	    become reality.</b>
	
   </ul>
   <li>23 September 2002
   <ul>
   	<li>The PalmOS port of the compiler has been removed, as it is not
   	    in a usable state.
   	
   </ul>
   <li>6 September 2002
   <ul>
   	<li>The PowerPC port is finally progressing nicely. Under Linux, we
            can already get a &quot;Hello world&quot; on screen (followed
            by a number of &quot;RunTime Error&quot; messages and a kernel
            crash :), but we're making progress. The Darwin RTL has also
            been started.
        
   </ul>
   <li>10 july 2002
   <ul>
   	<li>There were problems with the 1.0.6 installers for both OS/2 (Warp 3.0 or earlier),
   	    and Windows (Win95/98/Me). These are now fixed in the FPC 1.0.6 distributions.
   	    Sorry for the inconveniences.
   	
   </ul>
   <li>24 may 2002
   <ul>
   	<li>There were problems with the FPC 1.0.6 linux RPM, where the 1.0.6 beta build
   	    was actually released as an official release. On the command-line if ppc386 -i
   	    gives out Free Pascal Compiler version 1.0.6-beta, you do not have the latest
   	    official release of the linux compiler. Please re-install the linux RPM version
   	    which is located on the FTP site (that one should really now be the 1.0.6 release).
   	    Sorry for the inconveniences.
   	
   </ul>
   <li>4 may 2002
   <ul>
   	<li>QNX version has been released, based on the 1.0.6a source. 1.0.6a is similar to
   	    version 1.0.6, except for patches applied to make the QNX version compile. 
   </ul>
   <li>30 April 2002
   <ul>
   <li> After some weeks of pre-release testing, 1.0.6 is finally released.
   </ul>
   <li>27 Februrary 2002
   <ul>
     <li> The Freepascal site was down for a few days, due to an ISP change. 
   </ul>
   <li>17 December 2001
   <ul>
     <li> Solaris-intel port of Free Pascal is completed. Snapshots (v1.0.x) can
      be downloaded in the development section.
     <li> system unit of BeOS is now called system instead of sysbeos. 
   </ul>
   <li>15 november 2001
   <ul>
     <li> New FAQ which is more comprehensive. 
   </ul>

   <li>19 september 2001
   <ul>
     <li> Web sites updated (removed invalid links and some general cleanup) 
     <li> Freepascal version 1.0.6 will be released very soon (with a much more
          stable IDE and updated documentation) 
     <li> We are working hard on stabilizing the Motorola 680x0 port (the compiler can compile
cycle itself on linux-m68k) 
      <li> Version 1.1 of Freepascal is still being worked on, stay tuned for more information 
   </ul>
   <li>23 August 2001
   <ul>
     <li>The m68k version has been updated, a beta version for
     the PalmOS is available
     <a href="ftp://ftp.freepascal.org/fpc/dist/palmos-1.0.5">here</a>.
     <li>A short description can be found
     <a href="ftp://ftp.freepascal.org/fpc/dist/palmos-1.0.5/readme.txt">here</a>.
   </ul>
   <li>21 May 2001
   <ul>
     <li> The website has a new layout. Because the 1.0.4 version is quite stable
       there is no new release and we're working mainly on the 1.1 development branch.
     
   </ul>
   <li>31 December 2000
   <ul>
     <li> Version 1.0.4 of the Free Pascal Compiler has been officially released.
          Hit the <a href="download@x@">download</a> link and select a mirror close
          to you to download your copy.
     
   </ul>
 <li>7 November 2000
   <ul>
     <li>A <b>beta</b> FreeBSD version 1.0.2 is now available for download
     <li>A post 1.0.2 snapshot that addresses some problems with terminals
        is available on the FTP site.
   </ul>
 <li>19 October 2000
   <ul>
     <li> The OS/2 version 1.0.2 is now also available for download.
   </ul>
 <li>12 October 2000
   <ul>
     <li> Version 1.0.2 of the Free Pascal Compiler has been officially released.
          Hit the <a href="download@x@">download</a> link and select a mirror close
          to you to download your copy.
     
   </ul>

 <li>12 September 2000
   <ul>
     <li> A <a href="http://community.freepascal.org:10000">community site</a> has been
          set up. For now there are online discussion forums, in the future we will
          expand the community site.
     
   </ul>

 <li>3 September 2000
   <ul>
     <li> The (Online) HTML Documentation now also contains the examples, just like
          the PDF Documentation
     
   </ul>

 <li>31 July 2000
   <ul>
     <li> We've updated the Dos version of the installer (which is also included
          in the OS/2 and DosW32 packages) to fix the reported crashes under OS/2
          and WindowsNT. Also the false "Error -2 -- Disk full?" errors have been
          fixed. If you had problems with the old install.exe, you can download a
          new one from the <a href="download@x@">download</a> page. See also
          <a href="faq@x@#instal10NT">this</a> FAQ question.
     
   </ul>

 <li>12 July 2000
   <ul>
     <li> Version 1.00 of the Free Pascal Compiler has been officially released.
          Hit the <a href="download@x@">download</a> link and select a mirror close
          to you to download your copy.
     
   </ul>

 <li>16 April 2000
   <ul>
     <li> The FreeBSD compiler compiled itself for the first time. From
          now on, development FreeBSD snapshots will be uploaded
          to the FreePascal ftp site. when
          important features are implemented or fixed
     
   </ul>

 <li>25 February 2000
   <ul>
     <li> Version 0.99.14a has been released for Dos,Win32. It contains fixes
          for the readln and graph bugs. And the installer problems have been
          fixed.<br>
          Get it at one of the <a href="download@x@">mirrors</a> (USA mirrors of the FTP site only
          can be found in the <a href="links@x@">links</a> section).
     
   </ul>
  <li>22 February 2000<br>
      <ul>
         <li> <b>C&amp;L</b> ships the first edition of the German
            translation of the free pascal manuals. German users can order the book from
            from the <a href="http://www.cul.de/freepascal.html">C&amp;L website</a>.
         
      </ul>
  <li>7 February 2000
    <ul>
     <li>
       There was a bug in the compiler which caused the graph unit of the Dos version
       to crash on startup of any graphical program if you didn't turn on smart linking.
       The solutions are to always use smart linking when compiling graph programs
       (use the -XX command line option) or to get a snapshot (or wait for the next release).
       Some other things already fixed/added since the 0.99.14 release:
      <ul>
       <li>bug in the installer which caused false insufficient diskspace alerts
       <li>bug in readln which causes empty lines to be returned when the end of the text
           buffer is reached (and in some other cases, even if there are none) (already in
           the OS/2 release, because it came out later)
       <li>bug in the Linux graph unit which caused a crash on many systems and only B&W
           output on others
       <li>addition of a lineinfo unit, which, when your program crashes, adds file/line
           number information behind the printed addresses (also for the heaptrace output)!!
      </ul>
    </ul>
 <li>4 February 2000
   <ul>
     <li>
          The OS/2 version of Free Pascal 0.99.14 has been released today! Go get it
          at one of the <a href="download@x@">mirrors</a>! (USA mirrors of the FTP site only
          can be found in the <a href="links@x@">links</a> section).
     
   </ul>
 <li>31 January 2000
   <ul>
     <li> A fixed version of install.sh for the linux tar installation is available
          <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/separate/install.sh">here</a>.
          This version will fix the problem with the wrong symlink and sources.tar typo.
     
   </ul>
 <li>27 January 2000
   <ul>
     <li> Version 0.99.14 (aka 1.0beta4) has been released for Dos,Win32 and Linux! Go get it
          at one of the <a href="download@x@">mirrors</a>! (USA mirrors of the FTP site only
          can be found in the <a href="links@x@">links</a> section).
     
   </ul>
 <li>7 January 2000
   <ul>
     <li> As you may have noticed, it's been a long time since the news has been
          updated. In the mean time, development has continued though! Soon, we'll
          release version 0.99.14 of the compiler which will be a final candidate
          for version 1.0. Some weeks later, we'll (finally) release version 1.0.
     
     <li> As always, you can get the latest compiler and RTL in the form of
          a snapshot in the <a href="develop@x@">development section</a> if you
          want to see what we've done since the last official release.
     
     <li> A new section has been added: <a href="prog@x@">programmer tools</a>.
          It contains documentation for all helper programs included with FPC.
          Check it out!
     
  </ul>
 <li>26 July 1999
  <ul>
     <li> Bugfix version 0.99.12b has been released for Dos,Win32 and Linux. You can
          download it <a href="download@x@">here</a>.
     
     <li> For linux the source rpm's and debian sources are also available on
          ftp and <a href="download@x@">download</a> page
     
     <li> Default documentation is now in PDF format which looks much better.
     
  </ul>
 <li>25 June 1999
  <ul>
     <li> Version 0.99.12 (aka 1.0beta3) has been released! Go get it at one of the
          <a href="download@x@">mirrors</a>! (USA mirrors of the FTP site only
          can be found in the <a href="links@x@">links</a> section)
     
     <li>The Free Pascal newsletter <a href="news9906.html">06/99</a> is available.
     
  </ul>
 <li>9 April 1999
  <ul>
      <li>Snapshots for the IDE are now available from the
      <a href="develop@x@">development</a> page.
      <li>If you want to use the daily source packages you also need
      the "base" package, installation notes are included in that package.
  </ul>
 <li>15 January 1999
  <ul>
      <li>0.99.10 for OS/2 &amp; Dos released
  </ul>
 <li>23 December 1998
  <ul>
      <li>Released Version 0.99.10 (aka 1.0 beta 2).
      <li>The IDE is progressing nicely and will be included with the next version.
  </ul>
</ul>
