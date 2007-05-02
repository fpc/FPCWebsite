{ Copyright (C) Freepascal developers team

  This source is free software; you can redistribute it and/or modify it under
  the terms of the GNU General Public License as published by the Free
  Software Foundation; either version 2 of the License, or (at your option)
  any later version.

  This code is distributed in the hope that it will be useful, but WITHOUT ANY
  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
  details.

  A copy of the GNU General Public License is available on the World Wide Web
  at <http://www.gnu.org/copyleft/gpl.html>. You can also obtain it by writing
  to the Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
  MA 02111-1307, USA.
}

program fp2html;

{$mode objfpc}

uses
  SysUtils, getopts;

const
  InputExt = '.fp';
  VarNameChars: set of char = ['a'..'z', 'A'..'Z', '0'..'9', '_'];

var
  TemplateFile: string;
  ModifyFile: string;
  InFile : array of string;
  OutputExt   : string;
  Verbose   : boolean;
  OutputDir: string;
  Recursive: boolean;

{****************************************************************************
                                 Routines
****************************************************************************}
procedure Show(const s:string);
begin
  if Verbose then
    Write(s);
end;

{****************************************************************************
                                 Main Stuff
****************************************************************************}
var
  Done:  array[0..1023] of string;
  Total: word;

Function FileDone(fn:string):boolean;
var
  i: word;
begin
  i:=0;
  while (i<Total) and (Done[i]<>fn) do
   inc(i);
  if Done[i]=fn then
   Result:=true
  else
   begin
     Done[Total]:=fn;
     inc(Total);
     Result:=false;
   end;
end;

procedure Convert(fn:string);
type
  TVarList = record
               name: string;
               value: string;
             end;
