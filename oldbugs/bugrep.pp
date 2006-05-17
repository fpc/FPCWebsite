{
  $Id: bugrep.pp,v 1.20 1999/09/06 08:45:54 florian Exp $
}
Program bugrep;

uses html,db,mysql,getopts,strings,types,uncgi,config,linux;

Const 
  SOurMail = 'fpcdevel@tflily.fys.kuleuven.ac.be';
  SNewEntry = 'Free Pascal Bug $1 added to bug repository.';
  SFixedEntry = 'Free Pascal Bug $1 fix notification.';
  
Type 
  TAction = (TNone,
             TextQuery,
             HTMLQuery,
             Add,
             Replace,
             Init,
             emitform,
             emitfixform,
             getsource,
             browse,
             htmlbrowse,
             showbug,
             showunfixed,
             showlastadds,
             Remove);

Const 
   FirstAction=TextQuery;
   LastAction=Remove;
   Modenames : array [TAction] of pchar = ('none',
    'textquery',
    'htmlquery',
    'add',
    'replace',
    'init',
    'emitform',
    'emitfixform',
    'getsource',
    'browse',
    'htmlbrowse',
    'showbug',
    'showunfixed',
    'showlastadds',
    'remove');

Function ReplaceBugNr(const s:string;nr:longint):string;
var
  hs :string;
  i : longint;
begin
  str(nr,hs);
  i:=pos('$1',s);
  ReplaceBugNr:=Copy(s,1,i-1)+hs+Copy(s,i+2,length(s)-(i+2)+1);
end;

Function GetCurrentDate : String;

Var year,Month,day : Word;
    temp : string[10]; 

begin
  getdate (year,month,day);
  Str(year,GetCurrentdate);
  getcurrentdate:=getcurrentdate+'-';
  str(month,temp);
  if length(temp)<2 then temp:='0'+temp;
  getcurrentdate:=getcurrentdate+temp+'-';
  str(day,temp);
  if length(temp)<2 then temp:='0'+temp;
  getcurrentdate:=getcurrentdate+temp;
end;

Procedure DumpEntry (var F: Text; Const Entr : TEntry);
{
  Formats and writes an entry as text to file.
}
begin
  With Entr do
    Begin
    Writeln (F,'ID          : ',BugId);
    Writeln (f,'Title       : ',pchar(@Title));
    Writeln (f,'Name        : ',pchar(@name));
    Writeln (f,'Email       : ',pchar(@email));
    Writeln (F,'AddDate     : ',pchar(@AddDate));
    Writeln (F,'OS          : ',Osnames[OS]);
    Writeln (F,'Status      : ',StatusNames[status]);
    Writeln (F,'FixVersion  : ',pchar(@fixversion));
    Writeln (F,'Fixer       : ',pchar(@fixer));
    Writeln (F,'Fixdate     : ',pchar(@fixdate));
    Writeln (F,'Comment     : ',pchar(@comment));
    Writeln (F,'Category    : ',CategoryNames[Category]);
    Writeln (F,'Description : ');
    Writeln (F,pchar(@Desc));
    Writeln (F,'Program     ; ');
    Writeln (F,pchar(@prog));
    end;
end;

Procedure InitDb;
{
 Creates a new table in the database 'DataBaseName'.
}

begin
  If Not Connected then Halt(1);
  If Not SelectDB then Halt(1);
  If mysql_query(DbSock,CreateQuery)<0 then  
    begin
    Writeln (stderr,'Couldn''t create table ''bugs''.');
    writeln (stderr,mysql_error(DbSock));
    writeln (stderr,createquery);
    Halt(1);
    end;
  Writeln ('Table bugs successfully created in database ',DbDataBase,'.');
end;

Procedure DoDump (Const Entry : Tentry);
{
  Callback routine to dump a record on standard output.
}
begin
  Writeln;
  DumpEntry (output,entry);
end; 

Procedure DoTextQuery;
{
  Queries the database and dumps the output on the screen.
}
begin
  If Not Connected then Halt(1);
  If Not SelectDb then Halt(1);
  Writeln ('Contents of table ''bugs'' in db ',DataBaseName,' :');
  GetEntries ('select * from bugs order by BugId',@dodump);
end;

Var DumpCalled : Boolean;


Procedure DoBrowseLine (Const Entry: TEntry);

begin
  With Entry do 
  Writeln (Bugid:4,': ',title);
  DumpCalled:=True;
end;

Procedure DoBrowse;
{
  Queries the database and dumps the ID,Title on the screen.
}
Var 
    J : TCategory;
    P : pchar;
    S : tsorton;
    sorted : string;
       
