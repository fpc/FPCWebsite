program adp2html;

{$mode objfpc}
{$h+}

uses
  {$ifdef unix}cwstring,unixcp,{$endif}
  {$ifdef mswindows}windows, {$endif}
  sysutils, classes, custapp, adpdata, adpconverter, adputils;


Type
  { TADP2HTMLapplication }

  TADP2HTMLapplication = Class(TCustomApplication)
  Private
    Fopt : TOptions;
    procedure DoonePage(const outfn: AnsiString; args: array of ansistring; datasources : TDatasources);
    procedure RunOnce;
  Public
    procedure Usage(Const Msg : string);
    Constructor Create(aOwner : TComponent); override;
    Destructor Destroy; override;
    Procedure Initialize; override;
    Procedure DoRun; override;
    procedure ParseCmdLine;
  end;

{ TADP2HTMLapplication }

constructor TADP2HTMLapplication.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  StopOnException:=True;
  FOpt:=TOptions.Create;
end;

destructor TADP2HTMLapplication.Destroy;
begin
  FreeAndNil(FOpt);
  inherited Destroy;
end;

procedure TADP2HTMLapplication.Initialize;
begin
 {$ifdef mswindows}
  SetMultiByteConversionCodePage(CP_UTF8);
  SetMultiByteRTLFileSystemCodePage(CP_UTF8);
  SetConsoleOutputCP(DefaultSystemCodePage);
  SetTextCodePage(Output, DefaultSystemCodePage);
 {$endif}
  inherited Initialize;
end;

procedure TADP2HTMLapplication.Usage(Const Msg : string);

begin
  if Msg<>'' then
    Writeln('Error : ',Msg);
  writeln('Usage: adp2html [options] ');
  Writeln('Where option is one or more of:');
  writeln('-d --data-prefix=PREFIX   set data filename prefix to PREFIX');
  writeln('-o --output-file=FILE     set output file to FILE');
  writeln('-f --config=FIILE         set config file to FILE (run in auto mode)');
  writeln('-C --catalog-encoding=ENC set catalog file encoding.');
  writeln('-e --output-encoding=ENC  set output file encoding.');
  writeln('-E --input-encoding=ENC   set input file encoding.');
  writeln('-l --locale=LOC           set locale to use when looking up messages');
  writeln('-b --fallback-locale=LOC  set fallback locale to use when looking up messages (default: en)');
  writeln('-p --property=Name=Value  set a property value, used when substituting');
  writeln('-m --master=NAME          set master file location (default: default-master.adp)');
  writeln('-P --output-prefix=NAME   set prefix for output files to NAME');
  writeln('-B --multilang            generate files for multiple languages');
  writeln('-M --no-multilang         disable multi-language feature');
  writeln('-a --auto-driver          run in auto mode, using default file website.conf');
  writeln('-t --tar                  create a tar file of generated files.');
  writeln('-t --no-tar               do not create a tar file of generated files');
  writeln('-z --zip                  create a zip file of generated files');
  writeln('-Z --no-zip               do not create a zip file of generated files');
  halt(Ord(Msg<>''));
end;

procedure TADP2HTMLapplication.ParseCmdLine;

Const
  ShortOpts = 'd:o:f:C:e:E:l:b:p:m:P:MnatzTZBc:' ;
  LongOpts  : Array[1..18] of string = (
      'data-prefix:','output-file:','config','catalog-encoding:','output-encoding:',
      'input-encoding:','locale:','fallback-locale:','property:',
      'master:','output-prefix:','multilang','no-multilang',
      'auto-driver','tar','zip','no-tar','no-zip');

var
  s :ansistring;
  IFS : Array of String;

begin
  S:=CheckOptions(ShortOpts,LongOpts);
  if S<>'' then
    Usage(S);
  With Fopt do
    begin
    multilang:=HasOption('B','multilang') and Not HasOption('M','no-multilang');
    Ftar:=Not HasOption('t','tar') and not HasOption('T','no-tar');
    Fzip:=Not HasOption('z','zip') and not HasOption('Z','no-zip');
    outputFile:=GetOptionValue('o','output-file');
    datasource_prefix:=GetOptionValue('d','data-prefix');
    output_Prefix:=GetOptionValue('P','output-prefix');
    if HasOption('e','output-encoding') then
      output_encoding:=GetOptionValue('e','output-encoding');
    if HasOption('E','input-encoding') then
      input_encoding:=GetOptionValue('E','input-encoding');
    if HasOption('C','catalog-encoding') then
      catalog_encoding:=GetOptionValue('C','catalog-encoding');
    locale:=GetOptionValue('l','locale');
    fallback_locale:=GetOptionValue('b','fallback-locale');
    if HasOption('m','master') then
      default_master:=GetOptionValue('m','master');
    if HasOption('f','config') then
      begin
       autoDriver:=true;
       configfn:=GetOptionValue('f','config');
      end;
    if HasOption('a','auto-driver') then
      begin
      autoDriver:=true;
      configfn:='website.conf';
      fzip:=true;
      ftar:=true;
      multilang:=true;
      end;
    for S in GetOptionValues('p','property') do
       Defines.Add(S);
    IFS:=GetNonOptions(ShortOpts,LongOpts);
    if Length(IFS)=1 then
      inputfile:=IFS[0];
    if (inputfile='') and not (autodriver and (configfn<>'')) then
      Usage('Need input file')
    end;
