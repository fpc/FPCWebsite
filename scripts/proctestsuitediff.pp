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

procedure addlist(list: tstringlist; const failstr, data: string);
var
  tmpObj: TObject;
begin
  tmpObj := nil;
  string(tmpObj) := data;
  list.addobject(failstr, tmpObj);
end;

var
  yesterday, today: string;
  currline, currdate, prevline, prevdate: string;
  currfail, prevfail, failstr, prevdata, currdata: string;
  disappearlist, nochangelist, changelist, newlist: tstringlist;
begin
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
  yesterday := FormatDateTime('YYYY-mm-dd', Now-1);
  today := FormatDateTime('YYYY-mm-dd', Now);
  lenfailstr := 0;
  repeat
    readln(currline);
    currdate := getdate(currline);
    currdata := copy(currline, 21, length(currline)-20);
    if (prevdate = yesterday) and (prevdata = currdata) and (currdate = today) then
    begin
      prevfail := getfail(prevline);
      currfail := getfail(currline);
      if prevfail = currfail then
      begin
        failstr := currfail;
        addlist(nochangelist, failstr, currdata);
      end else begin
        failstr := prevfail + ' -> ' + currfail;
        addlist(changelist, failstr, currdata);
      end;
      if length(failstr) > lenfailstr then
        lenfailstr := length(failstr);
      { both these lines have been processed }
      currline := '';
      currdate := '';
      currdata := '';
    end else 
    if (prevdate = yesterday) then
    begin
      addlist(disappearlist, getfail(prevline), prevdata);
    end else
    if (prevdate = today) then
    begin
      addlist(newlist, getfail(prevline), prevdata);
    end;
    if (length(currdate) > 0) and (currdate[1] = '-') then
    begin
      footer := currline;
      break;
    end;
    prevline := currline;
    prevdate := currdate;
    prevdata := currdata;
  until false;
  
  header[0] := copy(header[0], 1, 1) + stringofchar('-', lenfailstr+2) + 
    copy(header[0], 21, length(header[0])-20);
  header[1] := copy(header[1], 1, 7) + stringofchar(' ', lenfailstr-4) + 
    copy(header[1], 21, length(header[1])-20);
  header[2] := copy(header[2], 1, 1) + stringofchar('-', lenfailstr+2) + 
    copy(header[2], 21, length(header[2])-20);
  footer    := copy(footer,    1, 1) + stringofchar('-', lenfailstr+2) + 
    copy(footer,    21, length(footer)-20);
  
  printtable(changelist, 'CHANGED:');
  printtable(nochangelist, 'UNCHANGED:');
  printtable(disappearlist, 'DISAPPEARED:');
  printtable(newlist, 'NEW:');
  
  disappearlist.free;
  nochangelist.free;
  changelist.free;
  newlist.free;
end.
