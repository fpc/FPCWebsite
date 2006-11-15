program adp2html;

uses cwstring;

type  Pproperty=^Tproperty;
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

var master_template:ansistring;
    slave_html:widestring;
    inputfile,outputfile,catalogfile:widestring;
    locale,fallback_locale:string;
    mode:(process_catalog,process_page);

    properties:Pproperty=nil;
    messages:Pmessage=nil;

    default_master:string='default-master.adp';

procedure property_set(const name,value:widestring;var tree:Pproperty);

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

procedure property_set(const name,value:widestring);

begin
  property_set(name,value,properties);
end;

function property_get(const name:widestring;tree:Pproperty):widestring;

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

function property_get(const name:widestring):widestring;

begin
  property_get:=property_get(name,properties);
end;

procedure message_set(const locale,key,value:widestring;var tree:Pmessage);

begin
  if tree=nil then
    begin
      new(tree);
      tree^.left:=nil;
      tree^.right:=nil;
      tree^.locale:=locale;
      tree^.key:=key;
      tree^.value:=value;
    end
  else if tree^.key>key then
    message_set(locale,key,value,tree^.left)
  else if tree^.key<key then
    message_set(locale,key,value,tree^.right)
  else if tree^.locale>locale then
    message_set(locale,key,value,tree^.left)
  else if tree^.locale<locale then
    message_set(locale,key,value,tree^.right)
  else
    tree^.value:=value
end;

procedure message_set(const locale,key,value:widestring);

begin
  message_set(locale,key,value,messages);
end;

function message_get(const locale,key:widestring;tree:Pmessage):widestring;

begin
  if tree=nil then
    message_get:=''
  else if tree^.key>key then
    message_get:=message_get(locale,key,tree^.left)
  else if tree^.key<key then
    message_get:=message_get(locale,key,tree^.right)
  else if tree^.locale>locale then
    message_get:=message_get(locale,key,tree^.left)
  else if tree^.locale<locale then
    message_get:=message_get(locale,key,tree^.right)
  else
    message_get:=tree^.value
end;


function message_get(const locale,key:widestring):widestring;

begin
  message_get:=message_get(locale,key,messages);
end;

function replace_properties(s:widestring):widestring;

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

procedure parse_param(var p,key,value:widestring);

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

function adp_parse(adp:widestring):widestring;

  procedure skip_whitespace(var pos:longint);

  begin
    while (pos<=length(adp)) and (adp[pos] in whitespace) do
      inc(pos);
  end;

  function parse_tag_recursively(const tag:widestring):boolean;

  begin
    parse_tag_recursively:=(tag='TRN') or (tag='PROPERTY');
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
          master_template:=value;
      end;
    do_master_tag:='';
  end;

  function do_slave_tag(const tag,params,content,closetag:widestring):widestring;

  begin
    do_slave_tag:=slave_html;
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
    else if utag='MASTER' then
      do_tag:=do_master_tag(tag,params,content,closetag)
    else if utag='SLAVE' then
      do_tag:=do_slave_tag(tag,params,content,closetag)
    else if utag='PROPERTY' then
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
        tag:=tag+adp[pos];
        inc(pos);
      end;
    while (pos<=length(adp)) and (adp[pos]<>'>') do
      begin
        params:=params+adp[pos];
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
          parse_at:=parse_at+adp[pos];
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
              parse_at:=parse_at+'<';
              inc(pos);
            end
          else
            parse_at:=parse_at+parse_tag(pos);
        end;
    until pos>length(adp);
  end;

var pos:longint;

begin
  pos:=1;
  adp_parse:=parse_at(pos,'');
end;

function generate_page(fn:ansistring):widestring;

var r:widestring;
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
    adpwide:=adpansi;
    close(adpfile);
    adpwide:=replace_properties(adpwide);
    slave_html:=adp_parse(adpwide);
    fn:=master_template;
  until master_template='';
  generate_page:=slave_html;
end;

procedure parse_cmdline;

type  Tstate=(s_default,s_read_property,s_outputfile,
              s_read_locale,s_read_fallback_locale,s_read_catalogfile,
              s_read_defaultmaster);

var ignore_options:boolean;
    i:longint;
    state:Tstate;
    s,key,value:string;
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
          property_set(key,value);
          state:=s_default;
        end;
      s_outputfile:
        begin
          s:=paramstr(i);
          outputfile:=s;
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
      s_read_defaultmaster:
        begin
          s:=paramstr(i);
          default_master:=s;
          state:=s_default;
        end;
      else
        {Default.}
        s:=paramstr(i);
        if ignore_options then
          inputfile:=s
        else if s='--' then
          ignore_options:=true
        else if s='-c' then
          state:=s_read_catalogfile
        else if s='-o' then
          state:=s_outputfile
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

var htmlfile:text;
    page:widestring;

begin
  inputfile:='';
  outputfile:='';
  catalogfile:='';
  locale:='';
  fallback_locale:='';
  parse_cmdline;
  if inputfile='' then
     begin
       writeln('Usage: adp2html [-c catalogfile] [-l locale] [-lb fallback_locale] \');
       writeln('                [-m default_master] [-p key=value] [-o outputfile] <filename>');
       halt(1);
     end;

  {Process catalog first.}
  if catalogfile<>'' then
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
      assign(htmlfile,outputfile);
      rewrite(htmlfile);
      write(htmlfile,page);
      close(htmlfile);
    end;
end.
