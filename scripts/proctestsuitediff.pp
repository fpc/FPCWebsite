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

var
  header: array[0..2] of string;
  footer: string;
  lenfailstr: integer;

procedure printtable(list: tstringlist; heading: string);
var
  str: string;
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
    writeln('| ' + str + stringofchar(' ', lenfailstr - length(str)) + ' ' + string(list.objects[i]));
  end;
  writeln(footer);
  writeln;
end;

procedure addlist(list: tstrings; const failstr, data: string);
var
  tmpObj: TObject;
begin
  tmpObj := nil;
  string(tmpObj) := data;
  list.addobject(failstr, tmpObj);
end;

type
  ttestrun = record
    line, date, fail, data: string;
    hour: integer;
  end;

function checkchange(var prev, curr: ttestrun; const prevdate, currdate: string;
  changelist, nochangelist: tstrings): boolean;
var
  failstr: string;
begin
  result := (prev.date = prevdate) and (prev.data = curr.data) and (curr.date = currdate);
  if result then
  begin
    prev.fail := getfail(prev.line);
    curr.fail := getfail(curr.line);
    if prev.fail = curr.fail then
    begin
      failstr := curr.fail;
      addlist(nochangelist, failstr, curr.data);
    end else begin
      failstr := prev.fail + ' -> ' + curr.fail;
      addlist(changelist, failstr, curr.data);
    end;
    if length(failstr) > lenfailstr then
      lenfailstr := length(failstr);
    { both these lines have been processed }
    curr.line := '';
    curr.date := '';
    curr.data := '';
  end;
end;

const
  { cut fails and date (first two fields, '| FAILS | DATE       ', 21 characters) 
    cut time (last field, ' HH:MM:SS |', 11 characters) }
  datastart = 21;
  datacutlen = 31;
  { position of hour counted from end }
  houroffset = 9;

var
  twodaysago, yesterday, today: string;
  curr, prev, old: ttestrun;
  prevnochangelist, prevchangelist, disappearlist, nochangelist, changelist, newlist: tstringlist;
begin
  prevnochangelist := tstringlist.create;
  prevchangelist := tstringlist.create;
  disappearlist := tstringlist.create;
  nochangelist := tstringlist.create;
  changelist := tstringlist.create;
  newlist := tstringlist.create;
  readln;
  repeat
    readln(header[0]);
  until (length(header[0]) > 0) and (header[0][1] = '+');
  readln(header[1]);
  readln(header[2]);
  twodaysago := FormatDateTime('YYYY-mm-dd', Now-2);
  yesterday := FormatDateTime('YYYY-mm-dd', Now-1);
  today := FormatDateTime('YYYY-mm-dd', Now);
  lenfailstr := 5;  { Length('FAILS') = column header }
  repeat
    readln(curr.line);
    curr.date := getdate(curr.line);
    curr.data := copy(curr.line, datastart, length(curr.line)-datacutlen);
    curr.hour := strtointdef(copy(curr.line, length(curr.line)-houroffset, 2), 0);
    if checkchange(prev, curr, yesterday, today, changelist, nochangelist) then
    begin
      { 'same' testrun yesterday and today, changelist or nochangelist modified }
    end else
    if prev.date = yesterday then
    begin
      { disappeared ? check if changed yesterday, and submitted late }
      if not ((prev.hour >= 7) and checkchange(old, prev, twodaysago, 
          yesterday, prevchangelist, prevnochangelist)) then
        addlist(disappearlist, getfail(prev.line), prev.data);
    end else
    if prev.date = today then
    begin
      addlist(newlist, getfail(prev.line), prev.data);
    end;
    if (length(curr.date) > 0) and (curr.date[1] = '-') then
    begin
      footer := curr.line;
      break;
    end;
    old := prev;
    prev := curr;
  until false;
  
  header[0] := copy(header[0], 1, 1) + stringofchar('-', lenfailstr+2) + 
    copy(header[0], datastart, length(header[0])-datacutlen);
  header[1] := copy(header[1], 1, 7) + stringofchar(' ', lenfailstr-4) + 
    copy(header[1], datastart, length(header[1])-datacutlen);
  header[2] := copy(header[2], 1, 1) + stringofchar('-', lenfailstr+2) + 
    copy(header[2], datastart, length(header[2])-datacutlen);
  footer    := copy(footer,    1, 1) + stringofchar('-', lenfailstr+2) + 
    copy(footer,    datastart, length(footer)-datacutlen);
  
  printtable(changelist, 'CHANGED:');
  printtable(prevchangelist, 'CHANGED YESTERDAY:');
  printtable(nochangelist, 'UNCHANGED:');
  printtable(prevnochangelist, 'UNCHANGED YESTERDAY:');
  printtable(disappearlist, 'DISAPPEARED:');
  printtable(newlist, 'NEW:');

  prevnochangelist.free;
  prevchangelist.free;
  disappearlist.free;
  nochangelist.free;
  changelist.free;
  newlist.free;
end.
