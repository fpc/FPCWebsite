<master>
<property name="title">Free Pascal - Download Linux</property>
<property name="entry">download</property>
<property name="header"><trn key="website.down_linux_arm" locale="en_US">Download Linux ARM</trn></property>
<property name="modify"></property>
<property name="picdir">../../pic</property>
<property name="maindir">../../</property>
<!--
*****************************************************************************
                                 Linux
*****************************************************************************
-->

<trn key="website.latest_version_is" locale="en_US">
  The latest release version is <b>@latestversion@</b>.
</trn>

<h1>@latestversion@</h1>
The FPC @latestversion@ package for arm-linux is available in two to choose format:
<ul>
  <li> <a href="#linuxbig302eabi">Everything in 1 big package for eabi ABI</a>
  <li> <a href="#linuxbig302eabihf">Everything in 1 big package for eabihf ABI for raspberry</a>
</ul>

<h3><a name="linuxbig302eabi"></a>Download in 1 big file:</h3>
<p>The distribution in the archive below is for EABI abi, compiled for armv3 CPU (release 3.0.2 only).</p>
<ul>
<li> <a
href="@mirror_url@dist/3.0.2/arm-linux/fpc-3.0.2.arm-linux-eabi.tar">fpc-3.0.2.arm-linux-eabi.tar</a> (55 MB)
contains a standard tar archive, with an install script<br>
After untarring the archive, you can run the install script in the created
directory by issuing the command "<tt>sh install.sh</tt>".
</ul>

<h3><a name="linuxbig302eabihf"></a>Download in 1 big file:</h3>
<p>The distribution in the archive below is for an EABIHF, compiled on RaspBerry 1 arm-linux system (for armv6 cpu).</p>
<ul>
<li> <a
href="@mirror_url@dist/@latestversion@/arm-linux/fpc-@latestversion@.arm-linux-eabihf-raspberry.tar">fpc-@latestversion@.arm-linux-eabihf-raspberry.tar</a> (56 MB)
contains a standard tar archive, with an install script<br>
After untarring the archive, you can run the install script in the created
directory by issuing the command "<tt>sh install.sh</tt>".
</ul>

<hr>
<p>
<a href="linux@x@"><trn key="website.Back_to_mirrorlist" locale="en_US">Back to mirror list</trn></a><br>
<a href="../../download@x@"><trn key="website.Back_to_general_download_page" locale="en_US">Back to general download page</trn></a>
<p>
