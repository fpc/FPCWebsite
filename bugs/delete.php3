<HTML>
<BODY>
<?php
 /* input some needed stuff */
 require "html.php";
 require "bugs.php";
/*
 * Emit form to confirm password.
 */ 
function EmitConfirmForm ( $db, $ID ) {
  $query="select * from bugs where BugID=$ID";  
  $res = mysql_query($query,$db);
  CheckMySQLError($foot);
  $row = mysql_fetch_object($res);
  echo "Please confirm that you would like to delete the following bug by ";
  echo "providing the password:<p>";
  StartForm("delete.php3");
  HiddenVar("ID",$ID);
  HiddenVar("confirm","yes");
  echo "Password:";
  EmitPasswordInput('pwd',30,30);
  echo "<P>";
  SubmitButton ("Delete");
  ResetButton ("Clear Password");
  echo "<P>";
  EndForm();
  Dumprecord($row);
  echo "<P>";
}

/*
 * Start of program
 */
readfile ($head);
/* Connect to database */
$db = ConnectToFPC();
/*
 * is this confirmed with password ? See if we can delete...
 */ 
if ( $confirm == "yes") {
  if ("Shimrod"==$pwd) {
    $query = "delete from bugs where bugID = $ID";
    $res=mysql_query($query,$db);
    CheckMySQLError;
    if ( mysql_affected_rows($db)==1 ) {
      Header1("Confirmation of deletion:");
      echo "Bug $ID was successfully deleted.<P>";
      Rule();
      EmitBugsMenu();
    } else { 
      Header1("Deletion failed:");
      echo "The record was NOT successfully deleted, please try again.<P>";
      Header2("Try again:");
      EmitConfirmForm ($db,$ID);
      Rule ();
    }
  } else {
    /* Password was wrong. reconfirm ? */ 
    WrongPassword ();
    Header2("Try again:");
    EmitConfirmForm ($db,$ID);
    Rule ();
  }
} else {
  /* 
   * We need to emit a confirmation form.
   */
  Header1("Please confirm deletion of Bug $ID: ");
  EmitConfirmForm($db,$ID);
}
readfile($foot);
?>
</BODY>
</HTML>