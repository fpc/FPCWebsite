unit adputils;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, zipper, libtar, zstream, adpdata ;
const
  whitespace = [' ',#13,#10,#8];


Type
  Pproperty=^Tproperty;
  Tproperty=record
    left,right:Pproperty;
    name,value:Unicodestring;
  end;

  { TProperties }

  TProperties = Class(TObject)
  Private
    FRoot : PProperty;
    procedure FreeNode(var aNode: PProperty);
    procedure Write(const name,value:Unicodestring;var tree:Pproperty);
    function Read(const name:Unicodestring;tree:Pproperty):Unicodestring;
  Public
    destructor destroy; override;
    function replaceInstring(s:Unicodestring):Unicodestring;
    function Read(const name:Unicodestring):Unicodestring;
    procedure Write(const name,value:Unicodestring);
  end;

  Pmessage=^Tmessage;
  Tmessage=record
    left,right:Pmessage;
    locale,key,value:Unicodestring;
  end;

  { TMessages }

  TMessages = Class(TObject)
  Private
    FOptions: TOptions;
    FRoot : PMessage;
    procedure dowrite(const alocale,key,value:Unicodestring;var tree:Pmessage);
    function doread(const alocale,key:Unicodestring;tree:Pmessage):Unicodestring;
    procedure FreeNode(var aNode: PMessage);
  Public
    Constructor create(aOptions : TOptions);
    destructor destroy; override;
    procedure write(const alocale,key,value:Unicodestring);
    function read(const alocale,key:Unicodestring):Unicodestring;
    Property Options : TOptions Read FOptions;
  end;


function getfilesize(const fn:ansistring) : int64;
procedure CreateTar(const fname:ansistring;filelist:TstringList);
procedure CreateZip(const fname:ansistring;filelist:TstringList);
procedure DoArchives(fn:string;atar,azip : boolean);
procedure findfile(startpath:string;lst:TStringList);
procedure GenVarFile(ifn:ansistring);
function addfnsuffix(const fn,suffix:string):string;

implementation

function getfilesize(const fn:ansistring) : int64;

var
   f : file;
begin
  if not fileexists(fn) then
    exit(0);
  Assign(f,fn);
  Reset(f);
  Result:=FileSize(f);
  CloseFile(f);
end;


procedure CreateTar(const fname:ansistring;filelist:TstringList);

var
  tar : TTarWriter;
  agz : TGZFileStream;
  s   : ansistring;
begin
  tar:=Nil;
  agz :=TGZFileStream.create(fname,gzOpenWrite);
  try
    Tar:=TTarWriter.Create(agz);
    for s in filelist do
      if fileexists(s) then
        tar.AddFile(s);
  finally
    tar.free;
    agz.free;
  end;
end;

procedure CreateZip(const fname:ansistring;filelist:TstringList);

var
  azipper:TZipper;

begin
  azipper:=TZipper.Create;
  try
    azipper.FileName:=fname;
    azipper.Entries.AddFileEntries(filelist);
    azipper.ZipAllFiles;
  finally
    azipper.free;
  end;
end;

procedure DoArchives(fn:string;atar,azip : boolean);

var
  filelist :TStringlist;

begin
  if not (atar or azip) then
    exit;
  filelist :=TStringlist.create;
  try
    findfile('',filelist);
    if azip then
     begin
       writeln('generating zip:');
       CreateZip(changefileext(fn,'.zip'),filelist);
     end;

  if atar then
    begin
      writeln('generating tar.gz:');
      CreateTar(changefileext(fn,'.tar.gz'),filelist);
    end;
  finally
    filelist.free;
  end;
end;

procedure findfile(startpath:string;lst:TStringList);

var
  Rec : TSearchRec;
  ext,Path: string;
  dirs:Tstringlist;
  i: Integer;
  add : boolean;

begin
  if startpath<>'' then
    Path := IncludeTrailingPathDelimiter(startpath)
  else
    Path := startpath;
  dirs:=Tstringlist.Create;
  try
    if FindFirst (path+'*', faAnyFile, Rec) = 0 then
      try
       repeat
         if (rec.Attr and faDirectory)>0 then
          begin
           if (rec.name<>'.') and (rec.name<>'..')   then
            dirs.add(path+rec.Name)
          end
         else
           begin
             add:=false;
             ext:=lowercase(ExtractFileExt(rec.name));
             for i:=0 to high(allowedextensions) do
               if ext=allowedextensions[i] then
                 add:=true;
             if pos('.html.',lowercase(rec.name))<>0 then // simulate extended wildcard with POS()
                add:=true;
             if add then
               lst.add(path+rec.name);
           end;
        until FindNext(Rec) <> 0;
      finally
      FindClose(Rec) ;
      end;
    for i:=0 to dirs.Count-1 do
      findfile(dirs[i],lst);
  finally
    dirs.Free;
  end;
end;


procedure GenVarFile(ifn:ansistring);

var
  ofn : ansistring;
  L   : TStringList;
  I   : Integer;

begin
  ofn:=ChangeFileExt(ifn,'.var');
  ifn:=ExtractFileName(ifn);
  L:=TStringList.Create;
  try
    for I:=1 to langCount do
      begin
      if langcatalogok[i] then
        begin
        L.Add('');
        L.Add(Format('URI: %s.%s',[ifn,LangNames[i]]));
        L.Add(Format('Content-language: %s',[LangContent[i]]));
        L.Add(Format('Content-type: text/html; charset=%s',[LangEnCoding[i]]));
        end;
      end;
    L.Add('');
    L.SaveToFile(ofn);
  finally
    L.Free;
  end;
end;

function addfnsuffix(const fn,suffix:string):string;
begin
  result:=changefileext(extractfilename(fn),'')+suffix+ExtractFileExt(fn);
end;

procedure TProperties.Write(const name,value:Unicodestring;var tree:Pproperty);

begin
  if tree=nil then
    begin
      new(tree);
      tree^.left:=nil;
      tree^.right:=nil;
      tree^.name:=name;
      tree^.value:=value;
    end
  else if tree^.name=name then
    tree^.value:=value
  else if tree^.name>name then
    Write(name,value,tree^.left)
  else
    Write(name,value,tree^.right);
end;

procedure TProperties.Write(const name,value:Unicodestring);

begin
   Write(name,value,FRoot);
end;

function TProperties.Read(const name:Unicodestring;tree:Pproperty):Unicodestring;

begin
  if tree=nil then
    Result:=''
  else if tree^.name=name then
    Result:=tree^.value
  else if tree^.name>name then
    Result:=Read(name,tree^.left)
  else
    Result:=Read(name,tree^.right);
end;

Procedure TProperties.FreeNode(var aNode : PProperty);

begin
  If not Assigned(aNode) then exit;
  If Assigned(aNode^.left) then
    FreeNode(aNode^.left);
  If Assigned(aNode^.right) then
    FreeNode(aNode^.right);
  FreeMem(aNode);
  aNode:=Nil;
end;

destructor TProperties.destroy;
begin
  FreeNode(FRoot);
  inherited destroy;
end;

function TProperties.replaceInstring(s: Unicodestring): Unicodestring;

var
  p,q:longint;
  v,c,a:Unicodestring;

begin
  p:=1;
  while p<=length(s) do
    begin
      if s[p]='@' then
        begin
          q:=p+1;
          while s[q] in ['A'..'Z','a'..'z','0'..'9','_','.'] do
            inc(q);
          if s[q]='@' then
            begin
              v:=copy(s,1,p-1);
              c:=copy(s,p+1,(q-p)-1);
              a:=copy(s,q+1,high(longint));
              c:=Read(c);
              s:=v+c+a;
              p:=length(v)+length(c);
            end;
         end;
      inc(p);
    end;
  Result:=s;
end;

function TProperties.Read(const name:Unicodestring):Unicodestring;

begin
  Result:=Read(name,FRoot);
end;

procedure TMessages.dowrite(const alocale, key, value: Unicodestring; var tree: Pmessage);

begin
  if tree=nil then
    begin
      new(tree);
      tree^.left:=nil;
      tree^.right:=nil;
      tree^.locale:=alocale;
      tree^.key:=key;
      tree^.value:=value;
    end
  else if tree^.key>key then
    DoWrite(alocale,key,value,tree^.left)
  else if tree^.key<key then
    DoWrite(alocale,key,value,tree^.right)
  else if tree^.locale>UTF8Decode(options.locale) then
    DoWrite(alocale,key,value,tree^.left)
  else if tree^.locale<UTF8Decode(options.locale) then
    DoWrite(alocale,key,value,tree^.right)
  else
    tree^.value:=value
end;

Procedure TMessages.FreeNode(var aNode : PMessage);

begin
  If not Assigned(aNode) then exit;
  If Assigned(aNode^.left) then
    FreeNode(aNode^.left);
  If Assigned(aNode^.right) then
    FreeNode(aNode^.right);
  FreeMem(aNode);
  aNode:=Nil;
end;

constructor TMessages.create(aOptions: TOptions);
begin
  FOptions:=aOptions;
end;

destructor TMessages.destroy;
begin
  FreeNode(FRoot);
  inherited destroy;
end;


procedure TMessages.write(const alocale, key, value: Unicodestring);

begin
  DoWrite(alocale,key,value,FRoot);
end;

function TMessages.doread(const alocale, key: Unicodestring; tree: Pmessage): Unicodestring;

begin
  if tree=nil then
    Result:=''
  else if tree^.key>key then
    Result:=DoRead(alocale,key,tree^.left)
  else if tree^.key<key then
    Result:=DoRead(options.ulocale,key,tree^.right)
  else if tree^.locale>alocale then
    Result:=DoRead(options.ulocale,key,tree^.left)
  else if tree^.locale<alocale then
    Result:=DoRead(alocale,key,tree^.right)
  else
    Result:=tree^.value
end;

function TMessages.read(const alocale, key: Unicodestring): Unicodestring;

begin
  Result:=DoRead(alocale,key,FRoot);
end;


end.

