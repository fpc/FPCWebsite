<!--
#TITLE Free Pascal - How to create, install and use a development compiler and RTL
#ENTRY moreinfo
#SUBENTRY faq
#HEADER Frequently Asked Questions
-->

<Center>
<h2>How to create, install and use a development compiler and RTL</h2>
</center>

<center>Alias the <b>&quot; Make Cycle&quot; FAQ</b></center><p>

Version <b>0.03</b> (Updated for the soon to be released 0.99.14 candidate-release and 1.0 release)<p>

This is a simple HTML document which describes how a development snapshot should be installed, to benefit from
the newest bugfixes. I tried to be verbose. Mail any comments to <a href="mailto:Marco&#x040;freepascal.org">Marco van de Voort(marco&#x040;freepascal.org)</a><p>

All this information exists for 99% in the 0.99.10 manual and for nearly 100% in the 0.99.12 and 0.99.14/1.0 manuals.
The FPC manuals are very extensive and still very comprehensible, this is just a short FAQ, and some things 
that are a bit fragmented out over several chapters in the manual put in one, smaller document.<p>

<b>This faq only covers the targets Win32, Go32V2 and Linux, and OS/2 as far
it resembles the Win32 and Go32V2 case.</b><p>

<a href="#whatyouneed">1 What do you need to update from a release to a snapshot</a><br>
<a href="#directorystructure">2 How your directory structure should look like</a><br>
<a href="#ppc386">3 The ppc386.cfg file</a><br>
<a href="#whattosave">4 What you should save from the release, and why</a><br>
<a href="#Unpacking">5 Unpacking the sources.....</a><br>
<a href="#otherstuff">6 Other packages (API,FCL, smartlinking, staticlinking)</a>
<p>

<a name="whatyouneed"></a>
<b>1 What do you need</b><p>

There are three standard ways to update your compiler and RTL:<p>
The sizes of the files are magnitude only, and change dialy<p>

<ol> <li>Download a <b>binary snapshot</b> and install it. <br> <table> 
 <tr><td>Disadvantages</td> <td> no smartlinking, and no shared libs under 
        Linux.<br></td></tr> 
 <tr><td>Advantages</td><td>    No need to download the sources, no recompilation 
                of compiler/rtl<br></td></tr>
 <tr><td>Filenames</td><td>     snapshot.tar.gz(450k), 
          snapshot.zip(450k) and snapshot-win32.zip(700k) depending on the OS
  </td></tr></table></li>
  
 <li>A recent <b>FULL or COMP IDE </b>snapshot (check 
the date of the zip first, to see if it is fresh). The FULL and COMP snapshots ZIPs
have the compiler and a precompiled RTL on board. <br> 
<table> 
<tr><td>Disadvantages</td><td> No smartlinking RTL, and no shared libs under 
        Linux. <br></td></tr> 
<tr><td>Advantages</td><td>    No need to download the sources, no recompilation 
        of compiler/rtl<br></td></tr> 
<tr><td>Filenames</td><td> ide_comp.zip, ide_full.zip (700..1.4MB?)
        on the OS,</td></tr>  </table></li> 
<li><b>Build a new RTL (and optionally the compiler) from sources</b> <table> 
<tr><td>Disadvantages</td><td> Most kbs to download, compilation 
        required.</td></tr> 
<tr><td>Advantages</td><td>    Smartlinking, shared libs 
(under linux) possible.<br>if you occasionally need the RTL sources you need the RTL anyway</td></tr> <tr><td>Filenames</td><td>     
rtl.zip(1100kb), compiler.zip(1100kb)<br>
 </td></tr> 
</table></li>
</ol>
<p>
<b>The methods that require compiling also require:</b>
<ul>
<li>the RELEASE compiler (ppc386(.exe))</li>
<li>MAKE and some other GNU utils. Their availability depends on the target:
   <table>
   <tr><td>Go32V2 <br>and Win32</td><td>Supplied with each release(currently 0.99.12b).</td></tr>
   <tr><td>Linux</td><td>Most distributions install these. The utilities you need are LD, AS 
                and MAKE, and you also need some development package like (g)libc-devel.
                If you could compiler with the release version, it is probalby ok.</td></tr>
    </table></li>               
</ul>  
<p>
As a compromise, you can also just download the rtl sources, plus a binary snapshot, and
only recompile the RTL smartliking, not the compiler. However in this case the required download 
is only about 300kb smaller than recompiling the compiler too.
<p>
For Win32 to create <b>dlls</b> you also need dlltool.exe which is avaliable on ftp.freepascal.org and mirrors<p>
 

<a name="directorystructure"></a>
<b>2 How your directory structure should look like</b><p>

The directory structure is not fixed. You can change the locations as you like by editing ppc386.cfg, 
makefiles and the environment files.
However with the standard directory structure as described below, only a minimal amount of configuration is
required.<p>

The only things which are fixed are the directory names of the packages in the source
directory. The makefiles of most packages depend on the names as listed below, and on the
relative position (../rtl/go32v2 etc) of the directories. Those heavy dependancies only exist
between the packages in the source directory.<p>

Starting with 0.99.13(which is a development version) you can use $VERSION and $TARGET in
ppc386.cfg. $VERSION expands to compiler version (e.g. 0.99.12) $TARGET to the plaform you
are compiler for (win32,linux,go32v2). This greatly simplyfies creating and maintaining ppc386.cfg
files.

<a name="dirgo32v2"></a>
<b>2.1 Dos (Go32V2) or Win32:</b><p>

On the Gates targets (Go32V2 and Win32) normally a base directory exists
(default c:\pp) which contains the following subdirectories:<p>

The source directory is not required to compile with the compiler. If you installed
pre-compiled packages, you don't need them, except for reference.<p>

Remarks:<p>
<ul>
<li>All the paths in the table below get prefixed by the base directory (default c:\pp)</li>
<li>The contents of the BASE.zip archive on the development page of FPC are located in the source directory, not in source/base</li>
<li>Only the binary(bin/go32v2 OR bin/win32) directories are in the search PATH.</li>
<li>In each &quot;binary&quot; directory a ppc386.cfg file exists which allows the
compiler to find the rtl (rtl/go32v2 or rtl/win32)</li>
<li>An environment variable named FPCDIR should be set up to point to the basedirectory</li>
<li>An environment variable named FPCMAKE should be set up to point to the makefile.fpc file in the
    source directory (e.g. set FPCMAKE=c:\pp\source\makefile.fpc) </li>
</ul><p>

<table border="0">
<tr><td>bin/go32v2           </td><td>       (All binaries for go32v2 (dos-dpmi))                            </td></tr>
<tr><td>bin/win32            </td><td>       (All binaries for Win32)                                        </td></tr>
<tr><td>units/go32v2/rtl     </td><td>       (The precompiled RTL for Go32v2)                                  </td></tr>
<tr><td>units/win32/rtl      </td><td>       (The precompiled RTL for Win32)                                   </td></tr>
<tr><td>units/go32v2/package </td><td>       (other non-rtl packages precompiled for Go32V2)                 </td></tr>
<tr><td>units/win32/package  </td><td>       (other non-rtl packages precompiled for Win32)                  </td></tr>
<tr><td>source/compiler      </td><td>       (The source of the compiler)                                    </td></tr>
<tr><td>source/rtl           </td><td>       (The base RTL source directory)                                 </td></tr>
<tr><td>source/rtl/go32v2    </td><td>       (The go32V2 RTL source)                                         </td></tr>
<tr><td>source/rtl/win32     </td><td>       (The Win32  RTL source)                                         </td></tr>
<tr><td>source/fcl/          </td><td>       (The FCL (Delphish classes) source directory)                   </td></tr>
<tr><td>source/gtk/          </td><td>       (The GTK sources(the sources for the GTK X widgetset interface))</td></tr>
</table>
<p>

<a name="dirlinux"></a>
<b>2.2 The linux case</b><p>

The Linux situation is a bit more complex, but not that much. The base directory path includes,following
good unix tradition, the version number: /usr/lib/fpc/0.99.12/ or /usr/lib/fpc/0.99.11/ <p>

Again the source directory is not required to compile pascal files with the compiler. If you installed
pre-compiled packages, you don't need them, except for reference.<p>

Remarks: (DIFFERENT FROM Go32V2!)<p>
<ul>
<li>All the paths in the table below get prefixed by the base directory (default /usr/lib/fpc/0.99.12/)</li>
<li>No binary is in the searchpath. A symbolic link is created from a place in the searchpath (usually  in /usr/bin or /usr/local/bin)
to the binary in the basedir is created.<p>
If this link is corrupted, regenerate it with the following sequence:<br>
<pre>
cd /usr/bin
rm -f ppc386
ln -s /usr/lib/fpc/0.99.12/ppc386
(For other versions you have to change 0.99.12 with 0.99.13 or 1,0 etc)
</pre></li>
<li>The ppc386.cfg file is global and placed in /etc/ppc386.cfg. This complicates keeping multiple versions of the compiler
(e.g. release and snapshots), but it can be remedied; see <a href="#ppc386">The ppc386.cfg file</a>. Anyway, it is still used
by the compiler to find the rtl (e.g. /usr/lib/fpc/0.99.12/rtl/linux) and units from other packages
(e.g. /usr/lib/fpc/0.99.12/units/linux)</li>
<li>There are no other binaries except ppc386 (and some less important ones like source beautifiers). 
    All other main development tools (make, linker, everything) are, and should be provided by the OS.</li>
<li> The FPC team makes use of GNU make, not BSD make for their makefiles. Make sure make is make :-).
     If you suspect you are using BSD make, type 'gmake', and check if that works.</li>
