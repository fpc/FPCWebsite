program fp2html;
uses Dos;

const
{Files}
  InputExt='fp';
  OutputExt='html';

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

{$ifndef FPC}
  procedure readln(var t:text;var s:string);
  var
    c : char;
    i : longint;
  begin
    c:=#0;
    i:=0;
    while (not eof(t)) and (c<>#10) do
     begin
       read(t,c);
       if c<>#10 then
        begin
          inc(i);
          s[i]:=c;
        end;
     end;
    if (i>0) and (s[i]=#13) then
     dec(i);
    s[0]:=chr(i);
  end;
{$endif}

const
  PathCh=DirectorySeparator;

Function SplitPath(Const HStr:String):String;
var
  i : byte;
begin
  i:=Length(Hstr);
  while (i>0) and (Hstr[i]<>PathCh) do
   dec(i);
  SplitPath:=Copy(Hstr,1,i);
end;


{$IFDEF never_defined}
Function SplitFileName(Const HStr:String):String;
var
  i : byte;
begin
  i:=Length(Hstr);
  while (i>0) and (Hstr[i]<>PathCh) do
   dec(i);
  SplitFileName:=Copy(Hstr,i+1,255);
end;
{$ENDIF}


Function SplitName(Const HStr:String):String;
var
  i,j : byte;
begin
  i:=Length(Hstr);
  j:=i;
  while (i>0) and (Hstr[i]<>PathCh) do
   dec(i);
  while (j>0) and (Hstr[j]<>'.') do
   dec(j);
  if j<=i then
   j:=255;
  SplitName:=Copy(Hstr,i+1,j-(i+1));
end;



Function SplitExtension(Const HStr:String):String;
var
  j : byte;
begin
  j:=length(Hstr);
  while (j>0) and (Hstr[j]<>'.') and (Hstr[J]<>DirectorySeparator) do
   dec(j);
  if (j=0) or (Hstr[J]<>'.') then
   j:=254;
  SplitExtension:=Copy(Hstr,j+1,255);
end;



Function AddExtension(Const HStr,ext:String):String;
begin
  if (Ext<>'') and (SplitExtension(HStr)='') then
   AddExtension:=Hstr+'.'+Ext
  else
   AddExtension:=Hstr;
end;



Function ForceExtension(Const HStr,ext:String):String;
var
  j : byte;
begin
  j:=length(Hstr);
  while (j>0) and (Hstr[j]<>'.') do
   dec(j);
  if j=0 then
   j:=Length(Hstr)+1;
  ForceExtension:=Copy(Hstr,1,j-1)+'.'+Ext;
end;


Function CBSpace(const Hstr:string):string;
var
  i : byte;
begin
  i:=1;
  while (i<length(Hstr)) and (Hstr[i] in [' ',#9]) do
   inc(i);
  CBSpace:=Copy(Hstr,i,255);
end;


function UCase(Const Hstr:string):string;
var
  i : byte;
begin
  for i:=1to Length(Hstr) do
   UCase[i]:=Upcase(Hstr[i]);
  UCase[0]:=chr(Length(Hstr));
end;


function LCase(Const Hstr:string):string;
var
  i : byte;
begin
  for i:=1to Length(Hstr) do
   begin
     if Hstr[i] in ['A'..'Z'] then
      LCase[i]:=chr(ord(Hstr[i])+32)
     else
      LCase[i]:=Hstr[i];
   end;
  LCase[0]:=chr(Length(Hstr));
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
  fn:=UCase(fn);
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


procedure Convert(fn,nfn:string);
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

  procedure WriteHtml(s:string);
  var
    i 	   : Longint;
    Quoted : boolean;
    S2	   : String;
  begin
    s:=CBSpace(s);
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

begin
  fn:=LCase(fn);
  nfn:=LCase(nfn);
{ Reset }
  Title:='';
  Maindir:='';
  PicDir:='';
  header:='';
  Modify:=false;
  Adds:=false;
  Counter:=False;
{Create New FileName}
  if SplitExtension(nfn)='*' then
   nfn:=AddExtension(SplitPath(nfn)+SplitName(nfn),SplitExtension(fn));
  if SplitName(nfn)='*' then
   nfn:=AddExtension(SplitPath(nfn)+SplitName(fn),SplitExtension(nfn));
{Done?}
  if FileDone(nfn) then
   exit;
{Open Files}
  if Verbose then
   Write('Converting '+ESpace(fn,15));
  if fn=nfn then
   assign(g,ForceExtension(fn,'$T$'))
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
     s:=CBSpace(s);
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
       Modify:=true;
     readln(f,s);
   end;
  if eof(f) then
   begin
     Close(f);
     WriteLn('Wrong File!');
     exit;
   end;
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
     s:=CBSpace(s);
   {Replace}
     Replace('$TITLE',title);
     Replace('$HEADER',header);
     Replace('"pic/','"'+picdir);
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
         'O' : OutFile:=AddExtension(Para,OutputExt);
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
  if OutFile='' then
   OutFile:=ForceExtension('*',OutPutExt);
end;


var
  Dir : SearchRec;
  i   : word;
begin
  FileDone('template.'+outputext);
  FileDone('adds.'+outputext);
  FileDone('counter.'+outputext);
  GetPara;
  if ModifyFile<>'' then
   FileDone(ForceExtension(ModifyFile,outputext));
  for i:=ParaFile to ParamCount do
   begin
     InFile:=LCase(AddExtension(ParamStr(i),InputExt));
     FindFirst(InFile,$20,Dir);
     while (DosError=0) do
      begin
        Convert(SplitPath(InFile)+Dir.Name,SplitPath(InFile)+OutFile);
        FindNext(Dir);
      end;
   end;
end.
