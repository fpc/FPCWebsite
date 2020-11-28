program dailydocs;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes, SysUtils, CustApp, DOM, XMLRead, XPath;

type
  TStringDynArray = Array of string;
  TIndexList = Array['A'..'Z'] of TStringList;

  { TDailyDocApplication }

  TDailyDocApplication = class(TCustomApplication)
  private
    FInputFile: String;
    FOutputDir: String;
    FPackageName: String;
    FPDocExe : String;
    FExcludes : TStringList;
    FGenerated : TStringList;
    FIndexColCount : Integer;
    FToc : Boolean;
    procedure AddPageHeader(aPage: TStrings);
    procedure AddPageFooter(aPage: TStrings);
    procedure CleanUnitNames(aUnits: TStrings);
    Function CreatePackageDocs(aPackage: String) : Boolean;
    procedure CreateTocPage(aPackages,aUnits: TStringList);
    procedure FillIndexList(var aLists: TIndexList; L: TStringList);
    function GetPackageNames(UnitNames : TStrings): TStringDynArray;
    function ParseOptions: String;
  protected
    procedure DoRun; override;
  public
    constructor Create(TheOwner: TComponent); override;
    Destructor Destroy; override;
    procedure Usage(Const Msg : String); virtual;
  end;

{ TDailyDocApplication }

function TDailyDocApplication.ParseOptions: String;

Var
  Excl : String;

begin
  Result:='';
  FInputFile:=GetOptionValue('i','input');
  FOutputDir:=GetOptionValue('o','output');
  FPackageName:=GetOptionValue('p','package');
  FPDocExe:=GetOptionValue('f','fpdoc');
  FToc:=HasOption('t','toc');
  Excl:=GetOptionValue('x','exclude');
  if (Excl<>'') then
    begin
    if Excl[1]='@' then
      FExcludes.LoadFromFile(Copy(Excl,2))
    else
      FExcludes.CommaText:=Excl;
    FExcludes.Sorted:=True;
    end;
  if FInputFile='' then
    Exit('Input file is required');
  if FOutputDir='' then
    Exit('Output directory is required');
  if not ForceDirectories(FoutputDir) then
    Exit('Could not create output directory');
  if (FPDocExe='') then
    FPDocExe:=ExeSearch('fpdoc',GetEnvironmentVariable('PATH'));
  if not ((FPDocExe<>'') and FileExists(FPDocExe)) then
    Exit('No fpdoc executable found');
end;

function TDailyDocApplication.GetPackageNames(UnitNames: TStrings): TStringDynArray;

Var
  XML : TXMLDocument;
  XPath,XPathUnits : TXPathVariable;
  PackageNode,UnitNode : TDomElement;
  PackageName,aUnitName : String;
  I,J : integer;

begin
  XPath:=Nil;
  XML:=Nil;
  Result:=Nil;
  ReadXMLFile(XML,FInputFile);
  try
    XPath:=EvaluateXPathExpression('docproject/packages/package',XML);
    SetLength(Result,XPath.AsNodeSet.Count);
    For I:=0 to XPath.AsNodeSet.Count-1 do
      begin
      PackageNode:=TDomElement(XPath.AsNodeSet[I]);
      PackageName:=UTF8Encode(PackageNode['name']);
      Result[i]:=PackageName;
      XPathUnits:=EvaluateXPathExpression('units/unit',PackageNode);
      if XPathUnits.AsNodeSet.Count=0 then
        begin
        Writeln('Package ',Result[i],' has no units, skipping.');
        Result[i]:='';
        end
      else if Assigned(UnitNames) then
        For J:=0 to XPathUnits.AsNodeSet.Count-1 do
          begin
          UnitNode:=TDomElement(XPathUnits.AsNodeSet[j]);
          aUnitName:=UTF8Encode(UnitNode['file']);
          if (Copy(PathDelim,1,1)<>'/') then // Avoid compiler warning
            aUnitName:=StringReplace(aUnitName,'/',PathDelim,[rfReplaceAll]);
          aUnitName:=ChangeFileExt(ExtractFileName(aUnitName),'');
          UnitNames.Add(UTF8Encode(aUnitName)+'='+PackageName);
          end;
      end;
  finally
    XPath.Free;
    XML.Free;
  end;
end;

Function TDailyDocApplication.CreatePackageDocs(aPackage: String) : Boolean;

Var
  Args : Array of string;
  Cmd : String;

