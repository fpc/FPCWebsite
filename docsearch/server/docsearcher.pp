unit docsearcher;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DateUtils, sqldb, SQLDBindexDB, pgindexdb, fpIndexer, inifiles, httpdefs, fpjson;

Type
  { TSearcher }

  TSearcher = Class(TComponent)
  private
    FAllowCors: Boolean;
    FDB : TCustomIndexDB;
    FSearch : TFPSearch;
    FDefaultMinRank : Integer;
    FMinRank : Integer;
    FFormattedJSON : Boolean;
    FDefaultMetadata,
    FIncludeMetaData : Boolean;
    FDefaultAvailable : TAvailableMatch;
    FMetadata : TJSONObject;
    FWordsMetadata : TJSONObject;
    procedure ConfigSearch(aRequest: TRequest; aResponse: TResponse);
    procedure ConfigWordList(aRequest: TRequest; out aContaining : UTF8string; Out Partial : TAvailableMatch; Out aSimple : Boolean);
    function SearchDataToJSON(aID: Integer; const aRes: TSearchWordData): TJSONObject;
    procedure SendJSON(J: TJSONObject; aResponse: TResponse);
    procedure SetupMetadata;
  Protected
    function InitSearch(aResponse: TResponse): Boolean;
    function SetupDB(aIni: TCustomIniFile): TCustomIndexDB;
    Property DB : TCustomIndexDB Read FDB;
    Property Search : TFPSearch Read FSearch;
    Property MinRank : Integer Read FMinRank;
    Property FormattedJSON : Boolean Read FFormattedJSON;
    Property AllowCors : Boolean Read FAllowCors;
  Public
    Function CheckParams(aRequest : TRequest; aResponse : TResponse) : Boolean;
    Function CheckSearchParams(aRequest : TRequest; aResponse : TResponse) : Boolean;
    Procedure DocSearch(aRequest : TRequest; aResponse : TResponse);
    Procedure WordList(aRequest : TRequest; aResponse : TResponse);
  end;


implementation

function TSearcher.SetupDB(aini :TCustomIniFile) : TCustomIndexDB;

Const
  SDatabase = 'Database';
  KeyHostName = 'HostName';
  KeyDatabaseName = 'DatabaseName';
  KeyUser = 'User';
  KeyPassword = 'Password';

Var
  QDB : TSQLDBIndexDB;

begin
  Result:=nil;
  QDB := TPGIndexDB.Create(nil);
  QDB.HostName:= aIni.ReadString(SDatabase,KeyHostName,QDB.HostName);
  QDB.DatabasePath := aIni.ReadString(SDatabase,KeyDatabaseName,QDB.DatabasePath);
  QDB.UserName := aIni.ReadString(SDatabase,KeyUser,QDB.UserName);
  QDB.Password := aIni.ReadString(SDatabase,KeyPassword,QDB.Password);
  Result:=QDB;
end;

function TSearcher.CheckParams(aRequest: TRequest; aResponse: TResponse): Boolean;

Var
  S : String;
  B : Boolean;

begin
  S:=aRequest.QueryFields.Values['q'];
  Result:=S<>'';
  if not Result then
    begin
    aResponse.Code:=400;
    aResponse.CodeText:='Missing q param';
    aResponse.SendResponse;
    end;
  S:=aRequest.QueryFields.Values['r'];
  Result:=(S='') or (StrToIntDef(S,-1)<>-1);
  if not Result then
    begin
    aResponse.Code:=400;
    aResponse.CodeText:='Wrong value for r';
    aResponse.SendResponse;
    end;
  S:=aRequest.QueryFields.Values['c'];
  Result:=(S='') or TryStrToBool(S,B);
  if not Result then
    begin
    aResponse.Code:=400;
    aResponse.CodeText:='Wrong value for c';
    aResponse.SendResponse;
    end;
  S:=aRequest.QueryFields.Values['m'];
  Result:=(S='') or TryStrToBool(S,B);
  if not Result then
    begin
    aResponse.Code:=400;
    aResponse.CodeText:='Wrong value for m';
    aResponse.SendResponse;
    end;
end;

function TSearcher.CheckSearchParams(aRequest: TRequest; aResponse: TResponse): Boolean;

Var
  m,S : String;
  B : Boolean;

