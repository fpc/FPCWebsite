program docsearch;

{$mode objfpc}

uses
  JS, Classes, SysUtils, StrUtils, Web, db, restconnection, ExtJSDataset;

Const
  // Empty or must end on '/' !
  DefaultBaseLinkURL : String = '../docs-html/';

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
  private
    FBtn:TJSHTMLElement;
    FEdit:TJSHTMLInputElement;
    FConn : TRESTConnection;
    FResult : TRestDataset;
    FWords : TRestDataset;
    FFeedback,
    FFeedBackLoading,
    FContent,
    FTable,
    FTBody : TJSHTMLElement;
    FSearchTerm,
    FBaseLinkURL : String;
    procedure AddRecords;
    function CreateRow1(AID, ARank: Integer; const aPage, aContent: String): TJSElement;
    function CreateRow2(AID, ARank: Integer; const aPage, aContent: String): TJSElement;
    function CreateTable: TJSElement;
    procedure DogetURL(Sender: TComponent; aRequest: TDataRequest; var aURL: String);
    function DoInput(Event: TEventListenerEvent): boolean;
    procedure DoOpen(DataSet: TDataSet);
    function DoSelectWord(aEvent: TJSMouseEvent): boolean;
    procedure DoWordsOpen(DataSet: TDataSet);
    function GetSection(S: String): String;
    function DoClick(aEvent: TJSMouseEvent): boolean;
    procedure ShowOrHideFeedBackLoading(doHide: boolean);
  Public
    Constructor Create(AOwner : TComponent); override;
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
  if aRequest.Dataset=FResult then
   aURL:=FConn.BaseURL+'search?m=1&q='+FEdit.value
 else
   aURL:=FConn.BaseURL+'list?t=contains&m=1&q='+FSearchTerm;
//   'http://localhost:3000/countries/?limit=20&offset='+IntToStr((aRequest.RequestID-1)*20);
end;

function TSearchClient.DoInput(Event: TEventListenerEvent): boolean;
begin
  if Length(FEdit.Value)>1 then
    begin
    FSearchTerm:=FEdit.Value;
    FWords.Close;
    FWords.Load([],Nil);
    end;
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
  A.attrs['href']:=FBaseLinkURL+aPage;
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
  FBaseLinkURL:=DefaultBaseLinkURL;
  FConn:=TRESTConnection.Create(Self);
  FConn.BaseUrl:='./docsearch.cgi/';
//  FConn.BaseURL:='http://localhost:8080/';
  FConn.OnGetURL:=@DogetURL;
  FResult:=TRestDataset.Create(Self);
  FResult.Connection:=FConn;
  Fresult.AfterOpen:=@DoOpen;
  FWords:=TRestDataset.Create(Self);
  FWords.Connection:=FConn;
  FWords.AfterOpen:=@DoWordsOpen;
  FBtn:=TJSHTMLElement(document.getElementById('quick-search'));
  FEdit:=TJSHTMLInputElement(document.getElementById('search-term'));
  FEdit.oninput:=@DoInput;
  FContent:=TJSHTMLElement(document.getElementById('search-result'));
  FFeedBack:=TJSHTMLElement(document.getElementById('search-term-feedback'));
//  FFeedBackLoading:=TJSHTMLElement(document.getElementById('search-term-feedback-loading'));
//  ShowOrHideFeedBackLoading(True);
  FBtn.onclick:=@DoClick;
end;

procedure TSearchClient.ShowOrHideFeedBackLoading(doHide : boolean);

begin
  if DoHide then
    FFeedBackLoading.attrs['style']:='display: none;'
  else
    FFeedBackLoading.attrs['style']:='';
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

function TSearchClient.DoSelectWord(aEvent: TJSMouseEvent): boolean;

begin
  FEdit.value:=aEvent.target.attrs['value'];
  FFeedBack.Attrs['style']:='display: none;';
end;

procedure TSearchClient.DoWordsOpen(DataSet: TDataSet);

Var
  Button : TJSHTMLElement;

begin
  FFeedback.innerHTML:='';
  while not Dataset.EOF do
    begin
    Button:=TJSHTMLElement(document.CreateElement('button'));
    Button.ClassName:='dropdown-item';
    Button.attrs['role']:='option';
    Button.attrs['value']:=Dataset.FieldByname('word').AsString;
    Button.InnerText:=Dataset.FieldByname('word').AsString;
    Button.onclick:=@DoSelectWord;
    FFeedback.AppendChild(Button);
    Dataset.Next;
    end;
  FFeedBack.Attrs['style']:='display: block;';

end;

begin
  TSearchClient.Create(Nil);
end.
