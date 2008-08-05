<master>
<property name="title">Free Pascal - Known problems</property>
<property name="entry">bugs</property>
<property name="header"><trn key="website.Known_Problems" locale="en_US">Known problems</trn></property>
<ol>

<li><h3><trn key="website.Delphi_unimplemented" locale="en_US">The following Delphi functionality is as of yet not implemented</trn>:</h3>
  <ul>
    <li><trn key="website.Delphi_unimplemented_dispinterface" locale="en_US">Dispatch interfaces (dispinterface) and the dispip index modifier</trn>
    <li><trn key="website.Delphi_unimplemented_packages" locale="en_US">Packages and sharemem, and related DLL functionality</trn>
    <li><trn key="website.Delphi_unimplemented_delegation" locale="en_US">delegation with the <b>implements</b> keyword</trn>
    <li><trn key="website.Delphi_unimplemented_regcall" locale="en_US">The register calling convention pushes the arguments in the wrong order on the stack
        (the params left after the registers are filled)</trn>
  </ul>


<li><h3><trn key="website.Delphi_known_incompat" locale="en_US">Known incompabilities with Delphi</trn></h3>
<ul>
     <li><trn key="website.Delphi_extern_implementation" locale="en_US">Due to use of an external linker and out of multiplatform concerns,
	  it is not possible to declare a function in an interface of an unit, 
          and redeclare it as external in the implemention. An external function must be fully defined
	  by the interface, and the interface only.
      </trn>
</ul>

<li><h3><trn key="website.Debian_known_incompat" locale="en_US">Known incompabilities with Debian and Ubuntu</trn></h3>
<ul>
     <li><trn key="website.Debian_bug_412927" locale="en_US">The gpm package shipped with Debian uses a patch that makes the wire protocol
     incompatible with the standard gpm. Unfortunately, it is not possible for us to detect
     wether the gpm server we are talking to is a Debian patched gpm server.
     This means programs made using Free Pascal, including Free Pascal itself, will not
     be able to use the mouse correctly on the Linux console.
     This issue has been reported to Debian as
     <A href='http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=412927'>bug 412927</A>.
     </trn>
</ul>

<li><h3><trn key="website.Gentoo_known_incompat" locale="en_US">Known incompabilities with Gentoo</trn></h3>
<ul>
     <li><trn key="website.Gentoo_lib32" locale="en_US">On Gentoo x86_64 systems, 32-bit libraries are installed in /lib32. This results in problems if you
         install the i386 compiler, on a Gentoo x86_64 system, as it expects to find its libraries in /lib,
         which is where the compiler should search according to the x86_64 ABI.
         </trn>
</ul>

<li><h3><trn key="website.Doc_line_length" locale="en_US">Line length of the documentation in plain text format
is &gt; 80 characters.</trn></h3>
  <UL>
    <LI><trn key="website.Doc_line_length_2" locale="en_US">The tool which is used to create the plain text documentation
      from the TeX sources isn't able to create files with a max. line
      length of 80 chars.</trn>
  </UL>


<li><h3><trn key="website.GNU_ld_lfn" locale="en_US">Problems when the compiler is installed in a directory which
requires a long file name</trn></h3>
<trn key="website.GNU_ld_lfn_2" locale="en_US">The GNU Linker (which is used by FPC)
for DOS and Windows doesn't support long file names so
don't install the compiler in a directory which requires a long file name
nor try to compiler sources in a directory with a long file name.
Nevertheless the FPC run time library supports long file names so
your programs compiled by FPC will support long file names.
This problem applies only to the DOS and Windows version.</trn>


</ol>