end;

// kind of the actual generation that scripts using other routines.

procedure TADP2HTMLapplication.DoonePage(const outfn: AnsiString; args:array of ansistring; datasources : TDatasources);

var
  i,langnr : integer;
  ifn:ansistring;

begin
  write(' ',outfn,' ');
  fopt.outputfile:=changefileext(outfn,'.html');
  With TPageConverter.Create(fopt,datasources) do
     begin
       options.checkprefix; // prefixes outfile with output prefix if applicable
       if high(args)>0 then
         for i:=0 to (( high(args)+1) div 2)-1 do
            fProperties.Write(UTF8Decode(args[i*2]),UTF8Decode(args[i*2+1]));
         try
           Execute('.html','','iso-8859-1');
           ifn:=options.outputfile; // save full output path for genvarfile if needed.
         finally
           Free;
         end;
       write('.');
     end;
  if fopt.multilang then
   begin
     For langnr:=1 to LangCount do
       begin
         if langcatalogok[langnr] then
          begin
             fopt.outputfile:=changefileext(outfn,'.html'); // execute appends country code (langnames)
             With TPageConverter.Create(fopt,datasources) do
                begin
                  options.checkprefix;
                  if high(args)>0 then
                    for i:=0 to (( high(args)+1) div 2)-1 do
                       fProperties.Write(UTF8Decode(args[i*2]),UTF8Decode(args[i*2+1]));
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


procedure TADP2HTMLapplication.RunOnce;

var
  confdata :TWebsiteData;
  fn,afn : ansistring;
  locs,p,q : pointer; // running variable for tobjectlist
  i : integer;

begin
  Writeln('Running in auto mode');
  if not fileexists(Fopt.configfn) then
     begin
     Writeln('Can''t find config json file',fopt.configfn);
     ExitCode:=1;
     exit;
     end;
  // we can only do this in auto mode because in non auto we might be launched in
  // different directories.
  for i:=1 to Langcount do
    langcatalogok[i]:=getfilesize( 'catalog.'+langNames[i]+'.adp')>10;

  confdata :=TWebsiteData.create(Fopt);
  try
    confdata.load(fopt.configfn);
    // do global files.
    for fn in confdata.globalfiles do
     begin
       fopt.inputfile:=changefileext(fn,'.adp');
       afn:=changefileext(fn,'.html');
       DoOnePage(afn,[],confdata.datasources);
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
                        fopt.inputfile:=changefileext(IncludeTrailingPathDelimiter(location)+name,'.adp');
                        fn:=changefileext(fn,'.html');
                        DoonePage(fn,['mirror_url',url,
                                      'mirrorsuffix',lowercase(mname),
                                      'latestversion',version],confdata.Datasources);

                     end;
                  end;
                 // and a mirror selection page
                 Fopt.inputfile:='templatemirror.adp';
                 fn:=changefileext(IncludeTrailingPathDelimiter(location)+name,'.html');
                 DoonePage(fn,[  'latestversion',version,
                                     'pagename',changefileext(name,''),
                                     'sourceforgepath',os],confdata.Datasources);
             end;
     end;
  finally
    ConfData.Free;
  end;
  doarchives('htmls.xxx',Fopt.fzip,fopt.ftar);
end;


procedure TADP2HTMLapplication.DoRun;

Var
  I : integer;
  ifn : string;
  DS : TDataSources;

begin
  Terminate; // Make sure we stop
  ParseCmdLine;
  if Fopt.autodriver then
    RunOnce
  else
    begin
    DS:=TDataSources.Create(fopt.datasource_prefix);
    try
      if Fopt.multilang then
        For I:=1 to LangCount do
          With TPageConverter.Create(fopt,DS) do
            try
              Execute('.var',LangNames[i],LangEncoding[i]);
              ifn:=Fopt.OutputFile;
              genvarfile(ifn);
            finally
              Free;
            end;
      // Do this also if multilang ?
      With TPageConverter.Create(fopt,ds) do
        try
          Execute('.html','','iso-8859-1');
          ifn:=Fopt.OutputFile;
          genvarfile(ifn);
        finally
          Free;
        end;
    finally
      ds.Free;
    end;
    end;
end;

Var
  Application:TADP2HTMLapplication;

begin
  Application:=TADP2HTMLapplication.Create(Nil);
  CustomApplication:=Application;
  Application.Initialize;
  Application.Run;
  Application.Free;
end.

