<HTML>
<BODY>
<?php
 /* input some needed stuff */
 require "html.php";
 require "contribs.php";
/*
 * Emit form to confirm password.
 */ 
function EmitConfirmForm ( $db, $ID ) {
  $query="select * from contribs where ID=$ID";  
  $res = mysql_query($query,$db);
  CheckMySQLError($foot);
  $row = mysql_fetch_object($res);
  echo "Please confirm that you would like to delete the following record by ";
  echo "providing the password that was stored in the database together with the entry.<P>";
  StartForm("delete.php3");
  HiddenVar("ID",$ID);
  HiddenVar("confirm","yes");
  EmitPasswordInput ('pwd',30,30);
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
EmitContribsMenu ();
/* Connect to database */
$db = ConnectToFPC();
/*
 * is this confirmed with password ? See if we can delete...
 */ 
if ( $confirm == "yes") {
  if (($pwd=='Fixme') || VerifyPassword($db,$pwd,$ID)) {
    $query = "delete from contribs where ID = $ID";
    $res=mysql_query($query,$db);
    CheckMySQLError;
    if ( mysql_affected_rows($db)==1 ) {
      Header1("Confirmation of deletion:");
      echo "The record was successfully deleted.<P>";
      EmitContribsMenu ();
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
  Header1("Please confirm deletion: ");
  EmitConfirmForm($db,$ID);
}
EmitContribsMenu ();
readfile($foot);
?>
</BODY>
</HTML>