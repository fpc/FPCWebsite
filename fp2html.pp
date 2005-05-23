program fp2html;
uses Dos;

const
{Files}
  InputExt='fp';
  OutputExt='html';

var
{General}
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
{$IFDEF LINUX}
  PathCh='/';
{$ELSE}
  PathCh='\';
{$ENDIF}

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
  while (j>0) and (Hstr[j]<>'.') do
   dec(j);
  if j=0 then
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
   j:=255;
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
  lastk,
  i,j,k       : longint;
{ Header Stuff }
  skipmaindir,
  ismain,
  modify,
  adds,
  counter     : boolean;
  picdir,
  maindir,
  mainentry,
  subentry,
  subsubentry,
  lastsubentry,
  lastentry,
  header,
  title       : string[80];

  procedure WriteHtml(s:string);
  var
    i 	   : Longint;
    Quoted : boolean;
    S2	   : String;
  begin
    s:=CBSpace(s);
    if Copy(s,1,6)='<HTML>' then
     Delete(s,1,6)
    else
     if Copy(s,1,7)='</HTML>' then
      Delete(s,1,7);
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
       Insert('<IMG SRC="'+picdir+'new.gif" ALT="New!" BORDER=0 WIDTH=31 HEIGHT=12>',s,i);
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
  MainEntry:='';
  SubEntry:='';
  SubSubEntry:='';
  LastEntry:='';
  LastSubEntry:='';
  header:='';
  IsMain:=false;
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
  if Copy(s,1,6)='<HTML>' then
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
      if Copy(s,1,6)='#ENTRY' then
       mainentry:=Copy(s,8,30)
     else
      if Copy(s,1,9)='#SUBENTRY' then
       subentry:=Copy(s,11,30)
     else
      if Copy(s,1,12)='#SUBSUBENTRY' then
       subsubentry:=Copy(s,14,30)
     else
      if Copy(s,1,8)='#MAINDIR' then
       begin
         maindir:=Copy(s,10,30);
         if (maindir<>'') and (maindir[length(maindir)]<>'/') then
          maindir:=maindir+'/';
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
  if SubEntry='' then
   begin
     SubEntry:=MainEntry;
     IsMain:=true;
   end;
  if Title='' then
   Title:='Free Pascal - Home Page';
{Read the template}
  assign(t,'template.fp');
  {$I-}
   reset(t);
  {$I+}
  if ioresult<>0 then
   begin
     WriteLn('template.fp not found!');
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
  write(g,'<HTML>'#10);
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
     if (s[1]='_') then
      begin
        skipmaindir:=false;
        i:=pos('<A HREF="',s);
        if i>0 then
         begin
           k:=i+9;
           j:=i;
           while (j<length(s)) and (s[j]<>'.') do
            inc(j);
           lastk:=k;
           while (k<j) do
            begin
              if s[k]='/' then
               lastk:=k+1;
              inc(k);
            end;
           if i=2 then
            begin
              LastEntry:=Copy(s,lastk,j-lastk);
              LastSubEntry:='';
            end;
           if i=5 then
            LastSubEntry:=Copy(s,lastk,j-lastk);
           if (MainEntry<>LastEntry) then
            begin
              { Check if the entry can be removed }
              if i>3 then
               s:='';
            end
           else
            if (SubEntry<>LastSubEntry) then
             begin
               { Main entry? }
               if ismain and (lastsubentry='') then
                begin
                 j:=i;
                 while (j<length(s)) and (s[j]<>'>') do
                  inc(j);
                 Delete(s,i,j-i+1);
                 Insert('<B class="curnavi">',s,i);
                 j:=pos('</A>',s);
                 if j>0 then
                  begin
                    Delete(s,j,4);
                    Insert('</B>',s,j);
                  end;
                 skipmaindir:=true; 
                end;
               { Check if the entry can be removed }
               if i>6 then
                s:='';
             end
           else
            begin
              if (((Copy(s,lastk,j-lastk)=subentry) and (SubSubEntry='')) or
                  (Copy(s,lastk,j-lastk)=subsubentry)) and
                 (pos('#',s)=0) then
               begin
                 j:=i;
                 while (j<length(s)) and (s[j]<>'>') do
                  inc(j);
                 Delete(s,i,j-i+1);
                 Insert('<B class="curnavi">',s,i);
                 j:=pos('</A>',s);
                 if j>0 then
                  begin
                    Delete(s,j,4);
                    Insert('</B>',s,j);
                  end;
                 skipmaindir:=true;
               end;
            end;
           { insert maindir }
           if (not skipmaindir) and
              (s<>'') and (maindir<>'') then
            insert(maindir,s,i+9);
         end;
        WriteHtml(s);
      end
     else
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
      WriteHtml(s);
   end;
{Close}
  write(g,'</HTML>'#10);
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
    writeln('                   -V           be more verbose');
    writeln('             -? or -H           This HelpScreen');
    halt(1);
  end;

begin
  for i:=1to paramcount do
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
