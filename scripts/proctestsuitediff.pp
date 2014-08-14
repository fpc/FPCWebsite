{$mode objfpc}{$h+}

uses
  sysutils, classes, dateutils, strutils, DB, sqldb,pqconnection, inifiles;

const
  runhour = 8;      { cut-off hour that distinguishes yesterday and today }
  urlprefix = 'http://www.freepascal.org/tests.cgi?';

  SQLSelect = 'SELECT '+
              '  (TU_FAILEDTOCOMPILE+TU_FAILEDTOFAIL+TU_FAILEDTORUN) as FAILS, '+
              '  Date(TU_DATE) as OnlyDate, '+
              '  TU_DATE as DATE, '+
              '  TESTVERSION.TV_VERSION as VERSION, '+
              '  TESTOS.TO_NAME as OS, '+
              '  TESTCPU.TC_NAME as CPU, '+
              '  TU_SUBMITTER as TESTER, '+
              '  TU_MACHINE as MACHINE, '+
              '  TU_COMMENT as COMMENT, '+
              '  TU_ID, '+
              '  (SELECT string_agg(TR_TEST_FK::text,'','') FROM TESTRESULTS '+
              '          where TR_TESTRUN_FK=TU_ID AND NOT TR_OK AND NOT TR_SKIP)::text as FAILLIST '+
              'FROM '+
              '  TESTRUN '+
              '  LEFT JOIN TESTCPU ON (TU_CPU_FK=TC_ID) '+
              '  LEFT JOIN TESTOS ON (TU_OS_FK=TO_ID) '+
              '  LEFT JOIN TESTVERSION ON (TU_VERSION_FK=TV_ID) '+
              ' WHERE '+
              '  (TU_DATE >= (:TestDate - INTERVAL ''2 DAYS'')) AND (TU_DATE < (:TESTDATE + interval ''1 day'')) '+
              'ORDER BY '+
              '  VERSION, OS, CPU, TESTER, MACHINE, COMMENT, OnlyDATE ';


type
  ttestrun = record
    Line : Integer;
    TimeStamp,
    Date : TDateTime;
    Hour : Integer;
    Fails : Integer;
    DBFails : Integer;
    runid : Integer;
    failset : string;
    OS,Version,Cpu,Tester,Machine,Comment : String;
  end;

var
  twodaysago, yesterday, today: TDateTime;
  curr, prev, old: ttestrun;
  list, prevnochangelist, prevchangelist, prevdisappearlist: tstringlist;
  prevnewlist, disappearlist, nochangelist, changelist, newlist: tstringlist;
  blinkerchangelist, blinkernochangelist: tstringlist;


type
  toutputline = class(tobject)
  public
    data : ttestrun;
    url: string;
  end;

  tnote = class(tobject)
    str: string;
  end;

var
  urllist: tstrings;

Function lpad(len : Integer;s : String) : String;

begin
  Result:=StringOfChar(' ',Len-Length(S))+s;
end;
Function rpad(len : Integer;s : String) : String;

begin
  Result:=S+StringOfChar(' ',Len-Length(S));
end;

procedure PrintTable(list: tstringlist; heading: string);

Type
  TColType = (ctURL,ctFails,ctVersion,ctOS,ctCPU,ctTester,ctMachine,ctComment);

Const
  ColWidths : Array[TColType] of Integer =
              (5,7,9,11,13,12,22,30);
  ColNames : Array[TColType] of String =
              ('URL','Fails','Version','OS','CPU','Tester','Machine','Comment');


var
  TextWidths : Array[TColType] of Integer;
  outputline: toutputline;
  urlref: string;
  note: tnote;
  i : integer;
  ct : TColType;
  Sep : string;

begin
  if list.count = 0 then
    exit;
  Writeln(Heading);
  For ct:=low(TColType) to High(TColType) do
    TextWidths[ct]:=ColWidths[ct]-2;
  Sep:='';
  For ct:=low(TColType) to High(TColType) do
    Sep:=Sep+'+'+StringOfChar('-',ColWidths[ct]);
  Sep:=Sep+'+';
  Writeln(Sep);
  For ct:=low(TColType) to High(TColType) do
    Write('|'+rpad(ColWidths[ct],colnames[ct]));
  Writeln('|');
  Writeln(Sep);
  for i:=0 to List.Count-1 do
    begin
    Note := nil;
    OutputLine := toutputline(list.objects[i]);
    With Outputline.Data do
      begin
      urlref:=inttostr(urllist.count+1);
      Write('| ',lpad(TextWidths[ctURL],urlref));
      Write(' | ',rpad(TextWidths[ctFails],IntToStr(fails)));
      Write(' | ',rpad(TextWidths[ctVersion],version));
      Write(' | ',rpad(TextWidths[ctOS],OS));
      Write(' | ',rpad(TextWidths[ctCPU],CPU));
      Write(' | ',rpad(TextWidths[ctTester],tester));
      Write(' | ',rpad(TextWidths[ctMachine],Machine));
      if Length(Comment)>TextWidths[ctComment] then
        begin
        Write(' | ',rpad(TextWidths[ctComment],Copy(Comment,1,TextWidths[ctComment]-4)+'...#'));
        Note:=TNote.Create;
        Note.Str:=Comment;
        end
      else
        Write(' | ',rpad(TextWidths[ctComment],Comment));
      Writeln(' |')
      end;
    urllist.addobject(outputline.url, note);
    OutputLine.Free;
    end;
  Writeln(Sep);
  writeln;
