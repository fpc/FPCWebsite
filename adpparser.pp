unit adpparser;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, adpdata, adputils;

Type
  TparseMode = (process_catalog,process_page);

  { TADPParser }

  TADPParser = class
  private
    FDatasources: TDatasources;
    Fmaster_template: String;
    FMessages: TMessages;
    FOptions: TOptions;
    FParseMode: TParseMode;
    FProperties: TProperties;
    Frecognize_properties: boolean;
    Fslave_html: unicodestring;
    last_expr_result:boolean;
    adp : Unicodestring;
    function do_else_tag(const content: Unicodestring): Unicodestring;
    function do_if_tag(const params, content : Unicodestring): Unicodestring;
    function do_master_tag(const params: Unicodestring): Unicodestring;
    function do_multiple_tag(const params, content: Unicodestring): Unicodestring;
    function do_property_tag(const params, content: Unicodestring): Unicodestring;
    function do_slave_tag: Unicodestring;
    function do_tag(const tag, params, content, closetag: Unicodestring): Unicodestring;
    function do_trn_tag(const params, content: Unicodestring): Unicodestring;
    function parse_at(var pos: longint; stoptag: Unicodestring): Unicodestring;
    procedure parse_param(var p: Unicodestring; out key, value: Unicodestring);
    function parse_tag(var pos: longint): Unicodestring;
    function parse_tag_recursively(const tag: Unicodestring): boolean;
    procedure skip_whitespace(var pos: longint);
  public
    constructor create(aOptions : TOptions; aMessages : TMessages; aProperties : TProperties; aData : TDatasources);
    function Parse(aSource:Unicodestring):Unicodestring;
    Property Options : TOptions read FOptions;
    Property Messages : TMessages Write FMessages;
    Property Properties : TProperties Read FProperties;
    Property Data : TDatasources Read FDatasources;
    property mode : TParseMode Read FParseMode Write FParseMode;
    property master_template : String Read Fmaster_template Write Fmaster_template;
    property slave_html : unicodestring Read Fslave_html Write Fslave_html;
    property recognize_properties:boolean Read Frecognize_properties Write Frecognize_properties;
  end;

implementation

procedure TADPParser.skip_whitespace(var pos:longint);

begin
  while (pos<=length(adp)) and (adp[pos] in whitespace) do
    inc(pos);
end;

function TADPParser.parse_tag_recursively(const tag:Unicodestring):boolean;

begin
  parse_tag_recursively:=(tag='TRN') or (tag='PROPERTY') or (tag='IF') or
                         (tag='ELSE') or (tag='MULTIPLE');
end;

function TADPParser.do_if_tag(const params,content : Unicodestring):Unicodestring;

var pos:longint;

  procedure do_skip_whitespace;

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
    do_skip_whitespace;
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
        left:=Fproperties.ReplaceInstring(left);
        if pos>length(params) then
          exit;
        save_pos:=pos;
        do_skip_whitespace;
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
        do_skip_whitespace;
        right:=read_word;
        if upcase(right)='NIL' then
          parse_l3_expr:=left<>'';
      end
    else if op='EQ' then
      begin
        if pos>length(params) then
          exit;
        do_skip_whitespace;
        right:=FProperties.ReplaceInString(read_word);
        parse_l3_expr:=left=right;
      end
    else if op='NE' then
      begin
        if pos>length(params) then
          exit;
        do_skip_whitespace;
        right:=FProperties.ReplaceInString(read_word);
        parse_l3_expr:=left<>right;
      end
    else if op='LT' then
      begin
        if pos>length(params) then
          exit;
        do_skip_whitespace;
        right:=FProperties.ReplaceInString(read_word);
        parse_l3_expr:=left<right;
      end
    else if op='LTE' then
      begin
        if pos>length(params) then
          exit;
        do_skip_whitespace;
        right:=FProperties.ReplaceInString(read_word);
        parse_l3_expr:=left<=right;
      end
    else if op='GTE' then
      begin
        if pos>length(params) then
          exit;
        do_skip_whitespace;
        right:=FProperties.ReplaceInString(read_word);
        parse_l3_expr:=left>=right;
      end
    else if op='GT' then
      begin
        if pos>length(params) then
          exit;
        do_skip_whitespace;
        right:=FProperties.ReplaceInString(read_word);
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
    do_skip_whitespace;
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
    do_skip_whitespace;
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

function TADPParser.do_else_tag(const content:Unicodestring):Unicodestring;

begin
  if not last_expr_result then
    do_else_tag:=content
  else
    do_else_tag:='';
end;


procedure TADPParser.parse_param(var p: Unicodestring; out key, value: Unicodestring);

var pos,pl,pf:longint;

  procedure p_skip_whitespace(var pos:longint);

  begin
    while (pos<=length(p)) and (p[pos] in whitespace) do
      inc(pos);
  end;

Var
  S : UnicodeString;

