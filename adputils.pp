unit adputils;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, zipper, libtar, zstream, adpdata ;

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
agz :=TGZFileStream.create(fname,gzOpenWrite);
Tar:=TTarWriter.Create(agz);
for s in filelist do
   if fileexists(s) then
     tar.AddFile(s);
tar.free;
agz.free;
end;

procedure CreateZip(const fname:ansistring;filelist:TstringList);
var azipper:TZipper;
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
var filelist :TStringlist;
begin
if not (atar or azip) then
 exit;
filelist :=TStringlist.create;
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
filelist.free;
end;

procedure findfile(startpath:string;lst:TStringList);
var Rec : TSearchRec;
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
dirs.Free;
end;


procedure GenVarFile(ifn:ansistring);

var ofn : ansistring;
  L   : TStringList;
  I   : Integer;
begin
ofn:=ChangeFileExt(ifn,'.var');
ifn:=ExtractFileName(ifn);
L:=TStringList.Create;
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
end;

function addfnsuffix(const fn,suffix:string):string;
begin
  result:=changefileext(extractfilename(fn),'')+suffix+ExtractFileExt(fn);
end;

end.