begin
  If Not Connected then Halt(1);
  If Not SelectDb then Halt(1);
  Writeln ('List of bugs, ordered by ID:');
  dumpcalled:=FAlse;
  GetEntries ('select * from bugs order by BugId',@dobrowseline);
  If Not DumpCalled then 
    Writeln ('No Entries available.');
end;

Procedure GenHTMLListHead;
begin
  Writeln ('View buglist in full format, grouped by:<P>');
  Writeln ('<OL>');
  Writeln ('<LI>');DoAnchor(output,progurl+'?mode=htmlquery&sort=BugId','Bug ID.');
  Writeln ('<LI>');DoAnchor(output,progurl+'?mode=htmlquery&sort=AddDate','Date of entry.');
  Writeln ('<LI>');DoAnchor(output,progurl+'?mode=htmlquery&sort=FixDate','Date when fixed.');
  Writeln ('<LI>');DoAnchor(output,progurl+'?mode=htmlquery&sort=Title','Title.');
  Writeln ('<LI>');DoAnchor(output,progurl+'?mode=htmlquery&sort=Status','Status.');
  Writeln ('<LI>');DoAnchor(output,progurl+'?mode=htmlquery&sort=OS','OS');
  Writeln ('</OL><P><HR><P>');
end;

Procedure DoBrowseHTMLLine (Const Entry: TEntry);

begin
  If Not DumpCalled then
    begin
    writeln ('<TABLE WIDTH="100%" CELLPADDING=2 CELLSPACING=1 BORDER=1>');
    writeln ('<TR><TD>Bug ID</TD><TD>Status</TD><TD>Title</TD></TR>');
    end;
  With Entry do 
    begin
    Writeln ('<TR><TD>');
    doanchor (output,progurl+'?mode=showbug&BugId='+inttostr(bugid),inttostr(Bugid));
    Writeln ('</TD><TD>',statusnames[status],'</TD><TD>',convert2html(title),'</TD></TR>');
    end;
  DumpCalled:=True;
end;

Procedure DoHTMLBrowse;
{
  Queries the database and dumps the ID,Title on the screen.
}
Var 
    J : TCategory;
    P : pchar;
    S : tsorton;
    sorted : string;
       
begin
  If Not Connected then Halt(1);
  If Not SelectDb then Halt(1);
  genhtmlheader(output,'bugs');
  Writeln ('<H1>Short List of bugs, ordered by ID</H1>');
  GenHTMLListHead;
  dumpcalled:=False;
  GetEntries ('select * from bugs order by BugId',@dobrowseHTMLline);
  If Not DumpCalled then 
    Writeln ('No Entries available.')
  else
    Writeln ('</TABLE><P>');
  genhtmlfooter(output);
end;

Procedure DoHTMLDump (Const Entry: TEntry);

begin
  DumpHTMLEntry(Output,Entry);
  DumpCalled:=True;
end;

Procedure DoHTMLQuery;
{
  Queries the database and dumps the ID,Title on the screen.
}
Var 
    J : TCategory;
    P : pchar;
    S : tsorton;
    sorted : string;
       
begin
  P:=Get_value('sort');
  If (P=Nil) or (strlen(p)=0) then S:=ID else S:=TOSort(Strpas(p));
  Sorted:=SortNames[S];
  If S<>ID then Sorted:=Sorted+', BugId';
  If Not Connected then Halt(1);
  If Not SelectDb then Halt(1);
  genhtmlheader(output,'buglist');
  Writeln ('<H1>Full List of bugs, ordered by ',SortNames[S],'</H1>');
  GenHTMLListHead;
  dumpcalled:=False;
  GetEntries ('select * from bugs order by '+sorted,@doHTMLdump);
  If Not DumpCalled then 
    Writeln ('No Entries available.');
  genhtmlfooter(output);
end;

Procedure DoShowUnfixed;
{
  Queries the database and dumps the ID,Title on the screen.
}
Const Query = 'select * from bugs where (status="Unfixed" or status="")';

begin
  If Not Connected then Halt(1);
  If Not SelectDb then Halt(1);
  genhtmlheader(output,'buglist');
  Writeln ('<H1>List of unfixed bugs </H1>');
  GenHTMLListHead;
  dumpcalled:=False;
  GetEntries (Query,@doBrowseHTMLLine);
  If Not DumpCalled then 
    Writeln ('No Entries available.')
  else
    Writeln ('</TABLE><P>');
  genhtmlfooter(output);
end;

Procedure DoShowLastAdds;
{
  Queries the database and dumps the ID,Title on the screen.
}
Const Query = 'select * from bugs where TO_DAYS(NOW()) - TO_DAYS(adddate) < 8';