begin
  S:=aRequest.QueryFields.Values['q'];
  M:=aRequest.QueryFields.Values['t'];
  Result:=(M='');
  if not Result then
    case lowercase(M) of
      'all' :
        if S<>'' then
          begin
          aResponse.Code:=400;
          aResponse.CodeText:='Q must be empty';
          aResponse.SendResponse;
          end;
      'contains',
      'exact',
      'startswith' :
        if S='' then
          begin
          aResponse.Code:=400;
          aResponse.CodeText:='Q may not be empty';
          aResponse.SendResponse;
          end;
    else
      aResponse.Code:=400;
      aResponse.CodeText:='Wrong value for t';
      aResponse.SendResponse;
    end;
  S:=aRequest.QueryFields.Values['s'];
  Result:=(S='') or TryStrToBool(S,B);
  if not Result then
    begin
    aResponse.Code:=400;
    aResponse.CodeText:='Wrong value for s';
    aResponse.SendResponse;
    end;
  if not B then
    begin
    S:=aRequest.QueryFields.Values['m'];
    Result:=(S='') or TryStrToBool(S,B);
    if not Result then
      begin
      aResponse.Code:=400;
      aResponse.CodeText:='Wrong value for m';
      aResponse.SendResponse;
      end;
    end;
end;

Procedure TSearcher.SetupMetadata;

begin
  FMetadata:=TJSONObject.Create([
    'root', 'data',
    'idField','id',
    'fields',TJSONArray.Create([
      TJSONObject.Create(['name','id','type','int']),
      TJSONObject.Create(['name','rank','type','int']),
      TJSONObject.Create(['name','url','type','string','maxlen',100]),
      TJSONObject.Create(['name','context','type','string','maxlen',MaxContextLen]),
      TJSONObject.Create(['name','date','type','date'])
     ])
  ]);
  FWordsMetadata:=TJSONObject.Create([
    'root', 'data',
    'idField','id',
    'fields',TJSONArray.Create([
      TJSONObject.Create(['name','id','type','int']),
      TJSONObject.Create(['name','word','type','string','maxlen',100])
     ])
  ]);
end;

Function TSearcher.InitSearch(aResponse : TResponse): Boolean;

Const
  BaseName ='docsearch.ini';

  Function TestCfg(aDir : string) : String;

  begin
    Result:=aDir+BaseName;
    if not FileExists(Result) then
      Result:='';
  end;

Var
  CFN : String;
  aIni: TMemIniFile;

begin
  Result:=False;
  if FDB<>Nil then
    exit(True);
  try
    CFN:=TestCfg(GetAppConfigDir(true));
    if (CFN='') then
      CFN:=TestCfg(GetAppConfigDir(False));
    if (CFN='') then
      CFN:=TestCfg('config/');
    if (CFN='') then
      CFN:=TestCfg(ExtractFilePath(ParamStr(0)));
    if (CFN='') then
      CFN:=TestCfg('');
    if (CFN='') then
      Raise Exception.Create('No config file found');
    aIni:=TMemIniFile.Create(CFN);
    try
      FDB:=SetupDB(aIni);
      FFormattedJSON:=aIni.ReadBool('search','formatjson',False);
      FDefaultMinRank:=aIni.ReadInteger('search','minrank',1);
      FDefaultMetadata:=aIni.ReadBool('search','metadata',true);
      FAllowCors:=aIni.ReadBool('search','allowcors',true);
    finally
      aIni.Free;
    end;
    SetupMetadata;
    FSearch:=TFPSearch.Create(Self);
    FSearch.Database:=FDB;
    Result:=True;
  except
    On E : Exception do
      begin
      aResponse.Code:=500;
      aResponse.CodeText:='Could not set up search: '+E.Message;
      aResponse.SendResponse;
      end;
  end;
end;

Procedure TSearcher.ConfigSearch(aRequest : TRequest; aResponse : TResponse);

Var
  S : string;
  O : TSearchOptions;
  B : Boolean;

begin
  FMinRank:=StrToIntDef(aRequest.QueryFields.Values['r'],0);
  if FMinRank=0 then
    FMinRank:=FDefaultMinRank;
  S:=aRequest.QueryFields.Values['m'];
  if (S='') or Not TryStrToBool(S,FIncludeMetaData)  then
    FIncludeMetaData:=FDefaultMetaData;
  FSearch.SetSearchWord(aRequest.QueryFields.Values['q']);
  O:=[];
  S:=aRequest.QueryFields.Values['c'];
  if (S<>'') and TryStrToBool(S,B) and B then
    Include(O,soContains);
  FSearch.Options:=O;
