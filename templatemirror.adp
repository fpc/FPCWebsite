<master>
<property name="title"><trn key="website.templatemirror.title" locale="en_US">Free Pascal - Select download mirror</trn></property>
<property name="entry">download</property>
<property name="subentry">platform</property>
<property name="header"><trn key="website.Select_download_mirror" locale="en_US">Select download mirror</trn></property>
<property name="maindir">../../</property>

<trn key="website.Select_download_site" locale="en_US">Please select the site from which you want to download:</trn>
<p>

<ul>
  <li><a target=_new href="http://sourceforge.net/projects/freepascal/files/@sourceforgepath@/@latestversion@">SourceForge</a></li>
</ul>

<p>
<ul>
  <multiple name="mirrors">
    <li><a href="@pagename@-@mirrors.namel@@x@">@mirrors.name@</a></li>
  </multiple>
</ul>
