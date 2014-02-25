program contribs;

{$mode objfpc}{$H+}

uses
  fpCGI, wmdata, rpcontribs, cfgcontribs, iniwebsession, fpccommunity;

{$R *.res}

begin
  Application.Title:='FPC Contributed units';
  Application.Initialize;
  Application.Run;
end.

