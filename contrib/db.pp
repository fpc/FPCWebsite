Unit db;
{
  Unit which implements tha database routines for the contrib program.
}

interface

Uses mysql,types;

Var DBSock : PMySQL;  
    qmysql : TMySQL;
    DataBaseName : String;
    dbError: Pchar;

Function Connected : Boolean;
  {
    Connected returns true if we're connected to the mysql server.
    If It is not already so, an attempt is made to connect.
    If ther is no connection, or no connection can be made, 
    the result is false;
  }

Function SelectDB : Boolean;
  {
   SelectDb Selects the database to use. By default this is 'test', but
   the DataBaseName variable can be set to another variable. Is successfull,
   true is returned, false otherwise.
  }

Function GetEntries (Query : String; CallBack : TEntryCallBack) : boolean;
{
Gets all entries matching the Entr TEntry; All non-empty fields
of TEntry are used to construct an SQL Query. 
Each matching record is then passed in turn to Callback.
}

Function ReplaceEntry (Const Entr : TEntry) : Boolean;
{
  Replaces an entry in the database. The name and author fields
  are used to identify the entry. Returns True upon succes, false
  upon failure.
}

Function RemoveEntry (Const Entr : TEntry) : Boolean;
{
  Removes an entry from the database. The name and author fields
  are used to identify the entry. Returns True upon succes, false
  upon failure.
}

Function AddEntry (Const Entr : TEntry) : Boolean;
{
  Adds an entry to the database. Returns true upon success, false
  upon failure.
}

Function EntryExists (Const Name,Author : String; Var Entry : TEntry ): Boolean;
{
  Returns true if an entry exists, false in case of error.
  If An error occurred then DbError is set. If not, Entry is set to
  the record that was found.
}
  
implementation

uses strings,config;

Procedure SetError (Value: PCHar);

begin
  If Assigned(DBError) then StrDispose(DbError);
  DbError:=StrAlloc(Strlen(Value)+1);
  StrCopy(dbError,Value);
end;


Function Connected : Boolean;
{
 Checks if we are connected to mysql server. 
 If not, a connection attempt is made.
}
begin
  Connected:=DbSock<>Nil;
  If Not Connected then
    begin
    DbSock:=mysql_connect(PMysql(@qmysql),dbhost,dbuser,dbpasswd);
    if DbSock=Nil then 
      begin
      SetError('Couldn''t connect to MySQL server.');
      Writeln (stderr,DbError);
      exit;
      end;
    Connected:=True;
    end
end;


Function SelectDB : Boolean;

Var DB : Pchar;

begin
  SelectDB:=False;
  If strlen(DBDatabase)=0 then 
    DB:='test'
  else
    DB:=dbDataBase;
  If mysql_select_db(DbSock,Db)<0 then
    begin
    seterror (mysql_error(DbSock));
    Writeln (stderr,'Couldn''t select database ',db,'.');
    writeln (stderr,DbError);
    exit;
    end;
  SelectDB:=True;
end;

Procedure AddToPchar (var P : Pchar; Const Field,Value : String);

var Temp : Pchar;
    ToAdd : String;
    I : Longint;
    
