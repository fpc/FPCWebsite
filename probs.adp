<master>
<property name="title">Free Pascal - Known problems</property>
<property name="entry">bugs</property>
<property name="header">Known problems</property>
<ol>
<li><h3>Problems when the compiler is installed in a directory which
requires a long file name</h3>
The GNU Linker (which is used by FPC)
for DOS and Windows doesn't support long file names so
don't install the compiler in a directory which requires a long file name
nor try to compiler sources in a directory with a long file name.
Nevertheless the FPC run time library supports long file names so
your programs compiled by FPC will support long file names.
This problem applies only to the DOS and Windows version!!</li>

<li><h3>In Delphi mode, sets don't match the size of the real Delphi.</h3>
Sets are always 4 (0..32 elements) or 32 bytes (33..256 elements).</li>

<li><h3>Line length of the documentation in plain text format
is &gt; 80 characters.</h3>

<li><h3>The following Delphi functionality is as of yet not implemented:</h3>
	<ul>
	 <li>Display interfaces (dispinterface) and the dispip index modifier</li>
	 <li>Packages and sharemem, and related DLL functionality</li>
	 <li>delegation with the <b>implements</b> keyword</li>
	 <li>The register calling convention pushes the arguments in the wrong order on the stack
		(the params left after the registers are filled)</li>
        </ul>

<li><h3>The tool which is used to create the plain text documentation
from the TeX sources isn't able to create files with a max. line
length of 80 chars.</h3></li>

<li><h3>Known incompabilities with Delphi</h3>
<ul>
     <li> Due to use of an external linker and out of multiplatform concerns,
	  it is not possible to declare a function in an interface of an unit, 
          and redeclare it as external in the implemention. An external function must be fully defined
	  by the interface, and the interface only.</li>
</ul>


<li><h3>Known bugs specific to Darwin/Mac OS X and Classic Mac OS</h3>
<ul>
  <li>Passing floating point parameters to C routines with elipsis parameters (such as printf) does not yet work for the AIX ABI (which is used by all of the above OS'es).
  <li>Passing records by value to C routines does not yet work for records whose size is different from 1, 2 and 4 bytes.
  <li>Generating shared libraries is not yet supported
  <li>The currency type has some problems with values close to the upper and lower limits (because the double type is used for some conversions, whose precision is too small in those cases).
</ul>
</ol>

