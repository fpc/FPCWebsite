{$mode objfpc}
{$h+}

uses SysUtils,Classes;

Const
  Langcount = 11;
  
Type
  TLangarray = Array[1..LangCount] of string;  
  
Const
  LangNames : TLangarray = ('bg','en','fi','fr','id','it','nl','po','sl','ru','zh-CN');
  LangContent : TLangarray = ('bg','en','fi','fr','id','it','nl','pl','sl','ru','zh-CN');
  LangEncoding : TLangarray = ('iso-8859-5','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-1','iso-8859-2','iso-8859-2','iso-8859-5','utf-16');
  
Var
  ifn,ofn : string;  
  L : TStringList;
  i : Integer;
  
begin
  ifn:=Paramstr(1);
  ofn:=ChangeFileExt(ifn,'.var');
  L:=TStringList.Create;
  for I:=1 to langCount do
    begin
    L.Add('');
    L.Add(Format('URI: %s.%s',[ifn,LangNames[i]]));
    L.Add(Format('Content-language: %s',[LangContent[i]]));
    L.Add(Format('Content-type: text/html; charset=%s',[LangEnCoding[i]]));  
    end;
  L.Add('');
  L.SaveToFile(ofn);
end.