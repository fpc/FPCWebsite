<master>
<property name="title">Free Pascal - Development</property>
<property name="entry">develop</property>
<property name="header">Development</property>
<p>
Free Pascal is always under development. When you want to see how the
development is progressing you can take a peek at the developer versions.</p>

<p><b>Note:</b> There is no support for the development versions.</p>

<p>You have the following options:</p>

<hr>

<a name="sourcesv21"></a><a name="sourcestrunk"></a><h3>Download Daily Source Snapshot of Development Tree (trunk)</h3>
<p>
You can download todays development (trunk - currently v2.3.x) sources in form
of a packed snapshot from our FTP server (and its mirrors). These snapshots are
updated on a daily basis, and reflect the state of the source repository.
</p>
<p>
Entire fpc sources archive of trunk:
<a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/trunk/source/fpc.zip">fpc.zip</a> (24 MB).
</p>
<p>
Furthermore, there is an even larger archive including the fpc sources together
with docs sources and release building related files in the same directory -
<a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/trunk/source/fpcbuild.zip">fpcbuild.zip</a>.
</p>

<a name="sourcesv20"><a name="sourcesfixes"></a><h3>Download Daily Source Snapshot of the Fixes Tree</h3>
<p>
You can download todays fixes branch (currently v2.2.x) sources which will lead
to the next stable (fixes) release in form of a packed
snapshot from our FTP server (and its mirrors). These snapshots are updated on
a daily basis, and reflect the state of the source repository.
</p>
<p>
Entire fpc sources archive of the fixes branch:
<a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/fixes/source/fpc.zip">fpc.zip</a> (24 MB)
</p>
<p>
Furthermore, there is an even larger archive including the fpc sources together
with docs sources and release building related files in the same directory -
<a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/fixes/source/fpcbuild.zip">fpcbuild.zip</a>.
</p>

<br>


<hr>

<a name="snapshotsv21"></a><a name="snapshotstrunk"></a><h3>Download Daily Update of Development Tree (trunk)</h3>
<p>
These snapshots contain the latest development updates and bug fixes. There is no
guarantee that the new development updates are fully working and that the snapshot
is bugfree.
</p>
<p>The files are available from our <a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/trunk/">ftp site</a> and mirrors.
</p>

<h3><a name="snapshotsv20"></a><a name="snapshotsfixes"></a><h3>Download Daily Update of the Fixes Tree</h3>
<p>
These snapshots contain the latest bug fixes, without major new
features. This should be more stable than the development snapshots (and even
the last official release), but there is still no guarantee that these
snapshots are bugfree.
</p>
<p>The files are available from our <a href="ftp://ftp.freepascal.org/pub/fpc/snapshot/fixes/">ftp site</a> and mirrors.
</p>

<br>

<hr>

<a name="svn"></a><h3>Connect to Source Repository with SVN</h3>
<p>
As an alternative to the daily zip files of the SVN sources,
the SVN repository has been made accessible for everyone,
with read-only access. This means that you can directly access the code, and
you will have really the last-minute sources available. It is also a method
which requires less bandwidth once you have done the first download (checkout in SVN lingo).
</p>
<p>
<b>Development snapshots</b>
</p>
<p>
How to do this? Generally, you need 3 steps:<br>
(If you have SVN installed, of course. Look <a href="http://subversion.tigris.org">here</a> for instructions on
how to do that.)
</p>

<OL>
<li> To retrieve the full fpc source repository,
type
<font size="-1">
<PRE>
svn checkout http://svn.freepascal.org/svn/fpc/trunk fpc
</PRE>
</font>
This will create a directory fpc in your SVN repository directory, containing
subdirectories with the following packages:

<ul>
<li><b>rtl</b>, the RunTime Library source for all platforms.</li>
<li><b>compiler</b>, the compiler source.</li>
<li><b>fcl</b>, the Free Component Library source.
<li><b>packages</b>, Packages source (contains gtk, ncurses, mysql and many more)</li>
<li><b>utils</b>, the utils sources.</li>
<li><b>fv</b>, Free Vision</li>
<li><b>tests</b>, the compiler and RTL tests.</li>
<li><b>ide</b>, the IDE sources.</li>
<li><b>installer</b>, the text mode installer sources.</li>
</ul>
</p>

