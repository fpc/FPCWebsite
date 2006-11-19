#
# This script is for the website copy used by the community.
# By visiting http://community.freepascal.org/update_svn.tcl,
# one calls this script which will update the website copy there
# from svn.
#

ad_require_permission [ad_conn package_id] admin

ReturnHeaders

ns_write "<HEAD><HEAD><TITLE>SVN update</TITLE></HEAD><BODY bgcolor=white>
<h2>SVN update</h2>
<hr>

Please wait while 'svn update' is running.
"

set olddir [pwd]
cd [file dirname [ad_conn file]]
catch {
  set f [open {|svn update 2>&1} r]
  set t [read $f]
  close $f
}
cd $olddir

ns_write "<HR>Done. The output was:<BR><PRE>"

ns_write $t

ns_write "</PRE></BODY></HTML>"
