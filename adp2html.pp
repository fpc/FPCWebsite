program adp2html;

{$mode objfpc}

uses {$ifdef unix}cwstring,unixcp,{$endif}{$ifdef mswindows}windows, {$endif}sysutils,classes,fpjson,jsonparser,jsonscanner,contnrs,zipper,libtar,zstream;

type
  Pproperty=^Tproperty;
  Tproperty=record
    left,right:Pproperty;
    name,value:Unicodestring;
  end;
  Pmessage=^Tmessage;
  Tmessage=record
    left,right:Pmessage;
    locale,key,value:Unicodestring;
   end;

const whitespace=[' ',#13,#10,#8];

Type
  TPageConverter = Class;
  TStringListList = class;
  TLoadDataSourceCallback = function (pg: TPageConverter; datasource:String):TStringListList of object;

  { TOptionsParser }

  // parse params only once. Import when processing multiple files in one row.
  TOptionsParser = class
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
                       OnLoadDataSource : TLoadDataSourceCallback;
                       Constructor Create;
                       Destructor Destroy;override;
                       procedure parse_cmdline;
                       procedure checkprefix;
                       end;


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

  { TWebsiteData }

  TWebsiteData = class
                  mirrors : TObjectlist;
                  globalfiles : TStringlist;
                  downdirs : TObjectlist;
                  Cache : TStringlist; // <string,tstringlistlist>
                  constructor Create;
                  destructor Destroy; override;
                  procedure load(configfn:String='website.conf');
                  function ParseFile (FileName : String):TJsonData;
                  procedure Dump;
                  function loaddatasource(pg:Tpageconverter;datasource:string):TStringListList;
  end;

  { TPageConverter }

  TPageConverter = Class
    master_template:ansistring;
    slave_html:Unicodestring;
    mode:(process_catalog,process_page);
    properties:Pproperty;
    messages:Pmessage;
    inputfile,outputfile,catalogfile:ansistring;
    datasource_prefix:ansistring;
    fallback_locale:string;
    input_encoding:ansistring; // ='ISO-8859-1';
    output_encoding:ansistring; // ='ISO-8859-1';
    catalog_encoding:ansistring; //='UTF-8';
    default_master:string ; // ='default-master.adp';
    locale:string;
    recognize_properties:boolean;
    Options : TOptionsParser;
    Onloaddatasource : TLoadDataSourceCallback;
    Constructor Create(anoption:TOptionsParser);
    procedure property_set(const name,value:Unicodestring;var tree:Pproperty);
    procedure property_set(const name,value:Unicodestring);
    function property_get(const name:Unicodestring;tree:Pproperty):Unicodestring;
    function property_get(const name:Unicodestring):Unicodestring;
    procedure message_set(const alocale,key,value:Unicodestring;var tree:Pmessage);
    procedure message_set(const alocale,key,value:Unicodestring);
    function message_get(const alocale,key:Unicodestring;tree:Pmessage):Unicodestring;
    function message_get(const alocale,key:Unicodestring):Unicodestring;
    function replace_properties(s:Unicodestring):Unicodestring;
  private
    function adp_parse(adp: Unicodestring): Unicodestring;
    procedure Execute(const aExt, LangName, LangEncoding: AnsiString);
    function generate_page(fn: ansistring): Unicodestring;
    procedure parse_param(var p: Unicodestring; out key, value: Unicodestring);
    procedure loadparam;
    function defaultloaddatasource(pg:Tpageconverter;datasource:string):TStringListList;
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

  function TPageConverter.defaultloaddatasource(pg: Tpageconverter;
  datasource: string):TStringListList;

var datafile : text;
  t,s : string;
  i,n:  integer;
  rows,
  colnames : Tstringlist;
begin
   result:=TStringListList.create;
   result.strs:=tobjectlist.create(true);
   colnames:=result.add;

   {Open the datasource.}
    assign(datafile,Options.datasource_prefix+datasource+'.dat');
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
        rows:=Result.add;
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

constructor TWebsiteData.Create;
begin
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

function TWebsiteData.loaddatasource(pg: Tpageconverter; datasource: string):TStringListList;
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
          result:=pg.defaultloaddatasource(pg,datasource);
      cache.AddObject(datasource,result);
    end
  else
    result:=TStringListList(cache.objects[j]);
end;


{ TCmdlinestate }

constructor TPageConverter.Create(anoption:TOptionsParser);
begin
  options:=anoption;
  loadparam;

  // load mirrors.dat without cache.
  if not assigned(options.OnLoadDataSource) then
    Onloaddatasource:=@defaultloaddatasource
  else
    Onloaddatasource:=options.OnLoadDataSource
end;

procedure TPageConverter.property_set(const name,value:Unicodestring;var tree:Pproperty);

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
    property_set(name,value,tree^.left)
  else
    property_set(name,value,tree^.right);
end;

procedure TPageConverter.property_set(const name,value:Unicodestring);

begin
  property_set(name,value,properties);
end;

function TPageConverter.property_get(const name:Unicodestring;tree:Pproperty):Unicodestring;

begin
  if tree=nil then
    property_get:=''
  else if tree^.name=name then
    property_get:=tree^.value
  else if tree^.name>name then
    property_get:=property_get(name,tree^.left)
  else
    property_get:=property_get(name,tree^.right);
end;

function TPageConverter.property_get(const name:Unicodestring):Unicodestring;

begin
  property_get:=property_get(name,properties);
end;

procedure TPageConverter.message_set(const alocale,key,value:Unicodestring;var tree:Pmessage);

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
    message_set(alocale,key,value,tree^.left)
  else if tree^.key<key then
    message_set(alocale,key,value,tree^.right)
  else if tree^.locale>options.locale then
    message_set(alocale,key,value,tree^.left)
  else if tree^.locale<options.locale then
    message_set(alocale,key,value,tree^.right)
  else
    tree^.value:=value
end;

procedure TPageConverter.message_set(const alocale,key,value:Unicodestring);

begin
  message_set(alocale,key,value,messages);
end;

function TPageConverter.message_get(const alocale,key:Unicodestring;tree:Pmessage):Unicodestring;

begin
  if tree=nil then
    message_get:=''
  else if tree^.key>key then
    message_get:=message_get(alocale,key,tree^.left)
  else if tree^.key<key then
    message_get:=message_get(options.locale,key,tree^.right)
  else if tree^.locale>alocale then
    message_get:=message_get(options.locale,key,tree^.left)
  else if tree^.locale<alocale then
    message_get:=message_get(alocale,key,tree^.right)
  else
    message_get:=tree^.value
end;

function TPageConverter.message_get(const alocale,key:Unicodestring):Unicodestring;

begin
  message_get:=message_get(options.locale,key,messages);
end;

function TPageConverter.replace_properties(s:Unicodestring):Unicodestring;

var p,q:longint;
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
              c:=property_get(c);
              s:=v+c+a;
              p:=length(v)+length(c);
            end;
         end;
      inc(p);
    end;
  replace_properties:=s;
end;

procedure TPageConverter.parse_param(var p: Unicodestring; out key,
  value: Unicodestring);

var pos:longint;

  procedure skip_whitespace(var pos:longint);

  begin
    while (pos<=length(p)) and (p[pos] in whitespace) do
      inc(pos);
  end;

begin
  pos:=1;
  skip_whitespace(pos);
  key:='';
  while (pos<=length(p)) and (p[pos] in ['A'..'Z','a'..'z']) do
    begin
      key:=key+p[pos];
      inc(pos);
    end;
  skip_whitespace(pos);
  if (pos>length(p)) or (p[pos]<>'=') then
    begin
      p:='';
      exit;
    end;
  inc(pos);
  value:='';
  case p[pos] of
    '''':
      begin
        inc(pos);
        while (pos<=length(p)) and (p[pos]<>'''') do
          begin
            value:=value+p[pos];
            inc(pos);
          end;
        inc(pos);
      end;
    '"':
      begin
        inc(pos);
        while (pos<=length(p)) and (p[pos]<>'"') do
          begin
            value:=value+p[pos];
            inc(pos);
          end;
        inc(pos);
      end;
    else
      while p[pos] in ['A'..'Z','a'..'z'] do
        begin
          value:=value+p[pos];
          inc(pos);
        end;
  end;
  delete(p,1,pos-1);
end;

procedure TPageConverter.loadparam;
var
    s,key,value:ansistring;
    p:byte;
begin
  inputfile:=options.inputfile;
  outputfile:=options.outputfile;
  catalogfile:=options.catalogfile;
  fallback_locale:=options.fallback_locale;
  datasource_prefix:=options.datasource_prefix;
  input_encoding:=options.input_encoding;
  output_encoding:=options.output_encoding;
  catalog_encoding:=options.catalog_encoding;
  default_master:=options.default_master;
  locale:=options.locale;
  for s in options.defines do
    begin
      p:=pos('=',s);
      key:=copy(s,1,p-1);
      value:=copy(s,p+1,255);
      property_set(UTF8Decode(key),UTF8Decode(value));
    end;
end;

function TPageConverter.adp_parse(adp:Unicodestring):Unicodestring;

var last_expr_result:boolean;

  procedure skip_whitespace(var pos:longint);

  begin
    while (pos<=length(adp)) and (adp[pos] in whitespace) do
      inc(pos);
  end;

  function parse_tag_recursively(const tag:Unicodestring):boolean;

  begin
    parse_tag_recursively:=(tag='TRN') or (tag='PROPERTY') or (tag='IF') or
                           (tag='ELSE') or (tag='MULTIPLE');
  end;

  function do_if_tag(const tag,params,content,closetag:Unicodestring):Unicodestring;

  var pos:longint;

    procedure skip_whitespace;

    begin
      while (pos<=length(params)) and (params[pos] in whitespace) do
        inc(pos);
    end;

    function read_word:Unicodestring;

    var oldpos:longint;

    begin
      oldpos:=pos;
      while (pos<=length(params)) and (params[pos]<>' ') do
        inc(pos);
      read_word:=copy(params,oldpos,pos-oldpos);
    end;

    function parse_l3_expr:boolean;

    var left,right,op:Unicodestring;
        save_pos:longint;

    begin
      parse_l3_expr:=false;
      skip_whitespace;
      if pos>length(params) then
        exit;
      save_pos:=pos;
      left:=read_word;
      op:=upcase(left);
      if (op='NIL') or (op='NOT') or
         (op='EQ') or (op='NE') or
         (op='LT') or (op='LTE') or
         (op='GT') or (op='GTE') then
        begin
          left:='';
        end
      else
        begin
          left:=replace_properties(left);
          if pos>length(params) then
            exit;
          save_pos:=pos;
          skip_whitespace;
          op:=upcase(read_word);
        end;
      if op='NIL' then
        begin
          parse_l3_expr:=left='';
        end
      else if op='NOT' then
        begin
          if pos>length(params) then
            exit;
          skip_whitespace;
          right:=read_word;
          if upcase(right)='NIL' then
            parse_l3_expr:=left<>'';
        end
      else if op='EQ' then
        begin
          if pos>length(params) then
            exit;
          skip_whitespace;
          right:=replace_properties(read_word);
          parse_l3_expr:=left=right;
        end
      else if op='NE' then
        begin
          if pos>length(params) then
            exit;
          skip_whitespace;
          right:=replace_properties(read_word);
          parse_l3_expr:=left<>right;
        end
      else if op='LT' then
        begin
          if pos>length(params) then
            exit;
          skip_whitespace;
          right:=replace_properties(read_word);
          parse_l3_expr:=left<right;
        end
      else if op='LTE' then
        begin
          if pos>length(params) then
            exit;
          skip_whitespace;
          right:=replace_properties(read_word);
          parse_l3_expr:=left<=right;
        end
      else if op='GTE' then
        begin
          if pos>length(params) then
            exit;
          skip_whitespace;
          right:=replace_properties(read_word);
          parse_l3_expr:=left>=right;
        end
      else if op='GT' then
        begin
          if pos>length(params) then
            exit;
          skip_whitespace;
          right:=replace_properties(read_word);
          parse_l3_expr:=left>right;
        end
      else
        pos:=save_pos;
    end;

    function parse_l2_expr:boolean;

    var left,right:boolean;
        op:Unicodestring;

    begin
      parse_l2_expr:=false;
      skip_whitespace;
      if pos>length(params) then
        exit;
      left:=parse_l3_expr;
      if pos>length(params) then
        begin
          parse_l2_expr:=left;
          exit;
        end;
      op:=read_word;
      if upcase(op)='AND' then
        begin
          if pos>length(params) then
            exit;
          right:=parse_l2_expr;
          parse_l2_expr:=left and right;
        end;
    end;

    function parse_l1_expr:boolean;

    var left,right:boolean;
        op:Unicodestring;

    begin
      parse_l1_expr:=false;
      skip_whitespace;
      if pos>length(params) then
        exit;
      left:=parse_l2_expr;
      if pos>length(params) then
        begin
          parse_l1_expr:=left;
          exit;
        end;
      op:=read_word;
      if upcase(op)='OR' then
        begin
          if pos>length(params) then
            exit;
          right:=parse_l1_expr;
          parse_l1_expr:=left and right;
        end;
    end;

  begin
    pos:=1;
    last_expr_result:=parse_l1_expr;
    if last_expr_result then
      do_if_tag:=content
    else
      do_if_tag:='';
  end;

  function do_else_tag(const tag,params,content,closetag:Unicodestring):Unicodestring;

  begin
    if not last_expr_result then
      do_else_tag:=content
    else
      do_else_tag:='';
  end;

  function do_trn_tag(const tag,params,content,closetag:Unicodestring):Unicodestring;

  var p,key,value:Unicodestring;
      message_key,message_locale:Unicodestring;

  begin
    message_key:='';
    do_trn_tag:=content;
    message_locale:='';
    p:=params;
    while p<>'' do
      begin
        parse_param(p,key,value);
        if key='key' then
          message_key:=value
        else if key='locale' then
          message_locale:=value;
      end;
    if mode=process_catalog then
      begin
        if (message_locale<>'') and (message_key<>'') then
          message_set(message_locale,message_key,content);
      end
    else
      if message_locale<>options.locale then
        begin
          value:='';
          if (options.locale<>'') and (message_key<>'') then
            value:=message_get(options.locale,message_key);
          if (Options.fallback_locale<>'') and (message_key<>'') then
            value:=message_get(Options.fallback_locale,message_key);
          if value<>'' then
            do_trn_tag:=value;
        end;
  end;

  function do_master_tag(const tag,params,content,closetag:Unicodestring):Unicodestring;

  var p,key,value:Unicodestring;

  begin
    master_template:=options.default_master;
    p:=params;
    while p<>'' do
      begin
        parse_param(p,key,value);
        if key='src' then
          master_template:=UTF8Encode(replace_properties(value));
      end;
    do_master_tag:='';
  end;

  function do_slave_tag(const tag,params,content,closetag:Unicodestring):Unicodestring;

  begin
    do_slave_tag:=slave_html;
  end;

  function do_multiple_tag(const tag,params,content,closetag:Unicodestring):Unicodestring;

  var p,key,value:Unicodestring;
      datasource:ansistring;
      i,n:longint;
      lst : TStringListList;
      hdr,row : TStringlist;

  begin
    do_multiple_tag:='';
    p:=params;
    while p<>'' do
      begin
        parse_param(p,key,value);
        if key='name' then
          datasource:=UTF8Encode(value);
      end;

    lst:=Onloaddatasource(self,datasource);

    hdr:=tstringlist(lst.strs[0]);
    for i:=1 to lst.strs.count-1 do
      begin
        row:=tstringlist(lst.strs[i]);
        for n:=0 to hdr.count-1 do
          property_set(UTF8Decode(datasource+'.'+hdr[n]),UTF8Decode(row[n]));
        do_multiple_tag:=do_multiple_tag+replace_properties(content);
      end;
  end;

  function do_property_tag(const tag,params,content,closetag:Unicodestring):Unicodestring;

  var p,name,key,value:Unicodestring;

  begin
    name:='';
    p:=params;
    while p<>'' do
      begin
        parse_param(p,key,value);
        if key='name' then
          name:=value;
      end;
    if name<>'' then
      property_set(name,content);
    do_property_tag:='';
  end;

  function do_tag(const tag,params,content,closetag:Unicodestring):Unicodestring;

  var utag:Unicodestring;

  begin
    utag:=upcase(tag);
    if utag='TRN' then
      do_tag:=do_trn_tag(tag,params,content,closetag)
    else if utag='IF' then
      do_tag:=do_if_tag(tag,params,content,closetag)
    else if utag='ELSE' then
      do_tag:=do_else_tag(tag,params,content,closetag)
    else if utag='MASTER' then
      do_tag:=do_master_tag(tag,params,content,closetag)
    else if utag='SLAVE' then
      do_tag:=do_slave_tag(tag,params,content,closetag)
    else if utag='MULTIPLE' then
      do_tag:=do_multiple_tag(tag,params,content,closetag)
    else if recognize_properties and (utag='PROPERTY') then
      do_tag:=do_property_tag(tag,params,content,closetag)
    else
      do_tag:='<'+tag+params+'>'+content+closetag;
  end;

  function parse_at(var pos:longint;stoptag:Unicodestring):Unicodestring;forward;

  function parse_tag(var pos:longint):Unicodestring;

  var tag,utag,
      params,content,
      closetag:Unicodestring;

  begin
    tag:='';
    params:='';
    inc(pos);
    while (pos<=length(adp)) and (adp[pos] in ['A'..'Z','a'..'z']) do
      begin
{        tag:=tag+adp[pos];}
        setlength(tag,length(tag)+1);
        tag[length(tag)]:=adp[pos];
        inc(pos);
      end;
    while (pos<=length(adp)) and (adp[pos]<>'>') do
      begin
{        params:=params+adp[pos];}
        setlength(params,length(params)+1);
        params[length(params)]:=adp[pos];
        inc(pos);
      end;
    if pos>length(adp) then
      begin
        parse_tag:='';
        exit;
      end;
    inc(pos);
    utag:=upcase(tag);
    if parse_tag_recursively(utag) then
      begin
{        writeln('Start of tag ',tag);}
        content:=parse_at(pos,upcase(tag));
{        writeln('Stop of tag ',tag,'content = ',content,'----');}
        closetag:='';
        if (pos+length(tag)+3<=length(adp)) and
           (upcase(copy(adp,pos,length(tag)+3))='</'+utag+'>') then
          begin
            closetag:=copy(adp,pos,length(tag)+3);
            pos:=pos+length(tag)+3;
          end;
        {Default behaviour.}
        parse_tag:=do_tag(tag,params,content,closetag);
      end
    else
      parse_tag:=do_tag(tag,params,'','');
  end;

  function parse_at(var pos:longint;stoptag:Unicodestring):Unicodestring;

  var i:longint;
      tag:Unicodestring;

  begin
    parse_at:='';
    repeat
      while (adp[pos]<>'<') and (pos<=length(adp)) do
        begin
{          parse_at:=parse_at+adp[pos];}
          setlength(parse_at,length(parse_at)+1);
          parse_at[length(parse_at)]:=adp[pos];
          inc(pos);
        end;
      if adp[pos]='<' then
        begin
          if (pos+1<length(adp)) and (adp[pos+1]='/') then
            begin
              tag:='';
              i:=pos+2;
              while adp[i] in ['A'..'Z','a'..'z'] do
                begin
                  tag:=tag+adp[i];
                  inc(i);
                end;
              if upcase(tag)=stoptag then
                exit;
{              parse_at:=parse_at+'<';}
              setlength(parse_at,length(parse_at)+1);
              parse_at[length(parse_at)]:='<';
              inc(pos);
            end
          else
            parse_at:=parse_at+parse_tag(pos);
        end;
    until pos>length(adp);
    parse_at:=replace_properties(parse_at);
  end;

var pos:longint;

begin
  pos:=1;
  adp_parse:=parse_at(pos,'');
end;

function TPageConverter.generate_page(fn:ansistring):Unicodestring;

var
    adpfile:file;
    adpansi:ansistring;
    adpwide:Unicodestring;

begin
  repeat
    master_template:='';
    if not fileexists(fn) then // there are paths with ../.. in the templates and we
                               // don't change dirs.
      fn:=extractfilename(fn); // retry without dir info.
    assign(adpfile,fn);
    reset(adpfile,1);
    setlength(adpansi,filesize(adpfile));
    blockread(adpfile,adpansi[1],filesize(adpfile));
    adpwide:=UTF8Decode(adpansi);
    close(adpfile);
{    adpwide:=replace_properties(adpwide);}
    {Do two passes. The first pass if/else tags are expanded...}
    recognize_properties:=false;
    if length(adpwide)>0 then
      slave_html:=adp_parse(adpwide)
    else
      slave_html:='';
    {... so the second pass can apply properties.}
    recognize_properties:=true;
    if length(adpwide)>0 then
      slave_html:=adp_parse(slave_html)
    else
      slave_html:='';
    { fix /down/old/i386-beos.adp site-master.adp file not found by wangyouworld }
    if ((master_template <> '') and not FileExists(master_template)) then master_template := options.masterpath+master_template;
    fn:=master_template;
  until master_template='';
  generate_page:=slave_html;
end;

constructor TOptionsParser.Create;
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

destructor TOptionsParser.Destroy;
begin
  defines.free;
  inherited Destroy;
end;

procedure TOptionsParser.parse_cmdline;

type  Tstate=(s_default,s_read_property,s_outputfile,
              s_read_locale,s_read_fallback_locale,s_read_catalogfile,
              s_read_defaultmaster,s_read_dataprefix,
              s_read_inputencoding,s_read_catalogencoding,s_read_outputencoding,s_read_conffile,s_read_outprefix);

var ignore_options:boolean;
    i:longint;
    state:Tstate;
    s :ansistring;

begin
  ignore_options:=false;
  state:=s_default;
  for i:=1 to paramcount do
    case state of
      s_read_property:
        begin
          s:=paramstr(i);
          defines.add(s);
{          p:=pos('=',s);
          key:=copy(s,1,p-1);
          value:=copy(s,p+1,255);
          property_set(UTF8Decode(key),UTF8Decode(value));}
          state:=s_default;
        end;
      s_outputfile:
        begin
          s:=paramstr(i);
          outputfile:=s;
          state:=s_default;
        end;
      s_read_outputencoding:
        begin
          s:=paramstr(i);
          output_encoding:=s;
          state:=s_default;
        end;
      s_read_locale:
        begin
          s:=paramstr(i);
          locale:=s;
          state:=s_default;
        end;
      s_read_fallback_locale:
        begin
          s:=paramstr(i);
          fallback_locale:=s;
          state:=s_default;
        end;
      s_read_catalogfile:
        begin
          s:=paramstr(i);
          catalogfile:=s;
          state:=s_default;
        end;
      s_read_catalogencoding:
        begin
          s:=paramstr(i);
          catalog_encoding:=s;
          state:=s_default;
        end;
      s_read_inputencoding:
        begin
          s:=paramstr(i);
          input_encoding:=s;
          state:=s_default;
        end;
      s_read_defaultmaster:
        begin
          s:=paramstr(i);
          default_master:=s;
          state:=s_default;
        end;
      s_read_dataprefix:
        begin
          s:=paramstr(i);
          datasource_prefix:=s;
          state:=s_default;
        end;
      s_read_outprefix:
      begin
        s:=paramstr(i);
        output_prefix:=s;
        state:=s_default;
      end;
      s_read_conffile:
        begin
          s:=paramstr(i);
          configfn:=s;
          state:=s_default;
        end;
      else
        {Default.}
        s:=paramstr(i);
        if ignore_options then
          inputfile:=s
        else if s='--' then
          ignore_options:=true
        else if s='-ce' then
          state:=s_read_catalogencoding
        else if s='-d' then
          state:=s_read_dataprefix
        else if s='-ie' then
          state:=s_read_inputencoding
        else if s='-o' then
          state:=s_outputfile
        else if s='-oe' then
          state:=s_read_outputencoding
        else if s='-p' then
          state:=s_read_property
        else if s='-l' then
          state:=s_read_locale
        else if s='-lb' then
          state:=s_read_fallback_locale
        else if s='-m' then
          state:=s_read_defaultmaster
        else if s='-outputprefix' then
          state:=s_read_outprefix
        else if s='-multilang' then
          multilang:=true
        else if s='-no-multilang' then
          multilang:=false
        else if s='-config' then
          begin
            autodriver :=true;
            state:=s_read_conffile
          end
        else
         if s='-auto' then
          begin
            autodriver :=true;
            configfn:='website.conf';
            fzip:=true; ftar:=true;
            multilang:=true;
          end
        else
        if s='-tar' then
           ftar:=true
        else
        if s='-zip' then
           fzip:=true
        else
        if s='-no-tar' then
           ftar:=false
        else
        if s='-no-zip' then
           fzip:=false
        else
          inputfile:=s;
    end;
end;

procedure TOptionsParser.checkprefix;
begin
  if output_prefix<>'' then
    begin
      outputfile:=IncludeTrailingPathDelimiter(output_prefix)+outputfile;
      ForceDirectories(extractfilepath(outputfile));
    end;
end;

procedure TPageConverter.Execute(const aExt, LangName, LangEncoding: AnsiString
  );

var htmlfile:text;
    page:Unicodestring;

begin
  loadparam;
  locale:=LangName;
  options.locale:=langname;
  options.output_encoding:=LangEncoding;
  output_encoding:=LangEncoding;
  input_encoding:=LangEncoding;
  options.input_encoding:=input_encoding;
  property_set('x',aext);


  property_set('output_encoding',UTF8Decode(Langencoding));
  if LangName='' then
    catalogfile := 'catalog.en.adp'
  else
    catalogfile := 'catalog.'+langName+'.adp';

  {Process catalog first.}
  if FileExists(catalogfile) then
    begin
      mode:=process_catalog;
      generate_page(catalogfile);
    end
    else
    begin
        { Fix catalogfile notfound by wangyouworld }
        catalogfile := Options.masterpath+catalogfile;
        mode:=process_catalog;
        generate_page(catalogfile);
    end;

  {Process page.}
  mode:=process_page;
  page:=generate_page(inputfile);

  if outputfile='' then
    write(page)
  else
    begin
      if (LangName<>'') then
        outputfile:=outputfile+'.'+LangName;
      assign(htmlfile,outputfile);

      rewrite(htmlfile);
      {Possible Unicodestring bug? Manually convert to ansistring.}
      write(htmlfile,ansistring(page));
      close(htmlfile);
    end;
end;


Const
  Langcount = {$ifdef simple} 1 {$else} 11{$endif} ;

Type
  TLangarray = Array[1..LangCount] of string;

{$ifdef simple}
Const
  LangNames : TLangarray = ('en');
  LangContent : TLangarray = ('en');
  LangEncoding : TLangarray = ('iso-8859-5');
{$else}
Const
  LangNames : TLangarray = ('bg','en','fi','fr','id','it','nl','po','sl','ru','zh-CN');
  LangContent : TLangarray = ('bg','en','fi','fr','id','it','nl','pl','sl','ru','zh-CN');
  LangEncoding : TLangarray = ('iso-8859-5','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-2','iso-8859-2','iso-8859-5','utf-8');
{$endif}

var
  langcatalogok: array [1..langcount] of boolean;

function addfnsuffix(const fn,suffix:string):string;
begin
  result:=changefileext(extractfilename(fn),'')+suffix+ExtractFileExt(fn);
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

const allowedextensions : array[0..8] of string = ('.html','.var','.gif','.png','.css','.jpg','.ico','.css','.js');

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

procedure CreateTar(const fname:ansistring;filelist:TstringList);
var tar : TTarWriter;
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

procedure DoonePage(opt:TOptionsParser;const outfn: AnsiString; args:array of ansistring);
var i,langnr : integer;
    ifn:ansistring;

begin
  write(' ',outfn,' ');
  opt.outputfile:=changefileext(outfn,'.html');
  With TPageConverter.Create(opt) do
     begin
       options.checkprefix; // prefixes outfile with output prefix if applicable
       if high(args)>0 then
         for i:=0 to (( high(args)+1) div 2)-1 do
            property_set(args[i*2],args[i*2+1]);
         try
           Execute('.html','','iso-8859-1');
           ifn:=outputfile; // save full output path for genvarfile if needed.
         finally
           Free;
         end;
       write('.');
     end;
  if opt.multilang then
   begin
     For langnr:=1 to LangCount do
       begin
         if langcatalogok[langnr] then
          begin
             opt.outputfile:=changefileext(outfn,'.html'); // execute appends country code (langnames)
             With TPageConverter.Create(opt) do
                begin
                  options.checkprefix;
                  if high(args)>0 then
                    for i:=0 to (( high(args)+1) div 2)-1 do
                       property_set(args[i*2],args[i*2+1]);
                    try
                      Execute('.var',langnames[langnr],langencoding[langnr]);
                    finally
                      Free;
                    end;
                end;
             write('.');
          end;
       end;
     GenVarFile(ifn);  // generate .var catalog file that links html.country code to language
   end;
  writeln;
end;

function getfilesize(const fn:ansistring) : int64;
var f : file;
begin
  if not fileexists(fn) then
    exit(0);
  result:=0;
  assign(f,fn);
  Reset(f);
  result:= FileSize(f);
  CloseFile(f);
end;

// kind of the actual generation that scripts using other routines.
procedure RunDriver(opt:TOptionsParser);
var confdata :TWebsiteData;
    fn,afn : ansistring;
    locs,p,q : pointer; // running variable for tobjectlist
    i : integer;
begin
 Writeln('Auto mode');
 if not fileexists(opt.configfn) then
   begin
     Writeln('Can''t find config json ',opt.configfn);
     halt(1);
   end;

  // we can only do this in auto mode because in non auto we might be launched in
  // different directories.
  for i:=1 to Langcount do
    langcatalogok[i]:=getfilesize( 'catalog.'+langNames[i]+'.adp')>10;

 confdata :=TWebsiteData.create;
 confdata.load(opt.configfn);
 opt.OnLoadDataSource:=@confdata.loaddatasource;
 // do global files.
 for fn in confdata.globalfiles do
   begin
     opt.inputfile:=changefileext(fn,'.adp');
     afn:=changefileext(fn,'.html');
     DoOnePage(opt,afn,[]);
   end;
 // download dir
 for locs in confdata.downdirs do // for every dir in down/ dir
    with TDownPages(locs) do
      begin
        for p in pages do         // and every page in them
          with TDownPage(p) do
           begin
              for q in confdata.mirrors do // generate a per mirror page.
                begin
                  with TMirror(q) do
                   begin
                      fn:=IncludeTrailingPathDelimiter(location)+addfnsuffix(name,'-'+lowercase(mname));
                      opt.inputfile:=changefileext(IncludeTrailingPathDelimiter(location)+name,'.adp');
                      fn:=changefileext(fn,'.html');
                      DoonePage(opt,fn,[  'mirror_url',url,
                                          'mirrorsuffix',lowercase(mname),
                                          'latestversion',version]);

                   end;
                end;
               // and a mirror selection page
               opt.inputfile:='templatemirror.adp';
               fn:=changefileext(IncludeTrailingPathDelimiter(location)+name,'.html');
               DoonePage(opt,fn,[  'latestversion',version,
                                   'pagename',changefileext(name,''),
                                   'sourceforgepath',os]);
           end;
   end;
 confdata.free;
 doarchives('htmls.xxx',opt.fzip,opt.ftar);
 opt.free;
 halt(1);     // does not return.
end;

Var
  ifn : string;
  i : Integer;
  opt:TOptionsParser;
begin
  {$ifdef mswindows}
   SetMultiByteConversionCodePage(CP_UTF8);
   SetMultiByteRTLFileSystemCodePage(CP_UTF8);
   SetConsoleOutputCP(DefaultSystemCodePage);
   SetTextCodePage(Output, DefaultSystemCodePage);
  {$endif}
  opt:=TOptionsParser.create;
  opt.parse_cmdline;
  if (opt.inputfile='') and not (opt.autodriver and (opt.configfn<>'')) then
     begin
       writeln('Usage: adp2html [-ce catalog_encoding] \');
       writeln('                [-d datasource_prefix] [-ie input_encoding ] \');
       writeln('                [-l locale] [-lb fallback_locale] \');
       writeln('                [-m default_master] [-p key=value] \');
       writeln('                [-o outputfile]  <filename>');
       halt(1);
     end;

  if opt.autodriver then
    rundriver(opt);

  if opt.multilang then
    For I:=1 to LangCount do
      With TPageConverter.Create(opt) do
        try
          Execute('.var',LangNames[i],LangEncoding[i]);
          ifn:=OutputFile;
        finally
          Free;
        end;
  With TPageConverter.Create(opt) do
    try
      Execute('.html','','iso-8859-1');
      ifn:=OutputFile;
    finally
      Free;
    end;
  genvarfile(ifn);
  opt.free;
end.

