unit wmdelete;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, HTTPDefs, iniwebsession, fpHTTP, fpWeb; 

type
  TFPWebModule1 = class(TFPWebModule)
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  FPWebModule1: TFPWebModule1; 

implementation

{$R *.lfm}

initialization
  RegisterHTTPModule('TFPWebModule1', TFPWebModule1); 
end.