begin
  pos:=1;
  p_skip_whitespace(pos);
  pf:=pos;
  pl:=0;
  while (pos<=length(p)) and (p[pos] in ['A'..'Z','a'..'z']) do
    begin
      inc(pl);
      inc(pos);
    end;
  key:=Copy(P,Pf,PL);
  p_skip_whitespace(pos);
  if (pos>length(p)) or (p[pos]<>'=') then
    begin
      p:='';
      exit;
    end;
  inc(pos);
  S:='';
  PL:=0;
  SetLength(S,Length(P));
  pf:=Pos;
  case p[pos] of
    '''':
      begin
        inc(pos);
        while (pos<=length(p)) and (p[pos]<>'''') do
          begin
            inc(PL);
            S[PL]:=p[pos];
            inc(pos);
          end;
        inc(pos);
      end;
    '"':
      begin
        inc(pos);
        while (pos<=length(p)) and (p[pos]<>'"') do
          begin
            Inc(Pl);
            S[PL]:=p[pos];
            inc(pos);
          end;
        inc(pos);
      end;
    else
      while p[pos] in ['A'..'Z','a'..'z'] do
        begin
          Inc(Pl);
          S[PL]:=p[pos];
          inc(pos);
        end;
  end;
  SetLength(S,PL);
  delete(p,1,pos-1);
  Value:=S;
end;

function TADPParser.do_trn_tag(const params,content:Unicodestring):Unicodestring;

var p,key,value:Unicodestring;
    message_key,message_locale:Unicodestring;

begin
  message_key:='';
  do_trn_tag:=content;
 // Writeln('>',Content,'<');
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
        begin
          // Writeln(message_locale,',',message_key,',',content);
          fmessages.Write(message_locale,message_key,content);
          end
    end
  else
    if message_locale<>options.ulocale then
      begin
        value:='';
        if (options.locale<>'') and (message_key<>'') then
          value:=fmessages.Read(options.Ulocale,message_key);
        if (Options.fallback_locale<>'') and (message_key<>'') then
          value:=fmessages.Read(UTF8Decode(Options.fallback_locale),message_key);
        if value<>'' then
          do_trn_tag:=value;
      end;
end;

function TADPParser.do_master_tag(const params:Unicodestring):Unicodestring;

var p,key,value:Unicodestring;

begin
  master_template:=options.default_master;
  p:=params;
  while p<>'' do
    begin
      parse_param(p,key,value);
      if key='src' then
        master_template:=UTF8Encode(FProperties.ReplaceInString(value));
    end;
  do_master_tag:='';
end;

function TADPParser.do_slave_tag:Unicodestring;

begin
  do_slave_tag:=slave_html;
end;

function TADPParser.do_multiple_tag(const params,content : Unicodestring):Unicodestring;

var l,p,key,value:Unicodestring;
    datasource:ansistring;
    i,n:longint;
    lst : TStringListList;
    hdr,row : TStringlist;

begin
  Result:='';
  p:=params;
  while p<>'' do
    begin
      parse_param(p,key,value);
      if key='name' then
        datasource:=UTF8Encode(value);
    end;
  lst:=nil;
  Data.Loaddatasource(datasource,lst);
  if Not Assigned(Lst) then
    Exit;
  hdr:=tstringlist(lst.strs[0]);
  for i:=1 to lst.strs.count-1 do
    begin
      row:=tstringlist(lst.strs[i]);
      for n:=0 to hdr.count-1 do
        FProperties.Write(UTF8Decode(datasource+'.'+hdr[n]),UTF8Decode(row[n]));
      l:=FProperties.ReplaceInString(content);
      Result:=Result+l;
    end;
end;

function TADPParser.do_property_tag(const params,content :Unicodestring):Unicodestring;

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
    fproperties.Write(name,content);
  do_property_tag:='';
end;

function TADPParser.do_tag(const tag,params,content,closetag:Unicodestring):Unicodestring;

var utag:Unicodestring;

begin
  utag:=upcase(tag);
  if utag='TRN' then
    do_tag:=do_trn_tag(params,content)
  else if utag='IF' then
    do_tag:=do_if_tag(params,content)
  else if utag='ELSE' then
    do_tag:=do_else_tag(content)
  else if utag='MASTER' then
    do_tag:=do_master_tag(params)
  else if utag='SLAVE' then
    do_tag:=do_slave_tag
  else if utag='MULTIPLE' then
    do_tag:=do_multiple_tag(params,content)
  else if recognize_properties and (utag='PROPERTY') then
    do_tag:=do_property_tag(params,content)
  else
    do_tag:='<'+tag+params+'>'+content+closetag;
end;


function TADPParser.parse_tag(var pos:longint):Unicodestring;

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
        //writeln('Start of tag ',tag);
      content:=parse_at(pos,upcase(tag));
       // writeln('Stop of tag ',tag,'content = ',content,'----');
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


function TADPParser.parse_at(var pos:longint;stoptag:Unicodestring):Unicodestring;

var
  i:longint;
  res,tag:Unicodestring;

begin
  Res:='';
  repeat
    while (adp[pos]<>'<') and (pos<=length(adp)) do
      begin
        setlength(res,length(res)+1);
        res[length(res)]:=adp[pos];
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
              begin
              Result:=Res;
              exit;
              end;
            setlength(res,length(res)+1);
            res[length(res)]:='<';
            inc(pos);
          end
        else
          res:=res+parse_tag(pos);
      end;
  until pos>length(adp);
  Result:=FProperties.ReplaceInString(res);
end;

function TADPParser.Parse(aSource: Unicodestring): Unicodestring;

var
  pos:longint;

begin
  adp:=aSource;
  pos:=1;
  Result:=parse_at(pos,'');
end;

{ TADPParser }

constructor TADPParser.create(aOptions: TOptions; aMessages: TMessages; aProperties: TProperties; aData: TDatasources);
begin
  FOptions:=aoptions;
  FMessages:=aMessages;
  FProperties:=aProperties;
  FDataSources:=AData;
end;


end.

