<HTML>
<!--
#TITLE Free Pascal - Future Plans
#ENTRY develop
#SUBENTRY future
#HEADER Future Plans
-->

<UL>

<LI><H3>Planned for next versions</H3></LI>
<p>
<UL>
 <LI><B>Next major Version (2.2)</B></li>
  <UL>
   <LI><b>Language:</b></LI>
    <UL>
      <LI>Support for DispInterface and dispid (OLE binding on Windows).</LI>
      <LI>Support for dynamic libararies</LI>
      <LI>Support for delegation to interface</LI>
    </UL>
   <li><b>Compiler:</b></li>
    <UL>
	<LI>Better optimizations (static single assignment)</LI>
        <LI>Improved threading.</LI>
	<LI>Internal assembler for non-x86 platforms.</LI>
	<LI>Internal linker.</LI>
	<li>Cleanup of unit system and (better) support for dynamic linking and packages.</lI>
    </UL>
    <LI><B>RTL:</B>:
    <UL>
     <LI>More compatibility with later Delphi versions.</li>
    </UL>
    <LI><B>In progress(RTL)</B>:</li>
    <UL>
     <li> Update and modernize some 1.0.x targets:</li>
     <li> Solaris (important for Sparc support!) </li>
     <LI> More winapi units and 3rd party packages (Socket suite?)</li>
    </UL>
   </UL></LI>
</UL>
<P>

<LI><H3>Planned for later versions</H3></LI>
<UL>
  <LI>Linking with C++ code (Objective C?)</LI>
  <LI>Higher level optimizer including liveliness analysis</LI>
  <li>Full DWARF support (debugging format)</li>
  <li>more architectures (m68k?, Alpha?, IA64?)</li>
  <li>Corba support?</li>
  <LI>reworking set handling
   <ul>
     <li>Allow More than 256 elements</li>
     <li>set of 255..256 uses one byte (lower bound is not automatically ord(0))</li>
     <li>More control about packing of sets. (depending on a packset directive)</li>
     <li>allow sets larger than 32 bytes. (2**32/8=512 MB)</LI>
   </UL>
<P>
</UL>
<p>
<li><H3>Maintenance tasks still open (Junior developer tasks)</h3></li>

Estimated difficulty on a scale from 1 to 10 is added in parentheses. <p>

<ul>
<li>Rework and check the windows unit (macro parameter problem)(<b>3</b>)</li>
<li>More Windows Api units (<b>4</b>) </li>
<li>A set of cross platform and architecture basic networking components (difficulty: <b>5</b> work: <b>7-8</b>)</li>
<li>Porting Delphi source for projects/contrib (<b> 3-6 depending on package</b>)</li>
<li>Debug/extend intel assembler support(<b>7-8</b>)</li>
<li><b>Work on the IDE</b>,
  <ul>
    <li>investigate open bug reports concerning the IDE (<b>5-8</b>)</li>
    <li>(Related to IDE/FV, but also useful without) Fix and maintain the OS independant terminal routines (Video/Keyboard/Mouse) (<b>7</b></li>
  </ul>
</li>
<li>Generating high quality feedback (bugreports with 100 lines max demo programs)</li>
<li>More demoes and examples(<b>2-4</b>)</li>
<li>Documentation, tutorials</li>
<li>Improve the database support 
<ul>
<li>Improve basic custom variants support (TInvokableVariant, TPublishableVariant) (<b>4-6</b>)</li>
<li>Improve TDataSet compability (implement missing methods)  (<b>4-6</b>)	</li>
<li>Drivers (descendants) for more database types (<b>6-8</b>)</li>
</ul>
<li>More OS/2 support
<ul>
<li>OS/2 API units (including SOM) (<b>4</b>)</li>
<li>Adopt more packages for OS/2 (<b>3</b>)</li>
<li>Write SOM Compiler emiter (OS/2) for Free Pascal (<b>8</b>)</li>
<li>Rework OS/2 RTL for native OS/2 target (<b>3</b>)</li>
</ul></li>
<li>Maintenance of Graph unit (on one platform or more), create a SDL Graph unit? (<b>5-7</b>)</li>
<li>Adding an architecture <b>(9-11 :-) )</b>
  <ul>
   <li>m68k</li>
   <li>Alpha</li>
   <li>Extend ARM support to more cores and OSes</li>
   <li>Mips</li>
</ul>
</li>
</ul>
</HTML>