var
  f: text;
  g: text;
  t: text;
  s: string;
  i: longint;
  //header stuff
  modify:  boolean;
  adds:    boolean;
  counter: boolean;
  picdir:  string;
  maindir: string;
  header:  string;
  title:   string;
  varlist: array of TVarList;
  nfn:     string;

  procedure WriteHtml(s:string);
  var
    i      : Longint;
    Quoted : boolean;
    S2     : String;
  begin
    s:=Trim(s);
    Quoted:=false;
    SetLength(S2,0);
    If Length(s)>0 then
     begin
      for i:= 1 TO Length(s) do
       begin
        If S[I]='"' THEN
         Quoted:=NOT Quoted;
        IF (S[I]='_') AND Not Quoted THEN
         S2:=S2+'&nbsp;'
        else
         S2:=S2+S[I];
       end;
      S:=S2;
     end;
{
    i:=pos('_',s);
    while (i>0) do
     begin
       delete(s,i,1);
       insert('&nbsp;',s,i);
       i:=pos('_',s);
     end;}
    i:=pos('&undersc;',s);
    while (i>0) do
     begin
       delete(s,i,length('&undersc;'));
       insert('_',s,i);
       i:=pos('&undersc;',s);
     end;
    i:=pos('NEW!',s);
    while (i>0) do
     begin
       Delete(s,i,4);
       Insert('<img src="'+picdir+'new.gif" alt="New!" width="31" height="12"/>',s,i);
       i:=pos('NEW!',s);
     end;
    if s<>'' then
     write(g,s,#10);
  end;

  procedure InsertFile(const fn:string);
  var
    t : text;
    s : string;
  begin
    assign(t,fn);
    {$I-}
     reset(t);
    {$I+}
    if ioresult<>0 then
     exit;
    while not eof(t) do
     begin
       readln(t,s);
       WriteHtml(s);
     end;
    close(t);
  end;

  procedure Replace(var s: string; const s1,s2:string);
  var
    i  : longint;
    c  : char;
  begin
    repeat
      i:=pos(s1,s);

      //check if true variable is found
      //as in "myvar_url" and "myvar"
      if i + length(s1) >= length(s) then
        c := #0
      else
        c := s[i+length(s1)];
        
      if (i = 0) or (c in VarNameChars) then
        break
      else
         s := StringReplace(s, s1, s2, []);

    until false;
  end;

  procedure AddVariable(str: string);
  var
    index: integer;
  begin
    //create an entry
    if Length(varlist) = 0 then
      SetLength(varlist,1)
    else
      SetLength(varlist, Succ(Length(varlist)));

    //get variable name
    index := 1;
    while str[index] <> ' ' do
      inc(index);
    varlist[high(varlist)].name := '$' + copy(str, 2, index - 2);

    //get variable value
    varlist[high(varlist)].value := copy(str, index + 1, Length(str) - index);
  end;

  procedure ReplaceVarList;
  var
    i: integer;
  begin
    for i := 0 to High(varlist) do
      Replace(s, varlist[i].name, varlist[i].value);
  end;

  function create_new_filename(const s:string):string;

  var extbeg,langbeg:byte;

  begin
    extbeg:=length(s);
    while (extbeg>0) and not (s[extbeg] in ['/', '.', '\', ':']) do
      dec(extbeg);
    if s[extbeg]<>'.' then
      extbeg:=0;
    if extbeg<>0 then
      begin
        langbeg:=extbeg-1;
        while (langbeg>0) and not (s[langbeg] in ['/', '.', '\', ':']) do
          dec(langbeg);
        if s[langbeg]<>'.' then
          langbeg:=0;
      end
    else
      langbeg:=0;
    if extbeg=0 then
      create_new_filename:=s+outputext
    else if langbeg=0 then
      create_new_filename:=copy(s,1,extbeg-1)+outputext
    else
      create_new_filename:=copy(s,1,langbeg-1)+outputext+copy(s,langbeg,extbeg-langbeg);
  end;

begin
{ Reset }
  Title:='';
  Maindir:='';
  PicDir:='';
  header:='';
  Modify:=false;
  Adds:=false;
  Counter:=False;
{Create New FileName}
  nfn:=create_new_filename(fn);
{  nfn := ChangeFileExt(fn, OutputExt);}
  if OutputDir <> '' then
    nfn := OutputDir + ExtractFileName(nfn);
{Done?}
  if FileDone(nfn) then
   exit;
{Open Files}
  Show('Converting '+fn);
  if fn=nfn then
   assign(g,ChangeFileExt(fn,'$T$'))
  else
   begin
      Show(' -> '+nfn + #10);
     assign(g,nfn);
   end;
  assign(f,fn);
  {$I-}
   reset(f);
  {$I+}
  if ioresult<>0 then
   exit;
{Read Header}
  readln(f,s);
  if Copy(s,1,6)='<html>' then
   readln(f,s);
  if Copy(s,1,4)<>'<!--' then
   begin
     WriteLn('Wrong input file ', fn, '!');
     Close(f);
     exit;
   end;
  readln(f,s);
  while not eof(f) and (s<>'-->') do
   begin
     s:=Trim(s);
     if Copy(s,1,6)='#TITLE' then
      title:=Copy(s,8,80)
     else
      if Copy(s,1,7)='#HEADER' then
       header:=Copy(s,9,80)
     else
      if Copy(s,1,8)='#MAINDIR' then
       begin
         maindir:=Copy(s,10,30);
         if (maindir<>'') and (maindir[length(maindir)]<>'/') then
          maindir:=maindir+'/';
         Show('Set main dir to ' + Maindir);
       end
     else
      if Copy(s,1,7)='#PICDIR' then
       begin
         picdir:=Copy(s,9,30);
         if (picdir<>'') and (picdir[length(picdir)]<>'/') then
          picdir:=picdir+'/';
       end
     else
      if Copy(s,1,5)='#ADDS' then
       Adds:=true
     else
      if Copy(s,1,8)='#COUNTER' then
       Counter:=true
     else
      if Copy(s,1,7)='#MODIFY' then
       Modify:=true
     else
       //check for free assignable variable
       if s[1] = '#' then
         AddVariable(s);

     readln(f,s);
   end;
  if eof(f) then
   begin
     Close(f);
     WriteLn('Wrong input file ', fn, '!');
     exit;
   end;

  //add system variables
  AddVariable('#NOW ' + DateTimeToStr(Now));

{Fix items}
  if PicDir='' then
   PicDir:=MainDir+'pic/';
  if Title='' then
   Title:='Free Pascal - Home Page';
{Read the template}
  assign(t,TemplateFile);
  {$I-}
   reset(t);
  {$I+}
  if ioresult<>0 then
   begin
     WriteLn('Error: template file "',TemplateFile,'" not found!');
     Close(f);
     Halt(0);
   end;
{Open output}
  {$I-}
   rewrite(g);
  {$I+}
  if ioresult<>0 then
   begin
     Writeln('Can''t create ',nfn);
     Close(f);
     Close(t);
   end;
{Parse the template and fill in the stuff}
  while not eof(t) do
   begin
     readln(t,s);
     s:=Trim(s);
   {Replace}
     Replace(s, '$TITLE',title);
     Replace(s, '$HEADER',header);
     Replace(s, '"pic/','"'+picdir);
     ReplaceVarList;
   {Fix Index}
      if s='<!-- TEXT -->' then
       begin
         while not eof(f) do
          begin
            readln(f,s);

            //replace
            Replace(s, '$TITLE',title);
            Replace(s, '$HEADER',header);
            Replace(s, '"pic/','"'+picdir);
            ReplaceVarList;

            WriteHtml(s);
          end;
         s:='';
       end
     else
      if s='<!-- ADDS -->' then
       begin
         if Adds then
          InsertFile('adds.fp');
       end
     else
      if s='<!-- COUNTER -->' then
       begin
         if Counter then
          InsertFile('counter.fp');
       end
     else
      if s='<!-- MODIFY -->' then
       begin
         if Modify and (ModifyFile<>'') then
          InsertFile(ModifyFile);
       end
     else
       begin
        i:=pos('<a href="',s);
        if i>0 then
        begin
          { insert maindir }
          if (not (Copy(S,i+9,7)='http://')) and
             ((length(s) < i+9) or (s[i+9] <> '/')) and
             (maindir<>'') then
            insert(maindir,s,i+9);
        end;
        WriteHtml(s);
      end;
   end;
{Close}
  close(g);
  close(f);
  close(t);

  if fn=nfn then
   begin
     erase(f);
     rename(g,fn);
   end;
end;

{****************************************************************************
                                General Stuff
****************************************************************************}

procedure helpscreen;
begin
  writeln(ParamStr(0), ' [Options] <InFile(s)>');
  writeln;
  writeln('Options:');
  writeln(' -O<extension> Specify OutputExt Mask');
  writeln(' -M<file>      Use <file> for modifying');
  writeln(' -T<file>      Use <file> as template file');
  writeln(' -D<path>      Output directory');
  writeln(' -r            Recursively process directories');
  writeln(' -v            Be more verbose');
  writeln(' -h            This help screen');
  halt(1);
end;

procedure getpara;
var
  ch: char;
  i:  integer;

  procedure AddInFile(str: string);
  begin
    //create an entry
    if Length(InFile) = 0 then
      SetLength(InFile,1)
    else
      SetLength(InFile, Succ(Length(InFile)));

    InFile[High(InFile)] := str;
  end;

  procedure AddRecursiveFiles(SearchDir: string);
  var
    Info : TSearchRec;
  begin
    if FindFirst (SearchDir+'*',faAnyFile and faDirectory,Info)=0 then
    begin
      repeat
        with Info do
        begin
          if ((Attr and faDirectory) = faDirectory) and (Name <> '.') and (Name <> '..')then
            AddRecursiveFiles(IncludeTrailingPathDelimiter(Name));

          if ExtractFileExt(Name) = InputExt then
            AddInFile(SearchDir + Name);

        end;
      until FindNext(info)<>0;
    end;
    FindClose(Info);
  end;

begin
  //reset
  TemplateFile:='template.fpht';
  OutputExt := '.html';
  Verbose := False;
  OutputDir := '';
  Recursive := False;

  //parse options
  repeat
    ch:=Getopt('O:M:T:D:rvh?');
    Case ch of
      'O' : if OptArg[1] <> '.' then
              OutputExt := '.' + OptArg
            else
              OutputExt := OptArg;
      'M' : ModifyFile:=OptArg;
      'T' : TemplateFile:=OptArg;
      'D' : OutputDir := IncludeTrailingPathDelimiter(OptArg);
      'r' : Recursive := True;
      'v' : Verbose:=true;
      'h' : helpscreen;
      '?' : helpscreen;

      EndOfOptions : break;
    end;
  until false;

  //add input files
  for i:= OptInd to Paramcount do
    AddInFile(ChangeFileExt(ParamStr(i),InputExt));

  //add recursively files
  if Recursive then
    AddRecursiveFiles('');

  //checks
  if (OutputDir <> '') and not DirectoryExists(OutputDir) then
  begin
    writeln('Error: Output directory does not exist!');
    halt(0);
  end;
end;

var
  i: word;
begin
  //get all the commandline parameters
  GetPara;

  //prevent the following files to be overwritten
  FileDone('template'+OutputExt);
  FileDone('adds'+OutputExt);
  FileDone('counter'+OutputExt);

  if ModifyFile<>'' then
    FileDone(ChangeFileExt(ModifyFile,OutputExt));

  //process all infiles
  if Length(InFile) = 0 then
    helpscreen;
    
  for i:=0 to High(InFile) do
    if FileExists(InFile[i]) then
      Convert(InFile[i])
    else
      writeln('Error: File ', InFile[i],' does not exist!');

  { Write OK }
  Show('OK'+ #10);
end.
