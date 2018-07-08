program docsearch;

{$define usecgi}

uses
{$ifdef usecgi}
  fpcgi,
{$else}
  fphttpapp,
{$endif}
  httpdefs, httproute, docsearcher;

Var
  aSearch : TSearcher;

begin
  aSearch:=TSearcher.Create(Application);
  HTTPRouter.RegisterRoute('/search',@aSearch.DocSearch,true);
  HTTPRouter.RegisterRoute('/list',@aSearch.WordList,False);
  {$ifndef usecgi}
  Application.Port:=3010;
  {$endif}
  Application.Initialize;
  Application.Run;
end.

