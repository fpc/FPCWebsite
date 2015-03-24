unit wmdata;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, HTTPDefs, websession, fpHTTP, fpWeb, fpwebdata,
  extjsjson, sqldbwebdata, sqldb, pqconnection;

type

  { TProviderModule }

  TProviderModule = class(TFPWebProviderDataModule)
    JDFFPC: TExtJSJSONDataFormatter;
    IAFPC: TExtJSJSonWebdataInputAdaptor;
    DBFPC: TPQConnection;
    QGetID: TSQLQuery;
    TRFPC: TSQLTransaction;
    Contrib: TSQLDBWebDataProvider;
    procedure DataModuleCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  ProviderModule: TProviderModule;

implementation

uses cfgcontribs;

{$R *.lfm}

{ TProviderModule }

procedure TProviderModule.DataModuleCreate(Sender: TObject);

begin
  // Not yet published.
  CreateSession:=True;
  ConfigDB(DBFPC);
  DBFPC.Connected:=True;
end;

initialization
  RegisterHTTPModule('Provider', TProviderModule);
end.