begin
  Temp:=Nil;
  Toadd:='('+field+'='''+value+''''+')';
  If P<>Nil then
     begin
     i:=strlen(p)+1;
     if i>1 then ToAdd:=' and '+ToAdd ;
     getmem (temp,I+length(ToAdd));
     Move (P^,Temp^,I);
     FreeMem (P,I);
     end
  Else
     begin
     getmem (temp,length(toadd)+1);
     temp[0]:=#0;
     end;
  // temp points to enough space to keep the complete string
  strpcopy (strend(temp),toadd);
  p:=temp;
end; 

Procedure AddToPchar (var P : Pchar; Const Field,Value : PChar);

var Temp : Pchar;
    I,J : Longint;
    addand : boolean;
    
begin
  Temp:=Nil;
  J:=strlen(Field)+Strlen(Value)+5;
  addand:=False;
  If P<>Nil then
     begin
     i:=strlen(p)+1;
     if I>1 then J:=J+5;
     getmem (temp,I+J);
     Move (P^,Temp^,I);
     strpcopy (temp+I,' And (');
     I:=I+5;
     FreeMem (P,I);
     end
  Else
     begin
     getmem (temp,J);
     temp[0]:='(';
     Temp[1]:=#0;
     I:=1;
     end;
  // temp points to enough space to keep the complete string
  p:=strEcopy (temp+i,field);
  p:=strend(strpcopy (P,'="'));
  p:=strecopy(p,value);
  strpcopy(p,')');
  p:=temp;
end; 
    
Function Entr2SQL (Const Entr : TEntry): PChar;
{
 Converts an Entr record to a SQL select statement. 
 If the entry is empty, an empty string is returned.
}

Var P : PChar;

begin
  P:=Nil;  
  With Entr do
    begin
    If Length(Name)>0 then AddToPchar (P,'name',Name);
    If Length(author)>0 then AddToPchar (P,'author',author);
    If Length(email)>0 then AddToPchar (P,'email',email);
    If Length(ftpfile)>0 then AddToPchar (P,'ftpfile',ftpfile);
    If Length(version)>0 then AddToPchar(P,'version',version);
    If Length(date)>0 then AddToPchar(P,'date',date);
    If Length(os)>0 then AddToPchar(P,'os',os);
    If Length(HomePage)>0 then AddToPchar (P,'homepage',homepage);
 //   If length(desc)>0 then AddToPchar (P,'descr',desc);
    If strlen(desc)>0 then AddToPchar (P,'descr',desc); 
    If Length(pwd)>0 then AddToPchar (P,'pwd',pwd);
    If Length(category)>0 then AddToPchar (P,'category',category);
    end;
  If P=Nil then
    begin
    P:=stralloc(1);
    P[0]:=#0;
    end;
  Entr2Sql:=P;
end;

Procedure AddToPchar (var P : Pchar; Const Value : String);

var Temp  : Pchar;
    I     : Longint;
    toadd : string;
    
begin
  Temp:=Nil;
  ToAdd:='"'+Value+'",';
  If P<>Nil then
     begin
     i:=strlen(p)+3;
     getmem (temp,I+length(ToAdd));
     Move (P^,Temp^,I);
     FreeMem (P,I);
     end
  Else
     begin
     getmem (temp,length(toadd)+1);
     temp[0]:=#0;
     end;
  // temp points to enough space to keep the complete string
  strpcopy (strend(temp),toadd);
  p:=temp;
end; 

Procedure AddToPchar (var P : Pchar; Const Value : Pchar);

var Temp : Pchar;
    I,J : Longint;
    
begin
  Temp:=Nil;
  J:=strlen(Value)+3;
  If P<>Nil then
     begin
     i:=strlen(p)+1;
     getmem (temp,I+J);
     Move (P^,Temp^,I);
     temp[I-1]:='"';
     temp[I]:=#0;
     FreeMem (P,I);
     end
  Else
     begin
     getmem (temp,J);
     temp[0]:='"';
     temp[1]:=#0;
     I:=1;
     end;
  // temp points to enough space to keep the complete string
  p:=strecopy (temp+i,Value);
  p[0]:='"';
  p[1]:=',';
  p[2]:=#0;
  p:=temp;
end; 


Function EntryToValues (Const Entr : TEntry): Pchar;
{
  Convert a TEntry record to a sql values statement of the form
  ('name','author',...)
  
}

Var P : Pchar;

begin
  P:=StrAlloc(3);
  P[0]:='(';
  P[1]:=#0;
  With Entr do
    begin
    AddToPchar (P,Name);
    AddToPchar (P,author);
    AddToPchar (P,email);
    AddToPchar (P,ftpfile);
    AddToPchar (P,version);
    AddToPchar (P,date);
    AddToPchar (P,os);
    AddToPchar (P,homepage);
    AddToPchar (P,desc);
    AddToPchar (P,pwd);
    AddToPchar (P,category);
    P[StrLen(P)-1]:=')'; // change last comma to )
    end;
  EntryToValues:=P;
end;
                              
Function AddEntry (Const Entr : TEntry) : Boolean;
{
  Adds an entry to the database
}
Var
    P1,P2,Query : PChar;

Const EntryHead : Pchar = 'Insert into contribs values ';
      
begin
  AddEntry:=False;
  If Not Connected then exit;
  If Not SelectDb then exit;
  P1:=EntryToValues (Entr);
  Query:=StrAlloc(StrLen(P1)+StrLen(EntryHead)+1);
  P2:=StrECopy(Query,EntryHead);
  StrCopy(P2,P1);
  StrDispose(P1);
  if mysql_query(DbSock,Query)<0 then
    begin
    SetError (mysql_error(dbSock));
    Writeln (stderr,'Insert failed : ',DbError);
    exit;
    end;
  AddEntry:=True;
end;

Function ReplaceEntry (Const Entr : TEntry) : Boolean;
{
  Replaces  an entry in the database. The name and author fields
  are used to identify the entry
}
Var
    P1,P2,Query : PChar;

Const EntryHead : Pchar = 'Replace into contribs values ';
      
begin
  ReplaceEntry:=False;
  If Not Connected then exit;
  If Not SelectDb then exit;
  P1:=EntryToValues (Entr);
  Query:=StrAlloc(StrLen(P1)+StrLen(EntryHead)+1);
  P2:=StrECopy(Query,EntryHead);
  StrCopy(P2,P1);
  StrDispose(P1);
  if mysql_query(DbSock,Query)<0 then
    begin
    SetError (mysql_error(dbSock));
    Writeln (stderr,'Replace failed : ',DbError);
    exit;
    end;
  ReplaceEntry:=True;
end;

Function RemoveEntry (Const Entr : TEntry) : Boolean;
{
  Replaces  an entry in the database. The name and author fields
  are used to identify the entry
}
Var
    Query : String;

begin
  RemoveEntry:=False;
  query:='delete from contribs where (name='''+entr.name;
  Query:=query+''') and (author='''+Entr.author+''')'#0;
  If Not Connected then exit;
  If Not SelectDb then exit;
  if mysql_query(DbSock,PChar(@Query[1]))<0 then
    begin
    SetError (mysql_error(dbSock));
    Writeln (stderr,'Delete failed : ',DbError);
    exit;
    end;
  RemoveEntry:=True;
end;

Procedure RowBuf2Entry (RowBuf : TMySQL_Row; Var Entry : TEntry);
{
  Converts the result of a select * query to a data entry
}

begin
  With Entry do
    begin
    Name:=strpas(RowBuf[0]);
    Author:=strpas(RowBuf[1]);
    Email:=strpas(RowBuf[2]);
    ftpfile:=strpas(RowBuf[3]);
    version:=strpas(RowBuf[4]);
    date:=strpas(RowBuf[5]);
    os:=strpas(RowBuf[6]);
    homepage:=strpas(RowBuf[7]);
    If Assigned(Desc) and (strlen(Desc)>0) then 
      StrDispose(desc);
    desc:=strnew(rowbuf[8]);  
//    desc:=strpas(RowBuf[8]);
    pwd:=strpas(RowBuf[9]);
    category:=strpas(Rowbuf[10]);
    end;
end;

Function EntryExists (Const Name,Author : String; Var Entry : TEntry ): Boolean;
{
  Returns true if an entry exists, false in case of error.
  If An error occurred then DbError is set. If not, Entry is set to
  the record that was found.
}

Var Data : PMySQL_Res;
    EntData : TMySQL_ROW;
    Query : String;

begin
  EntryExists:=False;
  if DbError<>Nil then 
    begin
    STrDispose(DbError); 
    DbError:=Nil;
    end;
  query:='Select * from contribs where ((name='''+
         name+''') and (author='''+author+'''))'+#0;
  if not connected then exit;
  if not selectdb then exit;
  if mysql_query(DbSock,pchar(@Query[1]))<0 then
    begin
    SetError (mysql_error(DbSock));
    Writeln (stderr,'Select query failed: ',dberror);
    exit;
    end;
  Data:=mysql_store_result(DbSocK);
  If Data=Nil then
    exit;
  EntData := mysql_fetch_row(Data);
  If EntData<>Nil then 
    begin
    EntryExists:=True;
    Entry:=EmptyEntry;
    RowBuf2Entry(EntData,Entry);
    end;
  mysql_free_result(Data);
end;

Function GetEntries (Query : String; CallBack : TEntryCallBack) : boolean;
{
Gets all entries matching the Entr TEntry; All non-empty fields
of TEntry are used to construct an SQL Query. 
Each matching record is then passed in turn to Callback.
}

Var Data : PMySQL_Res;
    EntData : TMySQL_ROW;
    Entry : TEntry;
    
begin
  GetEntries:=False;
  if not connected then exit;
  if not selectdb then exit;
  Query:=Query+#0;
  if mysql_query(DbSock,pchar(@Query[1]))<0 then
    begin
    exit;
    end;
  Data:=mysql_store_result(DbSocK);
  If Data=Nil then
    begin
    SetError ('Query returned nil result.');
    exit;
    end;
  EntData := mysql_fetch_row(Data);
  Entry:=EmptyEntry;
  While EntData<>Nil do 
    begin
    RowBuf2Entry (EntData,Entry);
    CallBack(Entry);
    EntData:=mysql_fetch_row(Data);
    end;
  mysql_free_result(Data);
  GetEntries:=True;
  {if Entry.Desc<>Nil then 
    StrDispose(Entry.Desc); }
end;

end.