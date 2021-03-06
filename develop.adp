<master>
<property name="title"><trn key="website.develop.title" locale="en_US">Free Pascal - Development</trn></property>
<property name="entry">develop</property>
<property name="header"><trn key="website.develop.header" locale="en_US">Development</trn></property>

<trn key="website.develop.note" locale="en_US">
<p>
Free Pascal is always under development. If you want to see how the
development is progressing you can take a peek at the developer versions.</p>

<p><b>Note:</b> There is no support for the development versions.</p>
<p><b>Note:</b> Always <b>start using the latest official release</b> when compiling a development version. Any other starting compiler is not guaranteed to work.</p>

<p>You have the following options:</p>
</trn>

<hr>

<a name="sourcesv21"></a>
<a name="sourcestrunk"></a>
<trn key="website.develop.tree" locale="en_US">
<h3>Download Daily Source Snapshot of Development Tree (trunk)</h3>
<p>
You can download today's development (trunk - currently v3.3.x) sources in the form
of a packed source snapshot from our FTP server (and its mirrors). These source snapshots are
updated on a daily basis, and reflect the state of the source repository.
</p>
<p>
Entire fpc sources archive of trunk:
<a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/trunk/source/fpc.zip">fpc.zip</a> (31 MB).
</p>
<p>
Furthermore, there is an even larger archive including the fpc sources together
with documentation sources and release-building-related files in the same directory -
<a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/trunk/source/fpcbuild.zip">fpcbuild.zip</a>.
</p>
</trn>

<a name="sourcesv20"></a>
<a name="sourcesfixes"></a>
<trn key="website.develop.snapshot" locale="en_US">
<h3>Download Daily Source Snapshot of the Fixes Tree</h3>
<p>
You can download today's fixes branch (currently v3.2.x) sources in the form
of a packed source snapshot from our FTP server (and its mirrors). These sources
may eventually be used to build the next stable (fixes) release. These source snapshots are updated on
a daily basis, and reflect the state of the source repository.
</p>
<p>
Entire fpc sources archive of the fixes branch:
<a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/fixes/source/fpc.zip">fpc.zip</a> (31 MB)
</p>
<p>
Furthermore, there is an even larger archive including the fpc sources together
with docs sources and release building related files in the same directory -
<a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/fixes/source/fpcbuild.zip">fpcbuild.zip</a>.
</p>
</trn>

<br>


<hr>

<a name="snapshotsv21"></a>
<a name="snapshotstrunk"></a>
<trn key="website.develop.daily" locale="en_US">
<h3>Download Daily Update of Development Tree (trunk)</h3>
<p>
These compiled snapshots contain the latest development updates and bug fixes. There is no
guarantee that the new development updates are fully working and that the snapshot
is bugfree.
</p>
<p>The files are available from our <a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/trunk/">ftp site</a> and mirrors.
</p>
</trn>

<a name="snapshotsv20"></a>
<a name="snapshotsfixes"></a>

<trn key="website.develop.fixes" locale="en_US">
<h3>Download Daily Update of the Fixes Tree</h3>
<p>
These compiled snapshots contain the latest bug fixes, without major new
features. They may be more stable than the development snapshots (and even
than the last official release), but there is still no guarantee that these
snapshots are bug free.
</p>
<p>The files are available from our <a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/fixes/">ftp site</a> and mirrors.
</p>
</trn>

<br>

<hr>
<trn key="website.develop.svn" locale="en_US">
<a name="svn"></a><h3>Connect to Source Repository with SVN</h3>
<p>
As an alternative to the daily zip files of the SVN sources,
the SVN repository has been made accessible for everyone,
with read-only access. This means that you can always have access to
the latest source code. It is also a method
which requires less bandwidth once you have done the first download (called a &quot;checkout&quot; in SVN lingo).
</p>
<p>
<b>Development snapshots</b>
</p>
<p>
How do you obtain the sources via SVN? Generally, you need 3 steps:<br>
(once you have SVN installed, of course. Look <a href="http://subversion.tigris.org">here</a> for instructions on
how to do that.)
</p>
</trn>

<trn key="website.develop.fpc" locale="en_US">
<OL>
<li> To retrieve the full fpc source repository,
type
<PRE>
svn checkout https://svn.freepascal.org/svn/fpc/trunk fpc
</PRE>
This will create a directory called &quot;fpc&quot; in the current directory, containing
subdirectories with the following components:

