unit adpconverter;

{$mode objfpc}{$H+}

interface

uses
  fpjson, jsonparser, jsonscanner, Classes, SysUtils, adpdata, adputils, adpparser;

type
  { TPageConverter }
  TPageConverter = Class
  private
    function adp_parse(adp: Unicodestring; aRecognizeProperties: Boolean; amode:TParseMode): Unicodestring;
    function generate_page(fn: ansistring; aMode:TParseMode): Unicodestring;
    procedure loadparam;
  Public
    master_template:ansistring;
    slave_html:Unicodestring;
    fproperties:Tproperties;
    fmessages:Tmessages;
    default_master:string ; // ='default-master.adp';
    Options : TOptions;
    Datasources : TDatasources;
    Constructor Create(anoption:TOptions; aDatasources : TDatasources);
    destructor Destroy; override;
    procedure Execute(const aExt, LangName, LangEncoding: AnsiString);
  end;

implementation

{ TPageConverter }

constructor TPageConverter.Create(anoption:TOptions; aDatasources : TDatasources);
begin
  options:=anoption;
  Datasources:=aDatasources;
  default_master:=anOption.default_master;
  FProperties:=TProperties.Create;
  fmessages:=TMessages.Create(anOption);
end;

destructor TPageConverter.Destroy;
begin
  FreeAndNil(FProperties);
  FreeAndNil(FMessages);
  inherited Destroy;
end;




procedure TPageConverter.loadparam;

var
  s,key,value:ansistring;
  p:byte;

begin
  for s in options.defines do
    begin
      p:=pos('=',s);
      key:=copy(s,1,p-1);
      value:=copy(s,p+1,255);
      fproperties.Write(UTF8Decode(key),UTF8Decode(value));
    end;
end;


function TPageConverter.adp_parse(adp:Unicodestring; aRecognizeProperties: Boolean; amode:TParseMode):Unicodestring;

Var
  Parser : TADPParser;

begin
  Parser:=TADPParser.Create(Options,FMessages,FProperties,Datasources);
  try
    Parser.recognize_properties:=aRecognizeProperties;
    Parser.Mode:=amode;
    Parser.master_template:=self.master_template;
    Parser.slave_html:=Slave_html;
    Result:=Parser.Parse(adp);
    master_template := Parser.master_template;
  finally
    Parser.Free;
  end;
end;

function TPageConverter.generate_page(fn:ansistring ; amode:TParseMode):Unicodestring;

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
  {    adpwide:=FProperties.ReplaceInString(adpwide);}
    {Do two passes. The first pass if/else tags are expanded...}
    if length(adpwide)>0 then
      slave_html:=adp_parse(adpwide,False,amode)
    else
      slave_html:='';
    {... so the second pass can apply properties.}
    if length(adpwide)>0 then
      slave_html:=adp_parse(slave_html,True,amode)
    else
      slave_html:='';
    { fix /down/old/i386-beos.adp site-master.adp file not found by wangyouworld }
    if ((master_template <> '') and not FileExists(master_template)) then master_template := options.masterpath+master_template;
    // Writeln('Master template now: ',master_template);
    fn:=master_template;
  until master_template='';
  generate_page:=slave_html;
end;




procedure TPageConverter.Execute(const aExt, LangName, LangEncoding: AnsiString);

var
  htmlfile:text;
  page:Unicodestring;

begin
  loadparam;
  options.locale:=langname;
  options.output_encoding:=LangEncoding;
  // Writeln('Input file : ',options.InputFile);
  fProperties.Write('x',UTF8Decode(aext));
  fProperties.Write('output_encoding',UTF8Decode(Langencoding));
  if LangName='' then
    options.catalogfile := 'catalog.en.adp'
  else
    options.catalogfile := 'catalog.'+langName+'.adp';
  {Process catalog first.}
  if FileExists(options.catalogfile) then
    begin
    generate_page(options.catalogfile,process_catalog);
    end
  else
    begin
    { Fix catalogfile notfound by wangyouworld }
    options.catalogfile := Options.masterpath+options.catalogfile;
    generate_page(options.catalogfile,process_catalog);
    end;
  {Process page.}
  page:=generate_page(options.inputfile,process_page);

  if options.outputfile='' then
    write(page)
  else
    begin
      if (options.locale<>'') then
        options.outputfile:=options.outputfile+'.'+options.locale;
      assign(htmlfile,options.outputfile);
      rewrite(htmlfile);
      {Possible Unicodestring bug? Manually convert to ansistring.}
      write(htmlfile,ansistring(page));
      close(htmlfile);
    end;
end;




end.

