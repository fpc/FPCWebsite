<master>
<property name="title">Free Pascal - Known problems</property>
<property name="entry">bugs</property>
<property name="header"><trn key="website.Known_problems" locale="en_US">Known problems</trn></property>
<ol>

<li><h3><trn key="website.known_probs_204" locale="en_US">Known bugs specific to version 2.0.4</trn></h3>
<ul>
  <li><trn key="website.known_probs_204_2" locale="en_US">A bug was encountered in the unit handling that can cause an IE200306067.
  The bug was fixed in the 2.1.x branch. A workaround for 2.0.4 is to delete the projects .ppu's and .o's and rebuild.
  </trn>
  <li><trn key="website.known_probs_204_3" locale="en_US">A bug was encountered that can crash the IDE during debugging. Users
  experiencing a crashing IDE are recommended to install a 2.0.5 snapshot</trn>
</ul>


<li><h3><trn key="website.Delphi_unimplemented" locale="en_US">The following Delphi functionality is as of yet not implemented</trn>:</h3>
  <ul>
    <li><trn key="website.Delphi_unimplemented_dispinterface" locale="en_US">Display interfaces (dispinterface) and the dispip index modifier</trn>
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

<li><h3><trn key="website.Macos_known_bugs" locale="en_US">Known bugs specific to Darwin/Mac OS X and Classic Mac OS</trn></h3>
<ul>
  <li><trn key="website.Elipsis_AIX_ABI" locale="en_US">Passing floating point parameters to C routines with elipsis parameters (such as printf) does not yet work for the AIX ABI (which is used by all of the above OS'es).</trn>
  <li><trn key="website.Records_by_value_to_C" locale="en_US">Passing records by value to C routines does not yet work for records whose size is different from 1, 2 and 4 bytes.</trn>
  <li><trn key="website.Shared_libraries_not_yet_supported" locale="en_US">Generating shared libraries is not yet supported</trn>
  <li><trn key="website.Currency_limits" locale="en_US">The currency type has some problems with values close to the upper and lower limits (because the double type is used for some conversions, whose precision is too small in those cases).</trn>
</ul>

<li><h3><trn key="website.Set_sizes" locale="en_US">In Turbo Pascal and Delphi mode, sets don't match the size of the real TP/Delphi.</trn></h3>
<trn key="website.Set_sizes2" locale="en_US">Sets are always 4 (0..32 elements) or 32 bytes (33..256 elements).</trn>

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

