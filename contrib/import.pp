program ContFP;

uses db,types,strings;

var
  t : text;
  s : string;
  
procedure resetunit (Var Entry : TEntry);
begin
  With ENtry do
    begin
    name:='';
    ftpfile:='';
    version:='';
    email:='';
    author:='';
    homepage:='';
    desc:=nil;
    date:='';
    os:='';
    pwd:='';
    category:='Miscellaneous';
    end;
end;

Procedure AddToPchar (var P : Pchar; Const Value : String);

var Temp  : Pchar;
    I     : Longint;
    toadd : string;
    
begin
  writeln ('Start ppchar');
  Temp:=Nil;
  ToAdd:=Value+' ';
  If P<>Nil then
     begin
     i:=strlen(p)+1;
     getmem (temp,I+length(ToAdd));
     Move (P^,Temp^,I);
     FreeMem (P,I);
     end
  Else
     begin
     getmem (temp,length(toadd)+1);
     temp[0]:=#0;
     end;
  // temp points to enough space to keep the complete string
  strpcopy (strend(temp),toadd);
  p:=temp;
  writeln ('end ppchar');
end; 


var entry : Tentry;

begin
  assign(t,'contfp.dat');
  {$I-}
   reset(t);
  {$I+}
  if ioresult<>0 then
   begin
     writeln('contfp.dat not found!');
     halt(1);
   end;
  resetunit(entry);
  while not eof(t) do
   begin
     readln(t,s);
     writeln ('Read : ',s);
     if (s<>'') and (s[1]<>';') then
      begin
        if Copy(s,1,5)='NAME:' then
         begin
           If ENtry.name<>'' then 
             If Not AddEntry(entry) then
               Writeln ('Entry failed: ',entry.name,' ',dberror)
             else
               Writeln ('Entry imported : ',entry.name);
           resetunit(entry);
           Entry.Name:=Copy(s,7,255);
         end
        else
         if Copy(s,1,4)='PWD:' then
          entry.pwd:=Copy(s,6,255)
        else 
         if Copy(s,1,9)='CATEGORY:' then
          entry.category:=Copy(s,11,255)
        else 
         if Copy(s,1,5)='FILE:' then
          entry.Ftpfile:=Copy(s,7,255)
        else
         if Copy(s,1,8)='VERSION:' then
          entry.Version:=Copy(s,10,255)
        else
         if Copy(s,1,6)='EMAIL:' then
          entry.Email:=Copy(s,8,255)
        else
         if Copy(s,1,7)='AUTHOR:' then
          entry.Author:=Copy(s,9,255)
        else
         if Copy(s,1,3)='OS:' then
          entry.Os:=Copy(s,5,255)
        else
         if Copy(s,1,5)='DATE:' then
          entry.Date:=Copy(s,7,255)
        else
         if Copy(s,1,5)='DESC:' then
            AddToPchar (entry.desc,Copy(s,7,255))
        else
         if Copy(s,1,9)='HOMEPAGE:' then
          entry.HomePage:=Copy(s,11,255)
        else
         Writeln('Ignored: ',s);
      end;
   end;
  close(t);
  if Entry.Name<>'' then 
    AddEntry(entry);
end.
