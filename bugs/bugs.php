<?php
/*
 * Some contribs variables
 */
$head="head.tmpl";
$foot="foot.tmpl";
/*
 * Connect to the contribs database.
 */
function ConnectToFPC () {
  $db = mysql_connect('','FPCUser','FPC');
  CheckMySQLError($foot);
  mysql_select_db('FPC');
  CheckMySQLError($foot);
  return $db;
}
/*
 * Dump one record of the bugs database in a table.
 * Table structure:
  CREATE TABLE bugs (
  BugId int(11) DEFAULT '0' NOT NULL auto_increment,
  Title varchar(128),
  Name varchar(80),
  Email varchar(80),
  Os enum('All','GO32V1','GO32V2','Linux','OS/2','WIN32') DEFAULT 'All',
  AddDAte date,
  FixDate date,
  Fixer varchar(80),
  FixVersion varchar(30),
  Category tinyint(4),
  Status enum('Unfixed','Fixed','Unreproducable') DEFAULT 'Unfixed',
  comment varchar(255),
  Descr text,
  Prog text,
  PRIMARY KEY (BugId)
);

 */
function DumpRecord ($row) {
echo "<TABLE WIDTH=\"100%\"CELLPADDING=2 CELLSPACING=1 BORDER=1>";
RowStart();
  CellStart();
  echo "<B>BUG ID</B>: " . MakeAnchor("edit.php3?ID=$row->BugId","$row->BugId");
  CellEnd();
  CellStart(); echo "<B>Status</B>: $row->Status"; CellEnd();
  CellStart(); echo "<B>Version</B>: $row->BugVersion"; CellEnd();
  CellStart(); echo "<B>OS</B>: $row->os"; CellEnd();
RowEnd;
RowStart();
  CellStart('COLSPAN=4'); echo "<B>Title</B>:<BR> " . htmlspecialchars($row->Title) ; CellEnd();
RowEnd();
RowStart();
  CellStart('COLSPAN=4'); echo "<B>Description</B>:<BR> " . nl2br(htmlspecialchars($row->Descr));  CellEnd();
RowEnd();
RowStart();
  CellStart(); echo "<B>Category</B>: "; echo NumToCategory($row->Category); CellEnd();
  CellStart(); echo "<B>Type</B>: "; echo NumToBugType($row->bugtype); CellEnd();
  CellStart(); echo "<B>Date entered</B>: $row->AddDAte"; CellEnd();
  CellStart();
  echo "<B>Submitter</B>:" . MakeAnchor("mailto:$row->Email","$row->Name");
  CellEnd();
RowEnd();
RowStart();
  CellStart(); echo "<B>Date Fixed: </B>";
  if ($row->Status == "Fixed") {
    echo "$row->FixDate";
  } else {
    echo "N/A";
  }
  CellEnd();
  CellStart();
  echo "<B>Fix version</B>: $row->FixVersion";
  CellEnd();
  CellStart('COLSPAN=2');
  echo "<B>Fixer</B>: $row->Fixer";
  CellEnd();
RowEnd();
RowStart();
  CellStart('COLSPAN=4');
  echo "<B>Comment</B>:<BR>" . nl2br(htmlspecialchars($row->comment));
  CellEnd();
RowEnd();
RowStart();
  CellStart("COLSPAN=4");
  if (($row->Prog) && ($row->Prog!="")){
    DoAnchor("showsource.php3?ID=$row->BugId",'Show program source');
    } else {
    echo "No source available";
    }
  CellEnd();
RowEnd();
echo "</TABLE>";
}
/*
 * Emit a menu for bugs system.
 */
function EmitBugsMenu () {
  include ('menu.php');
}
function VerifyPassword ($pwd) {
  if ($pwd=='Shimrod') {
    return 1;
  } else {
    return 0;
  }
}
function WrongPassword () {
  Header1("Warning: Authentication failed.");
  echo "Sorry, but the password you provided is not correct. Only members of the Free Pascal team have the authority to mark bugs as fixed.<P>";
  echo "You can try to provide it again below or go back to the main menu.<P>";
  Rule ();
}
/*
 * category numbers
 */
