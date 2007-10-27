<master>
<property name="title">Free Pascal - Future Plans</property>
<property name="entry">develop</property>
<property name="subentry">future</property>
<property name="header">Future Plans</property>

<ul>

<li><h3>Planned for next versions</h3></li>
<p>
<ul>
 <li><b>Next major Version (2.4)</b></li>
  <ul>
   <li><b>Language:</b></li>
    <ul>
      <li>Support for DispInterface and dispid (OLE binding on Windows).</li>
      <li>Support for dynamic libararies/package</li>
    </ul>
   <li><b>Compiler:</b></li>
    <ul>
	<li>Better optimizations (static single assignment)</li>
        <li>Improved threading.</li>
	<li>Internal assembler for non-x86 platforms.</li>
	<li>ELF Internal linker.</li>
	<li>Formal Generics support (in 2.2 it is undoced)</li>
	<li>Full DWARF support (debugging format)</li>
    </ul>
    <li><b>RTL:</b>:
    <ul>
     <li>More compatibility with later Delphi versions.</li>
    </ul>
    <li><b>In progress(RTL)</b>:</li>
    <ul>
     <li> Update and modernize some 1.0.x targets:</li>
     <li> Solaris (important for Sparc support!) </li>
     <li> More winapi units and 3rd party packages (Socket suite?)</li>
    </ul>
   </ul></li>
</ul>
<p>

<li><h3>Planned for later versions</h3></li>
<ul>
  <li>Linking with C++ code (Objective C?)</li>
  <li>Higher level optimizer including liveliness analysis</li>
  <li>more architectures (m68k?, Alpha?, IA64?)</li>
  <li>Corba support?</li>
  <li>Cleanup of unit system</li>
  <li>(better) support for dynamic linking and packages.</li>
  <li>reworking set handling (partially done in 2.2)
   <ul>
     <li>Allow More than 256 elements</li>
     <li>set of 255..256 uses one byte (lower bound is not automatically ord(0))</li>
     <li>More control about packing of sets. (depending on a packset directive)</li>
     <li>allow sets larger than 32 bytes. (2**32/8=512 MB)</li>
   </ul></li>
<p>
</ul>
<p>
<li><h3>Maintenance tasks still open (Junior developer tasks)</h3></li>

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
