<master>
<property name="title">Free Pascal - Future Plans</property>
<property name="entry">develop</property>
<property name="subentry">future</property>
<property name="header">Future Plans</property>

<ul>

<li><h3>Planned for next versions</h3></li>
<p>
<ul>
 <li><b>Next major Version</b></li>
  <ul>
   <li>New implemented features are tracked <a href="http://wiki.freepascal.org/FPC_New_Features_Trunk">the Wiki</a>.
</ul>
<p>

<li><h3>Planned for later versions</h3></li>
  <ul>
    <li>Linking with C++ code</li>
    <li>Higher level optimizer including liveliness analysis</li>
    <li>LLVM backend support</li>
    <li>Support for more architectures</li>
    <li>Corba support?</li>
    <li>Cleanup of unit loading system</li>
    <li>Better support for dynamic linking and packages</li>
    <li>Support for sets with more than 256 elements</li>
  </ul>
  <p>
<li><h3>Maintenance tasks still open (Junior developer tasks)</h3></li>

Estimated difficulty on a scale from 1 to 10 is added in parentheses. <p>

<ul>
  <li>Rework and check the windows unit (macro parameter problem)(<b>3</b>)</li>
  <li>More Windows API units (<b>4</b>) </li>
  <li>A set of cross platform and architecture basic networking components (difficulty: <b>5</b> work: <b>7-8</b>)</li>
  <li>Porting Delphi source for projects/contrib (<b>3-6</b>, depending on package)</li>
  <li>Debug/extend Intel assembler support(<b>7-8</b>)</li>
  <li>Work on the IDE
    <ul>
      <li>investigate open bug reports concerning the IDE (<b>5-8</b>)</li>
      <li>(Related to IDE/FV, but also useful without) Fix and maintain the OS independant terminal routines (Video/Keyboard/Mouse) (<b>7</b></li>
    </ul>
  </li>
  <li>Generating high quality feedback (bugreports with 100 lines max demo programs)</li>
  <li>More demos and examples(<b>2-4</b>)</li>
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
     <li>Extend ARM support to more cores and OSes</li>
    </ul>
  </li>
</ul>
