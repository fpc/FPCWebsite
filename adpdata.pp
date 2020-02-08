unit adpdata;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, contnrs, jsonscanner, jsonParser, fpjson;

Const
  Langcount = {$ifdef simple} 1 {$else} 11{$endif} ;
  allowedextensions : array[0..8] of string = ('.html','.var','.gif','.png','.css','.jpg','.ico','.css','.js');

Type
  TLangarray = Array[1..LangCount] of string;

Const
{$ifdef simple}
  LangNames : TLangarray = ('en');
  LangContent : TLangarray = ('en');
  LangEncoding : TLangarray = ('iso-8859-5');
{$else}
  LangNames : TLangarray = ('bg','en','fi','fr','id','it','nl','po','sl','ru','zh-CN');
  LangContent : TLangarray = ('bg','en','fi','fr','id','it','nl','pl','sl','ru','zh-CN');
  LangEncoding : TLangarray = ('iso-8859-5','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-2','iso-8859-2','iso-8859-5','utf-8');
{$endif}

var
  langcatalogok: array [1..langcount] of boolean;

Type

  { TStringListList }

  TStringListList = class
    strs : tobjectlist; // first is header/fieldnames.
    constructor Create;
    function add :TStringList;
    Destructor Destroy; override;
  end;

  { TMirror }
  TMirror = class
    mname,url : string;
    constructor Create(obj:TJsonObject);
  end;

  { TDownPage }

  TDownPage = class
    name,    // target/adp name and stem for "pagename"
    os,      // os specific part of sourceforge link
    version, // current version in this (arch)directory
    sfname:string; // unused. turned out os field is used for sf url part. reserved for cases where pagename<>name ?
    constructor Create(obj:TJsonObject);
  end;

  { TDownPages }

  TDownPages = class
    location:string;
    pages : tobjectlist;
    constructor Create(obj:TJsonObject);
    destructor Destroy;override;
  end;

  TLoadDataSourceCallback = Procedure (datasource:String; aList : TStringListList) of object;

  TOptions = class
    inputfile,outputfile,catalogfile:ansistring;
    datasource_prefix : ansistring;
    fallback_locale   : ansistring;
    input_encoding    : ansistring; // ='ISO-8859-1';
    output_encoding   : ansistring; // ='ISO-8859-1';
    catalog_encoding  : ansistring; //='UTF-8';
    default_master    : ansistring; // ='default-master.adp';
    output_prefix     : ansistring;
    locale     : ansistring;
    Defines    : TStringList;
    masterpath : ansistring;
    configfn   : ansistring;
    fzip,ftar  : boolean;
    multilang,
    autodriver : boolean;
    Constructor Create;
    Destructor Destroy; override ;
    procedure checkprefix;
    Procedure defaultloaddatasource(datasource: string; aList :TStringListList);
  end;


  { TWebsiteData }

  TWebsiteData = class
    mirrors : TObjectlist;
    globalfiles : TStringlist;
    downdirs : TObjectlist;
    Cache : TStringlist; // <string,tstringlistlist>
    Fopts : TOptions;
    constructor Create(aOpts : TOptions);
    destructor Destroy; override;
    procedure load(configfn:String='website.conf');
    function ParseFile (FileName : String):TJsonData;
    procedure Dump;
    function loaddatasource(datasource:string):TStringListList;
  end;


implementation


Procedure TOptions.defaultloaddatasource(datasource: string; aList :TStringListList);

var
  datafile : text;
  t,s : string;
  i,n:  integer;
  rows,
  colnames : Tstringlist;
