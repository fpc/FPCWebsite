{$mode objfpc}{$h+}

uses
  sysutils, classes, strutils;

function getdate(line: string): string;
begin
  result := copy(line, posex('|', line, Pos('|', line)+1)+2, 10);
end;

function getfail(line: string): string;
var
  i, j: integer;
begin
  i := 2;
  while (i < length(line)) and (line[i] = ' ') do
    inc(i);
  j := i+1;
  while (j < length(line)) and (line[j] in ['0'..'9']) do
    inc(j);
  result := copy(line, i, j-i);
end;

type
  toutputline = class(tobject)
  public
    data, url: string;
  end;

var
  header: array[0..2] of string;
  footer: string;
  lenfailstr: integer;
  urllist: tstrings;

procedure printtable(list: tstringlist; heading: string);
var
  outputline: toutputline;
  str, urlref: string;
  i: integer;
begin
  if list.count = 0 then
    exit;
  writeln(heading);
  for i := 0 to 2 do
    writeln(header[i]);
  for i := 0 to list.count - 1 do
  begin
    str := list.strings[i];
    outputline := toutputline(list.objects[i]);
    urlref := inttostr(urllist.count+1);
    writeln('| ' + stringofchar(' ', 3 - length(urlref)) + urlref + ' | ' + str + stringofchar(' ', lenfailstr - length(str)) + ' ' + outputline.data);
    urllist.add(outputline.url);
  end;
  writeln(footer);
  writeln;
end;

procedure printurllist;
var
  i: integer;
begin
  for i := 0 to urllist.count-1 do
    writeln('[' + inttostr(i+1) + ']: ' + urllist.strings[i]);
  writeln;
end;

procedure addlist(list: tstrings; const failstr, data, url: string);
var
  outputline: toutputline;
begin
  outputline := toutputline.create;
  outputline.data := data;
  outputline.url := url;
  list.addobject(failstr, outputline);
end;

type
  ttestrun = record
    line, date, fail, data, runid: string;
    hour: integer;
  end;

function construct_results_url(const runid: string): string;
begin
  result := 'http://www.freepascal.org/cgi-bin/testsuite.cgi?action=1&failedonly=1&run1id='+runid;
end;

function construct_compare_url(const run1id, run2id: string): string;
begin
  result := 'http://www.freepascal.org/cgi-bin/testsuite.cgi?action=1&run1id='+run1id+'&run2id='+run2id+'&noskipped=1';
end;

function checkchange(var prev, curr: ttestrun; const prevdate, currdate: string;
  changelist, nochangelist: tstrings): boolean;
var
  failstr: string;
begin
  result := (prev.date = prevdate) and (prev.data = curr.data) and (curr.date = currdate);
  if result then
  begin
    if (length(curr.line) <> 0) and (length(prev.line) <> 0) then
    begin
      prev.fail := getfail(prev.line);
      curr.fail := getfail(curr.line);
      if prev.fail = curr.fail then
      begin
        failstr := curr.fail;
        addlist(nochangelist, failstr, curr.data, construct_results_url(curr.runid));
      end else begin
        failstr := prev.fail + ' -> ' + curr.fail;
        addlist(changelist, failstr, curr.data, construct_compare_url(prev.runid, curr.runid));
      end;
      if length(failstr) > lenfailstr then
        lenfailstr := length(failstr);
    end;
    { both these lines have been processed }
    curr.line := '';
    prev.line := '';
  end;
end;

const
  { cut fails and date (first two fields, '| FAILS | DATE       ', 21 characters) 
    cut time (last 2 fields, ' HH:MM:SS |  XXXX |', 19 characters) }
  datastart = 21;
  datacutlen = 39;
  { position of hour counted from end }
  houroffset = 17;
  { position of testrun id counted from end }
  runidoffset = 6;

