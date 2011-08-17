unit rpcontribs;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, HTTPDefs, iniwebsession, fpHTTP, fpWeb, fpjsonrpc,
  db,  webjsonrpc, fpextdirect, fpjson, IBConnection, sqldb;

type

  { TContribsRPC }

  TContribsRPC = class(TExtDirectModule)
    CheckAuthorized: TJSONRPCHandler;
    AddContrib: TJSONRPCHandler;
    DeleteContrib: TJSONRPCHandler;
    DBContribs: TIBConnection;
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
    ParamByName('C_AUTHOR').AsString:=Data.Strings['C_AUTHOR'];
    ParamByName('C_CATEGORY').AsString:=Data.Strings['C_CATEGORY'];
    ParamByName('C_DATE').AsDateTime:=Date;
    ParamByName('C_DESCR').AsString:=Data.Strings['C_DESCR'];
    ParamByName('C_EMAIL').AsString:=Data.Strings['C_EMAIL'];
    ParamByName('C_FTPFILE').AsString:=Data.Strings['C_FTPFILE'];
    ParamByName('C_HOMEPAGE').AsString:=Data.Strings['C_HOMEPAGE'];
    ParamByName('C_NAME').AsString:=Data.Strings['C_NAME'];
    ParamByName('C_OS').AsString:=Data.Strings['C_OS'];
    ParamByName('C_VERSION').AsString:=Data.Strings['C_VERSION'];
    end;
end;

procedure TContribsRPC.InsertObject(AID : Integer; Data : TJSONObject);

Var
  AuthMet : Integer;
  AUser,APassword,aCUN : String;

begin
  AUser:=Data.Strings['C_USER'];
  APassword:=Data.Strings['C_PASSWORD'];
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
  AM : Integer;
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
      AM:=FieldByName('C_AUTH_METHOD').AsInteger;
      UN:=FieldByName('C_USER').AsString;
      UP:=FieldByName('C_PWD').AsString;
    finally
      Close;
    end;
    end;
  // verify
  If (AM=1) then
    begin
    If (CompareText(UN,AUser)<>0) or (UP<>APassword) then
      Raise Exception.CreateFmt('User/Password mismatch for bug %d',[AID]);
    end
  else
    Case VerifyCommunityUser(AUser,APassword,aCUN) of
      curNOK   : Raise Exception.CreateFmt('User/Password mismatch for bug %d',[AID]);
      curError : Raise Exception.Create('Could not verify Free Pascal Community credentials');
      curOK    : if (CompareText(UN,AUser)<>0) then
                   Raise Exception.CreateFmt('Not owner of this bug',[AID]);
    end;
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
  ID:=StrToIntDef(Data.Strings['C_ID'],-1);
  if (ID=-1) then
    Raise Exception.Create('Invalid bug ID : '+Data.Strings['C_ID']);
  ValidateContribUser(ID,Data.Strings['C_USER'],Data.Strings['C_PASSWORD']);
  UpdateObject(ID,Data);
  res:=TJSONBoolean.Create(True);
end;

initialization
  RegisterHTTPModule('contribs', TContribsRPC);
end.

