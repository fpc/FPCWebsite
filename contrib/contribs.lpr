program contribs;

{$mode objfpc}{$H+}

uses
  fpCGI, wmdelete, wmdata, rpcontribs, cfgcontribs, iniwebsession, fpccommunity;

{$R *.res}

begin
  Application.Title:='FPC Contributed units';
  Application.Initialize;
  Application.Run;
end.

