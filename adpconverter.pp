unit adpconverter;

{$mode objfpc}{$H+}

interface

uses
  fpjson, jsonparser, jsonscanner, contnrs, Classes, SysUtils, adpdata, adputils;

const
  whitespace = [' ',#13,#10,#8];

Type
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
    Options : TOptions;
    Onloaddatasource : TLoadDataSourceCallback;
    Constructor Create(anoption:TOptions);
    procedure property_set(const name,value:Unicodestring;var tree:Pproperty);
    procedure property_set(const name,value:Unicodestring);
    function property_get(const name:Unicodestring;tree:Pproperty):Unicodestring;
    function property_get(const name:Unicodestring):Unicodestring;
    procedure message_set(const alocale,key,value:Unicodestring;var tree:Pmessage);
    procedure message_set(const alocale,key,value:Unicodestring);
    function message_get(const alocale,key:Unicodestring;tree:Pmessage):Unicodestring;
    function message_get(const alocale,key:Unicodestring):Unicodestring;
    function replace_properties(s:Unicodestring):Unicodestring;
    procedure Execute(const aExt, LangName, LangEncoding: AnsiString);
  private
    function adp_parse(adp: Unicodestring): Unicodestring;
    function generate_page(fn: ansistring): Unicodestring;
    procedure parse_param(var p: Unicodestring; out key, value: Unicodestring);
    procedure loadparam;
  end;

implementation

{ TPageConverter }

constructor TPageConverter.Create(anoption:TOptions);
begin
options:=anoption;
loadparam;
// load mirrors.dat without cache.
//  if not assigned(options.OnLoadDataSource) then
  Onloaddatasource:=@AnOption.defaultloaddatasource
//  else
//    Onloaddatasource:=options.OnLoadDataSource
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

  lst:=TStringListList.Create;
  Onloaddatasource(datasource,lst);

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




end.

