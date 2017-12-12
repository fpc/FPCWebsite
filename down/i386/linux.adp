<master>
<property name="title">Free Pascal - Download Linux</property>
<property name="entry">download</property>
<property name="header"><trn key="website.down_linux_arm" locale="en_US">Download Intel/i386 Linux</trn></property>
<property name="modify"></property>
<property name="picdir">../../pic</property>
<property name="maindir">../../</property>

<!--
*****************************************************************************
                                 Linux
*****************************************************************************
-->
<trn key="website.latest_version_is" locale="en_US">
  The latest release version is</trn> <b>@latestversion@</b>.

<P>

<trn key="website.It_is_available_in" locale="en_US">
It is available in different formats:
</trn>
<ul>
  <li> <a href="#linuxbig"><trn key="website.everything_in_1" locale="en_US">Everything in 1 big package</trn></a>
  <li> <a href="#linuxrpm"><trn key="website.RPM_packages_1" locale="en_US">RedHat Packages (.rpm)</trn></a>
  <li> <a href="#linuxdeb"><trn key="website.DEB_packages_1" locale="en_US">Debian Packages (.deb)</trn></a>
</ul>


<h3><a name="linuxbig"></a><trn key="website.download_in_1_file" locale="en_US">Download in 1 big file</trn>:</h3>
<ul>
<li><a href="@mirror_url@dist/@latestversion@/i386-linux/fpc-@latestversion@.i386-linux.tar">fpc-@latestversion@.i386-linux.tar</a> (53 MB)
<trn key="website.i386-linux_1_file_download_descr" locale="en_US">
  contains a standard tar archive, with an install script.
  After untarring the archive into a temporary location, you can run the install script 
  by issuing the command "<tt>sh install.sh</tt>".
</trn></li>
<li><a href="@mirror_url@dist/@latestversion@/i386-linux/fpc-@latestversion@.i386-linux.cross.i8086-msdos.tar.xz">fpc-@latestversion@.i386-linux.cross.i8086-msdos.tar.xz</a> (22 MB)
<trn key="website.Download_linuxi386_msdos_cross_installer" locale="en_US"> contains tar file with the Linux/i386 to MS-DOS (real mode, i8086) cross-compiler only. You can install it like the main package.</trn></li>
</ul>

<h3><a name="linuxrpm"></a><trn key="website.RPM_packages" locale="en_US">RPM (Redhat Package Manager) Packages</trn>:</h3>
<em><trn key="website.RPM_compatibility" locale="en_US">Our RPM packages are compatible with all RPM based distributions, including Red Hat, Fedora, SuSE, Mandriva.</trn></em>
<ul>
<li> <b><trn key="website.Binary_packages" locale="en_US">Binary Packages</trn></b>
<li> <a href="@mirror_url@dist/@latestversion@/i386-linux/rpm/fpc-@latestversion@-1.i686.rpm">fpc-@latestversion@-1.i686.rpm</a> (22 MB)
     <trn key="website.i386-linux_rpm_download_descr" locale="en_US">
       contains the compiler, utils, RTL and all units. <br>
     </trn>
<li> <b><trn key="website.Source_packages" locale="en_US">Source Packages</trn></b>
<li> <a href="@mirror_url@dist/@latestversion@/i386-linux/rpm/fpc-@latestversion@-1.src.rpm">fpc-@latestversion@-1.src.rpm</a> (3i6 MB)
     <trn key="website.i386-linux_rpm_src_download_descr" locale="en_US">
       contains the sources.<br>
     </trn>
<li> <b><trn key="website.Binary_packages" locale="en_US">i8086 MS-DOS cross binary Packages</trn></b>
<li> <a href="@mirror_url@dist/@latestversion@/i386-linux/rpm/fpc-i8086-msdos-@latestversion@-1.i686.rpm">fpc-i8086-msdos-@latestversion@i-1.i686.rpm</a> (22 MB)
     <trn key="website.i386-linux_rpm_download_descr" locale="en_US">
       contains the cross-compiler, RTL and all units for MS-DOS target. <br>
     </trn>
<li> <b><trn key="website.Source_packages" locale="en_US">Source Packages</trn></b>
<li> <a href="@mirror_url@dist/@latestversion@/i386-linux/rpm/fpc-i8086-msdos-@latestversion@-1.src.rpm">fpc-i8086-msdos-@latestversion@-1.src.rpm</a> (3i6 MB)
     <trn key="website.i386-linux_rpm_src_download_descr" locale="en_US">
       contains the sources for MS-DOS target.<br>
     </trn>
</ul>

<h3><a name="linuxdeb"></a><trn key="website.DEB_packages" locale="en_US">Debian Packages</trn>:</h3>
<em><trn key="website.DEB_compatibility" locale="en_US">Our DEB packages are compatible with all DEB based distributions, including Debian, Linspire, Ubuntu.</trn></em>
<ul>
<li><b>Deb archives for @latestversion@ are not available from us. Please refer to the official Debian experimental repository instead.</b><br>
</ul>

<hr>
<p>
<a href="linux@x@"><trn key="website.Back_to_mirrorlist" locale="en_US">Back to mirror list</trn></a><BR/>
<a href="../../download@x@"><trn key="website.Back_to_general_download_page" locale="en_US">Back to general download page</trn></a>
<p>
