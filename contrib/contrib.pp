Program contrib;

uses html,db,mysql,getopts,strings,types,uncgi,config;

Type 
  TAction = (TNone,TextQuery,HTMLQuery,Add,Replace,Init,emitform,Remove);

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
    'remove');

Procedure DumpEntry (var F: Text; Const Entr : TEntry);
{
  Formats and writes an entry as text to file.
}
begin
  With Entr do
    Begin
    Writeln (f,'Name        : ',name);
    Writeln (f,'Author      : ',author);
    Writeln (f,'Email       : ',email);
    Writeln (F,'File URL    : ',ftpfile);
    Writeln (F,'Version     : ',version);
    Writeln (F,'Date        : ',Date);
    Writeln (F,'OS          : ',OS);
    Writeln (F,'HomePage    : ',HomePage);
    Writeln (F,'Category    : ',Category);
    Writeln (F,'Password    : *',pwd,'*');
    Write   (F,'Description : ',Desc)
    end;
end;

Procedure InitDb;
{
 Creates a new table in the database 'DataBaseName'.
}
Var DB : Pchar;

Const  CreateQuery = 'create table contribs ( name CHAR(128) NOT NULL,'+
                   ' author CHAR(128) NOT NULL, email CHAR(80),'+
                   ' ftpfile CHAR(80), version CHAR(30),'+
                   ' date CHAR(8), os CHAR(30),'+
                   ' homepage CHAR(80), descr TEXT, pwd CHAR(30),'+
                   ' category CHAR(15), UNIQUE ( name, author ) )';

begin
  If Not Connected then Halt(1);
  If Not SelectDB then Halt(1);
  db:=StrAlloc(Length(CreateQuery)+1);
  StrPCopy(Db,CreateQuery);
  If mysql_query(DbSock,Db)<0 then  
    begin
    Writeln (stderr,'Couldn''t create table ''contribs''.');
    writeln (stderr,mysql_error(DbSock));
    Halt(1);
    end;
  Writeln ('Table contribs successfully created in database ',DbDataBase,'.');
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
  Writeln ('Contents of table ''contribs'' in db ',DataBaseName,' :');
  GetEntries ('select * from contribs order by name',@dodump);
end;

Var DumpCalled : Boolean;

Procedure DoHTMLDump (Const Entry: TEntry);

begin
  DumpHTMLEntry (output,entry);
  DumpCalled:=True;
end;

Procedure DoHTMLQuery;
{
  Queries the database and dumps the output on the screen.
}
Var I : Longint;