begin
  If Not Connected then Halt(1);
  If Not SelectDb then Halt(1);
  genhtmlheader(output,'buglist');
  Writeln ('<H1>List of bugs, added in the last 7 days</H1>');
  GenHTMLListHead;
  dumpcalled:=False;
  GetEntries (Query,@doBrowseHTMLLine);
  If Not DumpCalled then 
    Writeln ('No Entries available.')
  else
    Writeln ('</TABLE><P>');
  genhtmlfooter(output);
end;

Procedure DoError (var F : Text);
{
  Emits an error header.
}
begin
  Writeln (F,'<H2>An error occurred while trying to process your request:</H2>');
end;

Procedure InvalidINput (const Entry : TEntry);
{
  Displays a message, saying that the input was invalid.
  This occurs if either the author or name of the package was empty
}
begin
  genHTMLHeader(output,'error');
  doError(output);
  Writeln ('Your entry contains invalid information :<P>');
  DumpHTMLEntry(output,Entry);
  Writeln ('<P>The <B>author</B> and <B>name</B> field must not be empty.<P>');
  genHTMLfooter(output);
end;

Procedure Failed (const Entry: TEntry; Action : TAction);
{
 Displays a message to say that the requested operation failed.
}
begin
  genHTMLHeader(output,'error');
  doError(output);
  Writeln ('While attempting to ',ModeNames[Action],' the following entry:<P>');
  DumpHTMLEntry(output,Entry);
  Writeln ('The database engine reported the following error :<BR>');
  If Assigned(DbError) then
    Writeln (dberror,'<P>')
  else
    Writeln ('No error available');
  Writeln ('Please try again. If the problem persists, contact');
  Writeln ('<A HREF="mailto:',myemail,'">',MyEmail,'</A>.<P>');
  genHTMLfooter(output);
end;

Procedure Success (Const Entry : TEntry; Action : TAction);
{
Displays a message to say that the entry was added successfully.
}
begin
  genHTMLHeader(output,'confirm');
  Writeln ('The following entry has been successfully  ');
  Case Action of
    Add     : Write ('added to');
    Replace : Write ('replaced in');
    Remove  : Write ('removed from');
  end;  
  Writeln (' the database :<P>');
  Writeln ('Category : ',CategoryNames[Entry.Category],'<P>'); 
  DumpHTMLEntry(output,Entry);
  writeln ('<P>You can check out the full list of reported bugs:');
  DoAnchor (output,'http://tflily.fys.kuleuven.ac.be/cgi-bin/bugrep?mode=htmlbrowse','here');  
  genHTMLfooter(output);
end;

Procedure InvalidEntry (Const ENtry : TEntry);

begin
  doError(output);
  Writeln ('Your entry contains invalid information :<P>');
  DumpHTMLEntry(output,Entry);
end;

Procedure EntryAlreadyExists (Const Entry,FoundEntry : TEntry);
{
Displays the entry together with a message that the entry already exists.
}
begin
  GenHTMLheader(output,'error');
  InvalidEntry (Entry);
  Writeln ('<P>The <B>author</B> and <B>name</B> fields specify an already existing entry, namely:<P>');
  DumpHTMLEntry(output,FoundEntry);
  Writeln ('If you want to replace an existing entry, you should select the <I>replace</I> checkbox');
  Writeln ('at the bottom of the submission form.');
  genHTMLfooter(output);
end;

Procedure MAilEntry (Const Subject,MailAddress,Msg : String; Const entry : TEntry);

Var F : Text;

begin
  POpen (F,'/usr/sbin/sendmail -f michael.vancanneyt@wisa.be '+MailAddress,'W');
  if linuxerror=0 then
    begin
    Writeln (F,'From: Bug reporting tool <michael.vancanneyt@wisa.be>');
    Writeln (F,'To: ',MailAddress);
    Writeln (F,'Subject: ',subject);
    Writeln (F,Msg);
    Writeln (f);
    DumpEntry (F,Entry);
    pclose(f);
    end;
end;

Procedure DoAdd;
{
  Add an entry to the database. 
  The entry is gotten through the CGI interface
}
Var Entry,FoundEntry : TEntry;

Const
 Msg ='The following entry was sucessfully entered in the bugs database :';

