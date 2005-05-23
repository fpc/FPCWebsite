Unit html;
{
  This unit takes care of HTML generation, and the retrieval of CGI entries
}
interface

uses types;

Const FormFileName='form.tmpl';
      HeadFileName='head.tmpl';
      FootFileName='foot.tmpl';

Procedure GetCGIEntry (Var Entry : TEntry);
{
  Gets a TENtry from the data passed by the web server.
}

Procedure DumpHTMLEntry (Var F : Text; Const ENtry : TEntry);
{
 Dumps an entry as a HTML table to file f
}

Procedure GenHTMLHeader (Var F : Text);
{
  Produces the head of a HTML file to file F;
}

Procedure genHTMLfooter (Var F : Text);
{
  Produces the bottom of a HTML file to file F;
}
Procedure genHTMLform (Var F : Text);
{
  Produces a HTML form that can be filled in to file F;
}
Procedure Doanchor (Var F : Text;Const URL,Message : String);
{
  Produces an anchor with url URL and message Message
}


implementation

uses uncgi,strings,linux,config;

Procedure GetCGIEntry (Var Entry : TEntry);

Var P : Pchar;

begin
  Entry:=EmptyEntry;
  With Entry do
    begin
    P:=Get_value ('NAME');If p<>Nil then Name:=strpas(P);
    P:=Get_value ('AUTHOR');If p<>Nil then Author:=strpas(P);
    P:=Get_value ('FILE');If p<>Nil then ftpfile:=strpas(P);
    P:=Get_value ('HOMEPAGE');If p<>Nil then homepage:=strpas(P);
    P:=Get_value ('VERSION');If p<>Nil then version:=strpas(P);
    P:=Get_value ('OS');If p<>Nil then os:=strpas(P);
    P:=Get_value ('DATE');If p<>Nil then date:=strpas(P);
    P:=Get_value ('DESC');
    If p<>Nil then 
      begin
      if assigned(desc) then strdispose(desc);
      desc:=strnew(p);
      end;
    // desc:=strpas(p);
    P:=Get_value ('EMAIL');If p<>Nil then email:=strpas(P);
    P:=Get_Value ('CATEGORY');if p<>Nil then category:=strpas(p);
    P:=Get_Value ('PWD');if p<>nil then pwd:=strpas(p);
    end;
end; 

{ ---------------------------------------------------------------------
  Auxiliary procedures for HTML generation
  ---------------------------------------------------------------------}

Procedure Tablestart(Var F : Text);
begin
  Writeln (F,'<TABLE WIDTH="100%" CELLPADDING=2 CELLSPACING=1 BORDER=1>');
end;

Procedure TableEnd(Var F : Text);
begin
  Writeln (F,'</TABLE>');
end;

Procedure RowStart (Var F : Text);
begin
  Writeln (F,'<TR>');
end;

Procedure RowEnd (Var F : Text);
begin
  Writeln (F,'</TR>');
end;

Procedure CellStart (Var F : Text;Const Optional : String);
begin
  if optional='' then
    write (F,'<TD>')
  else
    Write (F,'<TD ',optional,'>');
end;

Procedure CellEnd (Var F : Text);
begin
  writeln (f,'</TD>');
end; 

Procedure Doanchor (Var F : Text;Const URL,Message : String);

begin
  write (F,'<A HREF="',URl,'">',Message,'</A>');
end;


Procedure DumpHTMLEntry (Var F : Text; Const ENtry : TEntry);


begin
  TableStart (f);   
  With Entry do
    begin
    RowStart(F);
    CellStart (f,'');Writeln (f,'Name: ');DoAnchor (f,ftpfile,'<B>'+name+'</B>');
    CellEnd(f);
    CellStart(f,''); Writeln (f,'Version: <B>',version,'</B>');CellEnd(f);
    CellStart(f,''); Writeln (f,'Date: <B>',date,'</B>');CellEnd(f);
    CellStart(F,''); Writeln (F,'Supported OS: <B>',os,'</B>');CellEnd(f);
    RowEnd(F);RowStart(F);
    CellStart(f,'COLSPAN=2');Write (F,'Author: ');
    doAnchor(output,'mailto:'+email,author);CellEnd(f);
    CellStart(F,'COLSPAN=2');
    If HomePage<>'' then 
       begin
       Write (F,'HomePage: ');
       DoAnchor (F,HomePage,HomePage);
       end
     Else
       Writeln (F,'Homepage : None');
    CellEnd(f);
    RowEnd(F);RowStart(f);
    CellStart (F,'COLSPAN=4');
    writeln (f,'Description:<Br>',desc);
    CellEnd(F);
    RowEnd(F);
    end;
  TableEnd(F);
  writeln (F,'<P>');
end;

Procedure Dumpfile (Const FileName : String;var F : text);

Var formfile : text;
    S : String;

begin
  S:=TemplateDir+FileName;
  Assign (FormFile,S);
  {$i-}
  Reset (FormFile);
  {$i+}
  if IOResult<>0 then
    begin
    writeln (stderr,'Couldn''t find template file: ',S);
    exit;
    end;
  While not EOF(FormFile) do
    begin
    Readln (FormFile,S);
    Writeln (F,S);
    end;
  Flush (f);
  Close (FormFile);
end;

Procedure GenHTMLHeader (Var F : Text);
{
  Produces the head of a HTML file to file F;
}
    
begin
  writeln('Content-Type: text/html');
  writeln;
  DumpFile(HeadFileName,F);
end;

Procedure genHTMLfooter (Var F : Text);
{
  Produces the bottom of a HTML file to file F;
}
begin
  writeln (f,'<P>');
  dumpfile (FootFileName,f);
end;

Procedure HandleCGIError (Const Proc,Msg : String);
{
  Handle Uncgi errors;
}
begin
  Writeln (stderr,'CGI error detected : ',proc,':',msg);
  flush (stderr);
end;

Procedure genHTMLform (Var F : Text);
{
  Produces a HTML form that can be filled in to file F;
}

begin
  DumpFile (FormFileName,output);
end;

begin
  uncgi_error:=@HandleCGIError;
  cgi_init;
end.
