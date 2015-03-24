unit rpcontribs;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,  HTTPDefs, iniwebsession, fpHTTP, fpWeb, fpjsonrpc,
  db,  webjsonrpc, fpextdirect, fpjson, sqldb, pqconnection;

type

  { TContribsRPC }

  TContribsRPC = class(TExtDirectModule)
    CheckAuthorized: TJSONRPCHandler;
    AddContrib: TJSONRPCHandler;
    DeleteContrib: TJSONRPCHandler;
    DBContribs: TPQConnection;
    QInsertContrib: TSQLQuery;
    QGetContribID: TSQLQuery;
    QUPdateContrib: TSQLQuery;
    QGetCredentials: TSQLQuery;
    QDeleteContrib: TSQLQuery;
    TRContribs: TSQLTransaction;
    UpdateContrib: TJSONRPCHandler;
    procedure AddContribExecute(Sender: TObject; const Params: TJSONData;
      out Res: TJSONData);
    procedure DeleteContribExecute(Sender: TObject; const Params: TJSONData;
      out Res: TJSONData);
    procedure UpdateContribExecute(Sender: TObject; const Params: TJSONData;
      out Res: TJSONData);
  private
    // Connect to contribs database
    procedure ConnectToDatabase;
    // Check whether AUser/APassword is the valid owner of the bug.
    procedure ValidateContribUser(AID: Integer; const AUser, APassword: String);
    // Get new contribution ID
    function GetContribID: Integer;
    // Fill params for contrib with data from Data
    procedure FillDataParams(Q: TSQLQuery; Data: TJSONObject);
    // Insert new contribution
    procedure InsertObject(AID: Integer; Data: TJSONObject);
    // Update existing contribution
    procedure UpdateObject(ID: Integer; Data: TJSONObject);
    // Delete existing contribution
    procedure DeleteObject(ID: Integer);
    { private declarations }
  public
    { public declarations }
  end; 

var
  ContribsRPC: TContribsRPC;

implementation

uses cfgcontribs,fpccommunity;

{$R *.lfm}


{ TContribsRPC }


function TContribsRPC.GetContribID : Integer;

begin
  With QGetContribID do
    begin
    Open;
    try
      if (EOF and BOF) then
        Raise Exception.Create('Could not create contribution ID');
      Result:=Fields[0].AsInteger;
    finally
      Close;
    end;
    end;
end;


procedure TContribsRPC.ConnectToDatabase;
begin
  ConfigDb(DBContribs);
  DBContribs.Connected:=True;
end;

procedure TContribsRPC.FillDataParams(Q : TSQLQuery; Data : TJSONObject);

begin
  With Q do
    begin
    ParamByName('C_AUTHOR').AsString:=Data.Strings['c_author'];
    ParamByName('C_CATEGORY').AsString:=Data.Strings['c_category'];
    ParamByName('C_DATE').AsString:=FormatDateTime('yyyy-mm-dd',Date);
    ParamByName('C_DESCR').AsString:=Data.Strings['c_descr'];
    ParamByName('C_EMAIL').AsString:=Data.Strings['c_email'];
    ParamByName('C_FTPFILE').AsString:=Data.Strings['c_ftpfile'];
    ParamByName('C_HOMEPAGE').AsString:=Data.Strings['c_homepage'];
    ParamByName('C_NAME').AsString:=Data.Strings['c_name'];
    ParamByName('C_OS').AsString:=Data.Strings['c_os'];
    ParamByName('C_VERSION').AsString:=Data.Strings['c_version'];
    end;
end;

procedure TContribsRPC.InsertObject(AID : Integer; Data : TJSONObject);

Var
  AuthMet : Integer;
  AUser,APassword,aCUN : String;

begin
  AUser:=Data.Strings['c_user'];
  APassword:=Data.Strings['c_password'];
  Case VerifyCommunityUser(AUser,APassword,aCUN) of
    curOK : AuthMet:=0;
    curNOK,
    curError : AuthMet:=1;
  end;
  FillDataParams(QInsertContrib,Data);
  With QInsertContrib do
    begin
    ParamByName('C_AUTH_METHOD').AsInteger:=AuthMet;
    ParamByName('C_ID').AsInteger:=AID;
    ParamByName('C_PWD').AsString:=APassword;
    ParamByName('C_USER').AsString:=AUser;
    ExecSQL;
    TRContribs.Commit;
    end;
end;

procedure TContribsRPC.AddContribExecute(Sender: TObject;
  const Params: TJSONData; out Res: TJSONData);

Var
  A : TJSONArray;
  ID : Integer;
  Data : TJSONObject;

begin
  A:=Params as TJSONArray;
  Data:=A.Objects[0];
  ConnectToDatabase;
  ID:=GetContribID;
  InsertObject(ID,Data);
  res:=TJSONIntegerNumber.Create(Id);
end;

procedure TContribsRPC.DeleteContribExecute(Sender: TObject;
  const Params: TJSONData; out Res: TJSONData);

Var
  A : TJSONArray;
  ID : Integer;
  UN,PWD : String;

begin
  A:=Params as TJSONArray;
  ID:=A.Integers[0];
  UN:=A.Strings[1];
  PWD:=A.Strings[2];
  ValidateContribUser(ID,UN,PWD);
  DeleteObject(ID);
  res:=TJSONBoolean.Create(True);
end;

procedure TContribsRPC.ValidateContribUser(AID : Integer; Const AUser,APassword : String);

Var
  aCUN,UN,UP : String;

begin
  // Get needed data
  With QGetCredentials do
    begin
    ParamByName('C_ID').AsInteger:=AID;
    Open;
    try
      if (EOF and BOF) then
         Raise Exception.CreateFmt('Invalid bug ID : %d',[AID]);
      UN:=FieldByName('C_USER').AsString;
      UP:=FieldByName('C_PWD').AsString;
    finally
      Close;
    end;
    end;
  // verify
  If (CompareText(UN,AUser)<>0) or (UP<>APassword) then
    Raise Exception.CreateFmt('User/Password mismatch for bug %d',[AID]);
end;

procedure TContribsRPC.UpdateObject(ID : Integer; Data : TJSONObject);

begin
  FillDataParams(QUpdateContrib,Data);
  With QUpdateContrib do
    begin
    ParamByName('C_ID').AsInteger:=ID;
    ExecSQL;
    TRContribs.Commit;
    end;
end;

procedure TContribsRPC.DeleteObject(ID: Integer);
begin
  With QDeleteContrib do
    begin
    ParamByName('C_ID').AsInteger:=ID;
    ExecSQL;
    TRContribs.Commit;
    end;
end;

procedure TContribsRPC.UpdateContribExecute(Sender: TObject;
  const Params: TJSONData; out Res: TJSONData);
Var
  A : TJSONArray;
  ID : Integer;
  Data : TJSONObject;

begin
  A:=Params as TJSONArray;
  Data:=A.Objects[0];
  ConnectToDatabase;
  ID:=StrToIntDef(Data.Strings['c_id'],-1);
  if (ID=-1) then
    Raise Exception.Create('Invalid bug ID : '+Data.Strings['c_id']);
  ValidateContribUser(ID,Data.Strings['c_user'],Data.Strings['c_password']);
  UpdateObject(ID,Data);
  res:=TJSONBoolean.Create(True);
end;

initialization
  RegisterHTTPModule('contribs', TContribsRPC);
end.

