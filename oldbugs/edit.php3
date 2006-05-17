<?php
 /* input some needed stuff */
 require "html.php";
 require "bugs.php";
/*
 * Emit form to confirm password.
 */ 
function EmitEditForm ( $db, $ID ) {
  StartForm("edit.php3");
  $query="select * from bugs where BugId=$ID";  
  $res = mysql_query($query,$db);
  CheckMySQLError($foot);
  $row = mysql_fetch_object($res);
  include ('fixform.tmpl');
  mysql_free_result($res);
  EndForm ();
}
/*
 * Start of program
 */
readfile ($head);
if (!isset($ID)) {
  die("This script needs an numeric ID parameter.");
}
if (!settype($ID,'integer')) {
  die("ID not numeric. This script needs an numeric ID parameter.");
}
/* Connect to database */
$db = ConnectToFPC();
/*
 * is this confirmed with password ? See if we can delete...
 */ 
if ( $confirm == "yes") {
  /* 
   * Verify password first
   */
  if (VerifyPassword ($pwd)) {
    /* Change the entry */
    $query = "UPDATE bugs SET ";
    $query .= "Status=" . EscapeSQL ($status);
    if ($status=='Fixed') {
      $query .= ", Fixdate=NOW()";
      $query .= ', FixVersion=' . EscapeSQL($fixversion) ;
    }
    $query .= ", Title=" .EscapeSQL($bugtitle);
    $query .= ", Fixer=" . EscapeSQL($fixer);
    $query .= ", comment=" . EscapeSQL($comment);
    $query .= ", category=" . $category;
    $query .= ", bugtype=" . $BugType;
    $query .= ", os=" . EscapeSQL($os);
    $query .= " WHERE BugId=$ID ";
/*
     echo "executing $query";
*/
    $res = mysql_query ($query,$db);
    CheckMySQLError ($foot);
    Header1("Bug $ID successfully updated :");
    $res = mysql_query ("select * from bugs where BugId=$ID",$db);
    CheckMySQLError ($foot);
    $row = mysql_fetch_object($res);
    DumpRecord ($row);
    MailRecord($row,0);
    mysql_free_result($res);
    Rule ();
    EmitBugsMenu();
  } else {
    /* Wrong password */ 
    WrongPassword ();
    Header2("Try again:");
    EmitEditForm ($db,$ID);
    Rule ();
  }
} else {
  /* 
   * We need to emit a confirmation form.
   */
  EmitEditForm($db,$ID);
}
readfile($foot);
?>
