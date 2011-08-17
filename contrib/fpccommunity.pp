unit fpccommunity;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

Type
   TCommunityUserResult = (curError,curOK,curNOK);

Function VerifyCommunityUser(AUser,APassword : String; Out AUserName : String) : TCommunityUserResult;

implementation

uses fphttpclient;

function strtr(Source,Orig,Dest : String) : String;

Var
  I,P,Ld : Integer;

begin
  Result:=Source;
  ld:=length(Dest);
  For I:=1 to Length(Result) do
    begin
    P:=Pos(Result[i],Orig);
    If (P<>0) and (P<=ld) then
      Result[i]:=Dest[p];
    end;
end;

Function ExtractCommunityUserName(Response : String) : String;

Var
  P : integer;

begin
  P:=Pos(':',Response);
  if Copy(Response,1,p-1)='ok' then
    begin
    Delete(Response,1,P);
    P:=Pos(':',Response);
    If P=0 then
      P:=Length(Response)+1;
    Result:=Copy(Response,1,p-1);
    end;
end;

Function VerifyCommunityUser(AUser,APassword : String; Out AUserName : String) : TCommunityUserResult;

Const
  URL : Pchar = 'http://community.freepascal.org:10000/freepascal/auth_mantis';
  openacskey : string = 'J271ZGod43wD8SzkQrHXpcAvgMeRyY6PjNbnCumU50W9qOB@_FVTialsKxftE.hLI';
  key : string = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890.@_';

Var
  PostData : String;
  ht : TFPHTTPClient;

begin
  Result:=curError;
  try
    AUserName:='';
    PostData:='u='+AUser+'&p='+strTr(APassword,Key,OpenACSKey);
    HT:=TFPHTTPClient.Create(Nil);
    try
      AUserName:=ExtractCommunityUserName(HT.Get(URL+'?'+PostData));
      if (AUserName<>'') then
        Result:=curOK
      else
        Result:=curNOK;
    Finally
      HT.Free;
    end;
  except
    // Silently catch.
  end;
end;

end.