end;

procedure TSearcher.ConfigWordList(aRequest: TRequest; out aContaining: UTF8string; out Partial: TAvailableMatch; out aSimple: Boolean);

Var
  m,S : String;

begin
  aContaining:=aRequest.QueryFields.Values['q'];
  M:=aRequest.QueryFields.Values['t'];
  case lowercase(M) of
    'all' : Partial:=amAll;
    'contains' : Partial:=amContains;
    'exact' : Partial:=amExact;
    'startswith' : Partial:=amStartsWith;
  else
    Partial:=FDefaultAvailable;
    if (Partial<>amAll) and (aContaining='') then
      Partial:=amAll;
  end;
  S:=aRequest.QueryFields.Values['s'];
  if (S='') then
    aSimple:=False
  else
    aSimple:=StrToBool(S);
  if ASimple then
    FIncludeMetadata:=False
  else
    begin
    FIncludeMetaData:=FDefaultMetaData;
    S:=aRequest.QueryFields.Values['m'];
    if (S<>'') then
      TryStrToBool(S,FIncludeMetaData);
    end
end;

Function TSearcher.SearchDataToJSON(aID : Integer;const aRes : TSearchWordData) : TJSONObject;

begin
  Result:=TJSONObject.Create([
    'id',aID,
    'rank',aRes.Rank,
    'url',aRes.URL,
    'context',ares.Context,
    'date',FormatDateTime('yyyy"-"mm"-"dd"T"hh":"nn":"ss',aRes.FileDate)
  ]);
end;

Procedure TSearcher.DocSearch(aRequest : TRequest; aResponse : TResponse);

Var
  I : Integer;
  J : TJSONObject;
  A : TJSONArray;

begin
  aResponse.ContentType:='application/json';
  if AllowCORS then
    AResponse.SetCustomHeader('Access-Control-Allow-Origin','*');
  if not CheckParams(aRequest,aResponse) then
    exit;
  if not InitSearch(aResponse) then
    exit;
  ConfigSearch(aRequest,aResponse);
  FSearch.Execute;
  A:=nil;
  J:=TJSONObject.Create;
  try
    if FIncludeMetadata then
      J.Add('metaData',FMetadata.Clone);
    A:=TJSONArray.Create;
    For I:=0 to Search.RankedCount-1 do
      begin
      if Search.RankedResults[I].Rank>=MinRank then
        A.Add(SearchDataToJSON(I+1,Search.RankedResults[I]));
      end;
    J.Add('data',A);
    SendJSON(J,aResponse);
  finally
    J.Free;
  end;
end;

procedure TSearcher.SendJSON(J : TJSONObject; aResponse: TResponse);

begin
  if FormattedJSON then
    aResponse.Content:=J.FormatJSON()
  else
    aResponse.Content:=J.AsJSON;
  aResponse.ContentLength:=Length(aResponse.Content);
  aResponse.SendContent;
end;

procedure TSearcher.WordList(aRequest: TRequest; aResponse: TResponse);
Var
  I : Integer;
  J : TJSONObject;
  A : TJSONArray;
  w,aContaining : UTF8String;
  aPartial : TAvailableMatch;
  aSimple : Boolean;
  aList : TUTF8StringArray;


begin
  aResponse.ContentType:='application/json';
  if AllowCORS then
    AResponse.SetCustomHeader('Access-Control-Allow-Origin','*');
  if not CheckSearchParams(aRequest,aResponse) then
    exit;
  if not InitSearch(aResponse) then
    exit;
  ConfigWordList(aRequest,aContaining,aPartial,aSimple);
  FSearch.GetAvailableWords(aList,aContaining,aPartial);
  J:=TJSONObject.Create;
  try
    if FIncludeMetadata then
      J.Add('metaData',FWordsMetadata.Clone);
    A:=TJSONArray.Create;
    if aSimple then
      For W in aList do
        A.Add(W)
      else
        begin
        For I:=0 to Length(aList)-1 do
          A.Add(TJSONObject.Create(['id',I+1,'word',aList[i]]));
        end;
    J.Add('data',A);
    SendJSON(J,aResponse);
  finally
    J.Free;
  end;
end;


end.