<li>The ppc386.cfg file also contains the location of the GNU gcclib. This because the RTL is based on it</li>
<li>/usr/lib/libfpc.so, is the shared library for FPC</li>

</ul><p>

<table border="0">
<tr><td>base directory itself</td><td>       (ppc386 and standard precompiled rtl files) </td></tr>
<tr><td>units/linux/rtl      </td><td>       (Contains RTL for all three forms of linking.</td></tr>
<tr><td>units/linux/packagename </td><td>       (other non-rtl packages precompiled for linux)</td></tr>
<tr><td>source/compiler      </td><td>       (The source of the compiler)                                  </td></tr>
<tr><td>source/rtl           </td><td>       (The base RTL source directory)                               </td></tr>
<tr><td>source/rtl/linux     </td><td>       (The Linux RTL source)                                       </td></tr>
<tr><td>source/rtl/win32     </td><td>       (The Win32  RTL source)                                       </td></tr>
<tr><td>source/fcl/          </td><td>       (The FCL (Delphish classes) source directory)                 </td></tr>
<tr><td>source/gtk/          </td><td>       (The GTK sources(the sources for the GTK X widgetset interface))</td></tr>
</table>
<p>

<a name="ppc386"></a>
<b>3 The ppc386.cfg file</b><p>

The ppc386.cfg is a configurationfile for the compiler which eases the compiler
to find files, and can also be used to pass other default options to the compiler.<p>

When you experience a<b> &quot;Fatal: Can't find unit SYSTEM&quot;</b> error, the problem is either
in this file, or you are simply using a RTL which doesn't belong to the compilerbinary you are using.<p>

I won't bore you with all details and possibilities of this file, it's all in the
manual.I simply want to explain how to avoid those <b>&quot;unit SYSLINUX not found&quot;</b> or variants messages.

Starting with version 0.99.13 this is greatly simplified by the $TARGET and $VERSION variables in
ppc386.cfg. Also pathrecursion for -Fu parameters in ppc386.cfg has been implemented in this version.The advantage
of this is that the binary depending on its version and target can autoselect the right directory
<p>

A minimal ppc386.cfg for OS/2, Windows (win32) or Go32v2(dos extender) should look like this
(assuming the compiler is installed in c:\pp. The lines starting with # are comments and
may be omitted.

<pre>
# Lines starting with a # are comments.

#Place where compiler can find helper binaries (ONLY necessary if NOT in search path)
#-FDc:\pp\bin\$TARGET

 
#Place where compiler can find the RTL and directories of other packaged
 -Fuc:\pp\units\$TARGET\*
 
# Other projects not in c:\pp\units\$target or below:
#-Fuc:\mysources\myhugelibrary

# Write logo
-l

# Show info(i),warnings(w),Notes(n) and Hints(h)
-viwnh
</pre><p>

Since the default paths for Go32V2, Win32 and OS/2 don't contain a version number, autoswitching different 
versions is not possible with the default directory structure. Inserting the versionnumber can remedy that:<p>

Example: 
<pre> 
c:\pp\units\0.99.12\go32v2\rtl 
c:\pp\units\0.99.13\go32v2\rtl 
c:\pp\units\0.99.12\go32v2\api 
c:\pp\units\0.99.13\go32v2\api 
c:\pp\units\0.99.12\win32\rtl 
c:\pp\units\0.99.13\win32\rtl 
c:\pp\units\0.99.12\win32\api 
c:\pp\units\0.99.13\win32\api

etc, The above -Fu line then changes to

-Fuc:\pp\units\$VERSION\$TARGET\*
</pre>

The linux version is the same, except the addition of -Fg line (see below), and the 
basedirectory being /usr/lib/$VERSION.<p>
The addition of $TARGET to the directory name seems to be unnecessary, but some people 
cross-compile for other targets on Linux, which might even increase when there is a native version
for FreeBSD.<p>

<pre>

#Place where compiler can find helper binaries:
 -FD/usr/lib/fpc/$VERSION
 
#Place where compiler can find the RTL
 -Fu/usr/lib/fpc/$VERSION/units/$TARGET/*

#and units from other projects not in the above path and below.
#-Fu/opt/src/myownproject/src/
 

# Write logo
-l

# Show info(i),warnings(w),Notes(n) and Hints(h)
-viwnh

</pre>

Linux users also need something like this to help FPC find your gcc-lib.<br>
You have to figure this out yourself (look in directory /usr/lib/gcc-lib,
for a directory that starts with ix86 with x=3,4,5,6, or run 'gcc -v'<p>

Also the FPC installation script normally guesses this good, so you could simply
try to copy the parameter from the ppc386.cfg generated on installation.

<pre>
-Fg/usr/lib/gcc-lib/i386-redhat-linux/2.7.2.3/
</pre><p>

<a name="whattosave"></a>
<b>4 What you should save from the release, and why.</b><p>

<b>The compiler binary</b><p>

The main reason that you should at least save the binary of the latest release before you install a
newer snapshot over it, is that you should start a 'make cycle' cycle with the latest release.<p>

This is required because there is only one release version, and daily (so a lot) developpers snapshots.
The bugs of the release version are known after some time, and can be worked around in the sources (with $IFDEF ver0_99_12 statements).
This is not possible for each arbitrary daily snapshot. <p>

<h2><b>
So always, always start make cycle with the release binary, unless the developpers strongly advise you
to start make cycle with a (recent) development snapshot.</b></h2>
(0.99.10, 0.99.12, the even numbers are the releases, the odd the developpers snapshots)<p>

<b>RTL</b><p>

The RTL is a different case, it is not needed for 'make cycle'. The only reason to save the 
RTL in objectformat is to check if your own sources still compile (and function right) with the 
current release.<p>

Anyway, the binary RTL is one or two megabytes. If you can spare the space, save it.<p>

If you have a directory structure with the version number in the rtl directory, the new RTL will go
to another directory. If you don't, move the files to a different directory, OUTSIDE c:\pp\units\$TARGET
(since that path is searched recursively by above ppc386.cfg)<p>

<a name="Unpacking"></a>
<b>5 Unpacking the sources.....</b><p>

Again we see three separate cases: (the ones from <a href="#whatyouneed">What you need...</a>)<p>

<ol>
<li>Binary snapshot (snapshot.zip, snapshot.tar.gz or snapshot-win32.zip</li>
<li>IDE snapshot ide-full.zip or .tar.gz, ide-comp.zip or .tar.gz. 
        plus optionally the RTL source package) </li>
<li>All source; rtl.zip and compiler.zip</li>
</ol>

<a name="binsnap"></a>
<b>5.1 Binary snapshot</b><p>

The steps marked with a asterisk (*) are only needed if you haven't used a snapshot of this version before<p>

<b>5.1.1 Linux</b>

<ol>
<li> <b>*</b> Create the directories for it (e.g. for development snapshots with version 0.99.13) :
<pre>
mkdir /usr/lib/fpc             (or make sure it exists)
mkdir /usr/lib/fpc/0.99.13
mkdir /usr/lib/fpc/0.99.13/units/
mkdir /usr/lib/fpc/0.99.13/units/linux
mkdir /usr/lib/fpc/0.99.13/units/linux/rtl
etc
</pre>
</li>

<li>Unpack the zip file or the tar.gz file to a temporary, empty directory.</li>
<li>Copy the binary (compiler/ppc386) to /usr/lib/fpc/0.99.13</li>
<li> <b>*</b> Execute the 'which ppc386' command to find out where the soft link to the release
     compiler is. Then execute the following steps (assuming which ppc386 returns /usr/bin/ppc386)<br>
    <pre>
     cd /usr/bin
     rm -f ppc386
     ln -s /usr/lib/fpc/0.99.13/ppc386
    </pre></li>
<li>Run 'ppc386 -i' to verify the version and date of the used compiler.
If that is correct, the binary is setup correctly.</li>
<li> Make sure your ppc386.cfg is set up correctly</li>
<li> Clean up the rtl directory first, backup all *.o *.ow, *.ppu and *.ppw files)
<li>Copy the RTL (*.o and *.ppu or *.ow and *.ppw files) from the temporary directory to the   
    /usr/lib/fpc/0.99.13/units/linux/rtl directory.</li> 
</ol>

<b>5.1.2 Go32V2/Win32</b>

<ol>
<li>Rename the basedir\bin\go32v2\ppc386.exe or basedir\bin\win32\ppc386.exe file.
ppc0910.exe or ppc0912.exe is a good name.</li>
<li>If you want to compile under the release in the future rename your rtl directory (see <a href="#whattosave">4 What you should save ...</a>)</li>
<li>Unpack the zip to a temporary directory, and copy ppc386.exe to basedir\bin\go32v2\ppc386.exe or basedir\bin\win32\ppc386.exe
and the *.ppu, *.o from the rtl directory to basedir\rtl\go32v2 or basedir\rtl\win32</li>
</ol>

You can edit the ppc386.cfg to be able to compile with both release (using ppc0912 instead of ppc386) and snapshot (ppc386)
without changing anything, if you saved your rtl. See <a href="#ppc386">ppc386.cfg editing</a><p>

Remember, under Windows you have to use 'make cycle OS_TARGET=win32' to make cycle,
otherwise make will try to compiler the Go32V2 env.


<a name="idesnap"></a>
<b>5.2 Ide + a binary snapshot</b><p>

(unknown. Peter?)<p>

<a name="makecycle"></a>
<b>5.3 Make cycle. Rebuild from sources</b><p>

Ahhh, finally, the real thing for da cool dudes. Compiling your own compiler.<p>

For this procedure the latest release installation is required, right now that is 0.99.12b<p>

This is required because you need the release compiler to 'make cycle', and if you use
the dos and/or win32 compiler, the release archives contains gnu binaries required by make cycle<p>

<ol>
<li>First, the same procedure (renaming the release compiler and rtl), and editing of ppc386.cfg
 (see above)</li>
<li>Install your sources somewhere. I will be using the default path c:\pp\source for dos, and
/usr/lib/fpc/0.99.12/source for Linux in this example. (The lazarus team uses /opt/src I believe)<br>
<ol>
<li>If you downloaded the zips, simply extract them in the source/ directory. This should work.</li>
<li>If you use CVS, copy the the cvs'ed sources into this directory (or directly arrange cvs to put them there)</li>
<li>Remove all old *.o *.a *.ppu files. Win32 compiler users should remove *.ow *.ppw and *.aw.
      This can also be done using one or several 'make clean' commands, but check it afterwards!<br>
  <b>Remember that .ppu's and .o's of different versions aren't compatible most of the time. Always make sure 
    that the compiler finds the right .ppu's and .o's, delete non essential ones if you have to, and 
    rebuild the essential ones</b></li>
</ol>  
<li>Run ppc386 -i and verify it's the 0.99.12 (or 1.0 in the future) compiler</li>
<li>Enter the source/compiler directory and type 'make cycle'</li>
<li>Hopefully it will run for some minutes (depending on the speed of the machine), and leave you with 4 binaries:
ppc1.exe ppc2.exe ppc3.exe and ppc386.exe, of which the last 3 are the same size. (without .exe on linux)<br>
That's it. Copy ppc386(.exe) to your binary directory (/usr/lib/fpc/0.99.11 or /0.99.13 on linux, or c:\pp\bin\go32v2 on Linux and
c:\pp\bin\go32v2 and c:\pp\bin\win32 on Go32V2 and Win32).<br>
<b>Note:</b> The win32 often seems to end in an error, complaining about binaries not being the same. This is hopefully a temporary problem, but
nothing to worry about. You can use the generated compiler and rtl!<br>
</li>
<li>enter the source/rtl/linux source/rtl/win32 or source/rtl/go32v2 directory depending on your target. Copy the *.o and *.ppu (*.ow *.ppw for win32) to
the rtl directory (/usr/lib/fpc/0.99.12/units/linux/rtl, c:\pp\units/go32v2\rtl and c:\pp\units\win32\rtl)</li>
</ol>

Check also the next chapter if you want to smart- or sharedlink.<p>
<p>

<a name="otherstuff"></a>
<b>6 Other packages (API,FCL, smartlinking, staticlinking)</b><p>

This extra chapter covers some other items often encountered when creating or upgrading to new compilers.<p>

<b>6.1 Smart and shared linking</b><p>

First, let's define the main types of linking.  <p>

<ol>
<li>The ordinary static linking. Everything (used and none used parts of the source) is linked in. Huge binaries.</li>
<li>Smartlinking. Only used items (procedures,functions, constants, anything) are linked in, the binary is principally 
   standalone, (under linux except for some C-libraries, which is normal)</li>
<li>(Linux only) Shared linking. The shared units are in a separate file (for the rtl that's libfpc.so) which is runtime 
    linked to the binary)<br>
   Hello world programs of 1kb are possible, but you also have to distribute the libfpc.so, or run
   only on systems with FPC installed.<br>
   As a blackbox much like VB DLL's, but internally it's different. Binaries using shared libraries go through a real 
   linking and relocation process, not some jumptable of helperfunction at the begin of the code.<br>
   Combination of shared and smartlinking (some units in the .so, some not) is possible</li>
</ol><p>

Smartlinking RTL's are generated by executing 'make smart' (don't forget
the capitals!) in the rtl directory. The place for a smartlinking RTL is 
starting with 0.99.13 equal to the ordinary RTL. One PPU/PPW file will be used 
for all forms of linking. A second RTL-compile to make a static RTL is also not 
necessary anymore. The smartlink process also generates the .o  files required for static linking<p>

The difference is that smartlinking also generates <b>*.a files</b>. Don't forget to copy them!<p>

You can smartlink your binaries by executing 'ppc386 demo.pp -XXs'. Compiled your own units smartlinking using -CX.
So if you compiled your RTL smartlinking, and want to compile your program and some additional units smartlinking
use ppc386 -CX -XXs programname.<p>

Shared RTL's are generated by running 'make shared' and then make install in the rtl/linux directory. The .ppu's should end
up in /usr/lib/fpc/0.99.13/units/rtl/linux, and the libfpc.so in /usr/lib (with certain special permissions,
that's why I let the makefile install, instead of doing it myself as in the rest of the examples <p>
I haven't done this lately, and maybe the procedure is changed. See the next version of this faq for precise details,
or check the real documentation, and try yourself. Compiling a file to link with shared libraries
is done by executing 'ppc386 demo.pp -XDs'<p>

<p>

<b>6.2 Compiling and using other packages</b><p>

This is quite simple. First check if a makefile is available in the package directory.
If so, run
<pre>
make clean
make
</pre>
and copy the generated *.o, *.ppu (*.ow *.ppw for windows) files to the basedir/units/go32v2 basedir/units/$TARGET directory <p>

If you want to create the files smartlinking first check if make smart works (most packages will!)
else try 'make OPT=&quot;-CX &quot;'. The -CX takes care of the smartlinking the
units made by the makefile. To check if smartlinking has occured, look if *.a's have been generated.
Copy all generated files(*.o *.ppu and *.a, except for Win32 where it is *.ppw
*.ow and *.aw) to the units/$TARGET/packagename directory.
<p>