begin
  InitEntry(Entry);
  InitEntry(FoundEntry);
  GetCGIEntry (Entry);
  If Entry.BugId<>-1 then
    InvalidInput (Entry)
  Else
    begin
    Entry.BugId:=GetNewId;
    Entry.AddDAte:=GetCurrentDate;
    If Not addentry(Entry) then
      Failed(Entry,Add)
    else
      begin
      Success(Entry,Add);
      MailEntry (ReplaceBugNr(SNewEntry,Entry.BugId),Sourmail,Msg,entry);
      end;
    end;
  DoneEntry(Entry);
  DoneEntry(FoundEntry);
end;

Procedure NoSuchEntry (Entry : TEntry);
{
Displays the entry together with a message that there is no such entry.
}
begin
  genHTMLHeader(output,'error');
  InvalidEntry (Entry);
  Writeln ('<P>The <B>author</B> and <B>name</B> fields do not specify an existing entry.<P>');
  Writeln ('Please verify that you typed them <B>exactly</B> as they appear in the list');
  Writeln ('Otherwise, try adding them');
  genHTMLfooter(output);
end;

Procedure WrongPassword (Const Entry : TEntry);
{
Displays the entry together with a message that there is no such entry.
}
begin
  genHTMLHeader(output,'error');
  InvalidEntry (Entry);
  Writeln ('The password provided was not correct. The entry will not be updated.');
  Writeln ('Please try using another, correct,  password.');
  Writeln ('If you cannot remember you password, send a mail to ');
  Writeln ('<A HREF="mailto:',MyEmail,'">',MyEmail,'</A>, asking for a new password.');
  genHTMLfooter(output);
end;

Procedure DoReplace;
{
  Replace an entry in the database. 
  The entry is gotten through the CGI interface
}

Const Msg = 'The bug you reported about the Free Pascal Compiler has been fixed';

Var Entry,FoundEntry : TEntry;
    mailrecep : string;
    
begin
  InitEntry(Entry);
  InitEntry(FoundEntry);
  GetCGIEntry(Entry);
  If Entry.BugID=-1 then
    InvalidInput (Entry)
  Else 
    If Not EntryExists(Entry.BugId,foundentry) then
      If DbError=Nil then 
        NoSuchEntry (Entry)	
      else
        Failed (Entry,Replace)
    Else
     begin
     { copy needed data }
     entry.desc:=foundentry.desc;
     entry.prog:=foundentry.prog;
     entry.os:=foundentry.os;
     entry.adddate:=foundentry.adddate;
     entry.name:=foundentry.name;
     entry.title:=foundentry.title;
     entry.email:=foundentry.email;
     If (entry.Status=fixed) and (strlen(@Entry.fixdate)=0) then 
       Entry.FixDate:=GetCurrentDate;
     If not ReplaceEntry(Entry) then
       Failed(Entry,Replace)
     else
       begin
       success(Entry,Replace);
       If Entry.status=fixed then
         begin
         Mailrecep:=strpas(@Entry.email)+','+SOurMail;
         MailEntry(ReplaceBugNr(SFixedEntry,Entry.BugId),Mailrecep,Msg,Entry);
         end;
       end;
     end;
  DoneEntry(Entry);
  DoneEntry(FoundEntry);
end;

Procedure DoRemove;
{
  Replace an entry in the database. 
  The entry is gotten through the CGI interface
}

Var Entry,FoundEntry : TEntry;
    
begin
  InitEntry(Entry);
  InitEntry(FoundEntry);
  GetCGIEntry(Entry);
  If (ENtry.BugID=-1) then
    InvalidInput (Entry)
  Else 
    If Not EntryExists(Entry.BugID,foundentry) then
      If DbError=Nil then 
        NoSuchEntry (Entry)	
      else
        Failed (Entry,Remove)
    Else If not RemoveEntry(Entry) then
      Failed(Entry,Remove)
    else
      Success(FoundEntry,Remove);
  DoneEntry(Entry);
  DoneEntry(FoundEntry);
end;

Procedure DoShowBug;
{
  Show 1 entry from database.
  The entry is gotten through the CGI interface
}

Var Entry,FoundEntry : TEntry;
    
begin
  InitEntry(Entry);
  InitEntry(FoundEntry);
  GetCGIEntry(Entry);
  If (ENtry.BugID=-1) then
    InvalidInput (Entry)
  Else 
    If Not EntryExists(Entry.BugID,foundentry) then
      If DbError=Nil then 
        NoSuchEntry (Entry)	
      else
        Failed (Entry,Remove)
    Else 
      begin
      genhtmlheader (output,'bugs');
      writeln ('<H1> Details of bug no ',FoundEntry.Bugid,':</H1>');
      dumphtmlentry (output,foundentry);
      genhtmlfooter (output);
      end;
  DoneEntry(Entry);
  DoneEntry(FoundEntry);
