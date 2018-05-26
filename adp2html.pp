program adp2html;

{$mode objfpc}

uses cwstring,unixcp,sysutils,classes;

type
  Pproperty=^Tproperty;
  Tproperty=record
    left,right:Pproperty;
    name,value:widestring;
  end;
  Pmessage=^Tmessage;
  Tmessage=record
    left,right:Pmessage;
    locale,key,value:widestring;
   end;

const whitespace=[' ',#13,#10,#8];

Type

  { TPageConverter }

  TPageConverter = Class
    master_template:ansistring;
    slave_html:widestring;
    inputfile,outputfile,catalogfile:ansistring;
    datasource_prefix:ansistring;
    locale,fallback_locale:string;
    mode:(process_catalog,process_page);
    properties:Pproperty;
    messages:Pmessage;
    default_master:string ; // ='default-master.adp';
    recognize_properties:boolean;
    input_encoding:ansistring; // ='ISO-8859-1';
    output_encoding:ansistring; // ='ISO-8859-1';
    catalog_encoding:ansistring; //='UTF-8';
    Constructor Create;
    procedure property_set(const name,value:widestring;var tree:Pproperty);
    procedure property_set(const name,value:widestring);
    function property_get(const name:widestring;tree:Pproperty):widestring;
    function property_get(const name:widestring):widestring;
    procedure message_set(const alocale,key,value:widestring;var tree:Pmessage);
    procedure message_set(const alocale,key,value:widestring);
    function message_get(const alocale,key:widestring;tree:Pmessage):widestring;
    function message_get(const alocale,key:widestring):widestring;
    function replace_properties(s:widestring):widestring;
  private
    function adp_parse(adp: widestring): widestring;
    procedure Execute(const aExt, LangName, LangEncoding: AnsiString);
    function generate_page(fn: ansistring): widestring;
    procedure parse_cmdline;
    procedure parse_param(var p: Widestring; out key, value: widestring);
  end;

constructor TPageConverter.Create;
begin
  default_master:='default-master.adp';
  input_encoding:='ISO-8859-1';
  output_encoding:='ISO-8859-1';
  catalog_encoding:='UTF-8';
end;

procedure TPageConverter.property_set(const name,value:widestring;var tree:Pproperty);

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

procedure TPageConverter.property_set(const name,value:widestring);

begin
  property_set(name,value,properties);
end;

function TPageConverter.property_get(const name:widestring;tree:Pproperty):widestring;

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

function TPageConverter.property_get(const name:widestring):widestring;

begin
  property_get:=property_get(name,properties);
end;

procedure TPageConverter.message_set(const alocale,key,value:widestring;var tree:Pmessage);

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
  else if tree^.locale>locale then
    message_set(alocale,key,value,tree^.left)
  else if tree^.locale<locale then
    message_set(alocale,key,value,tree^.right)
  else
    tree^.value:=value
end;

procedure TPageConverter.message_set(const alocale,key,value:widestring);

begin
  message_set(alocale,key,value,messages);
end;

function TPageConverter.message_get(const alocale,key:widestring;tree:Pmessage):widestring;

begin
  if tree=nil then
    message_get:=''
  else if tree^.key>key then
    message_get:=message_get(alocale,key,tree^.left)
  else if tree^.key<key then
    message_get:=message_get(locale,key,tree^.right)
  else if tree^.locale>alocale then
    message_get:=message_get(locale,key,tree^.left)
  else if tree^.locale<alocale then
    message_get:=message_get(alocale,key,tree^.right)
  else
    message_get:=tree^.value
end;

function TPageConverter.message_get(const alocale,key:widestring):widestring;

begin
  message_get:=message_get(locale,key,messages);
end;

function TPageConverter.replace_properties(s:widestring):widestring;

var p,q:longint;
    v,c,a:widestring;

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

procedure TPageConverter.parse_param(var p : Widestring; Out key,value:widestring);

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

function TPageConverter.adp_parse(adp:widestring):widestring;

var last_expr_result:boolean;

  procedure skip_whitespace(var pos:longint);

  begin
    while (pos<=length(adp)) and (adp[pos] in whitespace) do
      inc(pos);
  end;

  function parse_tag_recursively(const tag:widestring):boolean;

  begin
    parse_tag_recursively:=(tag='TRN') or (tag='PROPERTY') or (tag='IF') or
                           (tag='ELSE') or (tag='MULTIPLE');
  end;

  function do_if_tag(const tag,params,content,closetag:widestring):widestring;

  var pos:longint;

    procedure skip_whitespace;

    begin
      while (pos<=length(params)) and (params[pos] in whitespace) do
        inc(pos);
    end;

    function read_word:widestring;

    var oldpos:longint;

    begin
      oldpos:=pos;
      while (pos<=length(params)) and (params[pos]<>' ') do
        inc(pos);
      read_word:=copy(params,oldpos,pos-oldpos);
    end;

    function parse_l3_expr:boolean;

    var left,right,op:widestring;
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
        op:widestring;

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
        op:widestring;

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

  function do_else_tag(const tag,params,content,closetag:widestring):widestring;

  begin
    if not last_expr_result then
      do_else_tag:=content
    else
      do_else_tag:='';
  end;

  function do_trn_tag(const tag,params,content,closetag:widestring):widestring;

  var p,key,value:widestring;
      message_key,message_locale:widestring;

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
      if message_locale<>locale then
        begin
          value:='';
          if (locale<>'') and (message_key<>'') then
            value:=message_get(locale,message_key);
          if (fallback_locale<>'') and (message_key<>'') then
            value:=message_get(fallback_locale,message_key);
          if value<>'' then
            do_trn_tag:=value;
        end;
  end;

  function do_master_tag(const tag,params,content,closetag:widestring):widestring;

  var p,key,value:widestring;

  begin
    master_template:=default_master;
    p:=params;
    while p<>'' do
      begin
        parse_param(p,key,value);
        if key='src' then
          master_template:=UTF8Encode(replace_properties(value));
      end;
    do_master_tag:='';
  end;

  function do_slave_tag(const tag,params,content,closetag:widestring):widestring;

  begin
    do_slave_tag:=slave_html;
  end;

  function do_multiple_tag(const tag,params,content,closetag:widestring):widestring;

  var p,key,value:widestring;
      datasource:ansistring;
      datafile:text;
      s,t:ansistring;

      colnames:array[1..32] of ansistring;
      ncols,i,n:longint;

  begin
    do_multiple_tag:='';
    p:=params;
    while p<>'' do
      begin
        parse_param(p,key,value);
        if key='name' then
          datasource:=UTF8Encode(value);
      end;

    {Open the datasource.}
    assign(datafile,datasource_prefix+datasource+'.dat');
    reset(datafile);

    {Read the column header.}
    readln(datafile,s);
    ncols:=0;
    repeat
      i:=pos(#9,s);
      inc(ncols);
      if i=0 then
        colnames[ncols]:=s
      else
        begin
          colnames[ncols]:=copy(s,1,i-1);
          delete(s,1,i);
        end;
    until i=0;

    {Read the data.}
    while not eof(datafile) do
      begin
        readln(datafile,s);
        t:=s;
        ncols:=0;
        n:=1;
        repeat
          i:=pos(#9,t);
          inc(ncols);
          if i=0 then
            property_set(UTF8Decode(datasource+'.'+colnames[n]),UTF8Decode(t))
          else
            begin
              property_set(UTF8Decode(datasource+'.'+colnames[n]),UTF8Decode(copy(t,1,i-1)));
              delete(t,1,i);
            end;
          inc(n);
        until i=0;
        do_multiple_tag:=do_multiple_tag+replace_properties(content);
      end;

    close(datafile);
  end;

  function do_property_tag(const tag,params,content,closetag:widestring):widestring;

  var p,name,key,value:widestring;

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

  function do_tag(const tag,params,content,closetag:widestring):widestring;

  var utag:widestring;

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

  function parse_at(var pos:longint;stoptag:widestring):widestring;forward;

  function parse_tag(var pos:longint):widestring;

  var tag,utag,
      params,content,
      closetag:widestring;

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

  function parse_at(var pos:longint;stoptag:widestring):widestring;

  var i:longint;
      tag:widestring;

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

function TPageConverter.generate_page(fn:ansistring):widestring;

var
    adpfile:file;
    adpansi:ansistring;
    adpwide:widestring;

begin
  repeat
    master_template:='';
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
    fn:=master_template;
  until master_template='';
  generate_page:=slave_html;
end;

procedure TPageConverter.parse_cmdline;

type  Tstate=(s_default,s_read_property,s_outputfile,
              s_read_locale,s_read_fallback_locale,s_read_catalogfile,
              s_read_defaultmaster,s_read_dataprefix,
              s_read_inputencoding,s_read_catalogencoding,s_read_outputencoding);

var ignore_options:boolean;
    i:longint;
    state:Tstate;
    s,key,value:ansistring;
    p:byte;

begin
  ignore_options:=false;
  state:=s_default;
  for i:=1 to paramcount do
    case state of
      s_read_property:
        begin
          s:=paramstr(i);
          p:=pos('=',s);
          key:=copy(s,1,p-1);
          value:=copy(s,p+1,255);
          property_set(UTF8Decode(key),UTF8Decode(value));
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
        else
          inputfile:=s;
    end;
end;

procedure TPageConverter.Execute(Const aExt,LangName,LangEncoding : AnsiString);

var htmlfile:text;
    page:widestring;

begin
  inputfile:='';
  outputfile:='';
  catalogfile:='';
  fallback_locale:='';
  datasource_prefix:='';
  parse_cmdline;
  if inputfile='' then
     begin
       writeln('Usage: adp2html [-ce catalog_encoding] \');
       writeln('                [-d datasource_prefix] [-ie input_encoding ] \');
       writeln('                [-l locale] [-lb fallback_locale] \');
       writeln('                [-m default_master] [-p key=value] \');
       writeln('                [-o outputfile]  <filename>');
       halt(1);
     end;
  locale:=LangName;
  property_set('x',aext);

  output_encoding:=LangEncoding;
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
    end;

  {Process page.}
  mode:=process_page;
  page:=generate_page(inputfile);

  if outputfile='' then
    write(page)
  else
    begin
      if (LangName<>'') then
        outputfile:=outputfile+'.'+langname;
      assign(htmlfile,outputfile);

      rewrite(htmlfile);
      {Possible widestring bug? Manually convert to ansistring.}
      write(htmlfile,ansistring(page));
      close(htmlfile);
    end;
end;

Const
  Langcount = 11;

Type
  TLangarray = Array[1..LangCount] of string;

Const
  LangNames : TLangarray = ('bg','en','fi','fr','id','it','nl','po','sl','ru','zh-CN');
  LangContent : TLangarray = ('bg','en','fi','fr','id','it','nl','pl','sl','ru','zh-CN');
  LangEncoding : TLangarray = ('iso-8859-5','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-2','iso-8859-2','iso-8859-5','utf-16');


Var
  ifn,ofn : string;
  L : TStringList;
  i : Integer;

begin
  For I:=1 to LangCount do
    With TPageConverter.Create do
      try
        Execute('.var',LangNames[i],LangEncoding[i]);
        ifn:=OutputFile;
      finally
        Free;
      end;
  With TPageConverter.Create do
    try
      Execute('.html','','iso-8859-1');
      ifn:=OutputFile;
    finally
      Free;
    end;
  ofn:=ChangeFileExt(ifn,'.var');
  L:=TStringList.Create;
  for I:=1 to langCount do
    begin
    L.Add('');
    L.Add(Format('URI: %s.%s',[ifn,LangNames[i]]));
    L.Add(Format('Content-language: %s',[LangContent[i]]));
    L.Add(Format('Content-type: text/html; charset=%s',[LangEnCoding[i]]));
    end;
  L.Add('');
  L.SaveToFile(ofn);
end.