$CategoryNR['Compiler']=0;
$CategoryNR['RTL']=1;
$CategoryNR['IDE']=2;
$CategoryNR['IDE(GUI)']=3;
$CategoryNR['Misc']=4;
$CategoryNR['Documentation']=5;
$CategoryNr['FCL']=6;
$CategoryNr['Packages']=7;
$CategoryNR['Installer']=8;
/*
 * Category names
 */
$CategoryNames[]='Compiler';
$CategoryNames[]='RTL';
$CategoryNames[]='IDE';
$CategoryNames[]='IDE'; /* Transformed */
$CategoryNames[]='Misc';
$CategoryNames[]='Documentation';
$CategoryNames[]='FCL';
$CategoryNames[]='Packages';
$CategoryNames[]='Installer';
/*
 * Bug type names
 */
$BugTypeNames[]='Error';
$BugTypeNames[]='Crash';
$BugTypeNames[]='Wishlist';
$BugTypeNames[]='Compatibility';
/* Functions */
function CategoryToNum ($category) {
  global $CategoryNR;
  return $CategoryNR[$category];
}
function NumToCategory ($category) {
  global $CategoryNames;
  return $CategoryNames[$category];
}
function NumToBugType ($BugType) {
  global $BugTypeNames;
  return $BugTypeNames[$BugType-1];
}
/*
 * Dump a record in summary view.
 */
function DumpSummaryRecord ( $row, $ShowCategory=0,$ShowBugType=0 ) {
  RowStart();
  CellStart();
  DoAnchor("showrec.php3?ID=$row->BugId","$row->BugId");
  CellEnd();
  CellStart();
  if ($row->Status) {
    echo $row->Status;
  } else {
    echo 'unfixed';
  }
  CellEnd();
  if ( $ShowCategory ) {
    CellStart();
    echo htmlspecialchars(NumToCategory($row->Category));
    CellEnd();
  }  
  if ( $ShowBugType) {
    CellStart();
    echo htmlspecialchars(NumToBugType($row->BugType));
    CellEnd();
  }  
  CellStart();
  echo htmlspecialchars($row->Title);
  CellEnd();
  RowEnd();
}
/*
 * Mail a bug record. Depending on the status it is sent to the alias or the sender.
 */
function MailRecord ($row,$NewBug = 0) {
  if ($NewBug) {
    $Subject   = "Free Pascal Bug $row->BugId added to bug repository.";
    $mailtext  = "The following bug report ($row->BugId) was entered by $row->Name:\n\n";
  } else {
    if ($row->Status=='Fixed') {
      $Subject   = "Free Pascal Bug $row->BugId fix notification.";
      $mailtext  = "\n\nThe bug you reported (bug $row->BugId) has been fixed:\n\n";
    } else {
      $Subject   = "Free Pascal Bug $row->BugId modification.";
      $mailtext  = "\n\nThe entry concerning the bug you reported (bug $row->BugId) has been modified:\n\n";
    }
  }
  $mailtext .= "(View this bug at http://www.freepascal.org/bugs/showrec.php3?ID=$row->BugId )\n";
  $mailtext .= "Bug ID       : $row->BugId\n";
  $mailtext .= "Title        : $row->Title\n";
  $mailtext .= "Name         : $row->Name\n";
  $mailtext .= "Email        : $row->Email\n";
  $mailtext .= "Category     : " . NumToCategory($row->Category) . "\n";
  $mailtext .= "Bug type     : " . NumToBugType($row->bugtype) . "\n";
  $mailtext .= "FPC version  : $row->BugVersion\n";
  $mailtext .= "OS           : $row->os\n";
  $mailtext .= "Date added   : $row->AddDAte\n";
  $mailtext .= "Status       : $row->Status\n";
  if ($row->Status!='Unfixed') {
  $mailtext .= "Date fixed   : $row->FixDate\n";
  $mailtext .= "Fixer        : $row->Fixer\n";
  $mailtext .= "Fix version  : $row->FixVersion\n";
  $mailtext .= "Comment      :\n$row->comment\n";
  }
  $mailtext .= "Description:\n$row->Descr\n";
  $mailtext .= "\nProgram:\n$row->Prog\n";
  mail("core@freepascal.org",$Subject,$mailtext,'From: bugs@freepascal.org');
  if ($row->Status!='Unfixed') {
    mail($row->Email,$Subject,$mailtext,'From: bugs@freepascal.org');
  }
}
?>