If you don't want the entire repository, you could try to check out parts
with

<font size="-1">
<PRE>
svn checkout http://svn.freepascal.org/svn/fpc/trunk/rtl fpc/rtl
</PRE>
</font>

<p>
Normally, you should perform this step just once.
</p>
<li> To update the sources which were downloaded (checkout) above
<font size="-1">
<PRE>
svn update fpc
</PRE>
</font>
or
<font size="-1">
<PRE>
svn update fpc/rtl
</PRE>
</font>
if you only downloaded some separate packages, the rtl sources in this case.<br>
This will retrieve patches <em>ONLY</EM> for the files that have
changed. <br>
<p>
This step you can repeat whenever you want to update your sources. It is by
far the most economic in terms of bandwidth.

</OL>
<p>
<b>Fixes to 2.2.x </b>
</p>
<p>
The fixes need a separate directory, create a separate directory fixes, enter it, and repeat
the above checkout command with the URL http://svn.freepascal.org/svn/fpc/branches/fixes_2_2:
</p>
<pre>
cd mysvn/fixes
svn checkout http://svn.freepascal.org/svn/fpc/branches/fixes_2_2 fpc
</pre>

and to update:

<pre>
svn update fpc
</pre>

<p>
To checkout release, you've to checkout the tagged versions, e.g.
svn checkout http://svn.freepascal.org/svn/fpc/tags/release_2_2_0 fpc
</p>

<p>
The sources of docs are in a separate repository called fpcdocs, so the command to get them is
<pre>
svn checkout http://svn.freepascal.org/svn/fpcdocs/trunk fpcdocs
</pre>

<p>
In case you have trouble with the default server, you can use http://svn2.freepascal.org as alternative svn
server. Furthermore, this server listens also at port 8080, so if you can not access svn on the default port 80,
you might use http://svn2.freepascal.org:8080 instead.
</p>

<p>
If you want to learn more about subversion, read this excellent <a href="http://svnbook.red-bean.com/">Subversion book</a>
which is also available online in different formats for free.
</p>

<hr>

<p>
<a name="morerepos"></a><h3>Other repositories</h3>
The fpc svn server hosts more repositories than only the fpc repository, you can get them by
svn co http://svn.freepascal.org/svn/&lt;repository&gt; where &lt;repository&gt; is:<br>
<b>fpcprojects</b> Several fpc related projects like a converted TTT 5.10, gdbpas or the FPC irc bot.<br>
<b>lazarus</b> <a href="http://www.lazarus.freepascal.org">Lazarus</a>.<br>
<b>fpcdocs</b> The fpc documentation sources.<br>
<b>html</b> The sources of the fpc website you're just browsing.<br>
<b>fpcbuild</b> Everything needed to build fpc releases. This links
to several other repositories, so this checkout is really big.<br>
<b>logs</b> Log files of the repositories mentioned above.<br>
</p>

<hr>

<a name="svnweb"></a><h3>Browse the Source Repository with a Web Browser</h3>

<p>
The contents of the SVN archive can also be browsed with your web-browser
through this <a href="http://www.freepascal.org/cgi-bin/viewcvs.cgi/?root=fpc">viewcvs</a> interface.
</p>

<hr>

<a name="mercurial"></a><h3>Mercurial mirror</h3>
For developement without subversion write access or without any internet, an Mercurial (a distributed VCS) mirror of the svn trunk is available at:
http://florianklaempfl.de:8000/fpctrunk

<hr>

<a name="future"></a><h3>Bugs and the Future</h3>
<p>
A list of known bugs is available <a href="http://bugs.freepascal.org/set_project.php?project_id=6">here</a>.<br>
And the future plans of Free Pascal can be viewed <a href="future@x@">here</a>.<br>
If you're interested in FPC development, you might be also interested in the
<a href="http://www.freepascal.org/wiki">wiki</a>.
</p>
