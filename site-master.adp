<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!-- Web Page Design by James Koster - http://www.jameskoster.co.uk  and Marko Mihelèiæ - http://www.mcville.net-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=@output_encoding@">
<title>@title@</title>
<link href="@maindir@css/fp.css" rel="stylesheet" type="text/css" charset="iso-8859-1">
<link href="@maindir@css/fp-navl.css" rel="alternate stylesheet" type="text/css" charset="iso-8859-1" title="Nav-Left">
@headmatter@
</head>

<body>
<div id="header">
 <div id="menu">
  <a href="@maindir@"><trn locale="en_US" key="website.Home">Home</trn></a>
  <a href="@maindir@news@x@"><trn locale="en_US" key="website.News">News</trn></a>
  <a href="@maindir@download@x@"><trn locale="en_US" key="website.Download">Download</trn></a>
  <a href="http://wiki.freepascal.org/"><trn locale="en_US" key="website.Wiki">Wiki</trn></a>
  <a href="http://forum.lazarus.freepascal.org"><trn locale="en_US" key="website.Community">Forum</trn></a>
  <a href="@maindir@docs@x@"><trn locale="en_US" key="website.Documentation">Documentation</trn></a>
  <a href="http://bugs.freepascal.org/set_project.php?project_id=6"><trn locale="en_US" key="website.Bugtracker">Bug tracker</trn></a>
 </div>
 <img src="@maindir@pic/logo.gif" alt="FPC Logo" width="133" height="63" >
 <div class="spacer"></div>
 <h1>free pascal</h1>
 <h2>Open source compiler for Pascal and Object Pascal</h2>
</div>

<div id="content">
 <div id="sidebar">
  <h1><trn locale="en_US" key="website.General">General</trn></h1>
  <div class="submenu">
   <a href="@maindir@"><trn locale="en_US" key="website.Home">Home</trn></a>
   <a href="@maindir@news@x@"><trn locale="en_US" key="website.News">News</trn></a>
   <a href="@maindir@download@x@"><trn locale="en_US" key="website.Download">Download</trn></a> 
   <a href="http://wiki.freepascal.org/"><trn locale="en_US" key="website.Wiki">Wiki</trn></a>
   <a href="http://forum.lazarus.freepascal.org"><trn locale="en_US" key="website.Community">Forum</trn></a> 
   <a href="@maindir@docs@x@"><trn locale="en_US" key="website.Documentation">Documentation</trn></a> 
   <a href="http://bugs.freepascal.org/set_project.php?project_id=6"><trn locale="en_US" key="website.Bugtracker">Bug tracker</trn></a> 
  </div>
			
  <h1><trn locale="en_US" key="website.Coding">Coding</trn></h1>
   <div class="submenu">
    <a href="@maindir@develop@x@"><trn locale="en_US" key="website.Development">Development</trn></a>				  
    <a href="@maindir@future@x@"><trn locale="en_US" key="website.Future_Plans">Future Plans</trn></a>
    <a href="@maindir@probs@x@"><trn locale="en_US" key="website.Known_Problems">Known Problems</trn></a>

    <a href="@maindir@faq@x@"><trn locale="en_US" key="website.FAQ">FAQ</trn></a>				  
    <a href="@maindir@contrib/db.php3"><trn locale="en_US" key="website.Contributed_Units">Contributed Units</trn></a>
    <a href="@maindir@contrib/add.php3"><trn locale="en_US" key="website.Contribute">Contribute</trn></a>
    <a href="@maindir@moreinfo@x@"><trn locale="en_US" key="website.More_information">More information</trn></a>
    <a href="@maindir@maillist@x@"><trn locale="en_US" key="website.Mailinglists">Mailing Lists</trn></a>
    <a href="@maindir@port@x@"><trn locale="en_US" key="website.Porting_from_TP7">Porting from TP7</trn></a>
    <a href="@maindir@aboutus@x@"><trn locale="en_US" key="website.Authors">Authors</trn></a>
    <a href="@maindir@credits@x@"><trn locale="en_US" key="website.Credits">Credits</trn></a>
    <a href="@maindir@links@x@"><trn locale="en_US" key="website.Links_mirrors">Links/mirrors</trn></a>
   </div>
					
  <h1><trn locale="en_US" key="website.Tools">Tools</trn></h1>
   <div class="submenu">
    <a href="@maindir@tools/tools@x@"><trn locale="en_US" key="website.Tools">Tools</trn></a>
    <a href="@maindir@tools/delp@x@">Delp</a>
    <a href="@maindir@tools/fpcmake@x@">FPCMake</a>
    <a href="@maindir@tools/h2pas@x@">H2Pas</a>
    <a href="@maindir@tools/ppdep@x@">PPDep</a>
    <a href="@maindir@tools/ppudump@x@">PPUDump</a>
    <a href="@maindir@tools/ppumove@x@">PPUMove</a>
    <a href="@maindir@tools/ptop@x@">PtoP</a>
    <a href="@maindir@tools/rstconv@x@">RSTConv</a>
    <a href="@maindir@tools/tply@x@">TPLY</a>
    <a href="@maindir@fcl/fcl@x@">FCL</a>
    <a href="@maindir@packages/"><trn locale="en_US" key="website.Packages">Packages</trn></a>
   </div>

  <h1><trn locale="en_US" key="freepascal.search">Search</trn></h1>
  <trn locale="en_US" key="freepascal.searchwhat">Search documentation, forums &amp; mailing lists.</trn>
  <form action="http://forum.lazarus.freepascal.org/index.php?action=search" method="get">
   <p><input type="text" name="q" size="20" maxlength="256"></p>
   <p><input type="submit" value="Search" name="t">
    <input type="submit" value="Feeling Lucky" name="t">
   </p>
  </form>

  <div class="logos">
   <p><a href="http://www.lazarus.freepascal.org"><img src="@maindir@pic/lazarus_produced_logo.gif" alt="Lazarus Logo" height="57" width="125" ></a></p>
   <p><a href="http://www.ffii.org"><img src="http://demo.ffii.org/banners/bsod7s_88x31.en.png" alt="EU-Council segfaulted" height="31" width="88" ></a></p>
   <p><a href="http://sourceforge.net"><img src="http://sourceforge.net/sflogo.php?group_id=2174&amp;type=1" width="88" height="31" alt="SourceForge.net Logo" ></a></p>
  </div>
 </div>
				
 <div id="mainbar">
  <h1>@header@</h1>
  <slave>
 </div>
</div>

@modify@

<div id="site-footer">
  <div class="action-list">
    <ul>
    <li>
     <font color="#199b02">&#x2713;</font> <a href='@maindir@lang_howto@x@'><trn key="website.Multilingual_website" locale="en_US">Multilingual website</trn></a>
    </li>
    </ul>
  </div>
</div>

<div id="footer">
  Copyright Free Pascal team 1993-2010.<br>
  Page design by <a href="http://www.sixshootermedia.com">6ix Shooter Media</a>, additional modifications by <a href="mailto:mcposeidon@mcville.net">Pos3idon</a>.
</div>
</body></html>