begin
  Writeln('Generating docs for package ',aPackage);
  Args:=['--format=html','--footer-date=yyyy-mm-dd','--stop-on-parser-error','--package='+aPackage,'--project='+FInputFile,'--output='+FOutputDir+PathDelim+aPackage];
  Cmd:=String.Join(' ',Args);
  Writeln('Executing ',FPDocExe,' ',Cmd);
  Flush(Output);
  if 0 = ExecuteProcess(FPDocExe,Args) then
    FGenerated.Add(aPackage)
  else
    Writeln('Package ',aPackage, 'failed, not added to TOC');
end;

procedure TDailyDocApplication.FillIndexList(var aLists : TIndexList; L : TStringList);

var
  S : String;
  CL : TStringList;
  C : Char;

begin
  L.Sort;
  Cl:=Nil;
  // Divide over alphabet
  For S in L do
    begin
    C:=Upcase(S[1]);
    If C='_' then
      C:='A';
    If (C in ['A'..'Z']) and (aLists[C]=Nil) then
      begin
      CL:=TStringList.Create;
      aLists[C]:=CL;
      end;
    if assigned(CL) then
      CL.Add(S);
    end;
end;

procedure TDailyDocApplication.AddPageFooter(aPage : TStrings);

begin
  with aPage do
    begin
    Add('</body>');
    Add('</html>');
    end;
end;

procedure TDailyDocApplication.AddPageHeader(aPage : TStrings);

begin
  with aPage do
    begin
    Add('<!DOCTYPE HTML>');
    Add('<html>');
    Add('  <head>');
    Add('  <meta content="text/html; charset=utf-8" http-equiv="Content-Type">');
    Add('  <title>Index of all packages and units</title>');
    Add('  <link rel="stylesheet" href="fpdoc.css" type="text/css">');
    Add('  </head>');
    Add('  <body>');
    Add('    <table class="bar" width="100%" border="0" cellpadding="4" cellspacing="0">');
    Add('      <tr>');
    Add('        <td><b>[List of packages and <a href="#units">units</a>]</b></td>');
    Add('        <td align="right"><span class="bartitle">Daily docs</span></td>');
    Add('      </tr>');
    Add('    </table>');
    Add('');
    end;
end;

// Remove units of packages where running fpdoc failed.
procedure TDailyDocApplication.CleanUnitNames(aUnits : TStrings);

var
  PN : String;
  I,P : Integer;

begin
  For I:=aUnits.Count-1 downto 0 do
    begin
    PN:=aUnits[I];
    P:=Pos('=',PN);
    Delete(PN,1,P);
    if FGenerated.IndexOf(PN)=-1 then
      aUnits.Delete(I);
    end;
end;

procedure TDailyDocApplication.CreateTocPage(aPackages,aUnits : TStringList);

Var
  aPage : TStringList;

  // Add line to page
  Procedure Addln(const S : String);

  begin
    aPage.Add(S);
  end;

  // Add line to page, format version
  Procedure Addln(const Fmt : String; const Args : Array of const);

  begin
    aPage.Add(Fmt,Args);
  end;

  // Add all identifiers to a table in a number of columns.
  Procedure AddRows(CL : TStrings);

  Var
    Rows : Integer;
    I,J,P,aIndex : integer;
    S,PN,UN : String;

  begin
      // Determine number of rows needed
    Rows:=(CL.Count div FIndexColCount);
    If ((CL.Count Mod FIndexColCount)<>0) then
      Inc(Rows);
    // Fill rows
    For I:=0 to Rows-1 do
      begin
      S:='<tr>';
      For J:=0 to FIndexColCount-1 do
        begin
        aIndex:=(J*Rows)+I;
        If (aIndex<CL.Count) then
          begin
          PN:=CL[aIndex];
          P:=Pos('=',PN);
          if P=0 then
            // Package
            S:=S+Format('<td><a href="%s/index.html">%s</a></td>',[PN,PN])
          else
            // Unit, format UN=PN
            begin
            UN:=Copy(PN,1,P-1); // Unit name
            Delete(PN,1,P); // Package name
            S:=S+Format('<td><a href="%s/%s/index.html">%s</a> (<a href="%s/index.html">%s</a>)</td>',[PN,UN,UN,PN,PN]);
            end;
          end
        else
          S:=S+'<td></td>';
        end;
      S:=S+'</tr>';
      Addln('        '+S);
      end;
  end;

  Procedure GenerateList(L : TStringList; Const aSectionPrefix : String);

  Var
    Lists : TIndexList;
    Cl: TStringList;
    S : String;
    C : Char;

  begin
    Lists:=Default(TIndexList);
    Try
      FillIndexList(Lists,L);
      S:='';
      Addln('    <table border="1" width="50%">');
      Addln('      <tr>');
      for C:='A' to 'Z' do
        begin
        If (Lists[C]<>Nil) then
          begin
          S:=S+'<td>'+Format('<a href="#%sSECTION%s">%s</a>',[aSectionPrefix, C,C]);
          If C<>'Z' then
            S:=S+'&nbsp;';
          S:=S+'</td>';
          end;
        end;
      AddLn('        '+S);
      Addln('      </tr>');
      Addln('    </table>');
      AddLn('');
      // Now emit all identifiers.
      For C:='A' to 'Z' do
        begin
        CL:=Lists[C];
        If CL<>Nil then
          begin
          AddLn('');
          AddLn('    <h2><a name="%sSECTION%s">%s</a></h2>',[aSectionPrefix,C,C]);
          AddLn('');
          AddLn('      <table width="80%">');
          AddRows(CL);
          AddLn('      </table>');
          Addln('');
          end; // have List
        end;  // For C:=
    Finally
      for C:='A' to 'Z' do
        FreeAndNil(Lists[C]);
    end;
  end;