begin
//   result:=TStringListList.create;
   aList.strs:=tobjectlist.create(true);
   colnames:=aList.add;

   {Open the datasource.}
    assign(datafile,datasource_prefix+datasource+'.dat');
    reset(datafile);

    {Read the column header.}
    readln(datafile,s);
    repeat
      i:=pos(#9,s);
      if i=0 then
        colnames.add(s)
      else
        begin
          colnames.add(copy(s,1,i-1));
          delete(s,1,i);
        end;
    until i=0;

    {Read the data.}
    while not eof(datafile) do
      begin
        readln(datafile,s);
        rows:=aList.add;
        t:=s;
        n:=1;
        repeat

          i:=pos(#9,t);
          if i=0 then
            rows.add(UTF8Decode(t))
          else
            begin
              rows.add(UTF8Decode(copy(t,1,i-1)));
              delete(t,1,i);
            end;
          inc(n);
        until i=0;
      end;
    close(datafile);
end;


{ TStringListList }

constructor TStringListList.Create;

begin
  strs:=TObjectList.create(true);
end;

function TStringListList.add: TStringList;

begin
  result:=TStringlist.create;
  result.OwnsObjects:=true;
  strs.add(result);
end;

destructor TStringListList.Destroy;

begin
  strs.free;
  inherited Destroy;
end;

{ TDownPages }

constructor TDownPages.Create(obj: TJsonObject);
var lobj:TJsonEnum;
   arr :TJsonArray;
begin
  location:=obj.Get('location','');
  pages:=tobjectlist.create(true);
  arr:=tjsonarray(obj.Find('pages',jtArray));
  if assigned(arr) then
    for lobj in arr do
      begin
        if lobj.Value is tjsonobject then
          pages.add(TDownPage.create(tjsonobject(lobj.Value)));
      end;
end;

destructor TDownPages.Destroy;
begin
  pages.free;
  inherited Destroy;
end;

{ TDownPage }

constructor TDownPage.Create(obj: TJsonObject);
var j: integer;
begin
  name:=obj.Get('name','');
  os:=obj.Get('OS','');
  version:=obj.Get('version','');
  sfname:=obj.get('sourceforgepath','');
  if trim(sfname)='' then
    begin
      sfname:=lowercase(os);
      if length(sfname)>0 then
        sfname[1]:=uppercase(sfname[1])[1];
      j:=pos('bsd',sfname);
      if j<>0 then
        begin
          sfname[j]:='B'; sfname[j+1]:='S'; sfname[j+2]:='D';
        end;
    end;
end;

{ TMirror }

constructor TMirror.Create(obj: TJsonObject);
begin
  mname:=obj.Get('mirrorname','');
  url:=obj.Get('mirror_url','');
end;

constructor TWebsiteData.Create(aOpts : TOptions);
begin
  FOpts:=aOpts;
  mirrors:=TObjectlist.Create(true);
  downdirs:=TObjectlist.Create(true);
  globalfiles:=TStringlist.Create;
  Cache:=tstringlist.create;
  cache.OwnsObjects:=true;
end;

destructor TWebsiteData.Destroy;
begin
  mirrors.free;
  downdirs.free;
  globalfiles.free;
  cache.free;
end;

procedure TWebsiteData.load(configfn:String='website.conf');
var Conf : TJSonData;
    Mirrorlist,
    downdirlist ,
    globalfileslist : TJsonArray;
    obj : TJSONEnum;

begin
  Conf:=ParseFile(configfn);
  If assigned(Conf) and (conf is TJSONObject) then
    Begin
      Mirrorlist:=tjsonarray(tjsonobject(conf).find('mirrors',jtarray));
      if assigned(mirrorlist) then
      for obj in Mirrorlist do
        begin
          if obj.Value is tjsonobject then
            mirrors.add(TMirror.create(tjsonobject(obj.Value)));
        end;
      globalfileslist:=tjsonarray(tjsonobject(conf).find('globalfiles',jtArray));
      if assigned(globalfileslist) then
      for obj in globalfileslist do
        begin
          if obj.Value is TJSONString then
            globalfiles.add(obj.value.asstring);
        end;
      downdirlist:=tjsonarray(tjsonobject(conf).find('downdir',jtArray));
      if assigned(downdirlist) then
      for obj in downdirlist do
        begin
          if obj.Value is tjsonobject then
            downdirs.add(Tdownpages.create(tjsonobject(obj.Value)));
        end;
      end;
  Conf.free;
end;

function TWebsiteData.ParseFile (FileName : String):TJsonData;
Var
  F : TFileStream;
  P : TJSONParser;

begin
  result:=nil;
  F:=TFileStream.Create(FileName,fmopenRead);
  try
    P:=TJSONParser.Create(F,[joUTF8,joComments,joIgnoreTrailingComma]);
    try
    result:=p.parse;
    finally
      FreeAndNil(P);
    end;
  finally
    F.Destroy;
  end;
end;


procedure TWebsiteData.Dump;
// checking/debugging
var
    i:integer;
    p,q : pointer;

begin
  for i:=0 to globalfiles.count-1  do
    writeln(globalfiles[i]);

  for p in mirrors  do
    with tmirror(p) do
       writeln(mname, ' - ',url);

  for p in downdirs do
   with TDownPages(p) do
     begin
       writeln(location,':');
       for q in pages do
        with tdownpage(q) do
         writeln('  ',name, ' -- ' ,os, ' -- ' ,version);
     end;
end;

function TWebsiteData.loaddatasource(datasource: string):TStringListList;
var j : integer;
    lststr : Tstringlist;
    p : pointer;
begin
  j:=cache.indexof(datasource);
  if j=-1 then
    begin
      if datasource='mirrors' then
        begin
          result:=TStringListList.Create;
          lststr:=result.Add;
          lststr.add('name');
          lststr.add('namel');
          lststr.add('url');
          for p in self.mirrors do
            with tmirror(p) do
              begin
                lststr:=result.add;
                lststr.Add(mname);
                lststr.Add(lowercase(mname));
                lststr.Add(url);
              end;
        end
      else
        begin
        result:=TstringListList.Create;
        Fopts.defaultloaddatasource(datasource,Result);
        end;
      cache.AddObject(datasource,result);
    end
  else
    result:=TStringListList(cache.objects[j]);
end;

{ TOptions }

constructor TOptions.Create;

begin
  defines:=TStringlist.create;
  inputfile:='';
  outputfile:='';
  catalogfile:='';
  fallback_locale:='';
  datasource_prefix:='';
  default_master:='default-master.adp';
  input_encoding:='ISO-8859-1';
  output_encoding:='ISO-8859-1';
  catalog_encoding:='UTF-8';
  masterpath:=ExtractFilePath(ParamStr(0));
end;

destructor TOptions.Destroy;
begin
  defines.free;
  inherited Destroy;
end;

procedure TOptions.checkprefix;
begin
  if output_prefix<>'' then
    begin
    outputfile:=IncludeTrailingPathDelimiter(output_prefix)+outputfile;
    ForceDirectories(extractfilepath(outputfile));
    end;
end;

end.