<ul>
<li><b>rtl</b>, the run time library source code for all platforms.</li>
<li><b>compiler</b>, the compiler source code.</li>
<li><b>packages</b>, packages source code (contains Free Component Library, gtk, ncurses, mysql and many more)</li>
<li><b>utils</b>, the utilities source code.</li>
<li><b>tests</b>, the compiler and RTL tests.</li>
<li><b>installer</b>, the text mode installer source code.</li>
</ul>

If you do not want the entire repository, you can check out subsections
using, e.g.,

<PRE>
svn checkout https://svn.freepascal.org/svn/fpc/trunk/rtl fpc/rtl
</PRE>

<p>
Normally, you should perform this checkout step just once.
</p>
<li> To update the sources that were downloaded (checked out) above to the latest available version, use
<PRE>
svn update fpc
</PRE>
or
<PRE>
svn update fpc/rtl
</PRE>
if you only downloaded some separate components, such as the rtl sources in this case.<br>
These commands will retrieve patches <em>ONLY</EM> for the files that have
changed on the server. <br>
<p>
You can repeat this step whenever you want to update your sources. It is by
far the most economic way to remain up-to-date in terms of bandwidth.

</OL>
</trn>

<trn key="website.develop.fixes32x" locale="en_US">
<p>
<b>Fixes to 3.2.x </b>
</p>
<p>
The sources of the fixes branch need a separate directory, so create a separate directory fixes, enter it, and repeat
the above checkout command with the URL https://svn.freepascal.org/svn/fpc/branches/fixes_3_2:
</p>
<pre>
cd mysvn/fixes
svn checkout https://svn.freepascal.org/svn/fpc/branches/fixes_3_2 fpc
</pre>

and to update:

<pre>
svn update fpc
</pre>

<p>
To checkout a release, you have to checkout the tagged versions, e.g.
svn checkout https://svn.freepascal.org/svn/fpc/tags/release_3_2_0 fpc
</p>

<p>
The sources of docs are in a separate repository called &quot;fpcdocs&quot;, so the command to get them is
<pre>
svn checkout https://svn.freepascal.org/svn/fpcdocs/trunk fpcdocs
</pre>

<p>
If you want to learn more about subversion, read this excellent <a href="http://svnbook.red-bean.com/">Subversion book</a>,
which is also available online in different formats for free.
</p>
</trn>

<hr>

<trn key="website.develop.repositories" locale="en_US">
<a name="morerepos"></a><h3>Other repositories</h3>
The fpc svn server hosts more repositories than only the fpc repository. You can check them out using
svn co https://svn.freepascal.org/svn/&lt;repository&gt; where &lt;repository&gt; is:<br>
<b>fpcprojects</b> Several fpc related projects like a converted TTT 5.10, gdbpas or the FPC irc bot.<br>
<b>lazarus</b> <a href="http://www.lazarus.freepascal.org">Lazarus</a>.<br>
<b>fpcdocs</b> The fpc documentation sources.<br>
<b>html</b> The sources of the fpc website you are browsing right now.<br>
<b>fpcbuild</b> Everything needed to build fpc releases. This links
to several other repositories, so this checkout is really big.<br>
<b>logs</b> Log files of the repositories mentioned above.<br>
</trn>

<hr>

<trn key="website.develop.browse" locale="en_US">
<a name="svnweb"></a><h3>Browse the Source Repository with a Web Browser</h3>

<p>
The contents of the SVN archive can also be browsed with your web-browser
through this <a href="https//www.freepascal.org/cgi-bin/viewcvs.cgi/?root=fpc">viewcvs</a> interface.
</p>
</trn>

<hr>

<trn key="website.develop.future" locale="en_US">
<a name="future"></a><h3>Bugs and the Future</h3>
<p>
A list of known bugs is available <a href="https://bugs.freepascal.org/set_project.php?project_id=6">here</a>.<br>
Future plans for Free Pascal can be viewed <a href="future@x@">here</a>.<br>
If you are interested in FPC development, you may also be interested in the
<a href="http://wiki.freepascal.org/">wiki</a>.
</p>
</trn>
