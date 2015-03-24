unit cfgcontribs;

{$mode objfpc}{$H+}

interface

uses pqconnection,  Classes, SysUtils;

procedure ConfigDB(DB : TPQConnection);

implementation

uses inifiles;

procedure ConfigDB(DB : TPQConnection);

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
        HostName:=Ini.ReadString('Database','Hostname','');
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

