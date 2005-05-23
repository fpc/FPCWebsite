<?php

$head="head.tmpl";
$foot="foot.tmpl";
$Ordered  = 'UL';
$Numbered = 'OL';
function ListStart ($which) {
  echo "<$which>\n";
}

function ListEnd ($which) {
  echo "</$which>\n";
}

function ListItem ($Text) {
  echo "<LI> $Text\n";
}

function TableStart($opt="") {
  echo "<TABLE $opt>\n";
}

function TableEnd($Text="") {
  echo "</TABLE $Text>\n";
}

function RowStart ($Text="") {
  echo "<TR $Text>";
}
function RowEnd ($Text ="") {
  echo "</TR $Text>\n";
}

function CellStart ($Optional="") {
  echo "<TD $Optional>";
}
function CellEnd ($Text ="") {
  echo "</TD $Text>\n";
}
function Doanchor ($URL,$Message) {
  echo "<A HREF=\"$URL\">$Message</A>";
}
function MakeAnchor ($URL,$Message) {
  return "<A HREF=\"$URL\">$Message</A>";
}
function Rule () {
  echo "<HR>\n";
}

function Header1 ($Text) {
  echo "<H1>$Text</H1>\n";
}
function Header2 ($Text) {
  echo "<H2>$Text</H2>\n";
}
function Header3 ($Text) {
  echo "<H3>$Text</H3>\n";
}
function CheckMySQLError ($file) {
  $res = mysql_error();
  if ($res) {
    echo "An error occurred while executing an mYSQL query:<P>";
    echo "<B>$res</B>";
    if ($file) {
      readfile($file);
      exit();
    } else {
      return $res;
    }
  }
}
/*
 * Form support
 */
function StartForm ($Action) {
 echo "<FORM ACTION=\"$Action\">\n";
}
function EndForm () {
 echo "</FORM>\n";
}
/*
 * SQL support
 */ 
function EscapeSQL($S) {
  return "\"" . addslashes($S) . "\"";
}
function EmitPasswordInput($Name,$MaxLen,$Size,$Value="") {
  if ($Value!="") {
    echo "<INPUT TYPE=\"password\" NAME=\"$Name\" MAXLENGTH=$MaxLen SIZE=$Size VALUE=\"$Value\">\n";
  } else {
   echo "<INPUT TYPE=\"PASSWORD\" NAME=\"$Name\" MAXLENGTH=$MaxLen SIZE=$Size>\n";
  }
}
function HiddenVar($Name,$Value) {
  echo "<INPUT TYPE=\"hidden\" NAME=\"$Name\" VALUE=\"$Value\">\n";
}
function SubmitButton ($Text="Submit") {
  echo "<INPUT TYPE=\"submit\" VALUE=\"$Text\">\n";
}
function ResetButton ($Text="Clear") {
  echo "<INPUT TYPE=\"reset\" VALUE=\"$Text\">\n";
}

?>