end;
  
Procedure DoGetSource;
{
  Get the source of a program.
}

Var Entry,FoundEntry : TEntry;
    
begin
  InitEntry(Entry);
  InitEntry(FoundEntry);
  GetCGIEntry(Entry);
  If (ENtry.BugID=-1) then
    InvalidInput (Entry)
  Else 
    If Not EntryExists(Entry.BugID,foundentry) then
      If DbError=Nil then 
        NoSuchEntry (Entry)	
      else
        Failed (Entry,Remove)
    Else 
      begin
      Writeln ('Content-Type: text/plain');
      writeln;
      Writeln (pchar(@foundentry.prog));
      end;
  DoneEntry(Entry);
  DoneEntry(FoundEntry);
end;

Procedure DoEMitForm;
{
 Emits a form that can be filled in add an entry.
}
begin
  GenHTMLHeader(output,'bugsub');
  GenHTMLForm  (output);
  GenHTMLFooter(output);
end;

Procedure DoEMitFixForm;
{
 Emits a form that can be filled in to add/replace an entry.
}
begin
  GenHTMLHeader(output,'bugrep');
  GenHTMLFixForm  (output);
  GenHTMLFooter(output);
end;

Procedure ShowConfig;
{
  Show configuration variables
}
begin
  writeln ('Configuration variables:');
  writeln ('------------------------');
  writeln ('Email         : ',myemail);
  writeln ('Template dir  : ',templatedir);
  writeln ('Database host : ',dbhost);
  writeln ('Database name : ',dbdatabase);
  writeln ('Database user : ',dbuser);
  writeln ('User passwd   : ',dbpasswd);
  halt(0);
end;

Procedure ShowUsage;
{
  Show usage of program.
}
begin
  Writeln ('Usage : bugrep action');
  Writeln ('Where action is one of : ');
  Writeln (' -a : Add an entry to the database. (CGI)');
  Writeln (' -c : Show configuration variables and exit.');
  Writeln (' -d : Delete an entry');
  Writeln (' -f : Emit a submission form');
  Writeln (' -F : Emit a bug-fixform.');
  Writeln (' -h : Show help and exit.');
  Writeln (' -i : Create a new table in database');
  Writeln (' -q : query database, and dump as text');
  Writeln (' -Q : query database, and dump as HTML (CGI)');
  Writeln (' -r : Replace an entry');
end;

Var C : Char;
    I,Mode : TAction;
  
begin
  DbSock:=Nil;
  Mode:=Tnone;
  Repeat
    OptErr:=False;
    C:=Getopt ('cihqQarfFdsbB1ul');
    case c of
      '1' : Mode:= Showbug;
      'i' : Mode:= Init;
      'a' : Mode:= Add;
      'b' : Mode:= Browse;
      'B' : Mode:= htmlBrowse;
      'r' : Mode:= Replace;
      'd' : Mode:= Remove;
      'f' : Mode:= EmitForm;
      'q' : Mode:= Textquery;
      'Q' : Mode:= HTMLQuery;
      'F' : Mode:= EMitFixForm;
      'c' : Showconfig;
      'u' : Mode:= ShowUnfixed;
      'l' : Mode:= ShowLastadds;
      's' : Mode:=GetSOurce;
      'h','?': 
           begin
           If c='?' then Writeln ('Illegal option : -',optopt);
           ShowUsage;
           halt(0);
           end;
    end;
  until c=endofoptions;
  if (mode=TNone) and (get_value('mode')<>nil) then
    begin
    for i:=FirstAction to LastAction do 
      if strcomp(get_value('mode'),ModeNames[I])=0 then 
        Mode:=I;
    end; 
  if optInd=Paramcount then
    databasename:=paramstr(optind);
  case mode of
    Init         : InitDb;
    TextQuery    : DoTextQuery;
    HTMLQuery    : DoHTMLQuery;
    Add          : DoAdd;
    Replace      : DoReplace;
    EmitForm     : DoEmitForm;
    EmitFixform  : DoEmitFixForm;
    GetSource    : DoGetSource;
    Remove       : DoRemove;
    Browse       : DoBrowse;
    HTMLBrowse   : DoHTMLBrowse;
    Showbug      : DoShowBug;
    ShowUnfixed  : DoShowUnfixed;
    ShowLastAdds : DoShowLastAdds;
  end;
end.
{
  $Log: bugrep.pp,v $
  Revision 1.20  1999/09/06 08:45:54  florian
    + conversion of some chars to html codes implemented

  Revision 1.19  1999/05/19 11:55:54  peter
    * bug id in subject, sent fix note once
}

