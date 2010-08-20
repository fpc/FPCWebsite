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
  </ul>


<li><h3><trn key="website.Delphi_known_incompat" locale="en_US">Known incompabilities with Delphi</trn></h3>
<ul>
     <li><trn key="website.Delphi_extern_implementation" locale="en_US">Due to use of an external linker and out of multiplatform concerns,
	  it is not possible to declare a function in an interface of an unit, 
          and redeclare it as external in the implemention. An external function must be fully defined
	  by the interface, and the interface only.
      </trn>
</ul>

<li><h3><trn key="website.Gentoo_known_incompat" locale="en_US">Known incompabilities with Gentoo</trn></h3>
<ul>
     <li><trn key="website.Gentoo_lib32" locale="en_US">On Gentoo x86_64 systems, 32-bit libraries are installed in /lib32. This results in problems if you
         install the i386 compiler on a Gentoo x86_64 system, as it expects to find its libraries in /lib
         (this is where the compiler should search according to the x86_64 ABI).
         </trn>
</ul>

<li><h3><trn key="website.Doc_line_length" locale="en_US">Line length of the documentation in plain text format
is &gt; 80 characters.</trn></h3>
  <UL>
    <LI><trn key="website.Doc_line_length_2" locale="en_US">The tool which is used to create the plain text documentation
      from the TeX sources isn't able to create files with a maximum line
      length of 80 chars.</trn>
  </UL>


<li><h3><trn key="website.GNU_ld_lfn" locale="en_US">Problems when the compiler is installed in a directory which
requires a long file name</trn></h3>
  <UL>
    <LI><trn key="website.GNU_ld_lfn_2" locale="en_US">To avoid problems with external
      utilities used during the compilation process, do not install the compiler in paths
      containing one or more long file names on Dos and Windows platforms. The programs
      created using FPC however fully support long file names.</trn>
  </UL>

</ol>

