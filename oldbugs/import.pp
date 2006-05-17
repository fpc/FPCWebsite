program ContFP;

uses db,types,strings,linux;

var
  t,f : text;
  s,l,temp,filename : string;
  i,j : longint;
  code :integer;
  p : pchar;
  fixing : boolean;
  unrepro : boolean;
  
Procedure AddToPchar (var P : Pchar; Const Value : String);

var Temp  : Pchar;
    I     : Longint;
    toadd : string;
    
begin
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
end; 


var entry : Tentry;

begin
  Fixing:=(paramcount=2) and (paramstr(2)='-f');
  unrepro:=(paramcount=2) and (paramstr(2)='-u');
  assign(t,paramstr(1));
  {$I-}
   reset(t);
  {$I+}
  if ioresult<>0 then
   begin
     writeln('contfp.dat not found!');
     halt(1);
   end;
  InitEntry(entry);
  while not eof(t) do
   begin
   readln(t,s);
   i:=pos(' ',s);
   filename:=copy (s,1,i-1);
   delete (s,1,i);
   i:=0;
   while S[i+1]=' ' do i:=i+1;
   if i<>0 then delete (s,1,i);
   assign(f,filename);
   {$I-}
    reset(f);
   {$I+}
   if ioresult<>0 then
     writeln('not found:',filename,', skipping..')
   else
     begin
     Write ('Reading: ',filename); 
     temp:=Filename;
     delete(temp,1,3);
     temp:=copy(temp,1,pos('.',temp)-1);
     Val (temp,j,code);
     Entry.BugId:=J;
     if p<>Nil then strdispose(p);
     p:=nil;
     While not eof(f) do
       begin
       readln (f,l);
       addtopchar(p,l+#10);
       end;
     close(f);
     FileName:=Basename(filename,'.pp');
     Write (' Trying :',filename,'a.pp ');
     assign(f,filename+'a.pp');
     {$I-}
      reset(f);
     {$I+}
     if ioresult=0 then
       begin
       write(' Found. ');
       While not eof(f) do
         begin
         readln (f,l);
         addtopchar(p,l+#10);
         end;
       close(f);
       end;
     Write (' Trying :',filename,'b.pp ');
     assign(f,filename+'b.pp');
     {$I-}
      reset(f);
     {$I+}
     if ioresult=0 then
       begin
       write(' Found. ');
       While not eof(f) do
         begin
         readln (f,l);
         addtopchar(p,l+#10);
         end;
       close(f);
       end;
     writeln;
     I:=0;
     J:=0;
     Repeat
       Entry.Prog[j]:=p[i];
       if p[i]='"' then 
         begin
         inc(j);
         entry.prog[j]:='"';
         end;
       inc(i);
       inc(j);
     until p[i]=#0;
     If Fixing then
       begin
       Entry.Status:=Fixed;
       Entry.FixDate:='1998-07-01';
       I:=pos ('OK',S);
       if I>0 then 
         begin
         Entry.Title:=Copy(S,1,I-1);
         Delete (S,1,I+1);
         I:=Pos('(',s);
         If I>0 then 
           begin
           Entry.Fixversion:=Copy(S,1,i-1);
           Delete(S,1,I);
           Entry.Fixer:=Copy(S,1,pos(')',S)-1);
           end
         Else
           Entry.FixVersion:=S;
         end;
       end
     else If unrepro then
       begin
       Entry.Status:=UnReproducable;
       Entry.FixDate:='1998-07-01';
       I:=pos ('(',S);
       if I>0 then 
         begin
         Entry.Title:=Copy(S,1,I-1);
         Delete (S,1,I+1);
         I:=Pos(')',s);
         If I>0 then 
           begin
           Entry.Comment:=Copy(S,1,i-1);
           Delete(S,1,I);
           I:=Pos('(',s);
           If I>0 then 
             begin
             Delete (S,1,i);
             Entry.Fixer:=Copy(S,1,pos(')',S)-1);
             end;
           end
         Else
           Entry.FixVersion:=S;
         end;
       end
     else
       Entry.Title:=S;
     strpcopy (Entry.Desc,Entry.Title);
     if Entry.Comment='' then 
       ENtry.Comment:='Imported from old buglist.';
     Entry.Name:='Michael';
     Entry.email:='michael@tfdec1.fys.kuleuven.ac.be';
     Entry.Category:=Compiler;
     If Not AddEntry(entry) then
       Writeln ('Entry failed: ',entry.title,' ',dberror)
     else
       Writeln ('Entry imported : ',entry.title);
     end;
   end;
end.