end;

procedure printurllist;
var
  note: tnote;
  i: integer;
begin
  for i := 0 to urllist.count-1 do
  begin
    writeln('[' + inttostr(i+1) + ']: ' + urllist.strings[i]);
    note := tnote(urllist.objects[i]);
    if note <> nil then
      begin
      writeln('  comment: ' + note.str);
      note.free;
      end;
  end;
  writeln;
end;

procedure addlist(list: tstrings; const data : TTestRun; Const url: string);
var
  outputline: toutputline;
begin
  outputline:=toutputline.create;
  outputline.data := data;
  outputline.url := url;
  list.addobject(IntTostr(data.runid), outputline);
end;


function construct_results_url(const runid: Integer): string;
begin
  result := urlprefix+'action=1&failedonly=1&run1id='+IntToStr(runid);
end;

function construct_compare_url(const run1id, run2id: Integer): string;
begin
  result := urlprefix+'action=1&run1id='+IntToStr(run1id)+'&run2id='+IntToStr(run2id)+'&noskipped=1';
end;

function checksame(var prev, curr: ttestrun) : Boolean;

begin
  Result:=(Prev.os=Curr.os)
          and (Prev.version=Curr.version)
          and (Prev.CPU=Curr.CPU)
          and (Prev.machine=Curr.machine)
          and (Prev.tester=Curr.tester)
          and (Prev.comment=Curr.comment)
end;

function checkchange(var prev, curr: ttestrun; const prevdate, currdate: tdatetime;
  changelist, nochangelist: tstrings): boolean;
var
  failstr: string;
begin
  result := (prev.date=prevdate) and checksame(prev,curr) and (curr.date=currdate);
  if result then
    begin
    if (Curr.line>= 0) and (Prev.line>=0) then
      begin
      failstr:=IntToStr(Curr.fails);
      if (Prev.failset=Curr.failset) then
        begin
        addlist(nochangelist, curr, construct_results_url(curr.runid));
        end
      else
        begin
        failstr := IntToStr(prev.fails) + ' -> ' + Failstr;
        addlist(changelist, curr, construct_compare_url(prev.runid, curr.runid));
        end;
    end;
    { both these lines have been processed }
    curr.line := -1;
    prev.line := -1;
  end;
end;

Procedure ConfigDB(DB : TSQLConnection);

Const
  Cfg = 'testsuite.cfg';

Var
  FN : String;

begin
  if FileExists(ExtractFilePath(Paramstr(0))+Cfg) then
    FN:=ExtractFilePath(Paramstr(0))+cfg
  else if FileExists('/etc/'+Cfg) then
    FN:='/etc/'+Cfg
  else
    begin
    Writeln(Stderr,'Aborting: no config file found');
    Halt(2);
    end;
  With TMemIniFile.Create(FN) do
    try
      DB.HostName:=ReadString('database','Hostname',DB.HostName);
      DB.DatabaseName:=ReadString('database','DatabaseName',DB.DatabaseName);
      DB.UserName:=ReadString('database','UserName',DB.UserName);
      DB.Password:=ReadString('database','Password',DB.Password);
      DB.CharSet:=ReadString('database','CharSet',DB.CharSet);
    finally
      free;
    end;
end;

Procedure ProcessData;

Var
  DB : TSQLConnection;
  Q : TSQLQuery;
  Line : Integer;

