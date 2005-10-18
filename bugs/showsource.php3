<?php
require "html.php";
require "bugs.php";
/*
 * Main program
 */
$db=ConnectToFPC();
if ($db) {
  $res = mysql_query("select Prog,Name,AddDate,Email from bugs where BugId=$ID",$db);
  CheckMySQLError($foot);
  if (!$res) {
    readfile($head);
    echo "<H2>Sorry. No bug with ID $ID was found</H2><P>";
    echo "<B>Return to". MakeAnchor("bugs.html","Bugs Main Page");
    echo "</B>";
    readfile($foot);
  } else {
    $row = mysql_fetch_object($res);
    CheckMySQLError($foot);
    if (!$row) {
      readfile($head);
      echo "<H2>Sorry. No bug with ID $ID was found</H2><P>";
      echo "<B>Return to ". MakeAnchor("bugs.html","Bugs Main Page");
      echo "</B>";
      readfile($foot);
    } else {
    if ((!$row->Prog) || ($row->Prog=="")){
      readfile($head);
      echo "<H2>Sorry. No source was found for the bug with ID <B>$ID</B></H2><P>";
      echo "<B>Return to bug report</B>: ". MakeAnchor("showrec.php3?ID=$ID","$ID");
      readfile($foot);
    } else {
      $Src="{ Source provided for Free Pascal Bug Report $ID }\n"
        ."{ Submitted by \"$row->Name\" on  $row->AddDate }\n"
        ."{ e-mail: $row->Email }\n"
        .$row->Prog;
      $fs=strlen($Src);
      header('Content-Type: text/plain');
      Header("Content-Disposition: file; filename=tw$ID.pp');
      Header("Content-length: $fs");
      echo $Src;
      }
    }
  }
}