begin
  If Not Connected then Halt(1);
  If Not SelectDb then Halt(1);
  GenHTMLHeader(output);
  Writeln ('<H2>Contents :</H2>');
  Writeln ('<OL>');
  For I:=1 to NrCategories do
    begin
    Write ('<LI>');
    DoAnchor (OutPut,'#'+CategoryNames[i],CategoryNames[I]);
    end;
  Writeln ('</OL><P>');  
  For I:=1 to NrCategories do
    begin
    DumpCalled:=False;
    Writeln ('<A NAME="',CategoryNames[i],'"></A>');
    Writeln ('<HR>');
    Write ('<H2>Category : ',CategoryNames[I],'</H2>');
    GetEntries ('select * from contribs where (category='''+
                 CategoryNames[i]+''') order by name',@dohtmldump);
    If Not DumpCalled then 
      Writeln ('No Entries available.<P>');
    Writeln ('<P>');
    end;
  GenHTMLFooter(output);
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
  genHTMLHeader(output);
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
  genHTMLHeader(output);
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
  genHTMLHeader(output);
  Writeln ('The following entry has been successfully  ');
  Case Action of
    Add     : Write ('added to');
    Replace : Write ('replaced in');
    Remove  : Write ('removed from');
  end;  
  Writeln (' the database :<P>');
  Writeln ('Category : ',Entry.Category,'<P>'); 
  DumpHTMLEntry(output,Entry);
  writeln ('<P>You can check out the full list of contributions');
  DoAnchor (output,'http://tflily.fys.kuleuven.ac.be/cgi-bin/contrib?mode=htmlquery','here');  
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
  genHTMLHeader(output);
  InvalidEntry (Entry);
  Writeln ('<P>The <B>author</B> and <B>name</B> fields specify an already existing entry, namely:<P>');
  DumpHTMLEntry(output,FoundEntry);
  Writeln ('If you want to replace an existing entry, you should select the <I>replace</I> checkbox');
  Writeln ('at the bottom of the submission form.');
  genHTMLfooter(output);
end;

Procedure DoAdd;
{
  Add an entry to the database. 
  The entry is gotten through the CGI interface
}
Var Entry,FoundEntry : TEntry;

begin
  GetCGIEntry (Entry);
  If (ENtry.Name='') or (Entry.Author='') then
    InvalidInput (Entry)
  Else
    If EntryExists(Entry.Name,Entry.Author,FoundEntry) then
      EntryAlreadyExists(Entry,FoundEntry)
    else 
      If Not addentry(Entry) then
        Failed(Entry,Add)
      else
        Success(Entry,Add);
end;

Procedure NoSuchEntry (Entry : TEntry);
{
Displays the entry together with a message that there is no such entry.
}
begin
  genHTMLHeader(output);
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
  genHTMLHeader(output);
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

Var Entry,FoundEntry : TEntry;
    
begin
  GetCGIEntry(Entry);
  If (ENtry.Name='') or (Entry.Author='') then
    InvalidInput (Entry)
  Else 
    If Not EntryExists(Entry.Name,Entry.Author,foundentry) then
      If DbError=Nil then 
        NoSuchEntry (Entry)	
      else
        Failed (Entry,Replace)
    else
      If Entry.pwd<>foundentry.pwd then
         WrongPassword(Entry)
      else
        If not ReplaceEntry(Entry) then
          Failed(Entry,Replace)
        else
          Success(Entry,Replace);
end;

Procedure DoRemove;
{
  Replace an entry in the database. 
  The entry is gotten through the CGI interface
}

Var Entry,FoundEntry : TEntry;
    
begin
  GetCGIEntry(Entry);
  If (ENtry.Name='') or (Entry.Author='') then
    InvalidInput (Entry)
  Else 
    If Not EntryExists(Entry.Name,Entry.Author,foundentry) then
      If DbError=Nil then 
        NoSuchEntry (Entry)	
      else
        Failed (Entry,Remove)
    else
      If Entry.pwd<>foundentry.pwd then
         WrongPassword(Entry)
      else
        If not RemoveEntry(Entry) then
          Failed(Entry,remove)
        else
          Success(Entry,remove);
end;

Procedure DoEMitForm;
{
 Emits a form that can be filled in to add/replace an entry.
}
begin
  GenHTMLHeader(output);
  GenHTMLForm  (output);
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
  Writeln ('Usage : contrib action [db]');
  Writeln ('Where action is one of : ');
  Writeln (' -h : Show help and exit.');
  Writeln (' -f : Emit a submission form');
  Writeln (' -a : Add an entry to the database. (CGI)');
  Writeln (' -q : query database, and dump as text');
  Writeln (' -Q : query database, and dump as HTML (CGI)');
  Writeln (' -i : Create a new table in database');
  writeln ('db: database name to connect to. Default: test'); 
end;

Var C : Char;
    I,Mode : TAction;
  
begin
  DbSock:=Nil;
  Mode:=Tnone;
  Repeat
    OptErr:=False;
    C:=Getopt ('cihqQarfd');
    case c of
      'i' : Mode:= Init;
      'a' : Mode:= Add;
      'r' : Mode:= Replace;
      'd' : Mode:= Remove;
      'f' : Mode:= EmitForm;
      'q' : Mode:= Textquery;
      'Q' : Mode:= HTMLQuery;
      'c' : Showconfig;
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
    Init      : InitDb;
    TextQuery : DoTextQuery;
    HTMLQuery : DoHTMLQuery;
    Add       : DoAdd;
    Replace   : DoReplace;
    EmitForm  : DoEmitForm;
    Remove    : DoRemove;
  end;
end.
