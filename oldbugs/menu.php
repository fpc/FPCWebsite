<FORM ACTION='db.php3'>
<H1>View bugs:</H1>
<TABLE>
<TR><TD>With Status:</TD>
<TD>
<SELECT NAME="statusfield">
<OPTION SELECTED>Any
<OPTION>Unfixed
<OPTION>Fixed
<OPTION>Unreproducable
</SELECT>
</TD>
</TR>
<TR><TD>On OS:</TD>
<TD>
<SELECT NAME="osfield">
<OPTION SELECTED>Any
<OPTION>GO32V2
<OPTION>Linux
<OPTION>OS/2
<OPTION>Win32
<OPTION>BeOS
<OPTION>SunOS
<OPTION>FreeBSD
<OPTION>NetBSD
<OPTION>AmigaOS
<OPTION>PalmOS
<OPTION>NetWare
<OPTION>Darwin
<OPTION>Mac OS X
</SELECT>
</TD>
</TR>
<TR><TD>With version:</TD>
<TD>
<SELECT NAME="versionfield">
<OPTION SELECTED>Any
<OPTION>2.1.1
<OPTION>2.0.1
<OPTION>2.0.0
<OPTION>1.9.9
<OPTION>1.9.8
<OPTION>1.9.7
<OPTION>1.9.6
<OPTION>1.9.5
<OPTION>1.9.4
<OPTION>1.9.3
<OPTION>1.9.2
<OPTION>1.9.1
<OPTION>1.9.0
<OPTION>1.1.0
<OPTION>1.0.10
<OPTION>1.0.8
<OPTION>1.0.7
<OPTION>1.0.6
<OPTION>1.0.5
<OPTION>1.0.4
<OPTION>1.0.4
<OPTION>1.0.3
<OPTION>1.0.2
<OPTION>1.0.1
<OPTION>1.0.0
</SELECT>
</TD>
</TR>
<TR><TD>With category:</TD>
<TD>
<SELECT NAME="categoryfield">
<OPTION SELECTED value="-1">Any
<OPTION value="0">Compiler
<OPTION value="1">RTL
<OPTION value="2">IDE
<OPTION value="4">Misc
<OPTION value="5">Documentation
<OPTION value="6">FCL
<OPTION value="7">Packages
<OPTION value="8">Installer
<OPTION value="9">Free vision
</SELECT>
</TD>
</TR>
<TR><TD>With type:</TD>
<TD>
<SELECT NAME="bugtypefield">
<OPTION SELECTED value="-1">Any
<OPTION value="1">Error
<OPTION value="2">Crash
<OPTION value="3">Wishlist
<OPTION value="4">Compatibility
</SELECT>
</TD>
</TR>
<TR><TD>Reported since:</TD>
<TD>
<SELECT NAME="age">
<OPTION SELECTED>The start of the epoch
<OPTION>Last week
<OPTION>Today
</SELECT>
</TD>
</TR>
<TR><TD>Order results on:</TD>
<TD>
<SELECT NAME="sortfield">
<OPTION SELECTED>BugId
<OPTION>Status
<OPTION>Fixer
<OPTION>Fixdate
<OPTION>AddDate
<OPTION>FixDate
<OPTION>Fixer
<OPTION>FixVersion
</SELECT>
</TD>
</TR>
<TR><TD>Format result as:</TD>
<TD>
<SELECT NAME=format>
<OPTION SELECTED>summary
<OPTION>detailed
</SELECT>
</TD>
</TR>
</TABLE>
<INPUT TYPE="submit" VALUE="Show these bugs">
<INPUT TYPE="reset" VALUE="Reset criteria">
</FORM>
<HR>
