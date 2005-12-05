<?php
 /* input some needed stuff */
 require "html.php";
 require "bugs.php";
/*
 * Start of program
 */
readfile ($head);
if (!isset($ID)) {
  die("This script needs an numeric ID parameter.");
}
if (!is_integer($ID)) {
  die("ID not numeric. This script needs an numeric ID parameter.");
}
$db = ConnectToFPC();
$query = "SELECT * FROM bugs where BugId=$ID";
Header1("Details of bug $ID");
Rule();
$res = mysql_query($query,$db);
CheckMySQLError($foot);
if (!$res) {
  echo "Sorry. No record with ID $ID was found<P>";
  echo "Please try selecting anothe ID.";
} else {
  $row = mysql_fetch_object($res);
  CheckMySQLError($foot);
  DumpRecord($row);
  mysql_free_result($res);
}
echo "<P>";
EmitBugsMenu ();
echo "<P>";
DoAnchor('db.php3','back to summary view.');
mysql_close($db);
readfile ($foot);
?>