begin
  aPage:=TStringList.Create;
  try
    AddPageHeader(aPage);
    // Create a quick jump table to all available letters.
    Addln('    <H1>Package index</H1">');
    GenerateList(aPackages,'PACKAGE');
    Addln('    <H1><a name="units">Unit index</a></H1>');
    CleanUnitNames(aUnits);
    GenerateList(aUnits,'UNIT');
    AddPageFooter(aPage);
    aPage.SaveToFile(FOutputDir+PathDelim+'index.html');
  finally
    aPage.Free;
  end;
end;


procedure TDailyDocApplication.DoRun;

var
  Pkg,Msg: String;
  UnitNames : TStringList;

begin
  Terminate;
  Msg:=CheckOptions('hi:o:p:f:x:t', ['help','input:','output:','package:','fpdoc:','exclude:','toc']);
  if (Msg<>'') or HasOption('h','help') then
    begin
    Usage(Msg);
    Exit;
    end;
  Msg:=ParseOptions;
  if Msg<>'' then
    begin
    Usage(Msg);
    Exit;
    end;
  UnitNames:=TStringList.Create;
  try
    if FPackageName<>'' then
      CreatePackageDocs(FPackageName)
    else
      For Pkg in GetPackageNames(UnitNames) do
        if Pkg<>'' then
          if FExcludes.IndexOf(Pkg)=-1 then
            CreatePackageDocs(Pkg)
          else
            Writeln('Skipping excluded package: ',Pkg);
    if FToc and (FGenerated.Count>0) then
      begin
      FGenerated.Sorted:=True;
      CreateTocPage(FGenerated,UnitNames);
      end;
  finally
    UnitNames.Free;
  end;
end;

constructor TDailyDocApplication.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  StopOnException:=True;
  FExcludes:=TstringList.Create;
  FGenerated:=TstringList.Create;
  FIndexColCount:=5;
end;

destructor TDailyDocApplication.Destroy;
begin
  FreeAndNil(FExcludes);
  FreeAndNil(FGenerated);
  inherited Destroy;
end;

procedure TDailyDocApplication.Usage(const Msg: String);
begin
  if Msg<>'' then
    Writeln('Error : ',Msg);
  writeln('Usage: ', ExeName, ' [options]');
  Writeln('-h --help             this help message.');
  Writeln('-i --input=FILE       read fpdoc project from FILE (required).');
  Writeln('-o --output=DIR       set output directory to DIR (required). ');
  Writeln('-p --package=NAME     only process documentation for package NAME.');
  Writeln('-f --fpdoc=FILE       use FILE as fpdoc executable.');
  Writeln('-x --exclude=LIST     comma-separated list of package names to ignore.');
  Writeln('                      If of the form @file, read names from file, one per line.');
  Writeln('-t --toc              Generate table of contents page.');
  ExitCode:=Ord((Msg<>''));
end;

var
  Application: TDailyDocApplication;
begin
  Application:=TDailyDocApplication.Create(nil);
  Application.Title:='Generate daily docs';
  Application.Run;
  Application.Free;
end.

