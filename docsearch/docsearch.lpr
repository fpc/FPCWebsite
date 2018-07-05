program docsearch;

{$mode objfpc}

uses
  JS, Classes, SysUtils, StrUtils, Web, db, restconnection, ExtJSDataset;

Const
  // Empty or must end on '/' !
  BaseURL : String = '';

Type

  { TRestDataset }

  TRestDataset = Class(TExtJSJSONObjectDataSet)
  private
    FConnection: TRestConnection;
  Protected
    Function DoGetDataProxy: TDataProxy; override;
  Public
    Property Connection: TRestConnection Read FConnection Write FConnection;
  end;

  { TSearchClient }

  TSearchClient = Class(Tcomponent)
    FBtn:TJSHTMLElement;
    FEdit:TJSHTMLInputElement;
    FConn : TRESTConnection;
    FResult : TRestDataset;
    FContent: TJSHTMLElement;
    FTable : TJSHTMLElement;
    FTBody : TJSHTMLElement;
    function DoClick(aEvent: TJSMouseEvent): boolean;
    Constructor Create(AOwner : TComponent); override;
  private
    procedure AddRecords;
    function CreateRow1(AID, ARank: Integer; const aPage, aContent: String): TJSElement;
    function CreateRow2(AID, ARank: Integer; const aPage, aContent: String): TJSElement;
    function CreateTable: TJSElement;
    procedure DogetURL(Sender: TComponent; aRequest: TDataRequest; var aURL: String);
    procedure DoOpen(DataSet: TDataSet);
    function GetSection(S: String): String;
  end;

{ TRestDataset }

function TRestDataset.DoGetDataProxy: TDataProxy;
begin
  Result:=Connection.DataProxy;
end;

{ TSearchClient }

function TSearchClient.CreateTable : TJSElement;

Var
  TH,R,H : TJSElement;

begin
  Result:=document.createElement('TABLE');
  Result.className:='table table-striped table-bordered table-hover table-condensed';
  TH:=document.createElement('THEAD');
  Result.Append(TH);
  // Row 1
  R:=document.createElement('TR');
  TH.Append(R);
  H:=document.createElement('TH');
  R.Append(H);
  H.AppendChild(document.createTextNode('Rank'));
  H:=document.createElement('TH');
  R.Append(H);
  H.AppendChild(document.createTextNode('section'));
  H:=document.createElement('TH');
  R.Append(H);
  H.AppendChild(document.createTextNode('Url'));
  // Row 2
  R:=document.createElement('TR');
  TH.Append(R);
  H:=document.createElement('TH');
  H.attrs['colspan']:='3';
  R.Append(H);
  H.AppendChild(document.createTextNode('Context'));
end;

procedure TSearchClient.DogetURL(Sender: TComponent; aRequest: TDataRequest; var aURL: String);
begin
   aURL:=FConn.BaseURL+'?m=1&q='+FEdit.value
//   'http://localhost:3000/countries/?limit=20&offset='+IntToStr((aRequest.RequestID-1)*20);
end;

function TSearchClient.CreateRow2(AID,ARank : Integer; Const aPage,aContent : String) : TJSElement;

Var
  C : TJSElement;
  S : String;
begin
  Result:=document.createElement('TR');
  C:=document.createElement('TD');
  C.appendChild(Document.createTextNode(aContent));
  C.attrs['colspan']:='3';
  Result.AppendChild(C);
end;

function TSearchClient.GetSection(S : String) : String;

begin
  if pos('fpdoc/',S)>0 then
    Result:='FPDoc reference'
  else if pos('rtl/',S)>0 then
    Result:='RTL units reference'
  else if pos('fcl/',S)>0 then
    Result:='FCL units reference'
  else if pos('user/',S)>0 then
    Result:='User''s manual'
  else if pos('ref/',S)>0 then
    Result:='Language reference'
  else if pos('prog/',S)>0 then
    Result:='Programmer''s reference'
  else
    Result:='';
end;


function TSearchClient.CreateRow1(AID,ARank : Integer; Const aPage,aContent : String) : TJSElement;

Var
  A,C : TJSElement;
  S : String;
  I : integer;

begin
  Result:=document.createElement('TR');
  S:='id_'+IntToStr(AID);
  Result.id:=S;
  C:=document.createElement('TD');
  C.appendChild(Document.createTextNode(IntToStr(ARank)));
  Result.AppendChild(C);
  S:=GetSection(aPage);
  C:=document.createElement('TD');
  C.appendChild(Document.createTextNode(S));
  Result.AppendChild(C);
  C:=document.createElement('TD');
  A:=document.createElement('a');
  A.attrs['href']:=aPage;
  S:=aPage;
  I:=RPos('/',S);
  S:=Copy(S,I+1,Length(S)-I);
  A.appendChild(Document.createTextNode(S));
  C.AppendChild(A);
  Result.AppendChild(C);
end;


function TSearchClient.DoClick(aEvent: TJSMouseEvent): boolean;
begin
  if Assigned(FContent) then
    begin
    FContent.innerHTML:='';
    FTable:=Nil;
    FTBody:=Nil;
    end;
  FResult.Close;
  FResult.Load([],Nil);
end;

constructor TSearchClient.Create(aOwner :TComponent);

begin
  FConn:=TRESTConnection.Create(Self);
  FConn.BaseUrl:='http://localhost:8080/search/';
  FConn.OnGetURL:=@DogetURL;
  FResult:=TRestDataset.Create(Self);
  FResult.Connection:=FConn;
  Fresult.AfterOpen:=@DoOpen;
  FBtn:=TJSHTMLElement(document.getElementById('quick-search'));
  FEdit:=TJSHTMLInputElement(document.getElementById('search-term'));
  FContent:=TJSHTMLElement(document.getElementById('search-result'));
  FBtn.onclick:=@DoClick;
end;

procedure TSearchClient.AddRecords;

Var
  E : TJSElement;
  FId,FRank,FURL,FContext : TField;

begin
  With FResult do
    begin
    FId:=FieldByname('id');
    FRank:=FieldByName('Rank');
    FURL:=FieldByName('URL');
    FContext:=FieldByName('Context');
    While not EOF do
      begin
      E:=CreateRow1(FID.AsInteger, FRank.Asinteger,FURL.AsString,FContext.AsString);
      FTBody.Append(E);
      E:=CreateRow2(FID.AsInteger, FRank.Asinteger,FURL.AsString,FContext.AsString);
      if Assigned(E) then
        FTBody.Append(E);
      Next;
      end;
   end;
end;

procedure TSearchClient.DoOpen(DataSet: TDataSet);
begin
  if not Assigned(FTable) then
    begin
    FTable:=TJSHTMLElement(CreateTable);
    FContent.appendChild(FTable);
    FTBody:=TJSHTMLElement(document.createElement('TBODY'));
    FTable.Append(FTBody);
    end;
  FResult.First;
  AddRecords;
end;

begin
  TSearchClient.Create(Nil);
end.