begin
  DB:=TPQConnection.Create(Nil);
  try
    ConfigDB(DB);
    DB.Transaction:=TSQLTransaction.Create(DB);
    DB.Connected:=True;
    Q:=TSQLQuery.Create(DB);
    Q.Database:=DB;
    Q.Transaction:=DB.Transaction;
    Q.SQL.Text:=SQLSelect;
    Q.ParamByName('TestDate').AsDateTime:=ToDay;
    Q.Open;
    if Q.Eof then
      begin
      Writeln('No test data');
      Halt(1);
      end;
    Writeln(DateTimeToStr(Now),': Processed query');
    old.Line:=-1;
    curr.Line:=-1;
    prev.Line:=-1;
    Line:=0;
    While not Q.EOF do
      begin
      Inc(Line);
      Curr.Line:=Line;
      With Curr do
        begin
        fails:=Q.FieldByName('FAILS').AsInteger;
        TimeStamp:=Q.FieldByName('DATE').AsDateTime;
        Date:=DateOf(TimeStamp);
        Hour:=HourOf(TimeStamp);
        Version:=Q.FieldByName('Version').AsString;
        OS:=Q.FieldByName('OS').AsString;
        Tester:=Q.FieldByName('TESTER').AsString;
        CPU:=Q.FieldByName('CPU').AsString;
        Machine:=Q.FieldByName('MACHINE').AsString;
        Comment:=Q.FieldByName('COMMENT').AsString;
        Runid:=Q.FieldByName('TU_ID').AsInteger;
        failset:=Q.FieldByName('FAILLIST').AsString;
        DBFails:=WordCount(Curr.failset,[',']);
        end;
      { 'same' testrun yesterday and today, changelist or nochangelist modified }
      if checkchange(prev, curr, yesterday, today, changelist, nochangelist) and checksame(old,prev) then
        old.line := -1;
      { 'same' testrun two days ago and today, a "blinker" }
      if checkchange(prev, curr, twodaysago, today, blinkerchangelist, blinkernochangelist) and checksame(old,prev) then
        old.line := -1;
      { 'same' testrun two days ago and yesterday, prevchangelist or prevnochangelist modified }
      { only detect equal testruns yesterday if submitted late for diff mail yesterday }
      if (Prev.Hour>=runhour) then
        checkchange(old, prev, twodaysago, yesterday, prevchangelist, prevnochangelist);
      { still some unprocessed line? }
      if (old.line>=0) then
        begin
        list:=nil;
        if old.date=twodaysago then
          begin
          if old.Hour >= runhour then
            list := prevdisappearlist
          { else we already had it disappear yesterday }
          end
        else if old.date = yesterday then
          if old.Hour < runhour then
            list := disappearlist
          else
            list := prevnewlist
        else if old.date = today then
          list := newlist;
        if list <> nil then
          addlist(list, old, construct_results_url(old.runid));
        end;
      old := prev;
      prev := curr;
      Q.Next;
      end;
  finally
    DB.Free;
  end;
end;

Procedure SetupLists;

begin
  blinkernochangelist := tstringlist.create;
  blinkerchangelist := tstringlist.create;
  prevdisappearlist := tstringlist.create;
  prevnochangelist := tstringlist.create;
  prevchangelist := tstringlist.create;
  disappearlist := tstringlist.create;
  nochangelist := tstringlist.create;
  prevnewlist := tstringlist.create;
  changelist := tstringlist.create;
  newlist := tstringlist.create;
  urllist := tstringlist.create;
end;

Procedure FreeLists;

begin
  urllist.free;
  newlist.free;
  changelist.free;
  prevnewlist.free;
  nochangelist.free;
  disappearlist.free;
  prevchangelist.free;
  prevnochangelist.free;
  prevdisappearlist.free;
  blinkerchangelist.free;
  blinkernochangelist.free;
end;

begin
  if (ParamCount >= 3) then
    today := EncodeDate(StrToInt(ParamStr(1)), StrToInt(ParamStr(2)), StrToInt(ParamStr(3)))
  else
    today := Date;
  twodaysago := today-2;
  yesterday := today-1;
  Writeln('Comparing ',FormatDateTime('yyyy-mm-dd',Today),
          ' with ',FormatDateTime('yyyy-mm-dd',Yesterday),
          ' and ',FormatDateTime('yyyy-mm-dd',TwodaysAgo));
  SetupLists;
  try
    ProcessData;
    PrintTable(disappearlist, 'DISAPPEARED:');
    PrintTable(prevdisappearlist, 'DISAPPEARED YESTERDAY:');
    PrintTable(changelist, 'CHANGED:');
    PrintTable(prevchangelist, 'CHANGED YESTERDAY:');
    PrintTable(blinkerchangelist, 'CHANGED BLINKER:');
    PrintTable(newlist, 'NEW:');
    PrintTable(prevnewlist, 'NEW YESTERDAY:');
    PrintTable(nochangelist, 'UNCHANGED:');
    PrintTable(prevnochangelist, 'UNCHANGED YESTERDAY:');
    PrintTable(blinkernochangelist, 'UNCHANGED BLINKER:');
    printurllist;
  Finally
    FreeLists;
  end;
end.
