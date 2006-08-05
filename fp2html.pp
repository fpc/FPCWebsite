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

uses
  SysUtils;

const
{Files}
  InputExt='.fp';
  OutputExt='.html';

var
{General}
  TemplateFile,
  ModifyFile,
  InFile,
  OutFile   : string[80];
  ParaFile  : word;
{Specific}
const
  Verbose   : boolean=false;

{****************************************************************************
                                 Routines
****************************************************************************}
Function SplitName(Const HStr:String):String;
var
  i,j : byte;
begin
  i:=Length(Hstr);
  j:=i;
  while (i>0) and (Hstr[i]<>DirectorySeparator) do
   dec(i);
  while (j>0) and (Hstr[j]<>'.') do
   dec(j);
  if j<=i then
   j:=255;
  SplitName:=Copy(Hstr,i+1,j-(i+1));
end;

Function ESpace(HStr:String;len:byte):String;
begin
  while length(Hstr)<Len do
   begin
     inc(byte(Hstr[0]));
     Hstr[Length(Hstr)]:=' ';
   end;
  ESpace:=Hstr;
end;

{****************************************************************************
                                 Main Stuff
****************************************************************************}
var
  Done  : array[0..1023] of string[32];
  Total : word;

Function FileDone(fn:string):boolean;
var
  i : word;
begin
  fn:=UpCase(fn);
  i:=0;
  while (i<Total) and (Done[i]<>fn) do
   inc(i);
  if Done[i]=fn then
   FileDone:=true
  else
   begin
     Done[Total]:=fn;
     inc(Total);
     FileDone:=false;
   end;
end;

procedure Convert(fn:string);
type
  TVarList = record
               name: string;
               value: string;
             end;
var
  f,g,t       : text;
  s           : string;
  i           : longint;
{ Header Stuff }
  modify,
  adds,
  counter     : boolean;
  picdir,
  maindir,
  header,
  title       : string[80];
  varlist     : array of TVarList;
  nfn         : string;

  procedure WriteHtml(s:string);
  var
    i 	   : Longint;
    Quoted : boolean;
    S2	   : String;
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

  procedure Replace(const s1,s2:string);
  var
    hs : string;
    i  : longint;
  begin
    hs:=s;
    s:='';
    repeat
      i:=pos(s1,hs);
      if i=0 then
       begin
         s:=s+hs;
         break;
       end
      else
       begin
         s:=s+Copy(hs,1,i-1)+s2;
         Delete(hs,1,i+length(s1)-1);
       end;
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
      Replace(varlist[i].name, varlist[i].value);
  end;
  
begin
  fn:=LowerCase(fn);

{ Reset }
  Title:='';
  Maindir:='';
  PicDir:='';
  header:='';
  Modify:=false;
  Adds:=false;
  Counter:=False;
{Create New FileName}
  if OutFile = '' then
    nfn := ChangeFileExt(fn, OutputExt)
  else
    nfn := ChangeFileExt(fn, ExtractFileExt(OutFile));
{Done?}
  if FileDone(nfn) then
   exit;
{Open Files}
  if Verbose then
   Write('Converting '+ESpace(fn,15));
  if fn=nfn then
   assign(g,ChangeFileExt(fn,'$T$'))
  else
   begin
     if Verbose then
      Write('-> '+ESpace(nfn,15));
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
     WriteLn('Wrong File!');
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
         Writeln('Set main dir to ',Maindir);   
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
     //check for free assignable variable
     else
       if s[1] = '#' then
         AddVariable(s);
     readln(f,s);
   end;
  if eof(f) then
   begin
     Close(f);
     WriteLn('Wrong File!');
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
     WriteLn('template file "',TemplateFile,'" not found!');
     Close(f);
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
     Replace('$TITLE',title);
     Replace('$HEADER',header);
     Replace('"pic/','"'+picdir);
     ReplaceVarList;
   {Fix Index}
      if s='<!-- TEXT -->' then
       begin
         while not eof(f) do
          begin
            readln(f,s);
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
  if fn=nfn then
   begin
     erase(f);
     rename(g,fn);
   end;
{ Write OK }
  if Verbose then
   Writeln('OK');
end;

{****************************************************************************
                                General Stuff
****************************************************************************}

procedure getpara;
var
  ch   : char;
  para : string[128];
  i    : word;

  procedure helpscreen;
  begin
    writeln('Usage : '+SplitName(ParamStr(0))+' [Options] <InFile(s)>'#10);
    writeln('<Options> can be : -O<OutFile>  Specify OutFile Mask');
    writeln('                   -M<file>     Use <file> for modifying');
    writeln('                   -T<file>     Use <file> as template file');
    writeln('                   -V           be more verbose');
    writeln('             -? or -H           This HelpScreen');
    halt(1);
  end;

begin
  TemplateFile:='template.fpht';
  for i:=1 to paramcount do
   begin
     para:=paramstr(i);
     if (para[1]='-') then
      begin
        ch:=upcase(para[2]);
        delete(para,1,2);
        case ch of
         'O' : OutFile:=ChangeFileExt(Para,OutputExt);
         'M' : ModifyFile:=Para;
         'V' : verbose:=true;
         'T' : TemplateFile:=Para;
     '?','H' : helpscreen;
        end;
     end
    else
     begin
       if ParaFile=0 then
        ParaFile:=i;
     end;
   end;
  if (ParaFile=0) then
   HelpScreen;
end;

var
  i   : word;
begin
  //prevent the following files to be overwritten
  FileDone('template.'+outputext);
  FileDone('adds.'+outputext);
  FileDone('counter.'+outputext);
  
  //get all the commandline parameters
  GetPara;
  
  if ModifyFile<>'' then
   FileDone(ChangeFileExt(ModifyFile,outputext));

  for i:=ParaFile to ParamCount do
   begin
     writeln(i);
     InFile:=LowerCase(ChangeFileExt(ParamStr(i),InputExt));

     if FileExists(InFile) then
       Convert(InFile)
     else
       writeln('Error: File ', InFile,' does not exist!');
   end;
end.