var
  twodaysago, yesterday, today: string;
  curr, prev, old: ttestrun;
  list, prevnochangelist, prevchangelist, prevdisappearlist: tstringlist;
  prevnewlist, disappearlist, nochangelist, changelist, newlist: tstringlist;
  blinkerchangelist, blinkernochangelist: tstringlist;
  todaydate: TDateTime;
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
  readln;
  repeat
    readln(header[0]);
  until (length(header[0]) > 0) and (header[0][1] = '+');
  readln(header[1]);
  readln(header[2]);
  if ParamCount >= 3 then
    todaydate := EncodeDate(StrToInt(ParamStr(1)), StrToInt(ParamStr(2)), 
      StrToInt(ParamStr(3)))
  else
    todaydate := Now;
  twodaysago := FormatDateTime('YYYY-mm-dd', todaydate-2);
  yesterday := FormatDateTime('YYYY-mm-dd', todaydate-1);
  today := FormatDateTime('YYYY-mm-dd', todaydate);
  lenfailstr := 5;  { Length('FAILS') = column header }
  repeat
    if (length(curr.line) = 0) or (curr.line[1] <> '+') then
    begin
      readln(curr.line);
      curr.date := getdate(curr.line);
      curr.data := copy(curr.line, datastart, length(curr.line)-datacutlen);
      curr.hour := strtointdef(copy(curr.line, length(curr.line)-houroffset, 2), 0);
      curr.runid := trim(copy(curr.line, length(curr.line)-runidoffset, 5));
    end else 
    if length(footer) = 0 then
      footer := curr.line;
    { 'same' testrun yesterday and today, changelist or nochangelist modified }
    if checkchange(prev, curr, yesterday, today, changelist, nochangelist) 
        and (old.data = prev.data) then
      old.line := '';
    { 'same' testrun two days ago and today, a "blinker" }
    if checkchange(prev, curr, twodaysago, today, blinkerchangelist, blinkernochangelist)
        and (old.data = prev.data) then
      old.line := '';
    { 'same' testrun two days ago and yesterday, prevchangelist or prevnochangelist modified }
    { only detect equal testruns yesterday if submitted late for diff mail yesterday }
    if prev.hour >= 7 then
      checkchange(old, prev, twodaysago, yesterday, prevchangelist, prevnochangelist);
    { still some unprocessed line? }
    if length(old.line) > 0 then
    begin
      list := nil;
      if old.date = twodaysago then
      begin
        if old.hour >= 7 then
          list := prevdisappearlist
        { else we already had it disappear yesterday }
      end else if old.date = yesterday then
        if old.hour < 7 then
          list := disappearlist
        else
          list := prevnewlist
      else if old.date = today then
        list := newlist;
      if list <> nil then
        addlist(list, getfail(old.line), old.data, construct_results_url(old.runid));
    end;
    old := prev;
    prev := curr;
  until (length(old.line) > 0) and (old.line[1] = '+');
  
  header[0] := '+-----' + copy(header[0], 1, 1) + stringofchar('-', lenfailstr+2) + 
    copy(header[0], datastart, length(header[0])-datacutlen);
  header[1] := '| URL ' + copy(header[1], 1, 7) + stringofchar(' ', lenfailstr-4) + 
    copy(header[1], datastart, length(header[1])-datacutlen);
  header[2] := '+-----' + copy(header[2], 1, 1) + stringofchar('-', lenfailstr+2) + 
    copy(header[2], datastart, length(header[2])-datacutlen);
  footer    := '+-----' + copy(footer,    1, 1) + stringofchar('-', lenfailstr+2) + 
    copy(footer,    datastart, length(footer)-datacutlen);
  
  printtable(disappearlist, 'DISAPPEARED:');
  printtable(prevdisappearlist, 'DISAPPEARED YESTERDAY:');
  printtable(changelist, 'CHANGED:');
  printtable(prevchangelist, 'CHANGED YESTERDAY:');
  printtable(blinkerchangelist, 'CHANGED BLINKER:');
  printtable(newlist, 'NEW:');
  printtable(prevnewlist, 'NEW YESTERDAY:');
  printtable(nochangelist, 'UNCHANGED:');
  printtable(prevnochangelist, 'UNCHANGED YESTERDAY:');
  printtable(blinkernochangelist, 'UNCHANGED BLINKER:');

  printurllist;

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
end.
