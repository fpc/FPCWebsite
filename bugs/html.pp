Unit html;
{
  This unit takes care of HTML generation, and the retrieval of CGI entries
}
interface

uses types;

Const FormFileName='form.tmpl';
      HeadFileName='head.tmpl';
      FootFileName='foot.tmpl';
      FixFormFileName='fixform.tmpl';

{ converts the string s to html by replacing <,> etc }
function convert2html(const s : string) : string;

Procedure GetCGIEntry (Var Entry : TEntry);
{
  Gets a TENtry from the data passed by the web server.
}

Procedure DumpHTMLEntry (Var F : Text; Const ENtry : TEntry);
{
 Dumps an entry as a HTML table to file f
}

Procedure GenHTMLHeader (Var F : Text; const picname : string);
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
Procedure genHTMLFixform (Var F : Text);
{
  Produces a HTML form for bug fixes that can be filled in to file F;
}
Procedure Doanchor (Var F : Text;Const URL,Message : String);
{
  Produces an anchor with url URL and message Message
}


implementation

uses uncgi,strings,linux,config;

function convert2html(const s : string) : string;

  var
     i : longint;
     r : string;

  begin
     r:='';
     for i:=1 to length(s) do
       case s[i] of
          '>': r:=r+'&gt;';
          '<': r:=r+'&lt;';
          else
             r:=r+s[i];
       end;
     convert2html:=r;
  end;


Procedure GetCGIEntry (Var Entry : TEntry);

Var P : Pchar;

begin
  InitEntry(Entry);
  With Entry do
    begin
    P:=Get_value ('BugId');If P<>Nil then BugId:=StrToint(STrpas(p)) else BugId:=-1;
    P:=Get_value ('NAME');If p<>Nil then strcopy(@Name,P);
    P:=Get_value ('TITLE');If p<>Nil then strcopy(@Title,P);
    P:=Get_value ('EMAIL');If p<>Nil then strcopy(@email,P);
    P:=Get_value ('STATUS');If p<>Nil then status:=tostatus(strpas(P));
    P:=Get_value ('FIXVERSION');If p<>Nil then strcopy(@fixversion,P);
    P:=Get_value ('FIXDATE');If p<>Nil then strcopy(@fixdate,P);
    P:=Get_value ('FIXER');If p<>Nil then strcopy(@fixer,P);
    P:=Get_Value ('CATEGORY');if p<>Nil then category:=ToCategory(strpas(p));
    P:=Get_value ('OS');If p<>Nil then os:=ToOS(strpas(P));
    P:=Get_value ('COMMENT');If p<>Nil then strcopy(@Comment,P);
    P:=Get_value ('DESC');If P<>Nil then StrCopy(@desc,p);
    P:=Get_value ('PROG');If P<>Nil then StrCopy(@Prog,P);
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
    CellStart (F,'');Writeln (F,'<B>Bug ID : </B>',BugId); CellEnd(F);
    CellStart (F,'');Writeln (F,'<B>Status : </B>',StatusNames[Status]);CellEnd(F); 
    CellStart (F,'');Writeln (F,'<B>OS : </B>',OsNames[os]); cellend(F);
    RowEnd(F);RowStart(F);
    CellStart (f,'COLSPAN=3');Writeln (f,'<B>Title: </B><BR>',pchar(@Title));CellEnd(F);
    RowEnd(F);RowStart(F);
    CellStart (f,'COLSPAN=3'); Writeln (f,'<B>Description: </B><BR>',pchar(@Desc));CellEnd(f);
    RowEnd(F);RowStart(F);
    CellStart(f,''); Writeln (f,'<B>Date entered: </B>',pchar(@AddDate));CellEnd(f);
    CellStart(F,'COLSPAN=2'); Write (F,'<B> Submitter: </B>');
    doanchor(F,'Mailto:'+email,name);cellend(f);
    RowEnd(F);RowStart(F);
    CellStart(F,''); Write (F,'<B>Date Fixed: </B>');
    If Status<>fixed then Writeln (f,'N/A') else writeln(f,pchar(@FixDate));
    CellEnd(f);
    CellStart(f,'');Write (F,'<B>Fix version: </B>',pchar(@fixversion));CellEnd(f);
    CellStart(f,'');Write (F,'<B>Fixer: </B>',pchar(@fixer));CellEnd(f);
    RowEnd(F);RowStart(F);
    CellStart(F,'COLSPAN=3');Writeln ('<B> Comment: </B>',pchar(@Comment));CellEnd(f);
    Rowend(F);
    If (Prog[1]<>#0) then 
       begin
       rowstart(f);
       Cellstart(F,'Colspan=3');
       DoAnchor (F,ProgUrl+'?mode=getsource&bugid='+inttostr(bugid),
                   'Show Program Source');
       CellEnd(f);
       RowEnd(f);
       end
    end;
  TableEnd(F);
  writeln (F,'<P>');
end;

Procedure Dumpfile (Const FileName,PictName : String;var F : text);

Var formfile : text;
    S : String;
    i,l : longint;
    
begin
  L:=Length(Pictname);	
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
    If L>0 then
      begin
      I:=pos ('#PICTURE#',S);
      While i<>0 do
        begin
        Write (Copy(S,1,i-1));Write (pictname);
        Delete(S,1,I+8);
        I:=pos ('#PICTURE#',S)
        end;
      end;
    Writeln (F,S);
    end;
  Flush (f);
  Close (FormFile);
end;

Procedure GenHTMLHeader (Var F : Text; Const picname : string);
{
  Produces the head of a HTML file to file F;
}
    
begin
  writeln('Content-Type: text/html');
  writeln;
  DumpFile(HeadFileName,picname,F);
end;

Procedure genHTMLfooter (Var F : Text);
{
  Produces the bottom of a HTML file to file F;
}
begin
  writeln (f,'<P>');
  dumpfile (FootFileName,'',f);
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
  DumpFile (FormFileName,'',output);
end;

Procedure genHTMLfixform (Var F : Text);
{
  Produces a HTML form for fixes that can be filled in to file F;
}

begin
  DumpFile (FixFormFileName,'',output);
end;

begin
  uncgi_error:=@HandleCGIError;
  cgi_init;
end.
