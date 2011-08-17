unit cfgcontribs;

{$mode objfpc}{$H+}

interface

uses ibconnection,  Classes, SysUtils;

procedure ConfigDB(DB : TIBConnection);

implementation

uses inifiles;

procedure ConfigDB(DB : TIBConnection);

Var
  ini : Tmeminifile;
  FN : String;

begin
  FN:=ChangeFileExt(Paramstr(0),'.ini');
  If FileExists(FN) then
    begin
    Ini:=TMemIniFile.Create(FN);
    try
      With DB do
        begin
        DatabaseName:=Ini.ReadString('Database','Path',DatabaseName);
        UserName:=Ini.ReadString('Database','UserName',UserName);
        Password:=Ini.ReadString('Database','Password',Password);
        end;
    finally
      Ini.Free;
    end;
    end;
end;

end.

